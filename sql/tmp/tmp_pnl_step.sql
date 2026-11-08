-- =====================================================================
-- BẢNG TẠM VÀ THỦ TỤC 3 BƯỚC TÍNH TOÁN BÁO CÁO LÃI LỖ VÙNG (tmp_pnl_step.sql)
-- Vị trí trong quy trình: Giai đoạn 2 - Bước 2.2 (Xử lý trung gian trước khi ghi bảng sự kiện).
-- Nguyên tắc nghiệp vụ cốt lõi:
--   - Báo cáo Lãi lỗ (P&L) của mỗi vùng được tổng hợp từ 2 nguồn:
--       + Quy tắc 1 (Gán thẳng): Các bút toán kế toán phát sinh tại tỉnh nào thì cộng thẳng
--         vào vùng quản lý tỉnh đó.
--       + Quy tắc 2 (Phân bổ Hội sở): Các bút toán hạch toán tập trung tại Hội sở (mã tỉnh '00')
--         được chia về 7 vùng kinh doanh ('B'..'H') theo tỷ lệ tiêu thức phân bổ (dư nợ, số thẻ
--         phát sinh dư nợ, hoặc định biên nhân sự quản lý bán hàng).
--   - Toàn bộ số liệu đều tính luỹ kế từ đầu năm (YTD): ví dụ kỳ tháng 2 (202302) lấy dữ liệu
--     từ tháng 1 (202301) đến hết tháng 2 (202302).
-- Cấu trúc 3 bước trong tệp này:
--   - Bước 1 (tmp_pnl_step1_driver / sp_pnl_step1_driver) : Tính giá trị tuyệt đối của các tiêu thức phân bổ theo vùng.
--   - Bước 2 (tmp_pnl_step2_ratio / sp_pnl_step2_ratio)   : Tính tỷ lệ phần trăm phân bổ của từng vùng (tổng 7 vùng = 100%).
--   - Bước 3 (tmp_pnl_step3_gl_split / sp_pnl_step3_gl_split): Tách sổ kế toán thành phần Hội sở ('A') và phần Gán thẳng ('B'..'H').
-- Thiết kế kỹ thuật:
--   - Lưu trữ dạng dọc (month_key, area_code, report_id, value) giúp đồng nhất cấu trúc với bảng sự kiện.
--   - Các thủ tục bước không đặt lệnh COMMIT bên trong để đảm bảo tính toàn vẹn giao dịch (nếu có lỗi
--     ở bất kỳ bước nào thì toàn bộ tháng đó được hoàn tác sạch sẽ).
-- =====================================================================

SET search_path TO banking_project, public;

-- 01. KHAI BÁO 3 BẢNG TẠM LƯU KẾT QUẢ TRUNG GIAN DẠNG DỌC

-- 01a. Bảng tạm Bước 1 (tmp_pnl_step1_driver): Lưu giá trị tiêu thức phân bổ của 7 vùng (9 mã/vùng)
-- Ý nghĩa 9 mã tiêu thức phân bổ (report_id) tại mỗi vùng:
--   - Mã 1 (Lãi trong hạn) & Mã 4 (Phí tăng hạn mức) : Dùng chung tiêu thức Dư nợ bình quân Nhóm 1 (đủ tiêu chuẩn).
--   - Mã 2 (Lãi quá hạn)                             : Tiêu thức Dư nợ bình quân Nhóm 2 (cần chú ý).
--   - Mã 5 (Phí chậm trả, thu ngoại bảng...)         : Tiêu thức Dư nợ bình quân Nhóm 2 đến Nhóm 5 (sau xoá nợ).
--   - Mã 24 (Đại diện nhóm Vốn C và Hoạt động khác D): Tiêu thức Tổng dư nợ bình quân (sau xoá nợ).
--   - Mã 60 (Chi phí dự phòng rủi ro tín dụng)       : Tiêu thức Dư nợ bình quân Nhóm 2 đến Nhóm 5 (trước xoá nợ).
--   - Mã 3 (Phí bảo hiểm)                            : Tiêu thức Số lượng hợp đồng phát sinh dư nợ (psdn = 1) bình quân.
--   - Mã 56 (Tổng chi phí hoạt động) & Mã 90 (Nhân sự): Tiêu thức Số lượng nhân sự Quản lý bán hàng (Sale Manager).
DROP TABLE IF EXISTS tmp_pnl_step1_driver CASCADE;
CREATE TABLE tmp_pnl_step1_driver (
    month_key   INT NOT NULL,
    area_code   VARCHAR(10) NOT NULL,
    report_id   INT NOT NULL,           -- 9 mã tiêu thức: 1, 2, 3, 4, 5, 24, 56, 60, 90
    value       NUMERIC,
    PRIMARY KEY (month_key, area_code, report_id)
);
CREATE INDEX IF NOT EXISTS idx_tmp_pnl_step1_driver_month
    ON tmp_pnl_step1_driver (month_key);

-- 01b. Bảng tạm Bước 2 (tmp_pnl_step2_ratio): Lưu tỷ lệ phân bổ của từng vùng cho 16 chỉ tiêu dòng lá
-- Công thức: Tỷ lệ vùng = Giá trị tiêu thức của vùng / Tổng giá trị tiêu thức của cả 7 vùng.
-- Những chỉ tiêu dùng chung một tiêu thức phân bổ sẽ nhận cùng một tỷ lệ:
--   - Mã 1, 4          : Tỷ lệ Dư nợ Nhóm 1
--   - Mã 2             : Tỷ lệ Dư nợ Nhóm 2
--   - Mã 5             : Tỷ lệ Dư nợ Nhóm 2..5 (sau xoá nợ)
--   - Mã 3             : Tỷ lệ Số lượng hợp đồng phát sinh dư nợ (PSDN)
--   - Mã 21..23, 31..33: Tỷ lệ Tổng dư nợ (sau xoá nợ)
--   - Mã 51..54        : Tỷ lệ Số lượng nhân sự Quản lý bán hàng (SM)
--   - Mã 60            : Tỷ lệ Dư nợ Nhóm 2..5 (trước xoá nợ)
DROP TABLE IF EXISTS tmp_pnl_step2_ratio CASCADE;
CREATE TABLE tmp_pnl_step2_ratio (
    month_key   INT NOT NULL,
    area_code   VARCHAR(10) NOT NULL,
    report_id   INT NOT NULL,           -- 16 mã dòng lá: 1, 4, 2, 5, 3, 21..23, 31..33, 51..54, 60
    value       NUMERIC(12,8),          -- Lưu chính xác đến 8 chữ số thập phân (tổng 7 vùng của mỗi mã = 1)
    PRIMARY KEY (month_key, area_code, report_id)
);
CREATE INDEX IF NOT EXISTS idx_tmp_pnl_step2_ratio_month
    ON tmp_pnl_step2_ratio (month_key);

-- 01c. Bảng tạm Bước 3 (tmp_pnl_step3_gl_split): Tách số tiền Sổ cái kế toán (GL) luỹ kế từ đầu năm
--   - Dòng có area_code = 'A' (Hội sở)    : Tổng số tiền các bút toán có mã tỉnh prov = '00' (16 mã dòng lá),
--                                           chờ nhân với tỷ lệ Bước 2 để phân bổ về 7 vùng.
--   - Dòng có area_code = 'B'..'H' (7 vùng): Tổng số tiền các bút toán có mã tỉnh '01'..'63' gán thẳng vào vùng
--                                           theo Quy tắc 1 (13 mã dòng lá; nhóm Chi phí vốn 21..23 chỉ phát sinh ở Hội sở).
DROP TABLE IF EXISTS tmp_pnl_step3_gl_split CASCADE;
CREATE TABLE tmp_pnl_step3_gl_split (
    month_key   INT NOT NULL,
    area_code   VARCHAR(10) NOT NULL,   -- 'A' = Hội sở, 'B'..'H' = 7 vùng kinh doanh
    report_id   INT NOT NULL,
    value       NUMERIC(20,4),
    PRIMARY KEY (month_key, area_code, report_id)
);
CREATE INDEX IF NOT EXISTS idx_tmp_pnl_step3_gl_split_month
    ON tmp_pnl_step3_gl_split (month_key);

-- =====================================================================
-- ĐỊNH NGHĨA 3 THỦ TỤC TÍNH TOÁN TỪNG BƯỚC (CÓ THỂ GỌI ĐỘC LẬP ĐỂ KIỂM TRA SỐ LIỆU)
-- =====================================================================

-- 02. THỦ TỤC BƯỚC 1 (sp_pnl_step1_driver): Tính giá trị tiêu thức phân bổ luỹ kế theo vùng
CREATE OR REPLACE PROCEDURE sp_pnl_step1_driver(p_month INT)
LANGUAGE plpgsql AS $$
DECLARE
    v_step TEXT;
    v_ys   INT; -- Tháng đầu năm của kỳ báo cáo (dạng YYYY01, ví dụ 202301)
BEGIN
    v_step := 'STEP1_DRIVER';
    INSERT INTO banking_project.log_proc_run (proc_name, month_key, step_name, status)
    VALUES ('sp_pnl_step1_driver', p_month, v_step, 'START');
    v_ys := (p_month - (p_month % 100)) + 1; -- Xác định tháng 1 đầu năm để lấy dữ liệu luỹ kế YTD
    DELETE FROM banking_project.tmp_pnl_step1_driver WHERE month_key = p_month;

    -- Giải thích luồng xử lý 4 khối CTE bên dưới:
    --   1. kpi_norm    : Nối bảng sao kê hợp đồng (stg_fact_kpi_month) với bảng ánh xạ tỉnh (dim_param_area)
    --                    để xác định vùng của từng hợp đồng trong các tháng từ đầu năm (v_ys) đến tháng p_month.
    --   2. kpi_monthly : Cộng tổng dư nợ (theo từng nhóm nợ max_bucket) và đếm số hợp đồng phát sinh dư nợ (psdn = 1)
    --                    cho từng vùng ở mỗi tháng.
    --   3. kpi_agg     : Tính trung bình cộng các tháng từ đầu năm đến tháng báo cáo cho từng vùng.
    --   4. sm_snap     : Lấy định biên nhân sự Quản lý bán hàng (sm_count) của vùng trong tháng báo cáo.
    WITH kpi_norm AS (
        SELECT
            k.kpi_month            AS m,
            COALESCE(p.area_code, 'UNKNOWN') AS area_code,
            COALESCE(k.outstanding_principal, 0) AS os,
            COALESCE(k.write_off_balance_principal, 0) AS wo,
            COALESCE(k.psdn, 0) AS psdn,
            TRIM(COALESCE(k.max_bucket, '')) AS bk
        FROM banking_project.stg_fact_kpi_month AS k
        LEFT JOIN banking_project.dim_param_area AS p
            ON k.pos_city_norm = LOWER(TRIM(p.city_name))
        WHERE k.kpi_month BETWEEN v_ys AND p_month
    ),
    kpi_monthly AS (
        SELECT
            n.m                    AS m,
            n.area_code            AS area_code,
            SUM(CASE WHEN n.bk IN ('1', '1.0', '') THEN n.os ELSE 0 END) AS d1,
            SUM(CASE WHEN n.bk IN ('2', '2.0') THEN n.os ELSE 0 END) AS d2,
            SUM(CASE WHEN n.bk IN ('2','2.0','3','3.0','4','4.0','5','5.0')
                THEN n.os ELSE 0 END) AS d25_sau,
            SUM(CASE WHEN n.bk IN ('2','2.0','3','3.0','4','4.0','5','5.0')
                THEN n.os + n.wo ELSE 0 END) AS dtruoc,
            SUM(n.os) AS dtot,
            COUNT(*) FILTER (WHERE n.psdn = 1) AS psdn
        FROM kpi_norm AS n
        WHERE n.area_code <> 'UNKNOWN'
        GROUP BY 1, 2
    ),
    kpi_agg AS (
        SELECT
            area_code,
            AVG(d1) AS d1, AVG(d2) AS d2, AVG(d25_sau) AS d25_sau,
            AVG(dtruoc) AS dtruoc, AVG(dtot) AS dtot, AVG(psdn) AS psdn
        FROM kpi_monthly
        GROUP BY area_code
    ),
    sm_snap AS (
        SELECT area_code, MAX(sm_count) AS sm
        FROM banking_project.dim_sm_headcount
        WHERE month_key = p_month
        GROUP BY area_code
    )
    INSERT INTO tmp_pnl_step1_driver (month_key, area_code, report_id, value)
    SELECT p_month, k.area_code, v.rid, v.val
    FROM kpi_agg AS k
    LEFT JOIN sm_snap AS s ON s.area_code = k.area_code
    CROSS JOIN LATERAL (
        VALUES
            (1,  ROUND(k.d1, 4)),        -- Mã 1 (Lãi trong hạn): Dư nợ bình quân Nhóm 1
            (4,  ROUND(k.d1, 4)),        -- Mã 4 (Phí tăng hạn mức): Dùng chung Dư nợ bình quân Nhóm 1
            (2,  ROUND(k.d2, 4)),        -- Mã 2 (Lãi quá hạn): Dư nợ bình quân Nhóm 2
            (5,  ROUND(k.d25_sau, 4)),   -- Mã 5 (Phí chậm trả, thu ngoại bảng): Dư nợ bình quân Nhóm 2..5 sau xoá nợ
            (24, ROUND(k.dtot, 4)),      -- Mã 24 (Đại diện nhóm Vốn & HĐ khác): Tổng dư nợ bình quân sau xoá nợ
            (60, ROUND(k.dtruoc, 4)),    -- Mã 60 (Chi phí dự phòng): Dư nợ bình quân Nhóm 2..5 trước xoá nợ (cộng lại nợ đã xoá)
            (3,  COALESCE(k.psdn, 0)),   -- Mã 3 (Phí bảo hiểm): Số hợp đồng phát sinh dư nợ bình quân (giữ nguyên độ chính xác để chia tỷ lệ)
            (56, COALESCE(s.sm, 0)),     -- Mã 56 (Tổng chi phí hoạt động): Số lượng nhân sự Sale Manager của vùng
            (90, COALESCE(s.sm, 0))      -- Mã 90 (Chỉ tiêu nhân sự trên báo cáo): Số lượng nhân sự Sale Manager của vùng
    ) AS v(rid, val);
    INSERT INTO banking_project.log_proc_run (proc_name, month_key, step_name, status)
    VALUES ('sp_pnl_step1_driver', p_month, v_step, 'OK');

EXCEPTION WHEN OTHERS THEN -- Ghi nhận lỗi vào bảng log_proc_run và dừng giao dịch
    INSERT INTO banking_project.log_proc_run (proc_name, month_key, step_name, status, note)
    VALUES ('sp_pnl_step1_driver', p_month, v_step, 'FAIL', SQLERRM);
    RAISE;
END; $$;

-- 03. THỦ TỤC BƯỚC 2 (sp_pnl_step2_ratio): Tính tỷ lệ phân bổ của từng vùng cho 16 chỉ tiêu dòng lá
CREATE OR REPLACE PROCEDURE sp_pnl_step2_ratio(p_month INT)
LANGUAGE plpgsql AS $$
DECLARE
    v_step TEXT;
BEGIN
    v_step := 'STEP2_RATIO';
    INSERT INTO banking_project.log_proc_run (proc_name, month_key, step_name, status)
    VALUES ('sp_pnl_step2_ratio', p_month, v_step, 'START');
    DELETE FROM banking_project.tmp_pnl_step2_ratio WHERE month_key = p_month;

    -- Giải thích luồng xử lý 2 khối CTE bên dưới:
    --   1. d1p : Xoay ngang 7 tiêu thức gốc của từng vùng từ bảng Bước 1 (tmp_pnl_step1_driver).
    --   2. tot : Cộng tổng giá trị từng tiêu thức của toàn bộ 7 vùng kinh doanh để làm mẫu số.
    --   Sau đó lấy giá trị của từng vùng chia cho tổng 7 vùng để ra tỷ lệ phân bổ cho đủ 16 mã dòng lá.
    WITH d1p AS (
        SELECT
            area_code,
            MAX(value) FILTER (WHERE report_id = 1)  AS d1,
            MAX(value) FILTER (WHERE report_id = 2)  AS d2,
            MAX(value) FILTER (WHERE report_id = 5)  AS d25,
            MAX(value) FILTER (WHERE report_id = 60) AS dtruoc,
            MAX(value) FILTER (WHERE report_id = 24) AS dtot,
            MAX(value) FILTER (WHERE report_id = 3)  AS dpsdn,
            MAX(value) FILTER (WHERE report_id = 56) AS dsm
        FROM tmp_pnl_step1_driver
        WHERE month_key = p_month
        GROUP BY area_code
    ),
    tot AS (
        SELECT SUM(d1) AS t1, SUM(d2) AS t2, SUM(d25) AS t25,
               SUM(dtruoc) AS tt, SUM(dtot) AS ttot,
               SUM(dpsdn) AS tpsdn, SUM(dsm) AS tsm
        FROM d1p
    )
    INSERT INTO tmp_pnl_step2_ratio (month_key, area_code, report_id, value)
    SELECT p_month, s.area_code, v.rid, v.val
    FROM d1p AS s
    CROSS JOIN tot AS t
    CROSS JOIN LATERAL (
        VALUES
            (1,  CASE WHEN t.t1 = 0 THEN 0 ELSE s.d1 / t.t1 END),      -- Mã 1 (Lãi trong hạn): Phân bổ theo tỷ lệ Dư nợ Nhóm 1
            (4,  CASE WHEN t.t1 = 0 THEN 0 ELSE s.d1 / t.t1 END),      -- Mã 4 (Phí tăng hạn mức): Phân bổ theo tỷ lệ Dư nợ Nhóm 1
            (2,  CASE WHEN t.t2 = 0 THEN 0 ELSE s.d2 / t.t2 END),      -- Mã 2 (Lãi quá hạn): Phân bổ theo tỷ lệ Dư nợ Nhóm 2
            (5,  CASE WHEN t.t25 = 0 THEN 0 ELSE s.d25 / t.t25 END),   -- Mã 5 (Phí chậm trả, ngoại bảng): Phân bổ theo tỷ lệ Dư nợ Nhóm 2..5 sau xoá nợ
            (3,  CASE WHEN t.tpsdn = 0 THEN 0
                      ELSE COALESCE(s.dpsdn, 0) / t.tpsdn END),        -- Mã 3 (Phí bảo hiểm): Phân bổ theo tỷ lệ Số hợp đồng phát sinh dư nợ
            (21, CASE WHEN t.ttot = 0 THEN 0 ELSE s.dtot / t.ttot END),-- Mã 21 (CP vốn TT 2): Phân bổ theo tỷ lệ Tổng dư nợ
            (22, CASE WHEN t.ttot = 0 THEN 0 ELSE s.dtot / t.ttot END),-- Mã 22 (CP vốn TT 1): Phân bổ theo tỷ lệ Tổng dư nợ
            (23, CASE WHEN t.ttot = 0 THEN 0 ELSE s.dtot / t.ttot END),-- Mã 23 (CP vốn CCTG): Phân bổ theo tỷ lệ Tổng dư nợ
            (31, CASE WHEN t.ttot = 0 THEN 0 ELSE s.dtot / t.ttot END),-- Mã 31 (DT Kinh doanh): Phân bổ theo tỷ lệ Tổng dư nợ
            (32, CASE WHEN t.ttot = 0 THEN 0 ELSE s.dtot / t.ttot END),-- Mã 32 (CP hoa hồng): Phân bổ theo tỷ lệ Tổng dư nợ
            (33, CASE WHEN t.ttot = 0 THEN 0 ELSE s.dtot / t.ttot END),-- Mã 33 (CP thuần KD khác): Phân bổ theo tỷ lệ Tổng dư nợ
            (51, CASE WHEN t.tsm = 0 THEN 0
                      ELSE COALESCE(s.dsm, 0) / t.tsm END),            -- Mã 51 (CP thuế, phí): Phân bổ theo tỷ lệ Nhân sự Sale Manager
            (52, CASE WHEN t.tsm = 0 THEN 0
                      ELSE COALESCE(s.dsm, 0) / t.tsm END),            -- Mã 52 (CP nhân viên): Phân bổ theo tỷ lệ Nhân sự Sale Manager
            (53, CASE WHEN t.tsm = 0 THEN 0
                      ELSE COALESCE(s.dsm, 0) / t.tsm END),            -- Mã 53 (CP quản lý): Phân bổ theo tỷ lệ Nhân sự Sale Manager
            (54, CASE WHEN t.tsm = 0 THEN 0
                      ELSE COALESCE(s.dsm, 0) / t.tsm END),            -- Mã 54 (CP tài sản): Phân bổ theo tỷ lệ Nhân sự Sale Manager
            (60, CASE WHEN t.tt = 0 THEN 0
                      ELSE s.dtruoc / t.tt END)                        -- Mã 60 (Chi phí dự phòng): Phân bổ theo tỷ lệ Dư nợ Nhóm 2..5 trước xoá nợ
    ) AS v(rid, val);
    INSERT INTO banking_project.log_proc_run (proc_name, month_key, step_name, status)
    VALUES ('sp_pnl_step2_ratio', p_month, v_step, 'OK');

EXCEPTION WHEN OTHERS THEN
    INSERT INTO banking_project.log_proc_run (proc_name, month_key, step_name, status, note)
    VALUES ('sp_pnl_step2_ratio', p_month, v_step, 'FAIL', SQLERRM);
    RAISE;
END; $$;

-- 04. THỦ TỤC BƯỚC 3 (sp_pnl_step3_gl_split): Gom bút toán Sổ cái kế toán thành phần Hội sở và phần Gán thẳng
CREATE OR REPLACE PROCEDURE sp_pnl_step3_gl_split(p_month INT)
LANGUAGE plpgsql AS $$
DECLARE
    v_step TEXT;
    v_ys   INT;
BEGIN
    v_step := 'STEP3_GL_SPLIT';
    INSERT INTO banking_project.log_proc_run (proc_name, month_key, step_name, status)
    VALUES ('sp_pnl_step3_gl_split', p_month, v_step, 'START');
    v_ys := (p_month - (p_month % 100)) + 1;
    DELETE FROM banking_project.tmp_pnl_step3_gl_split WHERE month_key = p_month;

    -- Giải thích luồng xử lý 3 khối CTE bên dưới:
    --   1. gl     : Đọc toàn bộ bút toán kế toán từ đầu năm (v_ys) đến tháng báo cáo (p_month);
    --               nếu mã tỉnh (prov) bị bỏ trống thì mặc định đưa về Hội sở ('00').
    --   2. head   : Gom các bút toán tại Hội sở (prov = '00') theo 16 nhóm mã tài khoản kế toán (account_code)
    --               tương ứng với 16 chỉ tiêu dòng lá trên báo cáo P&L.
    --   3. direct : Gom các bút toán phát sinh tại 63 tỉnh/thành phố (prov <> '00'), nối qua bảng dim_param_area
    --               để cộng thẳng vào 7 vùng kinh doanh ('B'..'H') theo Quy tắc 1 (13 chỉ tiêu dòng lá).
    WITH gl AS (
        SELECT
            g.txn_month AS m,
            TRIM(g.account_code) AS acc,
            COALESCE(NULLIF(TRIM(g.prov), ''), '00') AS prov, -- Bút toán không ghi mã tỉnh được tính vào Hội sở ('00')
            COALESCE(g.amount, 0) AS amt
        FROM banking_project.stg_fact_txn_month AS g
        WHERE g.txn_month BETWEEN v_ys AND p_month -- Cộng luỹ kế các tháng từ đầu năm (YTD)
    ),
    head AS ( -- Tổng hợp số tiền chờ phân bổ tại Hội sở (prov = '00') theo từng nhóm tài khoản GL
        SELECT
            SUM(CASE WHEN h.acc IN ('702000030002','702000030001','702000030102')
                THEN h.amt ELSE 0 END) AS h_b2, -- Mã 1: Lãi trong hạn
            SUM(CASE WHEN h.acc IN ('702000030012','702000030112')
                THEN h.amt ELSE 0 END) AS h_b1, -- Mã 2: Lãi quá hạn
            SUM(CASE WHEN h.acc IN ('716000000001')
                THEN h.amt ELSE 0 END) AS h_b3, -- Mã 3: Phí Bảo hiểm
            SUM(CASE WHEN h.acc IN ('719000030002')
                THEN h.amt ELSE 0 END) AS h_b4, -- Mã 4: Phí tăng hạn mức
            SUM(CASE WHEN h.acc IN ('719000030003','719000030103','790000030003',
                    '790000030103','790000030004','790000030104')
                THEN h.amt ELSE 0 END) AS h_b5, -- Mã 5: Phí thanh toán chậm, thu từ ngoại bảng, khác
            SUM(CASE WHEN h.acc IN ('801000000001','802000000001')
                THEN h.amt ELSE 0 END) AS h_c3, -- Mã 21: Chi phí vốn Thị trường 2 (TT2)
            SUM(CASE WHEN h.acc IN ('802000000002','802000000003','802014000001','802037000001')
                THEN h.amt ELSE 0 END) AS h_c2, -- Mã 22: Chi phí vốn Thị trường 1 (TT1)
            SUM(CASE WHEN h.acc IN ('803000000001')
                THEN h.amt ELSE 0 END) AS h_c1, -- Mã 23: Chi phí vốn Chứng chỉ tiền gửi (CCTG)
            SUM(CASE WHEN h.acc IN ('702000010001','702000010002','704000000001',
                    '705000000001','709000000001','714000000002','714000000003',
                    '714037000001','714000000004','714014000001','715000000001',
                    '715037000001','719000000001','709000000101','719000000101')
                THEN h.amt ELSE 0 END) AS h_d3, -- Mã 31: Doanh thu Kinh doanh
            SUM(CASE WHEN h.acc IN ('816000000001','816000000002','816000000003')
                THEN h.amt ELSE 0 END) AS h_d1, -- Mã 32: Chi phí hoa hồng
            SUM(CASE WHEN h.acc IN ('809000000002','809000000001','811000000001',
                    '811000000102','811000000002','811014000001','811037000001',
                    '811039000001','811041000001','815000000001','819000000002',
                    '819000000003','819000000001','790000000003',
                    '790000000101','790037000001','849000000001','899000000003',
                    '899000000002','811000000101','819000060001')
                THEN h.amt ELSE 0 END) AS h_d2, -- Mã 33: Chi phí thuần kinh doanh khác
            SUM(CASE WHEN h.acc IN ('790000050001','882200050001','790000030001',
                    '882200030001','790000000001','790000020101','882200000001',
                    '882200050101','882200020101','882200060001','790000050101',
                    '882200030101')
                THEN h.amt ELSE 0 END) AS h_g,  -- Mã 60: Chi phí dự phòng rủi ro tín dụng
            SUM(CASE WHEN h.acc IN ('831000000001','831000000002','832000000101',
                    '832000000001','831000000102')
                THEN h.amt ELSE 0 END) AS h_f1, -- Mã 51: Chi phí thuế, phí
            SUM(CASE WHEN h.acc LIKE '85%' THEN h.amt ELSE 0 END) AS h_f2, -- Mã 52: Chi phí nhân viên (tài khoản đầu 85)
            SUM(CASE WHEN h.acc LIKE '86%' THEN h.amt ELSE 0 END) AS h_f3, -- Mã 53: Chi phí quản lý (tài khoản đầu 86)
            SUM(CASE WHEN h.acc LIKE '87%' THEN h.amt ELSE 0 END) AS h_f4  -- Mã 54: Chi phí tài sản (tài khoản đầu 87)
        FROM gl AS h
        WHERE h.prov = '00'
    ),
    direct AS ( -- Quy tắc 1: Cộng thẳng bút toán phát sinh tại tỉnh (prov <> '00') vào vùng quản lý tỉnh đó
        SELECT
            p.area_code AS area_code,
            SUM(CASE WHEN g.acc IN ('702000030002','702000030001','702000030102')
                THEN g.amt ELSE 0 END) AS d_b2,
            SUM(CASE WHEN g.acc IN ('702000030012','702000030112')
                THEN g.amt ELSE 0 END) AS d_b1,
            SUM(CASE WHEN g.acc IN ('716000000001')
                THEN g.amt ELSE 0 END) AS d_b3,
            SUM(CASE WHEN g.acc IN ('719000030002')
                THEN g.amt ELSE 0 END) AS d_b4,
            SUM(CASE WHEN g.acc IN ('719000030003','719000030103','790000030003',
                    '790000030103','790000030004','790000030104')
                THEN g.amt ELSE 0 END) AS d_b5,
            SUM(CASE WHEN g.acc IN ('702000010001','702000010002','704000000001',
                    '705000000001','709000000001','714000000002','714000000003',
                    '714037000001','714000000004','714014000001','715000000001',
                    '715037000001','719000000001','709000000101','719000000101')
                THEN g.amt ELSE 0 END) AS d_d3,
            SUM(CASE WHEN g.acc IN ('816000000001','816000000002','816000000003')
                THEN g.amt ELSE 0 END) AS d_d1,
            SUM(CASE WHEN g.acc IN ('809000000002','809000000001','811000000001',
                    '811000000102','811000000002','811014000001','811037000001',
                    '811039000001','811041000001','815000000001','819000000002',
                    '819000000003','819000000001','790000000003',
                    '790000000101','790037000001','849000000001','899000000003',
                    '899000000002','811000000101','819000060001')
                THEN g.amt ELSE 0 END) AS d_d2,
            SUM(CASE WHEN g.acc IN ('790000050001','882200050001','790000030001',
                    '882200030001','790000000001','790000020101','882200000001',
                    '882200050101','882200020101','882200060001','790000050101',
                    '882200030101')
                THEN g.amt ELSE 0 END) AS d_g,
            SUM(CASE WHEN g.acc IN ('831000000001','831000000002','832000000101',
                    '832000000001','831000000102')
                THEN g.amt ELSE 0 END) AS d_f1,
            SUM(CASE WHEN g.acc LIKE '85%' THEN g.amt ELSE 0 END) AS d_f2,
            SUM(CASE WHEN g.acc LIKE '86%' THEN g.amt ELSE 0 END) AS d_f3,
            SUM(CASE WHEN g.acc LIKE '87%' THEN g.amt ELSE 0 END) AS d_f4
        FROM gl AS g
        JOIN banking_project.dim_param_area AS p
            ON p.city_code = g.prov
        WHERE g.prov <> '00'
        GROUP BY p.area_code
    )
    -- Ghi kết quả vào bảng tạm Bước 3: 16 dòng của Hội sở ('A') và 13 dòng gán thẳng cho mỗi vùng ('B'..'H')
    INSERT INTO tmp_pnl_step3_gl_split (month_key, area_code, report_id, value)
    SELECT p_month, 'A', v.rid, v.val
    FROM head AS h
    CROSS JOIN LATERAL (
        VALUES
            (1,  h.h_b2), (2,  h.h_b1), (3,  h.h_b3), (4,  h.h_b4), (5,  h.h_b5),
            (21, h.h_c3), (22, h.h_c2), (23, h.h_c1),
            (31, h.h_d3), (32, h.h_d1), (33, h.h_d2),
            (51, h.h_f1), (52, h.h_f2), (53, h.h_f3), (54, h.h_f4),
            (60, h.h_g)
    ) AS v(rid, val)
    UNION ALL
    SELECT p_month, d.area_code, v.rid, v.val
    FROM direct AS d
    CROSS JOIN LATERAL (
        VALUES
            (1,  d.d_b2), (2,  d.d_b1), (3,  d.d_b3), (4,  d.d_b4), (5,  d.d_b5),
            (31, d.d_d3), (32, d.d_d1), (33, d.d_d2),
            (51, d.d_f1), (52, d.d_f2), (53, d.d_f3), (54, d.d_f4),
            (60, d.d_g)
    ) AS v(rid, val);
    INSERT INTO banking_project.log_proc_run (proc_name, month_key, step_name, status)
    VALUES ('sp_pnl_step3_gl_split', p_month, v_step, 'OK');

EXCEPTION WHEN OTHERS THEN
    INSERT INTO banking_project.log_proc_run (proc_name, month_key, step_name, status, note)
    VALUES ('sp_pnl_step3_gl_split', p_month, v_step, 'FAIL', SQLERRM);
    RAISE;
END; $$;

-- KIỂM TRA TỪNG THỦ TỤC BƯỚC (gọi lẻ được, bảng của bước khác giữ nguyên):
-- CALL sp_pnl_step1_driver(202302);
-- SELECT report_id, COUNT(*) FROM tmp_pnl_step1_driver
--     WHERE month_key = 202302 GROUP BY 1; -- 9 mã nhân 7 vùng = 63 dòng
-- CALL sp_pnl_step2_ratio(202302);
-- SELECT report_id, SUM(value) FROM tmp_pnl_step2_ratio
--     WHERE month_key = 202302 GROUP BY 1 ORDER BY 1; -- mỗi mã tổng tỷ lệ = 1
-- CALL sp_pnl_step3_gl_split(202302);
-- SELECT area_code, COUNT(*) FROM tmp_pnl_step3_gl_split
--     WHERE month_key = 202302 GROUP BY 1; -- 'A' có 16 mã, mỗi vùng 'B'..'H' có 13 mã
