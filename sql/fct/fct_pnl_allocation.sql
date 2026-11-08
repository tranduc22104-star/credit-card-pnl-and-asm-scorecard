-- =====================================================================
-- BẢNG SỰ KIỆN LÃI LỖ VÙNG (fct_pnl_value), BẢNG NHẬT KÝ (log_proc_run)
-- VÀ THỦ TỤC ĐIỀU PHỐI TÍNH LÃI LỖ THÁNG (sp_baocao_tonghop)
-- Vị trí trong quy trình: Giai đoạn 2 - Bước 2.3 & 2.4 (Tổng hợp bảng sự kiện và ghi nhật ký).
-- Công thức tổng hợp số liệu báo cáo lãi lỗ (P&L) của từng vùng:
--   - Số liệu của vùng ('B'..'H') = Phần Gán thẳng theo tỉnh (Quy tắc 1)
--                                 + Phần Hội sở ('A') * Tỷ lệ phân bổ của vùng (Quy tắc 2).
--   - Cấu trúc cây chỉ tiêu chính trên báo cáo:
--       + B (Mã 11) : Thu nhập từ hoạt động thẻ = Tổng các mã 1, 2, 3, 4, 5.
--       + C (Mã 24) : Chi phí thuần Kinh doanh vốn (KDV) = Tổng các mã 21, 22, 23.
--       + D (Mã 34) : Chi phí thuần hoạt động khác = Tổng các mã 31, 32, 33.
--       + E (Mã 40) : Tổng thu nhập hoạt động (TOI) = B + C + D.
--       + F (Mã 56) : Tổng chi phí hoạt động (OPEX) = Tổng các mã 51, 52, 53, 54.
--       + G (Mã 60) : Chi phí dự phòng rủi ro tín dụng.
--       + A (Mã 70) : Lợi nhuận trước thuế (LNTT) = E + F + G (do chi phí F và G mang dấu âm).
--       + H (Mã 80) : Tổng doanh thu dùng tính Margin = Thu nhập thẻ (B) + Doanh thu kinh doanh (mã 31).
--       + J (Mã 90) : Số lượng nhân sự Quản lý bán hàng (Sale Manager - SM).
--       + 4 tỷ số tài chính: Mã 91 (CIR % = -F / E), Mã 92 (Margin % = A / H),
--                            Mã 93 (Hiệu suất trên vốn % = A / -C), Mã 94 (Hiệu suất BQ/nhân sự = A / J).
-- =====================================================================

SET search_path TO banking_project, public;

-- 00. BẢNG NHẬT KÝ VẬN HÀNH (log_proc_run): Tự động ghi lại thời điểm bắt đầu (START),
-- hoàn thành (OK) hoặc báo lỗi (FAIL) của từng bước tính toán để dễ dàng kiểm tra và truy vết.
DROP TABLE IF EXISTS log_proc_run CASCADE;
CREATE TABLE log_proc_run (
    run_id      SERIAL PRIMARY KEY,
    proc_name   VARCHAR(100) NOT NULL,     -- Tên thủ tục đang chạy
    month_key   INT NOT NULL,              -- Kỳ báo cáo tháng (YYYYMM)
    step_name   VARCHAR(100) NOT NULL,     -- Tên bước xử lý chi tiết
    status      VARCHAR(20) NOT NULL,      -- Trạng thái: 'START', 'OK' hoặc 'FAIL'
    note        TEXT,                      -- Thông báo lỗi chi tiết (nếu status = 'FAIL')
    created_at  TIMESTAMP DEFAULT NOW()    -- Thời gian ghi nhận bản ghi
);

-- 02. BẢNG SỰ KIỆN LÃI LỖ DẠNG DỌC (fct_pnl_value): Mỗi dòng lưu một giá trị (tháng, vùng, mã chỉ tiêu)
-- Mỗi tháng sinh ra đúng 223 dòng:
--   - 7 vùng kinh doanh ('B'..'H') x 28 mã chỉ tiêu = 196 dòng.
--   - 1 cột Hội sở ('A') x 27 mã chỉ tiêu (Hội sở không có chỉ tiêu nhân sự vùng mã 90) = 27 dòng.
DROP TABLE IF EXISTS fct_pnl_value CASCADE;
CREATE TABLE fct_pnl_value (
    month_key   INT NOT NULL,              -- Kỳ báo cáo tháng (YYYYMM)
    area_code   VARCHAR(10) NOT NULL,      -- Mã đơn vị: 'A' (Hội sở) và 'B'..'H' (7 vùng kinh doanh)
    report_id   INT NOT NULL,              -- Mã chỉ tiêu báo cáo (nối sang bảng dim_report_detail)
    value       NUMERIC(24,6),             -- Giá trị chỉ tiêu (số tiền đồng làm tròn 2 chữ số, tỷ lệ % làm tròn 6 chữ số)
    PRIMARY KEY (month_key, area_code, report_id)
);
CREATE INDEX IF NOT EXISTS idx_fct_pnl_value_month
    ON fct_pnl_value (month_key);
CREATE INDEX IF NOT EXISTS idx_fct_pnl_value_report
    ON fct_pnl_value (report_id);

-- 03. THỦ TỤC ĐIỀU PHỐI TÍNH BÁO CÁO LÃI LỖ THEO THÁNG (sp_baocao_tonghop)
-- Quy trình xử lý 5 bước khi gọi CALL sp_baocao_tonghop(p_month):
--   - Bước 0     : Xoá dữ liệu cũ của tháng p_month trên bảng fct_pnl_value để chạy lại không bị trùng.
--   - Bước 1..3  : Gọi tuần tự 3 thủ tục bước trung gian (sp_pnl_step1_driver, sp_pnl_step2_ratio, sp_pnl_step3_gl_split).
--   - Bước 4     : Kết hợp phần Gán thẳng + (phần Hội sở * Tỷ lệ phân bổ) để ghi các dòng lá và nhóm B, C, D, J.
--   - Bước 5     : Tính các dòng tổng cấp cao (E, F, G, A, H) và 4 chỉ số tài chính (CIR, Margin, Hiệu suất vốn, HSBQ).
CREATE OR REPLACE PROCEDURE sp_baocao_tonghop(p_month INT)
LANGUAGE plpgsql AS $$
DECLARE
    v_step TEXT;
BEGIN
    -- BƯỚC 0: Xoá số liệu cũ của tháng đang xét trên bảng sự kiện fct_pnl_value
    v_step := 'STEP0_DELETE_MONTH';
    INSERT INTO banking_project.log_proc_run (proc_name, month_key, step_name, status)
    VALUES ('sp_baocao_tonghop', p_month, v_step, 'START');
    DELETE FROM fct_pnl_value
    WHERE month_key = p_month;

    -- GỌI 3 THỦ TỤC BƯỚC TRUNG GIAN (định nghĩa tại tệp sql/tmp/tmp_pnl_step.sql)
    v_step := 'CALL_STEP1_DRIVER';
    CALL sp_pnl_step1_driver(p_month);
    v_step := 'CALL_STEP2_RATIO';
    CALL sp_pnl_step2_ratio(p_month);
    v_step := 'CALL_STEP3_GL_SPLIT';
    CALL sp_pnl_step3_gl_split(p_month);

    -- BƯỚC 4: Tổng hợp số liệu từng vùng = Phần gán thẳng (d.value) + Phần Hội sở (h.value) * Tỷ lệ vùng (c.value)
    v_step := 'STEP4_COMBINE';
    -- 4a. Ghi 16 chỉ tiêu dòng lá cho 7 vùng kinh doanh ('B'..'H'): 7 vùng x 16 mã = 112 dòng
    INSERT INTO banking_project.fct_pnl_value
        (month_key, area_code, report_id, value)
    SELECT p_month, c.area_code, c.report_id,
           ROUND(COALESCE(d.value, 0) + h.value * c.value, 2)
    FROM banking_project.tmp_pnl_step2_ratio AS c
    JOIN banking_project.tmp_pnl_step3_gl_split AS h
        ON h.month_key = p_month AND h.area_code = 'A' AND h.report_id = c.report_id
    LEFT JOIN banking_project.tmp_pnl_step3_gl_split AS d
        ON d.month_key = p_month AND d.area_code = c.area_code AND d.report_id = c.report_id
    WHERE c.month_key = p_month;
    -- 4b. Ghi 3 dòng tổng nhóm cho 7 vùng: Mã 11 (Thu nhập thẻ B = tổng 1..5),
    -- Mã 24 (Chi phí thuần KDV C = tổng 21..23), Mã 34 (Chi phí thuần HĐ khác D = tổng 31..33).
    -- Cộng từ số chính xác trước khi làm tròn để tránh sai số làm tròn tích luỹ.
    INSERT INTO banking_project.fct_pnl_value
        (month_key, area_code, report_id, value)
    SELECT p_month, g.area_code, g.rid, ROUND(g.sdir + g.shp, 2)
    FROM (
        SELECT c.area_code,
               CASE WHEN c.report_id IN (1,2,3,4,5) THEN 11
                    WHEN c.report_id IN (21,22,23)  THEN 24
                    WHEN c.report_id IN (31,32,33)  THEN 34 END AS rid,
               SUM(COALESCE(d.value, 0)) AS sdir,
               SUM(h.value * c.value)    AS shp
        FROM banking_project.tmp_pnl_step2_ratio AS c
        JOIN banking_project.tmp_pnl_step3_gl_split AS h
            ON h.month_key = p_month AND h.area_code = 'A' AND h.report_id = c.report_id
        LEFT JOIN banking_project.tmp_pnl_step3_gl_split AS d
            ON d.month_key = p_month AND d.area_code = c.area_code AND d.report_id = c.report_id
        WHERE c.month_key = p_month
        GROUP BY c.area_code,
                 CASE WHEN c.report_id IN (1,2,3,4,5) THEN 11
                      WHEN c.report_id IN (21,22,23)  THEN 24
                      WHEN c.report_id IN (31,32,33)  THEN 34 END
    ) AS g
    WHERE g.rid IS NOT NULL;
    -- 4c. Ghi Mã 90 (J - Số lượng nhân sự Quản lý bán hàng SM) cho 7 vùng kinh doanh
    INSERT INTO banking_project.fct_pnl_value
        (month_key, area_code, report_id, value)
    SELECT p_month, s.area_code, 90, s.value
    FROM banking_project.tmp_pnl_step1_driver AS s
    WHERE s.month_key = p_month AND s.report_id = 90;
    -- 4d. Ghi 16 chỉ tiêu dòng lá của cột Hội sở ('A') — giữ nguyên số gốc hạch toán tại Hội sở trước khi phân bổ
    INSERT INTO banking_project.fct_pnl_value
        (month_key, area_code, report_id, value)
    SELECT p_month, h.area_code, h.report_id, ROUND(h.value, 2)
    FROM banking_project.tmp_pnl_step3_gl_split AS h
    WHERE h.month_key = p_month AND h.area_code = 'A';
    -- 4e. Ghi 3 dòng tổng nhóm (Mã 11, Mã 24, Mã 34) của cột Hội sở ('A')
    INSERT INTO banking_project.fct_pnl_value
        (month_key, area_code, report_id, value)
    SELECT p_month, 'A',
           CASE WHEN report_id IN (1,2,3,4,5) THEN 11
                WHEN report_id IN (21,22,23)  THEN 24
                WHEN report_id IN (31,32,33)  THEN 34 END AS rid,
           ROUND(SUM(value), 2)
    FROM banking_project.tmp_pnl_step3_gl_split
    WHERE month_key = p_month AND area_code = 'A'
      AND report_id IN (1,2,3,4,5,21,22,23,31,32,33)
    GROUP BY 3;
    INSERT INTO banking_project.log_proc_run (proc_name, month_key, step_name, status)
    VALUES ('sp_baocao_tonghop', p_month, v_step, 'OK');

    -- BƯỚC 5: Tính các dòng tổng cấp cao (Mã 56, Mã 40, Mã 80, Mã 70) và 4 chỉ số tài chính (Mã 91..94)
    v_step := 'STEP5_TONG_CHISO';
    DELETE FROM banking_project.fct_pnl_value
    WHERE month_key = p_month AND report_id = 56;
    INSERT INTO banking_project.fct_pnl_value
        (month_key, area_code, report_id, value)
    SELECT p_month, w.area_code, v.rid, v.val
    FROM (
        SELECT area_code,
               MAX(value) FILTER (WHERE report_id = 11) AS b,
               MAX(value) FILTER (WHERE report_id = 24) AS c,
               MAX(value) FILTER (WHERE report_id = 34) AS d,
               MAX(value) FILTER (WHERE report_id = 31) AS d3,
               MAX(value) FILTER (WHERE report_id = 51) AS f1,
               MAX(value) FILTER (WHERE report_id = 52) AS f2,
               MAX(value) FILTER (WHERE report_id = 53) AS f3,
               MAX(value) FILTER (WHERE report_id = 54) AS f4,
               MAX(value) FILTER (WHERE report_id = 60) AS g
        FROM banking_project.fct_pnl_value
        WHERE month_key = p_month
        GROUP BY area_code
    ) AS w
    CROSS JOIN LATERAL (
        VALUES
            (56, w.f1 + w.f2 + w.f3 + w.f4),           -- Mã 56 (F - Tổng chi phí hoạt động): Tổng 4 mã chi phí 51..54
            (40, w.b + w.c + w.d),                      -- Mã 40 (E - Tổng thu nhập hoạt động TOI): B + C + D
            (80, w.b + w.d3),                           -- Mã 80 (H - Tổng doanh thu tính Margin): Thu nhập thẻ B + DT Kinh doanh D3
            (70, w.b + w.c + w.d + w.f1 + w.f2 + w.f3 + w.f4 + w.g)  -- Mã 70 (A - Lợi nhuận trước thuế): E + F + G
    ) AS v(rid, val);

    -- Tính 4 chỉ số tài chính (Mã 91..94):
    -- Lưu ý: Do Tổng chi phí hoạt động (F - mã 56) và Chi phí thuần KDV (C - mã 24) mang dấu âm,
    -- nên công thức dùng -w.f và -w.c để đổi về số dương khi tính tỷ lệ phần trăm.
    INSERT INTO banking_project.fct_pnl_value
        (month_key, area_code, report_id, value)
    SELECT p_month, w.area_code, v.rid, v.val
    FROM (
        SELECT area_code,
               MAX(value) FILTER (WHERE report_id = 40) AS e,
               MAX(value) FILTER (WHERE report_id = 80) AS h,
               MAX(value) FILTER (WHERE report_id = 70) AS a,
               MAX(value) FILTER (WHERE report_id = 24) AS c,
               MAX(value) FILTER (WHERE report_id = 56) AS f,
               MAX(value) FILTER (WHERE report_id = 90) AS j
        FROM banking_project.fct_pnl_value
        WHERE month_key = p_month
        GROUP BY area_code
    ) AS w
    CROSS JOIN LATERAL (
        VALUES
            (91, CASE WHEN w.e = 0 THEN NULL
                      ELSE ROUND(-w.f / w.e * 100, 6) END),         -- Mã 91 (CIR %): Tỷ lệ Chi phí hoạt động / Tổng thu nhập hoạt động
            (92, CASE WHEN w.h = 0 THEN NULL
                      ELSE ROUND(w.a / w.h * 100, 6) END),          -- Mã 92 (Margin %): Tỷ lệ Lợi nhuận trước thuế / Tổng doanh thu H
            (93, CASE WHEN w.c = 0 THEN NULL
                      ELSE ROUND(w.a / NULLIF(-w.c, 0) * 100, 6) END), -- Mã 93 (Hiệu suất trên vốn %): Lợi nhuận trước thuế / Chi phí vốn thuần
            (94, CASE WHEN w.j = 0 THEN NULL
                      ELSE ROUND(w.a / w.j, 2) END)                 -- Mã 94 (Hiệu suất BQ/nhân sự): Lợi nhuận trước thuế / Số quản lý SM
    ) AS v(rid, val);
    INSERT INTO banking_project.log_proc_run (proc_name, month_key, step_name, status)
    VALUES ('sp_baocao_tonghop', p_month, v_step, 'OK');

EXCEPTION WHEN OTHERS THEN -- Ghi nhận dòng FAIL vào log_proc_run và hoàn tác giao dịch của tháng bị lỗi
    INSERT INTO banking_project.log_proc_run (proc_name, month_key, step_name, status, note)
    VALUES ('sp_baocao_tonghop', p_month, v_step, 'FAIL', SQLERRM);
    RAISE;
END; $$;

-- 05. CÁC PHÉP KIỂM TRA NHANH ----------------------------------------------
-- Tổng tỷ lệ mỗi nhóm hệ số phải bằng 1; tổng các thành phần phải khớp dòng tổng.
-- Kiểm tra tổng tỷ lệ theo từng report_id:
-- SELECT report_id, SUM(value) FROM tmp_pnl_step2_ratio
--     WHERE month_key = 202302 GROUP BY report_id ORDER BY report_id;
--     -- mỗi report_id có bảy dòng (bảy vùng), tổng phải bằng 1
-- Kiểm tra E bằng đúng B cộng C cộng D, hiệu số phải bằng 0:
-- SELECT SUM(b + c + d - e) FROM (
--     SELECT MAX(value) FILTER (WHERE report_id=11) AS b,
--            MAX(value) FILTER (WHERE report_id=24) AS c,
--            MAX(value) FILTER (WHERE report_id=34) AS d,
--            MAX(value) FILTER (WHERE report_id=40) AS e
--     FROM fct_pnl_value WHERE month_key=202302 AND area_code<>'A'
--     GROUP BY area_code) x;
-- SELECT COUNT(*) FROM fct_pnl_value WHERE month_key=202302; -- 223 dòng
--     -- bằng bảy vùng nhân hai mươi tám report_id, thêm hai mươi bảy dòng hội sở 'A' (không có mã 90)
-- SELECT COUNT(*) FROM fct_pnl_value WHERE month_key=202302 AND area_code='A';
--     -- 27 dòng hội sở

-- Kiểm tra từng bước tạm: xem năm lệnh SELECT cuối tệp sql/tmp/tmp_pnl_step.sql
-- (mỗi bước có thủ tục riêng nên gọi lẻ và đọc từng bảng tạm một được).
-- SELECT proc_name, status, step_name, note FROM log_proc_run WHERE month_key = 202302
--     ORDER BY run_id;
--     -- Riêng báo cáo lãi lỗ, một tháng để lại 9 dòng: START của bước xoá tháng
--     -- (sp_baocao_tonghop), START và OK của ba thủ tục bước, rồi OK của bước cộng
--     -- ghép và bước tổng chỉ số; không có dòng FAIL.

-- CALL sp_baocao_tonghop(202301); -- gọi lại từng tháng, từ 202301 đến 202305
