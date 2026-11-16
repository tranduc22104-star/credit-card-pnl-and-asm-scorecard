-- =====================================================================
-- VIEW MA TRẬN BÁO CÁO TỔNG HỢP LÃI LỖ XOAY NGANG (v_baocao_pnl_excel_pivoted)
-- Vị trí trong quy trình: Giai đoạn 2 - Bước 3 (Đầu ra View báo cáo sạch cho Power BI Import).
-- Vai trò:
--   - Dựng sẵn bảng ma trận báo cáo lãi lỗ gồm 32 dòng chỉ tiêu (sort_order từ 30 đến 340
--     trong bảng dim_report_detail) nhân với 5 tháng = 160 dòng, phục vụ trực tiếp bảng tổng hợp
--     trên trang "Báo cáo tổng hợp lãi lỗ" của Power BI.
--   - Cấu trúc các cột xoay ngang đúng theo mẫu báo cáo tài chính ngân hàng:
--       + Cột "TIÊU CHÍ"           : Tên 32 chỉ tiêu báo cáo lãi lỗ (report_name)
--       + Cột "HỘI SỞ"             : Số liệu gốc phát sinh tại Hội sở (area_code = 'A') trước khi phân bổ
--       + 7 cột vùng ('B' đến 'H') : Số liệu sau phân bổ của từng vùng kinh doanh
--       + Cột "Total"              : Tổng cộng của cả 7 vùng mạng lưới kinh doanh ('B'..'H')
--                                    (Đối với dòng tiền: lấy SUM 7 vùng; Đối với 4 dòng tỷ số CIR/Margin/HS Vốn/HSBQ:
--                                     tính trực tiếp trên tổng danh mục toàn hàng, tránh lỗi cộng dồn tỷ lệ %)
-- =====================================================================

SET search_path TO banking_project, public;

DROP VIEW IF EXISTS v_baocao_pnl_pivot;
DROP VIEW IF EXISTS v_baocao_pnl_excel_pivoted;

CREATE VIEW v_baocao_pnl_excel_pivoted AS
WITH tot_agg AS (
    SELECT 
        month_key,
        SUM(CASE WHEN report_id = 70 AND area_code IN ('B','C','D','E','F','G','H') THEN value END) AS tot_lntt,
        SUM(CASE WHEN report_id = 24 AND area_code IN ('B','C','D','E','F','G','H') THEN value END) AS tot_cp_kdv,
        SUM(CASE WHEN report_id = 40 AND area_code IN ('B','C','D','E','F','G','H') THEN value END) AS tot_toi,
        SUM(CASE WHEN report_id = 56 AND area_code IN ('B','C','D','E','F','G','H') THEN value END) AS tot_opex,
        SUM(CASE WHEN report_id = 80 AND area_code IN ('B','C','D','E','F','G','H') THEN value END) AS tot_dt_h,
        SUM(CASE WHEN report_id = 90 AND area_code IN ('B','C','D','E','F','G','H') THEN value END) AS tot_sm
    FROM banking_project.fct_pnl_value
    GROUP BY month_key
)
SELECT
    m.month_key,
    d.sort_order,
    d.report_id,
    d.report_name                                                                  AS "TIÊU CHÍ",
    CASE WHEN d.unit = 'header' THEN NULL ELSE COALESCE(MAX(f.value) FILTER (WHERE f.area_code = 'A'), 0) END AS "HỘI SỞ",
    CASE WHEN d.unit = 'header' THEN NULL ELSE COALESCE(MAX(f.value) FILTER (WHERE f.area_code = 'B'), 0) END AS "Đông Bắc Bộ",
    CASE WHEN d.unit = 'header' THEN NULL ELSE COALESCE(MAX(f.value) FILTER (WHERE f.area_code = 'C'), 0) END AS "Tây Bắc Bộ",
    CASE WHEN d.unit = 'header' THEN NULL ELSE COALESCE(MAX(f.value) FILTER (WHERE f.area_code = 'D'), 0) END AS "Đồng Bằng Sông Hồng",
    CASE WHEN d.unit = 'header' THEN NULL ELSE COALESCE(MAX(f.value) FILTER (WHERE f.area_code = 'E'), 0) END AS "Bắc Trung Bộ",
    CASE WHEN d.unit = 'header' THEN NULL ELSE COALESCE(MAX(f.value) FILTER (WHERE f.area_code = 'F'), 0) END AS "Nam Trung Bộ",
    CASE WHEN d.unit = 'header' THEN NULL ELSE COALESCE(MAX(f.value) FILTER (WHERE f.area_code = 'G'), 0) END AS "Tây Nam Bộ",
    CASE WHEN d.unit = 'header' THEN NULL ELSE COALESCE(MAX(f.value) FILTER (WHERE f.area_code = 'H'), 0) END AS "Đông Nam Bộ",
    CASE 
        WHEN d.unit = 'header' THEN NULL
        WHEN d.report_id = 91 THEN ROUND(-t.tot_opex / NULLIF(t.tot_toi, 0) * 100, 2)
        WHEN d.report_id = 92 THEN ROUND(t.tot_lntt / NULLIF(t.tot_dt_h, 0) * 100, 2)
        WHEN d.report_id = 93 THEN ROUND(t.tot_lntt / NULLIF(-t.tot_cp_kdv, 0) * 100, 2)
        WHEN d.report_id = 94 THEN ROUND(t.tot_lntt / NULLIF(t.tot_sm, 0), 2)
        ELSE COALESCE(SUM(f.value) FILTER (WHERE f.area_code IN ('B','C','D','E','F','G','H')), 0) 
    END AS "Total"
FROM (
    SELECT DISTINCT month_key FROM banking_project.fct_pnl_value
) m
CROSS JOIN banking_project.dim_report_detail d
LEFT JOIN banking_project.fct_pnl_value f
    ON f.month_key = m.month_key AND f.report_id = d.report_id
LEFT JOIN tot_agg t
    ON t.month_key = m.month_key
WHERE d.report_group = 'PNL' AND d.sort_order < 999
GROUP BY m.month_key, d.sort_order, d.report_id, d.report_name, d.unit, t.tot_lntt, t.tot_cp_kdv, t.tot_toi, t.tot_opex, t.tot_dt_h, t.tot_sm
ORDER BY m.month_key, d.sort_order;