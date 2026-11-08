-- =====================================================================
-- BẢNG DANH MỤC QUẢN LÝ KINH DOANH VÙNG (dim_asm)
-- Vị trí trong quy trình: Giai đoạn 2 - Bước 2.1 (Tạo bảng danh mục nhân sự ASM).
-- Vai trò:
--   - Trích xuất danh sách 84 Quản lý khu vực (ASM) duy nhất từ bảng tiếp nhận stg_asm_target,
--     gán cho mỗi người một mã định danh số nguyên (asm_id từ 1 đến 84).
--   - Các bảng tính toán (tmp_xh_step1_asm_avg, fct_asm_value) chỉ lưu asm_id để tối ưu
--     dung lượng và tốc độ kết nối; họ tên, email và mã vùng được tra cứu từ bảng này.
-- =====================================================================
SET search_path TO banking_project, public;

CREATE TABLE IF NOT EXISTS dim_asm (
    asm_id      INT NOT NULL,              -- Mã số định danh duy nhất của mỗi ASM (1..84)
    sale_name   VARCHAR(100) NOT NULL,     -- Họ và tên Quản lý khu vực
    email       VARCHAR(100) NOT NULL,     -- Địa chỉ email (khoá tự nhiên nhận diện nhân sự)
    area_code   VARCHAR(10),               -- Mã vùng kinh doanh ('B'..'H'), nối sang dim_area.area_code
    PRIMARY KEY (asm_id),
    CONSTRAINT uq_dim_asm_email UNIQUE (email)
);
ALTER TABLE dim_asm DROP COLUMN IF EXISTS area_name CASCADE;

CREATE INDEX IF NOT EXISTS idx_dim_asm_area
    ON dim_asm (area_code);

-- Đồng bộ danh sách 84 Quản lý vùng từ bảng tiếp nhận stg_asm_target (chạy lại không bị trùng dòng)
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
