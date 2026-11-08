-- =====================================================================
-- BẢNG TẠM VÀ THỦ TỤC 3 BƯỚC TÍNH TOÁN XẾP HẠNG QUẢN LÝ VÙNG (tmp_xh_step.sql)
-- Vị trí trong quy trình: Giai đoạn 2 - Bước 2.2 (Xử lý trung gian cho Báo cáo Xếp hạng ASM).
-- Nguyên tắc nghiệp vụ cốt lõi:
--   - Mỗi Quản lý khu vực (ASM) được chấm điểm và xếp hạng dựa trên 2 trụ cột:
--       + Trụ cột 1 - Quy mô phát triển kinh doanh (4 chỉ tiêu):
--           * 3 chỉ tiêu cá nhân (mã 201: Doanh số cho vay mới LTN, mã 202: Số thẻ phát sinh dư nợ PSDN,
--             mã 203: Tỷ lệ duyệt hồ sơ) tính trung bình luỹ kế các tháng từ đầu năm.
--           * 1 chỉ tiêu rủi ro cấp vùng (mã 204: Tỷ lệ nợ xấu trước xoá nợ NPL) tính theo vùng của ASM đó.
--       + Trụ cột 2 - Hiệu quả tài chính vùng (4 chỉ tiêu: mã 211 CIR, mã 213 Margin, mã 215 Hiệu suất vốn,
--         mã 217 Hiệu suất bình quân/nhân sự): lấy từ kết quả Báo cáo Lãi lỗ (fct_pnl_value) của vùng.
-- Cấu trúc 3 bước trong tệp này:
--   - Bước 1 (tmp_xh_step1_asm_avg / sp_xh_step1_asm_avg) : Tính trung bình luỹ kế 3 chỉ tiêu cá nhân của từng ASM.
--   - Bước 2 (tmp_xh_step2_npl_area / sp_xh_step2_npl_area): Tính tỷ lệ nợ xấu trước xoá nợ (NPL) của 7 vùng.
--   - Bước 3 (tmp_xh_step3_fin_area / sp_xh_step3_fin_area): Chấm hạng 4 chỉ tiêu tài chính và tính Điểm tài chính của 7 vùng.
-- =====================================================================

SET search_path TO banking_project, public;

-- 01a. Bảng tạm Bước 1 (tmp_xh_step1_asm_avg): Trung bình luỹ kế 3 chỉ tiêu cá nhân của từng ASM
-- Mỗi ASM có số liệu hoạt động từ đầu năm sẽ có 3 dòng:
--   - Mã 201: Doanh số cho vay mới bình quân luỹ kế (ltn_amount, làm tròn 2 chữ số thập phân)
--   - Mã 202: Số thẻ phát sinh dư nợ bình quân luỹ kế (psdn_count, làm tròn 2 chữ số thập phân)
--   - Mã 203: Tỷ lệ duyệt hồ sơ bình quân luỹ kế (approval_rate, làm tròn 6 chữ số thập phân)
DROP TABLE IF EXISTS tmp_xh_step1_asm_avg CASCADE;
CREATE TABLE tmp_xh_step1_asm_avg (
    month_key   INT NOT NULL,
    asm_id      INT NOT NULL,          -- Mã định danh ASM (nối sang bảng dim_asm)
    report_id   INT NOT NULL,          -- 3 mã chỉ tiêu cá nhân: 201, 202, 203
    value       NUMERIC(20,6),
    PRIMARY KEY (month_key, asm_id, report_id)
);
CREATE INDEX IF NOT EXISTS idx_tmp_xh_step1_asm_month
    ON tmp_xh_step1_asm_avg (month_key);

-- 01b. Bảng tạm Bước 2 (tmp_xh_step2_npl_area): Tỷ lệ nợ xấu trước xoá nợ (NPL) của 7 vùng
-- Công thức tính Tỷ lệ nợ xấu trước xoá nợ luỹ kế (mã 204):
--   - Tử số (mã 231) : Dư nợ nội bảng Nhóm 3..5 tại tháng báo cáo + Dư nợ đã xoá (write-off) phát sinh từ đầu năm.
--   - Mẫu số (mã 232): Tổng dư nợ nội bảng tất cả các nhóm tại tháng báo cáo + Dư nợ đã xoá phát sinh từ đầu năm.
--   - Tỷ lệ NPL (mã 204) = (Tử số / Mẫu số) * 100 (lưu 6 chữ số thập phân).
-- Việc lưu kèm cả mã 231 (tử số) và mã 232 (mẫu số) giúp người kiểm tra đối chiếu trực tiếp được với sao kê hợp đồng.
DROP TABLE IF EXISTS tmp_xh_step2_npl_area CASCADE;
CREATE TABLE tmp_xh_step2_npl_area (
    month_key   INT NOT NULL,
    area_code   VARCHAR(10) NOT NULL,
    report_id   INT NOT NULL,                -- Mã 204 (Tỷ lệ NPL %), Mã 231 (Tử số nợ xấu), Mã 232 (Mẫu số tổng dư nợ)
    value       NUMERIC,
    PRIMARY KEY (month_key, area_code, report_id)
);
CREATE INDEX IF NOT EXISTS idx_tmp_xh_step2_npl_month
    ON tmp_xh_step2_npl_area (month_key);

-- 01c. Bảng tạm Bước 3 (tmp_xh_step3_fin_area): Chỉ tiêu và thứ hạng tài chính cấp vùng (9 mã/vùng)
-- Đọc kết quả từ bảng sự kiện lãi lỗ (fct_pnl_value) của 7 vùng kinh doanh ('B'..'H') để xếp hạng từ 1 đến 7:
--   - Mã 211 (CIR %) & Mã 212 (Hạng CIR)           : Chi phí/Thu nhập — càng thấp càng tốt (ORDER BY ASC).
--   - Mã 213 (Margin %) & Mã 214 (Hạng Margin)     : Biên lợi nhuận — càng cao càng tốt (ORDER BY DESC).
--   - Mã 215 (Hiệu suất vốn %) & Mã 216 (Hạng HS vốn): Lợi nhuận/Chi phí vốn — càng cao càng tốt (ORDER BY DESC).
--   - Mã 217 (HSBQ nhân sự) & Mã 218 (Hạng HSBQ)   : Lợi nhuận trước thuế (mã 70) / Số quản lý SM (mã 90) — càng cao càng tốt (ORDER BY DESC).
--   - Mã 219 (Điểm tài chính vùng - Điểm FIN)      : Tổng 4 thứ hạng trên (Mã 212 + Mã 214 + Mã 216 + Mã 218).
-- Câu truy vấn xoay ngang mẫu để kiểm tra nhanh trong DBeaver:
--   SELECT p.area_code, pa.area_name,
--          MAX(p.value) FILTER (WHERE p.report_id=212) AS r_cir,
--          MAX(p.value) FILTER (WHERE p.report_id=214) AS r_margin,
--          MAX(p.value) FILTER (WHERE p.report_id=216) AS r_hs,
--          MAX(p.value) FILTER (WHERE p.report_id=218) AS r_hsbq,
--          MAX(p.value) FILTER (WHERE p.report_id=219) AS diem_fin
--   FROM tmp_xh_step3_fin_area AS p
--   LEFT JOIN dim_area AS pa ON pa.area_code = p.area_code
--   WHERE p.month_key=202305 GROUP BY 1,2 ORDER BY diem_fin;
DROP TABLE IF EXISTS tmp_xh_step3_fin_area CASCADE;
CREATE TABLE tmp_xh_step3_fin_area (
    month_key   INT NOT NULL,
    area_code   VARCHAR(10) NOT NULL,
    report_id   INT NOT NULL,                -- 9 mã tài chính vùng: từ 211 đến 219
    value       NUMERIC,
    PRIMARY KEY (month_key, area_code, report_id)
);
CREATE INDEX IF NOT EXISTS idx_tmp_xh_step3_fin_month
    ON tmp_xh_step3_fin_area (month_key);

-- =====================================================================
-- ĐỊNH NGHĨA 3 THỦ TỤC TÍNH TOÁN TỪNG BƯỚC CHO BÁO CÁO XẾP HẠNG ASM
-- Lưu ý: Bước 3 (sp_xh_step3_fin_area) yêu cầu bảng fct_pnl_value của tháng đó
-- đã có đủ số liệu của 7 vùng kinh doanh (tức là phải chạy sp_baocao_tonghop trước).
-- =====================================================================

-- 02. THỦ TỤC BƯỚC 1 (sp_xh_step1_asm_avg): Tính trung bình luỹ kế 3 chỉ tiêu cá nhân của từng ASM
CREATE OR REPLACE PROCEDURE sp_xh_step1_asm_avg(p_month INT)
LANGUAGE plpgsql AS $$
DECLARE
    v_step TEXT;
    v_ys   INT; -- Tháng đầu năm của kỳ báo cáo (YYYY01)
BEGIN
    v_step := 'STEP1_ASM_AVG';
    INSERT INTO banking_project.log_proc_run (proc_name, month_key, step_name, status)
    VALUES ('sp_xh_step1_asm_avg', p_month, v_step, 'START');
    v_ys := (p_month - (p_month % 100)) + 1; -- Xác định tháng 1 đầu năm để tính trung bình luỹ kế YTD
    DELETE FROM banking_project.tmp_xh_step1_asm_avg WHERE month_key = p_month;

    -- Giải thích luồng xử lý:
    --   - Chỉ đưa vào danh sách xếp hạng những ASM có phát sinh số liệu ở ít nhất một tháng từ đầu năm
    --     đến tháng báo cáo (HAVING COUNT(...) > 0). Hàm AVG() tự động bỏ qua các tháng trống (NULL).
    --   - Nối với bảng dim_asm qua email để lấy khoá đại diện asm_id và ghi 3 mã chỉ tiêu (201, 202, 203).
    WITH asm_avg AS (
        SELECT
            LOWER(TRIM(t.email)) AS email,
            AVG(t.ltn_amount) AS ltn_avg,
            AVG(t.psdn_count) AS psdn_avg,
            AVG(t.approval_rate) AS appr_avg
        FROM banking_project.stg_asm_target AS t
        WHERE t.month_key BETWEEN v_ys AND p_month
        GROUP BY 1
        HAVING COUNT(t.ltn_amount) + COUNT(t.psdn_count)
             + COUNT(t.app_approved) + COUNT(t.approval_rate) > 0
    ),
    asm_ids AS (
        SELECT a.email, d.asm_id, a.ltn_avg, a.psdn_avg, a.appr_avg
        FROM asm_avg AS a
        JOIN banking_project.dim_asm AS d
            ON d.email = a.email
    )
    INSERT INTO tmp_xh_step1_asm_avg (month_key, asm_id, report_id, value)
    SELECT p_month, m.asm_id, v.rid, v.val
    FROM asm_ids AS m
    CROSS JOIN LATERAL (
        VALUES
            (201, m.ltn_avg::NUMERIC(20,2)),        -- Mã 201: Doanh số cho vay mới (LTN) bình quân luỹ kế
            (202, m.psdn_avg::NUMERIC(12,2)),       -- Mã 202: Số thẻ phát sinh dư nợ (PSDN) bình quân luỹ kế
            (203, m.appr_avg::NUMERIC(12,6))        -- Mã 203: Tỷ lệ duyệt hồ sơ bình quân luỹ kế (%)
    ) AS v(rid, val);
    INSERT INTO banking_project.log_proc_run (proc_name, month_key, step_name, status)
    VALUES ('sp_xh_step1_asm_avg', p_month, v_step, 'OK');

EXCEPTION WHEN OTHERS THEN -- Ghi nhận lỗi vào bảng log_proc_run và dừng giao dịch
    INSERT INTO banking_project.log_proc_run (proc_name, month_key, step_name, status, note)
    VALUES ('sp_xh_step1_asm_avg', p_month, v_step, 'FAIL', SQLERRM);
    RAISE;
END; $$;

-- 03. THỦ TỤC BƯỚC 2 (sp_xh_step2_npl_area): Tính tỷ lệ nợ xấu trước xoá nợ (NPL) theo vùng
CREATE OR REPLACE PROCEDURE sp_xh_step2_npl_area(p_month INT)
LANGUAGE plpgsql AS $$
DECLARE
    v_step TEXT;
    v_ys   INT;
BEGIN
    v_step := 'STEP2_NPL_AREA';
    INSERT INTO banking_project.log_proc_run (proc_name, month_key, step_name, status)
    VALUES ('sp_xh_step2_npl_area', p_month, v_step, 'START');
    v_ys := (p_month - (p_month % 100)) + 1;
    DELETE FROM banking_project.tmp_xh_step2_npl_area WHERE month_key = p_month;

    -- Tính tử số nợ xấu (num), mẫu số tổng dư nợ trước xoá nợ (den) và tỷ lệ NPL % (mã 204) cho từng vùng:
    --   - num = Dư nợ Nhóm 3..5 tại tháng p_month + Dư nợ đã xoá (write_off) có tháng xoá nợ từ đầu năm (v_ys..p_month).
    --   - den = Tổng dư nợ nội bảng tại tháng p_month + Dư nợ đã xoá (write_off) có tháng xoá nợ từ đầu năm (v_ys..p_month).
    WITH src AS (
        SELECT
            COALESCE(p.area_code, 'UNKNOWN') AS area_code,
            SUM(CASE WHEN TRIM(COALESCE(k.max_bucket, '')) IN ('3','3.0','4','4.0','5','5.0')
                     THEN COALESCE(k.outstanding_principal, 0) ELSE 0 END)
                + SUM(CASE WHEN k.write_off_month IS NOT NULL
                            AND k.write_off_month BETWEEN v_ys AND p_month
                           THEN COALESCE(k.write_off_balance_principal, 0) ELSE 0 END) AS num,
            SUM(COALESCE(k.outstanding_principal, 0))
                + SUM(CASE WHEN k.write_off_month IS NOT NULL
                            AND k.write_off_month BETWEEN v_ys AND p_month
                           THEN COALESCE(k.write_off_balance_principal, 0) ELSE 0 END) AS den
        FROM banking_project.stg_fact_kpi_month AS k
        LEFT JOIN banking_project.dim_param_area AS p
            ON k.pos_city_norm = LOWER(TRIM(p.city_name))
        WHERE k.kpi_month = p_month
        GROUP BY 1
    )
    INSERT INTO tmp_xh_step2_npl_area
        (month_key, area_code, report_id, value)
    SELECT p_month, s.area_code, v.rid, v.val
    FROM src AS s
    CROSS JOIN LATERAL (VALUES
        (204, CASE WHEN s.den IS NULL OR s.den = 0 THEN NULL
                   ELSE ROUND((s.num / s.den) * 100, 6) END),   -- Mã 204: Tỷ lệ nợ xấu trước xoá nợ (%)
        (231, ROUND(s.num, 4)),                                 -- Mã 231: Tử số nợ xấu trước xoá nợ (đồng, dùng đối soát)
        (232, ROUND(s.den, 4))                                  -- Mã 232: Mẫu số tổng dư nợ trước xoá nợ (đồng, dùng đối soát)
    ) AS v(rid, val);
    INSERT INTO banking_project.log_proc_run (proc_name, month_key, step_name, status)
    VALUES ('sp_xh_step2_npl_area', p_month, v_step, 'OK');

EXCEPTION WHEN OTHERS THEN
    INSERT INTO banking_project.log_proc_run (proc_name, month_key, step_name, status, note)
    VALUES ('sp_xh_step2_npl_area', p_month, v_step, 'FAIL', SQLERRM);
    RAISE;
END; $$;

-- 04. THỦ TỤC BƯỚC 3 (sp_xh_step3_fin_area): Chấm hạng 4 chỉ tiêu tài chính của 7 vùng kinh doanh
CREATE OR REPLACE PROCEDURE sp_xh_step3_fin_area(p_month INT)
LANGUAGE plpgsql AS $$
DECLARE
    v_step TEXT;
    v_nth  INT; -- Biến đếm số vùng đã có số liệu báo cáo lãi lỗ trong tháng
BEGIN
    v_step := 'STEP3_FIN_AREA';
    INSERT INTO banking_project.log_proc_run (proc_name, month_key, step_name, status)
    VALUES ('sp_xh_step3_fin_area', p_month, v_step, 'START');
    DELETE FROM banking_project.tmp_xh_step3_fin_area WHERE month_key = p_month;

    -- Kiểm tra điều kiện tiên quyết: Bảng sự kiện lãi lỗ (fct_pnl_value) của tháng p_month phải có đủ 7 vùng ('B'..'H').
    SELECT COUNT(DISTINCT area_code) INTO v_nth
    FROM banking_project.fct_pnl_value
    WHERE month_key = p_month AND area_code <> 'A' AND report_id = 70;
    IF v_nth < 7 THEN
        INSERT INTO banking_project.log_proc_run (proc_name, month_key, step_name, status, note)
        VALUES ('sp_xh_step3_fin_area', p_month, v_step, 'FAIL',
                'Thieu Tonghop thang nay: moi co ' || v_nth || '/7 vung');
        RAISE EXCEPTION 'Chua co fct_pnl_value du 7 vung cho thang % - chay sp_baocao_tonghop truoc', p_month;
    END IF;

    -- Giải thích luồng xử lý 2 khối CTE bên dưới:
    --   1. w   : Lấy các chỉ số tài chính của 7 vùng từ bảng fct_pnl_value (mã 91 CIR, mã 92 Margin,
    --            mã 93 Hiệu suất vốn, mã 70 Lợi nhuận trước thuế A, mã 90 Số lượng quản lý J).
    --   2. fin : Tính Hiệu suất bình quân/nhân sự chính xác (a / j) và xếp hạng 7 vùng theo từng chỉ số:
    --            CIR xếp tăng dần (ASC - chi phí càng thấp hạng càng cao); Margin, Hiệu suất vốn và HSBQ
    --            xếp giảm dần (DESC - hiệu quả càng cao hạng càng cao).
    WITH w AS (
        SELECT
            area_code,
            MAX(value) FILTER (WHERE report_id = 91) AS cir,
            MAX(value) FILTER (WHERE report_id = 92) AS margin,
            MAX(value) FILTER (WHERE report_id = 93) AS hs,
            MAX(value) FILTER (WHERE report_id = 70) AS a,
            MAX(value) FILTER (WHERE report_id = 90) AS j
        FROM banking_project.fct_pnl_value
        WHERE month_key = p_month AND area_code <> 'A'
        GROUP BY area_code
    ),
    fin AS (
        SELECT
            w.area_code, w.cir, w.margin, w.hs,
            w.a / NULLIF(w.j, 0) AS hsbq,
            RANK() OVER (ORDER BY w.cir ASC NULLS LAST) AS r_cir,
            RANK() OVER (ORDER BY w.margin DESC NULLS LAST) AS r_margin,
            RANK() OVER (ORDER BY w.hs DESC NULLS LAST) AS r_hs,
            RANK() OVER (ORDER BY w.a / NULLIF(w.j, 0) DESC NULLS LAST) AS r_hsbq
        FROM w
    )
    INSERT INTO tmp_xh_step3_fin_area
        (month_key, area_code, report_id, value)
    SELECT p_month, f.area_code, v.rid, v.val
    FROM fin AS f
    CROSS JOIN LATERAL (VALUES
        (211, ROUND(f.cir, 6)),        -- Mã 211: Tỷ lệ Chi phí/Thu nhập (CIR %) của vùng
        (212, f.r_cir::NUMERIC),       -- Mã 212: Hạng CIR của vùng (1..7, CIR thấp nhất đạt hạng 1)
        (213, ROUND(f.margin, 6)),     -- Mã 213: Tỷ lệ Biên lợi nhuận (Margin %) của vùng
        (214, f.r_margin::NUMERIC),    -- Mã 214: Hạng Margin của vùng (1..7, Margin cao nhất đạt hạng 1)
        (215, ROUND(f.hs, 6)),         -- Mã 215: Hiệu suất trên vốn (%) của vùng
        (216, f.r_hs::NUMERIC),        -- Mã 216: Hạng Hiệu suất vốn của vùng (1..7)
        (217, f.hsbq),                 -- Mã 217: Hiệu suất bình quân/nhân sự (sẽ làm tròn 2 chữ số khi ghi sang bảng sự kiện)
        (218, f.r_hsbq::NUMERIC),      -- Mã 218: Hạng Hiệu suất bình quân/nhân sự của vùng (1..7)
        (219, (f.r_cir + f.r_margin + f.r_hs + f.r_hsbq)::NUMERIC)  -- Mã 219: Tổng điểm tài chính vùng (Điểm FIN = tổng 4 hạng trên)
    ) AS v(rid, val);
    INSERT INTO banking_project.log_proc_run (proc_name, month_key, step_name, status)
    VALUES ('sp_xh_step3_fin_area', p_month, v_step, 'OK');

EXCEPTION WHEN OTHERS THEN
    INSERT INTO banking_project.log_proc_run (proc_name, month_key, step_name, status, note)
    VALUES ('sp_xh_step3_fin_area', p_month, v_step, 'FAIL', SQLERRM);
    RAISE;
END; $$;

-- KIỂM TRA TỪNG THỦ TỤC BƯỚC (mỗi bước một bảng riêng, đọc được ngay trong DBeaver):
-- CALL sp_xh_step1_asm_avg(202302);
-- SELECT report_id, COUNT(*) FROM tmp_xh_step1_asm_avg WHERE month_key = 202302
--     GROUP BY 1; -- 3 mã nhân số người bán hàng (tháng 202302: 222 dòng)
-- CALL sp_xh_step2_npl_area(202302);
-- SELECT report_id, COUNT(*) FROM tmp_xh_step2_npl_area WHERE month_key = 202302
--     GROUP BY 1; -- 3 mã (204 tỷ lệ, 231 tử số, 232 mẫu số) nhân 7 vùng = 21 dòng
-- SELECT area_code, MAX(value) FILTER (WHERE report_id = 231) AS tu_so,
--        MAX(value) FILTER (WHERE report_id = 232) AS mau_so,
--        MAX(value) FILTER (WHERE report_id = 204) AS npl_pct
-- FROM tmp_xh_step2_npl_area WHERE month_key = 202302
-- GROUP BY area_code ORDER BY area_code; -- 7 vùng; tử số và mẫu số đối chiếu được với sao kê
-- CALL sp_xh_step3_fin_area(202302);   -- phải chạy sp_baocao_tonghop(202302) trước
-- SELECT report_id, COUNT(*) FROM tmp_xh_step3_fin_area WHERE month_key = 202302
--     GROUP BY 1; -- 9 mã (211 đến 219) nhân 7 vùng = 63 dòng
-- SELECT area_code, MAX(value) FILTER (WHERE report_id = 211) AS cir,
--        MAX(value) FILTER (WHERE report_id = 213) AS margin,
--        MAX(value) FILTER (WHERE report_id = 215) AS hs_von,
--        MAX(value) FILTER (WHERE report_id = 217) AS hsbq,
--        MAX(value) FILTER (WHERE report_id = 212) AS r_cir,
--        MAX(value) FILTER (WHERE report_id = 214) AS r_margin,
--        MAX(value) FILTER (WHERE report_id = 216) AS r_hs,
--        MAX(value) FILTER (WHERE report_id = 218) AS r_hsbq,
--        MAX(value) FILTER (WHERE report_id = 219) AS diem_fin
-- FROM tmp_xh_step3_fin_area WHERE month_key = 202302
-- GROUP BY area_code ORDER BY diem_fin; -- 7 dòng, mỗi hạng từ 1 đến 7
