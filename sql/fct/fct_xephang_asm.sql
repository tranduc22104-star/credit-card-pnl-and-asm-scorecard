-- =====================================================================
-- BẢNG SỰ KIỆN XẾP HẠNG QUẢN LÝ VÙNG (fct_asm_value)
-- VÀ THỦ TỤC ĐIỀU PHỐI CHẤM ĐIỂM XẾP HẠNG THEO THÁNG (sp_xephang_asm)
-- Vị trí trong quy trình: Giai đoạn 2 - Bước 2.3 (Tổng hợp bảng sự kiện Xếp hạng ASM).
-- Cơ chế chấm điểm và xếp hạng đa chiều (22 mã chỉ tiêu từ 201 đến 222):
--   1. Trụ cột 1 - Quy mô phát triển kinh doanh (10 mã: 201..210):
--        - 3 chỉ tiêu cá nhân luỹ kế từ đầu năm: Mã 201 (Doanh số cho vay mới LTN),
--          Mã 202 (Số thẻ phát sinh dư nợ PSDN), Mã 203 (Tỷ lệ duyệt hồ sơ) — càng cao hạng càng cao (DESC).
--        - 1 chỉ tiêu kiểm soát rủi ro cấp vùng: Mã 204 (Tỷ lệ nợ xấu trước xoá nợ NPL) — càng thấp hạng càng cao (ASC).
--        - Điểm quy mô (Mã 209) = Tổng 4 thứ hạng (Mã 205 + Mã 206 + Mã 207 + Mã 208).
--        - Hạng Phát triển kinh doanh (Mã 210) = Xếp hạng tăng dần theo Điểm quy mô (điểm càng nhỏ hạng càng cao).
--   2. Trụ cột 2 - Hiệu quả tài chính vùng (10 mã: 211..220):
--        - Gắn kết quả 4 chỉ số tài chính vùng và 4 thứ hạng tương ứng (Mã 211..218) cùng Điểm tài chính (Mã 219)
--          từ bảng tạm Bước 3 (tmp_xh_step3_fin_area) cho từng ASM thuộc vùng đó.
--        - Hạng Tài chính (Mã 220) = Xếp hạng tăng dần theo Điểm tài chính trên toàn bộ danh sách ASM.
--   3. Tổng kết chung cuộc (2 mã: 221..222):
--        - Tổng điểm (Mã 221) = Điểm quy mô (Mã 209) + Điểm tài chính (Mã 219).
--        - Hạng tổng kết toàn hàng (Mã 222) = Xếp hạng tăng dần theo Tổng điểm (tổng điểm thấp nhất đạt Top 1).
-- =====================================================================

SET search_path TO banking_project, public;

-- 01. BẢNG SỰ KIỆN XẾP HẠNG ASM DẠNG DỌC (fct_asm_value)
-- Mỗi ASM có mặt trong kỳ báo cáo được lưu 22 dòng (tương ứng với 22 mã report_id từ 201 đến 222).
DROP TABLE IF EXISTS fct_asm_value CASCADE;
CREATE TABLE fct_asm_value (
    month_key   INT NOT NULL,              -- Kỳ báo cáo tháng (YYYYMM)
    asm_id      INT NOT NULL,              -- Mã định danh Quản lý khu vực (nối sang bảng dim_asm)
    report_id   INT NOT NULL,              -- Mã chỉ tiêu xếp hạng (201..222, nối sang dim_report_detail)
    value       NUMERIC(24,6),             -- Giá trị chỉ tiêu, điểm số hoặc thứ hạng
    PRIMARY KEY (month_key, asm_id, report_id)
);
CREATE INDEX IF NOT EXISTS idx_fct_asm_value_month
    ON fct_asm_value (month_key);
CREATE INDEX IF NOT EXISTS idx_fct_asm_value_asm
    ON fct_asm_value (asm_id);

-- 02. THỦ TỤC ĐIỀU PHỐI XẾP HẠNG ASM THEO THÁNG (sp_xephang_asm)
-- Yêu cầu tiên quyết: Phải chạy thủ tục sp_baocao_tonghop(p_month) trước để có số liệu tài chính 7 vùng.
CREATE OR REPLACE PROCEDURE sp_xephang_asm(p_month INT)
LANGUAGE plpgsql AS $$
DECLARE
    v_step TEXT;
BEGIN
    -- BƯỚC 0: Xoá dữ liệu cũ của tháng đang xét trên bảng sự kiện fct_asm_value
    v_step := 'STEP0_DELETE_MONTH';
    INSERT INTO banking_project.log_proc_run (proc_name, month_key, step_name, status)
    VALUES ('sp_xephang_asm', p_month, v_step, 'START');
    DELETE FROM fct_asm_value
    WHERE month_key = p_month;

    -- GỌI 3 THỦ TỤC BƯỚC TRUNG GIAN (định nghĩa tại tệp sql/tmp/tmp_xh_step.sql)
    v_step := 'CALL_STEP1_ASM_AVG';
    CALL sp_xh_step1_asm_avg(p_month);
    v_step := 'CALL_STEP2_NPL_AREA';
    CALL sp_xh_step2_npl_area(p_month);
    v_step := 'CALL_STEP3_FIN_AREA';
    CALL sp_xh_step3_fin_area(p_month);

    -- BƯỚC 4: Chấm hạng Trụ cột 1 (Quy mô phát triển kinh doanh) và ghi 10 mã (201..210) cho từng ASM
    -- Giải thích 4 khối CTE bên dưới:
    --   1. asm_vals : Xoay ngang 3 chỉ tiêu cá nhân (201, 202, 203) từ bảng Bước 1 và lấy mã vùng từ dim_asm.
    --   2. rows     : Ghép thêm tỷ lệ nợ xấu trước xoá nợ của vùng (mã 204 từ bảng Bước 2) cho từng ASM.
    --   3. ranked   : Chấm hạng 4 chỉ tiêu quy mô trên toàn bộ danh sách ASM trong tháng.
    --   4. scored   : Cộng 4 thứ hạng thành Điểm quy mô (qm - mã 209) và xếp Hạng PTKD (r_ptkd - mã 210).
    v_step := 'STEP4_RANK_QM';
    WITH asm_vals AS (
        SELECT
            t.asm_id,
            MAX(d.area_code) AS area_code,
            MAX(value) FILTER (WHERE t.report_id = 201) AS ltn_avg,
            MAX(value) FILTER (WHERE t.report_id = 202) AS psdn_avg,
            MAX(value) FILTER (WHERE t.report_id = 203) AS approval_rate_avg
        FROM tmp_xh_step1_asm_avg AS t
        JOIN banking_project.dim_asm AS d ON d.asm_id = t.asm_id
        WHERE t.month_key = p_month
        GROUP BY t.asm_id
    ),
    rows AS (
        SELECT
            a.asm_id, a.area_code, a.ltn_avg, a.psdn_avg, a.approval_rate_avg,
            n.value AS npl
        FROM asm_vals AS a
        LEFT JOIN tmp_xh_step2_npl_area AS n
            ON n.month_key = p_month
           AND n.area_code = a.area_code
           AND n.report_id = 204
    ),
    ranked AS (
        SELECT
            r.asm_id, r.area_code, r.ltn_avg, r.psdn_avg, r.approval_rate_avg, r.npl,
            RANK() OVER (ORDER BY r.ltn_avg DESC NULLS LAST) AS r_ltn,
            RANK() OVER (ORDER BY r.psdn_avg DESC NULLS LAST) AS r_psdn,
            RANK() OVER (ORDER BY r.approval_rate_avg DESC NULLS LAST) AS r_appr,
            RANK() OVER (ORDER BY r.npl ASC NULLS LAST) AS r_npl
        FROM rows AS r
    ),
    scored AS (
        SELECT
            d.*,
            (d.r_ltn + d.r_psdn + d.r_appr + d.r_npl) AS qm,
            RANK() OVER (ORDER BY (d.r_ltn + d.r_psdn + d.r_appr + d.r_npl) ASC)
                AS r_ptkd
        FROM ranked AS d
    )
    INSERT INTO banking_project.fct_asm_value
        (month_key, asm_id, report_id, value)
    SELECT p_month, s.asm_id, v.rid, v.val
    FROM scored AS s
    CROSS JOIN LATERAL (
        VALUES
            (201, s.ltn_avg),              -- Mã 201: Doanh số cho vay mới (LTN) bình quân luỹ kế
            (202, s.psdn_avg),             -- Mã 202: Số thẻ phát sinh dư nợ (PSDN) bình quân luỹ kế
            (203, s.approval_rate_avg),    -- Mã 203: Tỷ lệ duyệt hồ sơ bình quân luỹ kế (%)
            (204, s.npl),                  -- Mã 204: Tỷ lệ nợ xấu trước xoá nợ của vùng (%)
            (205, s.r_ltn::NUMERIC),       -- Mã 205: Hạng Doanh số cho vay mới (LTN)
            (206, s.r_psdn::NUMERIC),      -- Mã 206: Hạng Số thẻ phát sinh dư nợ (PSDN)
            (207, s.r_appr::NUMERIC),      -- Mã 207: Hạng Tỷ lệ duyệt hồ sơ
            (208, s.r_npl::NUMERIC),       -- Mã 208: Hạng Kiểm soát nợ xấu (NPL)
            (209, s.qm::NUMERIC),          -- Mã 209: Điểm Quy mô (Tổng 4 hạng 205..208)
            (210, s.r_ptkd::NUMERIC)       -- Mã 210: Hạng Phát triển kinh doanh (xếp theo Điểm Quy mô)
    ) AS v(rid, val);
    INSERT INTO banking_project.log_proc_run (proc_name, month_key, step_name, status)
    VALUES ('sp_xephang_asm', p_month, v_step, 'OK');

    -- BƯỚC 5: Gắn 9 mã chỉ tiêu Trụ cột 2 (Tài chính vùng: 211..219) từ bảng Bước 3 sang từng ASM thuộc vùng đó.
    -- Riêng mã 217 (Hiệu suất bình quân/nhân sự) được làm tròn 2 chữ số thập phân khi ghi vào bảng sự kiện.
    v_step := 'STEP5_ADD_FIN';
    WITH asm_list AS (
        SELECT DISTINCT t.asm_id, d.area_code
        FROM tmp_xh_step1_asm_avg AS t
        JOIN banking_project.dim_asm AS d ON d.asm_id = t.asm_id
        WHERE t.month_key = p_month
    )
    INSERT INTO banking_project.fct_asm_value
        (month_key, asm_id, report_id, value)
    SELECT p_month, x.asm_id, f.report_id,
           CASE WHEN f.report_id = 217 THEN ROUND(f.value, 2) ELSE f.value END
    FROM asm_list AS x
    JOIN banking_project.tmp_xh_step3_fin_area AS f
        ON f.month_key = p_month AND f.area_code = x.area_code
    WHERE f.report_id BETWEEN 211 AND 219;
    INSERT INTO banking_project.log_proc_run (proc_name, month_key, step_name, status)
    VALUES ('sp_xephang_asm', p_month, v_step, 'OK');

    -- BƯỚC 6: Tính Hạng Tài chính (Mã 220), Tổng điểm 2 trụ cột (Mã 221 = Điểm QM + Điểm FIN)
    -- và xếp Hạng tổng kết toàn hàng (Mã 222: tổng điểm càng thấp thứ hạng càng cao).
    v_step := 'STEP6_TONG_FINAL';
    WITH s AS (
        SELECT
            asm_id,
            MAX(value) FILTER (WHERE report_id = 209) AS qm,
            MAX(value) FILTER (WHERE report_id = 219) AS fin
        FROM banking_project.fct_asm_value
        WHERE month_key = p_month
        GROUP BY asm_id
    ),
    r AS (
        SELECT
            s.asm_id, s.qm, s.fin,
            (s.qm + s.fin) AS tong,
            RANK() OVER (ORDER BY s.fin ASC) AS r_fin,
            RANK() OVER (ORDER BY (s.qm + s.fin) ASC) AS r_final
        FROM s
    )
    INSERT INTO banking_project.fct_asm_value (month_key, asm_id, report_id, value)
    SELECT p_month, r.asm_id, v.rid, v.val
    FROM r
    CROSS JOIN LATERAL (
        VALUES
            (220, r.r_fin::NUMERIC),       -- Mã 220: Hạng Tài chính (xếp theo Điểm FIN trên toàn danh sách ASM)
            (221, r.tong),                 -- Mã 221: Tổng điểm chung cuộc (= Điểm Quy mô + Điểm Tài chính)
            (222, r.r_final::NUMERIC)      -- Mã 222: Hạng tổng kết toàn hàng (Top 1 là người có Tổng điểm nhỏ nhất)
    ) AS v(rid, val);
    INSERT INTO banking_project.log_proc_run (proc_name, month_key, step_name, status)
    VALUES ('sp_xephang_asm', p_month, v_step, 'OK');

EXCEPTION WHEN OTHERS THEN -- Ghi nhận dòng FAIL vào log_proc_run và hoàn tác giao dịch của tháng bị lỗi
    INSERT INTO banking_project.log_proc_run (proc_name, month_key, step_name, status, note)
    VALUES ('sp_xephang_asm', p_month, v_step, 'FAIL', SQLERRM);
    RAISE;
END; $$;

-- Kiểm tra nhanh: tháng Hai điểm tổng dẫn đầu là 34 và người hạng nhất là
-- email nam.hoangvan (phải chạy báo cáo lãi lỗ tháng 202302 trước).
-- CALL sp_xephang_asm(202302);
-- SELECT email, diem_qm, rank_ptkd, diem_fin, rank_fin, tong_diem, rank_final
-- FROM v_xephang_asm WHERE month_key=202302 ORDER BY rank_final LIMIT 5;
-- Kiểm tra từng bước tạm: xem sáu lệnh SELECT cuối tệp sql/tmp/tmp_xh_step.sql
-- (mỗi bước có thủ tục riêng nên gọi lẻ và đọc từng bảng tạm một được).
-- SELECT COUNT(*) FROM fct_asm_value WHERE month_key = 202302;
--     -- bằng số ASM nhân 13 dòng (mười dòng phần một cộng ba dòng tổng)
--     -- rồi cộng 9 dòng tài chính cho mỗi ASM khớp được vùng
-- SELECT asm_id, COUNT(*) FROM fct_asm_value WHERE month_key = 202302
--     GROUP BY asm_id HAVING COUNT(*) NOT IN (13, 22); -- 0 dòng: mỗi ASM chỉ có 13 hoặc 22 dòng
-- SELECT proc_name, status, step_name, note FROM log_proc_run WHERE month_key = 202302
--     ORDER BY run_id;
--     -- Riêng bảng xếp hạng, một tháng để lại mười dòng: START của bước xoá tháng
--     -- (sp_xephang_asm), START và OK của ba thủ tục bước, rồi OK của ba bước cộng
--     -- ghép cuối; không có dòng FAIL.
