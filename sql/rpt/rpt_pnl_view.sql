-- =====================================================================
-- VIEW BÁO CÁO LÃI LỖ 7 VÙNG THEO ĐƠN VỊ TRIỆU ĐỒNG (v_baocao_tonghop)
-- Vị trí trong quy trình: Giai đoạn 2 - Bước 3 (Đầu ra View báo cáo sạch cho Power BI Import).
-- Vai trò:
--   - Xoay ngang 28 mã chỉ tiêu từ bảng sự kiện dọc (fct_pnl_value) thành 28 cột chỉ số của
--     7 vùng kinh doanh ('B'..'H') qua 5 tháng (7 vùng x 5 tháng = 35 dòng).
--   - Tự động quy đổi toàn bộ các khoản mục tiền tệ sang đơn vị Triệu đồng (chia cho 1.000.000)
--     để phục vụ trực tiếp các biểu đồ phân tích trên Power BI.
--   - Loại bỏ dòng Hội sở ('A') để khi người dùng kéo tổng (SUM) trên Power BI sẽ ra đúng
--     tổng toàn mạng lưới kinh doanh mà không bị tính trùng hai lần.
-- =====================================================================

SET search_path TO banking_project, public;

DROP VIEW IF EXISTS v_baocao_tonghop_vnd;
DROP VIEW IF EXISTS v_baocao_tonghop;

CREATE VIEW v_baocao_tonghop AS
SELECT
    f.month_key                                            AS month_key,
    f.area_code                                            AS area_code,
    MAX(a.area_name)                                       AS area_name,
    CASE f.area_code
        WHEN 'B' THEN 1
        WHEN 'C' THEN 2
        WHEN 'D' THEN 3
        WHEN 'E' THEN 4
        WHEN 'F' THEN 5
        WHEN 'G' THEN 6
        WHEN 'H' THEN 7
        ELSE 8
    END                                                    AS sort,
    MAX(f.value) FILTER (WHERE f.report_id = 1)  / 1e6     AS lai_trong_han_trieu_dong,
    MAX(f.value) FILTER (WHERE f.report_id = 2)  / 1e6     AS lai_qua_han_trieu_dong,
    MAX(f.value) FILTER (WHERE f.report_id = 3)  / 1e6     AS phi_bh_trieu_dong,
    MAX(f.value) FILTER (WHERE f.report_id = 4)  / 1e6     AS phi_tang_hm_trieu_dong,
    MAX(f.value) FILTER (WHERE f.report_id = 5)  / 1e6     AS phi_cham_tra_trieu_dong,
    MAX(f.value) FILTER (WHERE f.report_id = 11) / 1e6     AS thu_nhap_the_trieu_dong,
    MAX(f.value) FILTER (WHERE f.report_id = 24) / 1e6     AS cp_kdv_trieu_dong,
    MAX(f.value) FILTER (WHERE f.report_id = 21) / 1e6     AS von_tt2_trieu_dong,
    MAX(f.value) FILTER (WHERE f.report_id = 22) / 1e6     AS von_tt1_trieu_dong,
    MAX(f.value) FILTER (WHERE f.report_id = 23) / 1e6     AS von_cctg_trieu_dong,
    MAX(f.value) FILTER (WHERE f.report_id = 34) / 1e6     AS cp_hd_khac_trieu_dong,
    MAX(f.value) FILTER (WHERE f.report_id = 31) / 1e6     AS dt_kd_trieu_dong,
    MAX(f.value) FILTER (WHERE f.report_id = 32) / 1e6     AS cp_hoahong_trieu_dong,
    MAX(f.value) FILTER (WHERE f.report_id = 33) / 1e6     AS cp_kd_khac_trieu_dong,
    MAX(f.value) FILTER (WHERE f.report_id = 40) / 1e6     AS tong_thunhap_trieu_dong,
    MAX(f.value) FILTER (WHERE f.report_id = 56) / 1e6     AS tong_chiphi_trieu_dong,
    MAX(f.value) FILTER (WHERE f.report_id = 51) / 1e6     AS cp_thue_trieu_dong,
    MAX(f.value) FILTER (WHERE f.report_id = 52) / 1e6     AS cp_nv_trieu_dong,
    MAX(f.value) FILTER (WHERE f.report_id = 53) / 1e6     AS cp_qly_trieu_dong,
    MAX(f.value) FILTER (WHERE f.report_id = 54) / 1e6     AS cp_ts_trieu_dong,
    MAX(f.value) FILTER (WHERE f.report_id = 60) / 1e6     AS du_phong_trieu_dong,
    MAX(f.value) FILTER (WHERE f.report_id = 80) / 1e6     AS tong_dt_trieu_dong,
    MAX(f.value) FILTER (WHERE f.report_id = 70) / 1e6     AS lntt_trieu_dong,
    MAX(f.value) FILTER (WHERE f.report_id = 90)           AS sm_count,
    MAX(f.value) FILTER (WHERE f.report_id = 91)           AS cir,
    MAX(f.value) FILTER (WHERE f.report_id = 92)           AS margin,
    MAX(f.value) FILTER (WHERE f.report_id = 93)           AS hs_von,
    MAX(f.value) FILTER (WHERE f.report_id = 94) / 1e6     AS nsbq_trieu_dong
FROM banking_project.fct_pnl_value AS f
LEFT JOIN banking_project.dim_area AS a
    ON a.area_code = f.area_code
WHERE f.area_code <> 'A'
GROUP BY f.month_key, f.area_code;

-- Kiểm tra nhanh: SELECT COUNT(*) FROM banking_project.v_baocao_tonghop; -- 35 dòng, bảy vùng nhân năm tháng
