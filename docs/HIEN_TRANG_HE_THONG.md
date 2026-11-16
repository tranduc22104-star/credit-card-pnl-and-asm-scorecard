# HIỆN TRẠNG HỆ THỐNG (cập nhật 2026-11-15)

## 1. Kiến trúc tổng thể & Kết nối (Quy trình 3 giai đoạn)
- **Công cụ & Cơ sở dữ liệu**: DBeaver 24 + PostgreSQL 16 (`localhost:5432`, database `postgres`, schema `banking_project`) + Power BI Desktop (bảng màu chủ đạo **Pure Yellow**).
- **Quy trình xử lý kỹ thuật 3 giai đoạn**:
  1. **Giai đoạn 1 — Tìm dữ liệu đầu vào (Excel – 3 File Số Liệu)**:
     - **1. Dữ liệu hạch toán mỗi tháng (GL)** (`fact_txn_month_raw_data_202402020504.xlsx` — **63.134** dòng: 62.953 dòng đơn vị mạng lưới + 181 dòng Hội sở mã `'00'`): *Chứa* bút toán thu - chi thực tế của 7 vùng & Hội sở ➔ *Dùng để* gán trực tiếp vào vùng và tổng hợp báo cáo lãi lỗ (P&L) lũy kế 7 vùng.
     - **2. Dữ liệu sao kê thẻ mỗi tháng** (`fact_kpi_month_raw_data_202402020653.xlsx` — **2.932.922** dòng, 117,2 MB): *Chứa* dư nợ, hạn mức, doanh số chi tiêu & nhóm nợ của từng hợp đồng thẻ ➔ *Dùng để* tính tỷ lệ phân bổ chi phí Hội sở và kiểm soát nợ xấu (NPL).
     - **3. Dữ liệu kết quả sale của ASM mỗi tháng** (`kpi_asm_data_202305.xlsx` — **420** dòng cho **84** nhân sự ASM trong 5 tháng): *Chứa* chỉ tiêu giao & kết quả thực hiện bán hàng (thẻ mới, kích hoạt, doanh số) ➔ *Dùng để* tính tỷ lệ hoàn thành KPI, điểm quy mô và chấm điểm xếp hạng ASM.
  2. **Giai đoạn 2 — Lưu trữ & Xử lý dữ liệu tự động (PostgreSQL + DBeaver)**:
     - **Bước 1 (Nạp liệu)**: Khởi tạo bảng qua `sql/dim/init_staging_tables.sql` và dùng DBeaver Import nạp trực tiếp 3 tệp Excel vào 3 bảng `stg_fact_txn_month`, `stg_fact_kpi_month`, `stg_asm_target` (khớp thứ tự 1–2–3 của Giai đoạn 1).
     - **Bước 2 (Tính toán)**: Thực thi kịch bản SQL tạo 7 bảng danh mục (`dim_`), 6 bảng tạm 3 bước (`tmp_pnl_step1..3`, `tmp_xh_step1..3`), 2 bảng sự kiện (`fct_pnl_value`, `fct_asm_value`) và 1 bảng nhật ký (`log_proc_run`) thông qua **11 Stored Procedures** (điều phối tự động toàn bộ 5 tháng bằng lệnh `CALL banking_project.sp_run_all_months();`).
     - **Bước 3 (Đầu ra View báo cáo)**: Dựng **3 View sạch** trong `sql/rpt/` (`v_baocao_tonghop`, `v_xephang_asm`, `v_baocao_pnl_excel_pivoted`) phục vụ trực tiếp cho Power BI.
  3. **Giai đoạn 3 — Trực quan các báo cáo (Power BI)**:
     - Mô hình `output/Ket qua kinh doanh va xep hang asm.pbix` kết nối trực tiếp vào PostgreSQL (`DirectQuery`), vận hành **90 measure DAX** (**89** trong `'LAI LO (Visuals & DAX)'` và **1** trong `'Data Glossary'`, gồm bộ HTML Trang 4 `KPI_Cards_DanhGiaHieuQua_HTML` & `Insight_DanhGiaHieuQua_HTML`, bộ 4 khối Trang 6 `ASM_Block1_Top3_Selected_Radar_HTML_v2`, `ASM_Block2_Bottom3_Selected_Radar_HTML_v2`, `ASM_Block3_All_Regions_Radar_HTML_v2`, `Insight_DanhGiaHieuQua_HTML1`, bộ 4 khối Trang 7 `Page5_Part1..4`, cùng hệ thống 21 measure định dạng có điều kiện màu nền `PnlTable_BgColor_*` & màu chữ `PnlTable_FontColor_*` cho bảng P&L vùng) và bảng `Data Glossary` (**68 chỉ tiêu nghiệp vụ chuẩn hóa** chia làm 5 phân nhóm).
     - Xuất bản **7 trang báo cáo** đồng bộ theo bảng màu **Pure Yellow** (`#545400`, `#858500`, `#FFFF00`, `#FFFFE8`, `#253659`, `#16A34A`, `#DC2626`):
       * **Trang 1 (`GIỚI THIỆU ĐỀ TÀI`)** (`1920x1900`): Tổng quan đề bài, 4 nhóm báo cáo chính, 3 nguồn dữ liệu đầu vào và sơ đồ quy trình kỹ thuật 3 giai đoạn (`images/quy-trinh.png` với nhãn `Import` và `DirectQuery`).
       * **Trang 2 (`TỪ ĐIỂN DỮ LIỆU`)** (`1920x1080`): Tra cứu 68 trường biến và chỉ tiêu nghiệp vụ ngân hàng.
       * **Trang 3 (`BÁO CÁO KẾT QUẢ KINH DOANH LUỸ KẾ VÙNG`)** (`1920x1080`): *Chứa* 32 chỉ tiêu tài chính P&L lũy kế (từ `v_baocao_pnl_excel_pivoted`) *để* tra cứu và đối soát số liệu thu – chi – lãi lỗ của 7 vùng và Hội sở (dòng `1. Lợi nhuận trước thuế` tô vàng `#FFFF00`, tổng cấp 1 ô-liu `#545400` chữ sáng, dòng chi tiết nền kem/trắng, số âm chữ đỏ `#DC2626`).
       * **Trang 4 (`ĐÁNH GIÁ HIỆU QUẢ KINH DOANH VÙNG`)** (`1920x1800`): 5 thẻ KPI lớn (`KPI_Cards_DanhGiaHieuQua_HTML`) tách rõ số phát sinh tháng và lũy kế đầu năm, biểu đồ thác nước phát sinh tháng, biểu đồ bong bóng Lợi nhuận vs CIR, biểu đồ cột & đường xu hướng theo tháng và khung `Insight_DanhGiaHieuQua_HTML` tự động đổi nội dung theo Tháng & Khu Vực.
       * **Trang 5 (`BÁO CÁO XẾP HẠNG ASM`)** (`1920x1080`): Bảng tổng hợp điểm xếp hạng 26 chỉ tiêu đối chiếu của 74–84 ASM để khen thưởng cá nhân xuất sắc và hỗ trợ nhân sự yếu.
       * **Trang 6 (`ĐÁNH GIÁ NĂNG LỰC ASM`)** (`1920x2360`): 4 khối Radar & phân nhóm: Top 3 Dẫn đầu (3 tab chuyển người), 3 người Cuối bảng (3 tab), Năng lực Toàn hàng / Theo vùng, và Khối phân nhóm 4 loại dễ hiểu (*Bán tốt - Nợ thấp*, *Bán tốt - Nợ cao*, *Bán chậm - Nợ thấp*, *Bán kém - Nợ cao*).
       * **Trang 7 (`KẾT QUẢ KINH DOANH CỦA DOANH NGHIỆP VÀ ĐỀ XUẤT`)** (`1920x2350`): 4 thẻ KPI tổng quan toàn hàng, biểu đồ thác nước cấu trúc lợi nhuận 250,5 tỷ đồng kèm 3 thẻ vùng nổi bật (bao gồm Đông Nam Bộ lỗ −48,8 tỷ kéo 16/19 tức 84% quản lý xuống nhóm cuối) và bảng `Kế hoạch hành động trọng tâm theo vùng kinh doanh` 5 cột (`Mức độ`, `Khu vực`, `Thực trạng hiện tại`, `Giải pháp cần làm`, `Mục tiêu hướng tới`).

---

## 2. Dữ liệu trong kho PostgreSQL (`banking_project`)
Kho dữ liệu gồm **19 bảng vật lý** (7 `dim_` · 3 `stg_` · 6 `tmp_` · 2 `fct_` · 1 `log_`) + **3 view báo cáo** + **11 thủ tục lưu trữ** (5 thủ tục điều phối `sp_load_dim`, `sp_baocao_tonghop`, `sp_xephang_asm`, `sp_run_pipeline`, `sp_run_all_months` và 6 thủ tục bước `sp_pnl_step1..3`, `sp_xh_step1..3`):

| Nhóm | Tên bảng / View | Số dòng | Số cột | Ghi chú chi tiết |
|---|---|---:|---:|---|
| `dim_` | `dim_area` | 8 | 2 | 8 mã vùng (`'A'` Hội sở và `'B'..'H'` 7 vùng kinh doanh) |
| `dim_` | `dim_param_area` | 64 | 3 | Ánh xạ 64 tỉnh thành vào 8 vùng (`city_code`, `city_name`, `area_code`) |
| `dim_` | `dim_month` | 5 | 7 | 5 tháng `202301..202305` kèm `ngay_dau_thang`, `ngay_cuoi_thang`, `so_ngay_trong_thang` |
| `dim_` | `dim_date` | 151 | 9 | Trục ngày tự sinh từ `dim_month` (31 · 28 · 31 · 30 · 31 ngày) |
| `dim_` | `dim_sm_headcount` | 35 | 3 | Định biên nhân sự Sale Manager theo 7 vùng × 5 tháng |
| `dim_` | `dim_asm` | 84 | 4 | Danh mục 84 Quản lý vùng (`asm_id`, `sale_name`, `email`, `area_code`) |
| `dim_` | `dim_report_detail` | 55 | 6 | Cây chỉ tiêu báo cáo (33 dòng/tiêu đề P&L `sort_order` 30..340 + 22 chỉ tiêu Xếp hạng ASM) |
| `stg_` | `stg_fact_txn_month` | 63.134 | 8 | Sổ cái kế toán GL (62.953 dòng mạng lưới + 181 dòng Hội sở) |
| `stg_` | `stg_fact_kpi_month` | 2.932.922 | 10 | Sao kê dư nợ hợp đồng thẻ 5 tháng |
| `stg_` | `stg_asm_target` | 420 | 9 | Chỉ tiêu kinh doanh 84 ASM × 5 tháng |
| `tmp_` | `tmp_pnl_step1_driver` | 315 | 4 | 9 tiêu thức phân bổ P&L theo 7 vùng × 5 tháng |
| `tmp_` | `tmp_pnl_step2_ratio` | 560 | 4 | 16 tỷ lệ phân bổ (`SUM = 1` cho mỗi `report_id`) |
| `tmp_` | `tmp_pnl_step3_gl_split` | 535 | 4 | Tách bút toán Hội sở `'A'` và trực tiếp vùng `'B'..'H'` |
| `tmp_` | `tmp_xh_step1_asm_avg` | 1.164 | 4 | Bình quân lũy kế 3 chỉ số quy mô của từng ASM |
| `tmp_` | `tmp_xh_step2_npl_area` | 105 | 4 | Tỷ lệ nợ xấu mở rộng của 7 vùng × 5 tháng |
| `tmp_` | `tmp_xh_step3_fin_area` | 315 | 4 | 4 chỉ số tài chính vùng + thứ hạng + điểm FIN |
| `fct_` | `fct_pnl_value` | 1.115 | 4 | Kết quả P&L dạng dọc; LNTT tháng `202302` = **92.226,347 triệu đồng**, tháng `202305` = **250.450,061 triệu đồng** |
| `fct_` | `fct_asm_value` | 8.536 | 4 | Kết quả xếp hạng ASM dạng dọc; Top 1 tháng `202302` là **Hoàng Văn Nam** (**34 điểm**) |
| `log_` | `log_proc_run` | 208 | 7 | Nhật ký chạy thủ tục tự động, **0 dòng `FAIL`** |
| `rpt_` | `v_baocao_tonghop` | 35 | 32 | View P&L 7 vùng × 5 tháng (đơn vị triệu đồng, có cột `sort` 1..7) |
| `rpt_` | `v_xephang_asm` | 388 | 28 | View xếp hạng ASM 5 tháng (đơn vị triệu đồng, có cột `sort` theo `rank_final`) |
| `rpt_` | `v_baocao_pnl_excel_pivoted` | 160 | 13 | View bảng tổng hợp lãi lỗ xoay ngang 32 dòng × 5 tháng chuẩn giao diện bảng tổng hợp Trang 3 trên Power BI |

---

## 3. Chủ sở hữu của từng tệp SQL trong `sql/`

| Đường dẫn tệp SQL | Đối tượng khởi tạo và quản lý |
|---|---|
| `sql/dim/init_staging_tables.sql` | Khởi tạo cấu trúc 3 bảng staging: `stg_fact_txn_month`, `stg_fact_kpi_month`, `stg_asm_target` |
| `sql/dim/dim_area.sql` | Tạo và nạp dữ liệu tĩnh cho `dim_area` (8 vùng) và `dim_param_area` (64 tỉnh thành) |
| `sql/dim/dim_month_headcount.sql` | Tạo `dim_month`, `dim_date`, `dim_sm_headcount` và thủ tục `sp_load_dim()` |
| `sql/dim/dim_asm.sql` | Tạo và đồng bộ `dim_asm` (84 quản lý vùng) từ `stg_asm_target` |
| `sql/dim/dim_report_detail.sql` | Tạo và nạp 55 dòng danh mục chỉ tiêu báo cáo vào `dim_report_detail` |
| `sql/tmp/tmp_pnl_step.sql` | Tạo 3 bảng `tmp_pnl_step1..3` và 3 thủ tục bước `sp_pnl_step1..3` |
| `sql/tmp/tmp_xh_step.sql` | Tạo 3 bảng `tmp_xh_step1..3` và 3 thủ tục bước `sp_xh_step1..3` |
| `sql/fct/fct_pnl_allocation.sql` | Tạo `log_proc_run`, `fct_pnl_value` và thủ tục `sp_baocao_tonghop` |
| `sql/fct/fct_xephang_asm.sql` | Tạo `fct_asm_value` và thủ tục `sp_xephang_asm` |
| `sql/fct/sp_pipeline.sql` | Tạo thủ tục điều phối tổng `sp_run_pipeline(p_month_key)` và `sp_run_all_months()` |
| `sql/rpt/rpt_pnl_view.sql` | Tạo view `v_baocao_tonghop` |
| `sql/rpt/rpt_xephang_view.sql` | Tạo view `v_xephang_asm` |
| `sql/rpt/rpt_pnl_excel_pivoted_view.sql` | Tạo view `v_baocao_pnl_excel_pivoted` |

---

## 4. Phạm vi bộ tệp đẩy lên GitHub (`.staging/push_check.py`)
- Bộ đẩy hiện tại gồm **22 tệp** (~8,9 MiB): `README.md`, `README_eng.md`, 4 tệp trong `docs/`, 2 tệp sơ đồ kỹ thuật trong `images/` (`quy-trinh.png`, `thiet-ke-schema.png`), 1 tệp sản phẩm `.pbix` trong `output/` (`Ket qua kinh doanh va xep hang asm.pbix`) và 13 tệp SQL trong `sql/`.
- Kiểm tra an toàn bằng `python .staging/push_check.py`, `python .staging/check_toc.py` và `python .staging/check_int_pair.py` trước mỗi lần commit/push: đảm bảo 0 lộ mật khẩu, 0 tệp vượt trần GitHub, 0 liên kết gãy và 0 lệch số liệu giữa hai bản README song ngữ.
