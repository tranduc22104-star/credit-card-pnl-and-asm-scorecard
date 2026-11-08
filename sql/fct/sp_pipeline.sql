-- =====================================================================
-- THỦ TỤC ĐIỀU PHỐI TOÀN BỘ PIPELINE TÍNH TOÁN (sp_pipeline.sql)
-- Vị trí trong quy trình: Giai đoạn 2 - Bước 2.3 (Chạy tự động toàn bộ kho dữ liệu).
-- Vai trò:
--   - Đóng gói toàn bộ luồng tính toán của cả 2 báo cáo (Báo cáo Lãi lỗ 7 vùng và
--     Báo cáo Xếp hạng 84 ASM) vào 2 thủ tục điều phối cấp cao:
--       1. sp_run_pipeline(p_month_key) : Chạy trọn vẹn báo cáo Lãi lỗ, đồng bộ danh mục ASM
--                                         và chấm điểm Xếp hạng ASM cho 1 kỳ báo cáo tháng.
--       2. sp_run_all_months()          : Làm mới danh mục lịch/nhân sự và chạy tự động tuần tự
--                                         cả 5 tháng (từ 202301 đến 202305) chỉ bằng một lệnh CALL.
-- =====================================================================

SET search_path TO banking_project, public;

-- 1. Thủ tục chạy trọn vẹn luồng tính toán cho 1 tháng (p_month_key)
CREATE OR REPLACE PROCEDURE sp_run_pipeline(p_month_key INT)
LANGUAGE plpgsql AS $$
BEGIN
    RAISE NOTICE 'Bắt đầu chạy pipeline cho tháng % ...', p_month_key;

    -- Bước 1: Tính toán và phân bổ Báo cáo Lãi lỗ (P&L) 7 vùng (ghi kết quả vào bảng fct_pnl_value)
    CALL sp_baocao_tonghop(p_month_key);

    -- Bước 2: Đồng bộ bổ sung danh sách Quản lý khu vực (ASM) từ bảng stg_asm_target vào dim_asm
    INSERT INTO dim_asm (asm_id, sale_name, email, area_code)
    SELECT 
        s.asm_id,
        s.sale_name,
        s.email,
        s.area_code
    FROM (
        SELECT 
            ROW_NUMBER() OVER (ORDER BY COALESCE(area_code, 'ZZ'), LOWER(TRIM(email)))::INT AS asm_id,
            TRIM(sale_name) AS sale_name,
            LOWER(TRIM(email)) AS email,
            TRIM(area_code) AS area_code
        FROM (
            SELECT DISTINCT email, sale_name, area_code
            FROM banking_project.stg_asm_target
            WHERE email IS NOT NULL AND TRIM(email) <> ''
        ) t
    ) s
    ON CONFLICT (email) DO UPDATE SET
        sale_name = EXCLUDED.sale_name,
        area_code = EXCLUDED.area_code;

    -- Bước 3: Chấm điểm và xếp hạng Quản lý khu vực (ASM) theo 2 trụ cột (ghi kết quả vào bảng fct_asm_value)
    CALL sp_xephang_asm(p_month_key);

    RAISE NOTICE 'Hoàn thành pipeline cho tháng % thành công.', p_month_key;
END;
$$;

-- 2. Thủ tục chạy tự động toàn bộ 5 tháng từ đầu năm (202301 đến 202305)
CREATE OR REPLACE PROCEDURE sp_run_all_months()
LANGUAGE plpgsql AS $$
DECLARE
    m INT;
    months INT[] := ARRAY[202301, 202302, 202303, 202304, 202305];
BEGIN
    -- Bước 1: Khởi tạo lại bảng danh mục tháng (dim_month), ngày (dim_date) và định biên SM (dim_sm_headcount)
    CALL sp_load_dim();

    -- Bước 2: Lặp qua từng tháng từ tháng 1 đến tháng 5 năm 2023 để tính toán toàn bộ 2 báo cáo
    FOREACH m IN ARRAY months LOOP
        CALL sp_run_pipeline(m);
    END LOOP;

    RAISE NOTICE 'Hoàn thành toàn bộ pipeline cho cả 5 tháng (202301 - 202305).';
END;
$$;
