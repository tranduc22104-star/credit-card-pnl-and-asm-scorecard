-- =====================================================================
-- KHỞI TẠO 3 BẢNG TIẾP NHẬN DỮ LIỆU NGUỒN (STAGING TABLES)
-- Vị trí trong quy trình: Giai đoạn 2 - Bước 1 (Nạp liệu qua DBeaver Import).
-- Vai trò: Lưu trữ nguyên bản dữ liệu thô từ 3 tệp Excel gốc của ngân hàng
-- trước khi chuẩn hoá sang các bảng danh mục (dim_) và tính toán (tmp_, fct_).
--   1. stg_fact_txn_month : Sổ bút toán kế toán (63.489 dòng, 5 tháng đầu năm 2023)
--   2. stg_fact_kpi_month : Sao kê dư nợ hợp đồng thẻ (2.905.752 dòng, 5 tháng)
--   3. stg_asm_target     : Chỉ tiêu kinh doanh của 84 Quản lý vùng (420 dòng)
-- =====================================================================

SET search_path TO banking_project, public;

-- 1. Bảng tiếp nhận Sổ bút toán kế toán (nguồn tính doanh thu và chi phí báo cáo lãi lỗ)
CREATE TABLE IF NOT EXISTS banking_project.stg_fact_txn_month (
    transaction_date date,                      -- Ngày hạch toán giao dịch
    txn_month integer,                          -- Tháng hạch toán (dạng YYYYMM, ví dụ 202302)
    prov character varying(10),                 -- Mã tỉnh/đơn vị phát sinh ('00' là Hội sở, '01'..'63' là tỉnh)
    account_code character varying(30),         -- Mã tài khoản kế toán (đầu 7 là thu nhập, đầu 8 là chi phí)
    account_description text,                   -- Diễn giải tên tài khoản kế toán
    analysis_code character varying(50),        -- Mã phân tích chi tiết bút toán
    amount numeric,                             -- Số tiền hạch toán (đồng): thu nhập dương, chi phí âm
    d_c character(1)                            -- Tính chất Nợ/Có (Debit/Credit)
);

-- 2. Bảng tiếp nhận Sao kê hợp đồng tín dụng (nguồn tính hệ số phân bổ và tỷ lệ nợ xấu)
CREATE TABLE IF NOT EXISTS banking_project.stg_fact_kpi_month (
    kpi_month integer,                          -- Tháng chốt sao kê hợp đồng (YYYYMM)
    pos_cde character varying(30),              -- Mã điểm giao dịch phát hành thẻ
    pos_city character varying(100),            -- Tên tỉnh/thành phố gốc trên hồ sơ
    pos_city_norm character varying(100),       -- Tên tỉnh/thành phố đã chuẩn hoá chữ thường để nối bảng vùng
    application_id character varying(50),       -- Mã định danh hợp đồng thẻ
    outstanding_principal numeric,              -- Dư nợ gốc nội bảng cuối tháng (đồng)
    write_off_month integer,                    -- Tháng hợp đồng bị xoá nợ khỏi bảng cân đối (YYYYMM, nếu có)
    write_off_balance_principal numeric,        -- Số dư nợ gốc đã xoá nợ (write-off, đồng)
    psdn integer,                               -- Cờ phát sinh dư nợ của thẻ (1: có phát sinh dư nợ, 0: không)
    max_bucket character varying(20)            -- Nhóm nợ cao nhất của hợp đồng ('1': đủ tiêu chuẩn, '2': cần chú ý, '3'..'5': nợ xấu)
);

-- 3. Bảng tiếp nhận Chỉ tiêu kinh doanh cá nhân của từng Quản lý vùng (ASM)
CREATE TABLE IF NOT EXISTS banking_project.stg_asm_target (
    month_key integer,                          -- Tháng đánh giá kết quả (YYYYMM)
    area_code character varying(10),            -- Mã vùng kinh doanh ('B'..'H')
    sale_name character varying(100),           -- Họ và tên Quản lý khu vực (ASM)
    email character varying(100),               -- Địa chỉ thư điện tử (dùng làm khoá nhận diện duy nhất mỗi ASM)
    ltn_amount numeric,                         -- Doanh số cho vay mới (Loan To New) trong tháng (đồng)
    psdn_count integer,                         -- Số lượng thẻ phát sinh dư nợ mới trong tháng (thẻ)
    app_approved integer,                       -- Số lượng hồ sơ mở thẻ được phê duyệt trong tháng
    app_in integer,                             -- Tổng số lượng hồ sơ mở thẻ tiếp nhận trong tháng
    approval_rate numeric                       -- Tỷ lệ duyệt hồ sơ trong tháng (%)
);
