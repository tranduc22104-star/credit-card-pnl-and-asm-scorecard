-- =====================================================================
-- BẢNG DANH MỤC CHỈ TIÊU BÁO CÁO (dim_report_detail)
-- Vị trí trong quy trình: Giai đoạn 2 - Bước 2.1 (Tạo từ điển chỉ tiêu cho cả 2 báo cáo).
-- Vai trò:
--   - Lưu trữ cây phân cấp chỉ tiêu của Báo cáo Lãi lỗ ('PNL') và Báo cáo Xếp hạng ASM ('XH').
--   - Là từ điển trung tâm để giải nghĩa cột report_id trong các bảng dọc (tmp_ và fct_).
--   - Cấu trúc cột:
--       + report_group : Phân nhóm báo cáo ('PNL' = Lãi lỗ vùng, 'XH' = Xếp hạng ASM)
--       + report_id    : Mã số chỉ tiêu cố định (nhóm PNL: 1..121; nhóm XH: 201..222)
--       + parent_id    : Mã chỉ tiêu cha trên cây phân cấp (-1 là chỉ tiêu cấp cao nhất)
--       + sort_order   : Thứ tự sắp xếp dòng từ trên xuống dưới theo đúng biểu mẫu báo cáo
--       + unit         : Đơn vị tính ('VND', 'count', 'pct', 'rank', 'score', 'header')
-- =====================================================================
SET search_path TO banking_project, public;

DROP TABLE IF EXISTS dim_report_detail CASCADE;
CREATE TABLE dim_report_detail (
    report_group VARCHAR(3)   NOT NULL,   -- Nhóm báo cáo: 'PNL' hoặc 'XH'
    report_id    INT          NOT NULL,   -- Mã định danh chỉ tiêu
    report_name  VARCHAR(120) NOT NULL,   -- Tên chỉ tiêu hiển thị trên báo cáo
    parent_id    INT          NOT NULL DEFAULT -1, -- Mã chỉ tiêu tổng cấp trên (-1 nếu là dòng gốc)
    sort_order   INT          NOT NULL,   -- Thứ tự hiển thị dòng trên báo cáo
    unit         VARCHAR(10)  NOT NULL,   -- Đơn vị tính: VND / count / pct / rank / score / header
    PRIMARY KEY (report_group, report_id)
);
CREATE INDEX idx_report_detail_parent
    ON dim_report_detail (report_group, parent_id);

-- 01. NHÓM 'PNL' — 32 dòng hiển thị chính (sort_order 30..340) và 1 dòng trung gian (mã 80, sort_order 999)
-- Thứ tự sort_order 30..340 khớp từng dòng với cấu trúc Báo cáo tổng hợp lãi lỗ trên Power BI và Excel mẫu
INSERT INTO dim_report_detail
    (report_group, report_id, report_name, parent_id, sort_order, unit)
VALUES
    -- Dòng 1: Chỉ tiêu kết quả cuối cùng A = E + F + G
    ('PNL', 70,  '1. Lợi nhuận trước thuế',                                    -1,  30, 'VND'),
    -- Cụm B (mã 11 = tổng các mã 1..5): Thu nhập từ hoạt động thẻ tín dụng
    ('PNL', 11,  'Thu nhập từ hoạt động thẻ',                                  70,  40, 'VND'),
    ('PNL',  1,  '  Lãi trong hạn',                                            11,  50, 'VND'),
    ('PNL',  2,  '  Lãi quá hạn',                                              11,  60, 'VND'),
    ('PNL',  3,  '  Phí Bảo hiểm',                                             11,  70, 'VND'),
    ('PNL',  4,  '  Phí tăng hạn mức',                                         11,  80, 'VND'),
    ('PNL',  5,  '  Phí thanh toán chậm, thu từ ngoại bảng, khác…',            11,  90, 'VND'),
    -- Cụm C (mã 24 = tổng các mã 21..23): Chi phí thuần Kinh doanh vốn (KDV)
    ('PNL', 24,  'Chi phí thuần KDV',                                          70, 100, 'VND'),
    ('PNL', 111, '  DT Nguồn vốn',                                             24, 110, 'VND'),
    ('PNL', 21,  '  CP vốn TT 2',                                              24, 120, 'VND'),
    ('PNL', 22,  '  CP vốn TT 1',                                              24, 130, 'VND'),
    ('PNL', 23,  '  CP vốn CCTG',                                              24, 140, 'VND'),
    -- Cụm D (mã 34 = tổng các mã 31..33): Chi phí thuần hoạt động khác
    ('PNL', 34,  'Chi phí thuần hoạt động khác',                               70, 150, 'VND'),
    ('PNL', 116, '  DT Fintech',                                               34, 160, 'VND'),
    ('PNL', 117, '  DT tiểu thương, cá nhân',                                  34, 170, 'VND'),
    ('PNL', 31,  '  DT Kinh doanh',                                            34, 180, 'VND'),
    ('PNL', 32,  '  CP hoa hồng',                                              34, 190, 'VND'),
    ('PNL', 33,  '  CP thuần KD khác',                                         34, 200, 'VND'),
    ('PNL', 121, '  CP hợp tác kd tàu (net)',                                  34, 210, 'VND'),
    -- Cụm E (mã 40 = B + C + D) và Cụm F (mã 56 = tổng các mã 51..54): Tổng thu nhập & Tổng chi phí hoạt động
    ('PNL', 40,  'Tổng thu nhập hoạt động',                                    70, 220, 'VND'),
    ('PNL', 56,  'Tổng chi phí hoạt động',                                     70, 230, 'VND'),
    ('PNL', 51,  '  CP thuế, phí',                                             56, 240, 'VND'),
    ('PNL', 52,  '  CP nhân viên',                                             56, 250, 'VND'),
    ('PNL', 53,  '  CP quản lý',                                               56, 260, 'VND'),
    ('PNL', 54,  '  CP tài sản',                                               56, 270, 'VND'),
    -- Cụm G (mã 60: Chi phí dự phòng rủi ro tín dụng) & Cụm J (mã 90: Định biên nhân sự Sale Manager)
    ('PNL', 60,  'Chi phí dự phòng',                                           70, 280, 'VND'),
    ('PNL', 90,  '2. Số lượng nhân sự ( Sale Manager )',                       -1, 290, 'count'),
    -- Cụm Chỉ số tài chính (mã 95 là dòng tiêu đề nhóm; các mã 91..94 là 4 tỷ số hiệu quả tài chính)
    ('PNL', 95,  '3. Chỉ số tài chính',                                        -1, 300, 'header'),
    ('PNL', 91,  '  CIR (%)',                                                  95, 310, 'pct'),
    ('PNL', 92,  '  Margin (%)',                                               95, 320, 'pct'),
    ('PNL', 93,  '  Hiệu suất trên/vốn (%)',                                   95, 330, 'pct'),
    ('PNL', 94,  '  Hiệu suất BQ/ Nhân sự',                                    95, 340, 'VND'),
    -- Chỉ tiêu trung gian H (mã 80 = Thu nhập thẻ B + DT Kinh doanh D3), dùng làm mẫu số tính Margin (mã 92)
    ('PNL', 80,  'Tổng doanh thu (H = B + D3)',                                -1, 999, 'VND');

-- 02. NHÓM 'XH' — 22 mã chỉ tiêu đánh giá và xếp hạng Quản lý vùng (ASM)
-- Chia làm 2 trụ cột: Trụ cột Quy mô phát triển kinh doanh (201..210) và Trụ cột Tài chính vùng (211..220),
-- kết thúc bằng Tổng điểm (221) và Hạng tổng kết toàn hàng (222).
INSERT INTO dim_report_detail
    (report_group, report_id, report_name, parent_id, sort_order, unit)
VALUES
    ('XH', 201, 'LTN binh quan YTD',            -1,  10, 'VND'),
    ('XH', 205, 'Rank LTN',                     209,  20, 'rank'),
    ('XH', 202, 'PSDN binh quan YTD',           -1,  30, 'count'),
    ('XH', 206, 'Rank PSDN',                    209,  40, 'rank'),
    ('XH', 203, 'Ty le duyet binh quan YTD',     -1,  50, 'pct'),
    ('XH', 207, 'Rank ty le duyet',              209,  60, 'rank'),
    ('XH', 204, 'NPL truoc WO luy ke',          -1,  70, 'pct'),
    ('XH', 208, 'Rank NPL',                     209,  80, 'rank'),
    ('XH', 209, 'Diem quy mo (QM)',             221,  90, 'score'),
    ('XH', 210, 'Rank PTKD (diem QM)',          209, 100, 'rank'),
    ('XH', 211, 'CIR cua vung',                 -1, 110, 'pct'),
    ('XH', 212, 'Rank CIR',                     219, 120, 'rank'),
    ('XH', 213, 'Margin cua vung',              -1, 130, 'pct'),
    ('XH', 214, 'Rank Margin',                  219, 140, 'rank'),
    ('XH', 215, 'He so von cua vung',           -1, 150, 'pct'),
    ('XH', 216, 'Rank he so von',               219, 160, 'rank'),
    ('XH', 217, 'HSBQ nhan su cua vung',        -1, 170, 'VND'),
    ('XH', 218, 'Rank HSBQ',                    219, 180, 'rank'),
    ('XH', 219, 'Diem tai chinh (FIN)',         221, 190, 'score'),
    ('XH', 220, 'Rank FIN (diem FIN)',          219, 200, 'rank'),
    ('XH', 221, 'Tong diem (QM + FIN)',          -1, 210, 'score'),
    ('XH', 222, 'Rank tong ket',                 -1, 220, 'rank');
