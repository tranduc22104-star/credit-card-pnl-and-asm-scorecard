-- =====================================================================
-- BẢNG DANH MỤC THỜI GIAN (dim_month, dim_date) VÀ ĐỊNH BIÊN NHÂN SỰ (dim_sm_headcount)
-- Vị trí trong quy trình: Giai đoạn 2 - Bước 2.1 (Tạo bảng danh mục và thủ tục sp_load_dim).
-- Vai trò:
--   1. dim_month        : Danh mục 5 tháng báo cáo (202301..202305), làm trục thời gian chính.
--   2. dim_date         : Danh mục 151 ngày chi tiết được sinh tự động từ dim_month.
--   3. dim_sm_headcount : Định biên nhân sự Quản lý bán hàng (Sale Manager - SM) thực tế tại
--                         từng vùng (tổng 73 SM), dùng làm hệ số phân bổ Chi phí hoạt động (OPEX)
--                         và làm mẫu số tính Hiệu suất bình quân trên một nhân sự.
-- =====================================================================
SET search_path TO banking_project, public;

-- 1. Bảng danh mục tháng (dim_month): mỗi dòng là một kỳ báo cáo tháng (YYYYMM)
DROP TABLE IF EXISTS dim_month CASCADE;
CREATE TABLE dim_month (
    month_key            INT PRIMARY KEY,   -- Mã tháng định dạng YYYYMM (ví dụ: 202301)
    nam                  INT NOT NULL,      -- Năm báo cáo (2023)
    thang                INT NOT NULL,      -- Tháng trong năm (1..5)
    ten_thang            VARCHAR(20) NOT NULL, -- Tên hiển thị trên bộ lọc báo cáo ('Thang 1'..'Thang 5')
    ngay_dau_thang       DATE NOT NULL,     -- Ngày đầu tháng (ví dụ: 2023-01-01)
    ngay_cuoi_thang      DATE NOT NULL,     -- Ngày chốt số cuối tháng (ví dụ: 2023-01-31)
    so_ngay_trong_thang  INT NOT NULL       -- Tổng số ngày lịch của tháng (28, 30 hoặc 31 ngày)
);

-- 2. Bảng danh mục ngày (dim_date): mỗi dòng là một ngày lịch, tự động suy ra từ dim_month
-- Phục vụ việc tra cứu lịch chi tiết hoặc mở rộng báo cáo theo ngày mà không làm phình bảng sự kiện tháng.
DROP TABLE IF EXISTS dim_date CASCADE;
CREATE TABLE dim_date (
    date_key           INT PRIMARY KEY,    -- Mã ngày định dạng YYYYMMDD (ví dụ: 20230115)
    ngay               DATE NOT NULL,      -- Ngày kiểu DATE chuẩn
    nam                INT NOT NULL,
    thang              INT NOT NULL,
    ngay_trong_thang   INT NOT NULL,       -- Ngày thứ mấy trong tháng (1 đến 31)
    month_key          INT NOT NULL,       -- Khoá nối sang bảng dim_month (YYYYMM)
    so_thu             INT NOT NULL,       -- Thứ trong tuần theo chuẩn ISO (1: Thứ Hai .. 7: Chủ Nhật)
    ten_thu            VARCHAR(10) NOT NULL,
    la_ngay_cuoi_thang BOOLEAN NOT NULL,   -- Cờ đánh dấu ngày chốt số cuối tháng (TRUE/FALSE)
    UNIQUE (ngay)
);
CREATE INDEX IF NOT EXISTS idx_dim_date_month
    ON dim_date (month_key);

-- 3. Bảng định biên nhân sự Quản lý bán hàng theo vùng (dim_sm_headcount)
-- Lưu ý phân biệt nghiệp vụ:
--   - sm_count ở bảng này là số lượng Sale Manager (SM) thực tế tại vùng (tổng 73 người toàn mạng lưới),
--     dùng để chia Chi phí hoạt động (OPEX) và tính Hiệu suất bình quân/nhân sự trên báo cáo P&L.
--   - Khác với bảng dim_asm (84 Quản lý khu vực - ASM) ở báo cáo Xếp hạng thi đua cá nhân.
DROP TABLE IF EXISTS dim_sm_headcount CASCADE;
CREATE TABLE dim_sm_headcount (
    month_key INT NOT NULL,                -- Mã tháng (YYYYMM)
    area_code VARCHAR(10) NOT NULL,        -- Mã vùng kinh doanh ('B'..'H')
    sm_count  INT NOT NULL,                -- Số lượng nhân sự Sale Manager của vùng trong tháng
    PRIMARY KEY (month_key, area_code)
);

-- 4. Thủ tục sp_load_dim(): Nạp dữ liệu chuẩn cho 3 bảng dim_month, dim_date, dim_sm_headcount
CREATE OR REPLACE PROCEDURE sp_load_dim()
LANGUAGE plpgsql AS $$
BEGIN
    TRUNCATE TABLE dim_month;
    -- Khi cần mở rộng thêm tháng mới, chỉ cần thêm mã YYYYMM vào mảng dưới đây
    INSERT INTO dim_month (month_key, nam, thang, ten_thang,
                           ngay_dau_thang, ngay_cuoi_thang, so_ngay_trong_thang)
    SELECT mk,
           mk / 100,
           mk % 100,
           'Thang ' || (mk % 100),
           make_date(mk / 100, mk % 100, 1),
           (make_date(mk / 100, mk % 100, 1) + INTERVAL '1 month - 1 day')::date,
           EXTRACT(DAY FROM (make_date(mk / 100, mk % 100, 1)
                             + INTERVAL '1 month - 1 day')::date)::int
    FROM unnest(ARRAY[202301, 202302, 202303, 202304, 202305]) AS mk;

    -- Tự động sinh toàn bộ các ngày lịch trong từng tháng từ bảng dim_month
    TRUNCATE TABLE dim_date;
    INSERT INTO dim_date (date_key, ngay, nam, thang, ngay_trong_thang,
                          month_key, so_thu, ten_thu, la_ngay_cuoi_thang)
    SELECT (EXTRACT(YEAR FROM d.ngay)::INT * 10000
            + EXTRACT(MONTH FROM d.ngay)::INT * 100
            + EXTRACT(DAY FROM d.ngay)::INT),
           d.ngay,
           m.nam,
           m.thang,
           EXTRACT(DAY FROM d.ngay)::INT,
           m.month_key,
           EXTRACT(ISODOW FROM d.ngay)::INT,
           CASE EXTRACT(ISODOW FROM d.ngay)::INT
               WHEN 1 THEN 'Thu 2'
               WHEN 2 THEN 'Thu 3'
               WHEN 3 THEN 'Thu 4'
               WHEN 4 THEN 'Thu 5'
               WHEN 5 THEN 'Thu 6'
               WHEN 6 THEN 'Thu 7'
               ELSE 'Chu nhat'
           END,
           d.ngay = m.ngay_cuoi_thang
    FROM dim_month m
    CROSS JOIN LATERAL (
        SELECT generate_series(m.ngay_dau_thang, m.ngay_cuoi_thang,
                               INTERVAL '1 day')::date AS ngay
    ) d;

    -- Nạp định biên nhân sự Sale Manager (SM) cho 7 vùng kinh doanh ('B'..'H') qua 5 tháng
    TRUNCATE TABLE banking_project.dim_sm_headcount;
    INSERT INTO banking_project.dim_sm_headcount (month_key, area_code, sm_count) VALUES
    (202301,'B',8),(202301,'C',7),(202301,'D',22),(202301,'E',5),(202301,'F',5),(202301,'G',11),(202301,'H',15),
    (202302,'B',8),(202302,'C',7),(202302,'D',22),(202302,'E',5),(202302,'F',5),(202302,'G',11),(202302,'H',15),
    (202303,'B',8),(202303,'C',7),(202303,'D',22),(202303,'E',5),(202303,'F',5),(202303,'G',11),(202303,'H',15),
    (202304,'B',8),(202304,'C',7),(202304,'D',22),(202304,'E',5),(202304,'F',5),(202304,'G',11),(202304,'H',15),
    (202305,'B',8),(202305,'C',7),(202305,'D',22),(202305,'E',5),(202305,'F',5),(202305,'G',11),(202305,'H',15);
END; $$;

CALL sp_load_dim();

-- Dọn bỏ bảng danh mục cũ không còn sử dụng (nếu tồn tại từ phiên bản trước)
DROP TABLE IF EXISTS dim_pnl_line_item CASCADE;

-- Kiểm tra nhanh số dòng của các bảng danh mục sau khi khởi tạo
SELECT 'dim_area' AS tbl, COUNT(*) FROM dim_area
UNION ALL SELECT 'dim_param_area', COUNT(*) FROM dim_param_area
UNION ALL SELECT 'dim_month', COUNT(*) FROM dim_month
UNION ALL SELECT 'dim_date', COUNT(*) FROM dim_date;

-- Kiểm tra trục thời gian tháng: ngày chốt số phải rơi đúng vào ngày cuối cùng của tháng
SELECT month_key, ten_thang, ngay_dau_thang, ngay_cuoi_thang, so_ngay_trong_thang
FROM dim_month ORDER BY month_key;

-- Kiểm tra bảng ngày: tổng số ngày mỗi tháng phải khớp với dim_month
SELECT month_key, COUNT(*) AS so_dong, MIN(ngay) AS ngay_dau, MAX(ngay) AS ngay_cuoi,
       COUNT(*) FILTER (WHERE la_ngay_cuoi_thang) AS so_ngay_chot,
       COUNT(*) FILTER (WHERE so_thu IN (6, 7)) AS so_ngay_cuoi_tuan
FROM dim_date GROUP BY month_key ORDER BY month_key;
