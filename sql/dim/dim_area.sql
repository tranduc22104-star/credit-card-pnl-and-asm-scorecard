-- =====================================================================
-- KHỞI TẠO BẢNG DANH MỤC VÙNG (dim_area) VÀ ÁNH XẠ TỈNH THÀNH (dim_param_area)
-- Dữ liệu tĩnh nghiệp vụ ngân hàng: 8 vùng địa lý và 64 tỉnh/thành phố.
-- Chạy trực tiếp trong SQL, không cần thông qua file Excel bên ngoài.
-- =====================================================================

SET search_path TO banking_project, public;

-- 1. Bảng danh mục 8 vùng (Hội sở 'A' và 7 vùng kinh doanh 'B'..'H')
CREATE TABLE IF NOT EXISTS dim_area (
    area_code VARCHAR(10) PRIMARY KEY,
    area_name VARCHAR(100) NOT NULL
);

INSERT INTO dim_area (area_code, area_name) VALUES
('A', 'Hội Sở'),
('B', 'Đông Bắc Bộ'),
('C', 'Tây Bắc Bộ'),
('D', 'Đồng Bằng Sông Hồng'),
('E', 'Bắc Trung Bộ'),
('F', 'Nam Trung Bộ'),
('G', 'Tây Nam Bộ'),
('H', 'Đông Nam Bộ')
ON CONFLICT (area_code) DO UPDATE SET area_name = EXCLUDED.area_name;

-- 2. Bảng ánh xạ 64 tỉnh thành vào 8 vùng
CREATE TABLE IF NOT EXISTS dim_param_area (
    city_code VARCHAR(10) PRIMARY KEY,
    city_name VARCHAR(100) NOT NULL,
    area_code VARCHAR(10) REFERENCES dim_area(area_code)
);

CREATE INDEX IF NOT EXISTS idx_dim_param_area_code ON dim_param_area(area_code);

INSERT INTO dim_param_area (city_code, city_name, area_code) VALUES
('00', 'Hội Sở', 'A'),
('01', 'An Giang', 'G'),
('02', 'Bắc Giang', 'B'),
('03', 'Bắc Kạn', 'B'),
('04', 'Bạc Liêu', 'G'),
('05', 'Bắc Ninh', 'D'),
('06', 'Bến Tre', 'G'),
('07', 'Bình Định', 'F'),
('08', 'Bình Dương', 'H'),
('09', 'Bình Phước', 'H'),
('10', 'Bình Thuận', 'F'),
('11', 'Cà Mau', 'G'),
('12', 'Cần Thơ', 'G'),
('13', 'Cao Bằng', 'B'),
('14', 'Đà Nẵng', 'F'),
('15', 'Đắk Lắk', 'F'),
('16', 'Đắk Nông', 'F'),
('17', 'Điện Biên', 'C'),
('18', 'Đồng Nai', 'H'),
('19', 'Đồng Tháp', 'G'),
('20', 'Gia Lai', 'F'),
('21', 'Hà Giang', 'B'),
('22', 'Hà Nam', 'D'),
('23', 'Hà Nội', 'D'),
('24', 'Hà Tĩnh', 'E'),
('25', 'Hải Dương', 'D'),
('26', 'Hải Phòng', 'D'),
('27', 'Hậu Giang', 'G'),
('28', 'Hồ Chí Minh', 'H'),
('29', 'Hòa Bình', 'C'),
('30', 'Hưng Yên', 'D'),
('31', 'Khánh Hòa', 'F'),
('32', 'Kiên Giang', 'G'),
('33', 'Kon Tum', 'F'),
('34', 'Lai Châu', 'C'),
('35', 'Lâm Đồng', 'F'),
('36', 'Lạng Sơn', 'B'),
('37', 'Lào Cai', 'C'),
('38', 'Long An', 'G'),
('39', 'Nam Định', 'D'),
('40', 'Nghệ An', 'E'),
('41', 'Ninh Bình', 'D'),
('42', 'Ninh Thuận', 'F'),
('43', 'Phú Thọ', 'B'),
('44', 'Phú Yên', 'F'),
('45', 'Quảng Bình', 'E'),
('46', 'Quảng Nam', 'F'),
('47', 'Quảng Ngãi', 'F'),
('48', 'Quảng Ninh', 'B'),
('49', 'Quảng Trị', 'E'),
('50', 'Sóc Trăng', 'G'),
('51', 'Sơn La', 'C'),
('52', 'Tây Ninh', 'H'),
('53', 'Thái Bình', 'D'),
('54', 'Thái Nguyên', 'B'),
('55', 'Thanh Hóa', 'E'),
('56', 'Huế', 'E'),
('57', 'Tiền Giang', 'G'),
('58', 'Trà Vinh', 'G'),
('59', 'Tuyên Quang', 'B'),
('60', 'Vĩnh Long', 'G'),
('61', 'Vĩnh Phúc', 'D'),
('62', 'Vũng Tàu', 'H'),
('63', 'Yên Bái', 'C')
ON CONFLICT (city_code) DO UPDATE SET city_name = EXCLUDED.city_name, area_code = EXCLUDED.area_code;
