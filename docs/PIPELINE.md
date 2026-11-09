# Kiến Trúc Pipeline Xử Lý Dữ Liệu — Báo Cáo Lãi Lỗ Vùng Và Xếp Hạng Quản Lý Vùng

Tài liệu này mô tả chi tiết kiến trúc luồng dữ liệu của hệ thống báo cáo quản trị mảng thẻ tín dụng, chuẩn hóa theo **Quy trình xử lý kỹ thuật 3 giai đoạn (Excel ➔ PostgreSQL + DBeaver ➔ Power BI)**. Nghiệp vụ lõi gồm hai báo cáo hàng tháng: **báo cáo lãi lỗ bảy vùng** (tổng bằng phần gán thẳng theo mã đơn vị cộng với phần phân bổ quỹ hội sở theo tỉ lệ, mọi số lấy lũy kế từ đầu năm) và **báo cáo xếp hạng quản lý vùng** (hai trụ điểm: phát triển quy mô kinh doanh, và hiệu quả tài chính cùng rủi ro). Kho dữ liệu là PostgreSQL, schema `banking_project`, hiện có **19 bảng · 3 view · 11 thủ tục** (năm thủ tục điều phối và sáu thủ tục bước).

---

## 1. Sơ Đồ Luồng Tổng Thể (3 Giai Đoạn)

```
┌────────────────────────────────────────────────────────────────────────────────────────────────────────────┐
│ QUY TRÌNH XỬ LÝ KỸ THUẬT (3 GIAI ĐOẠN: EXCEL ➔ POSTGRESQL + DBEAVER ➔ POWER BI)                            │
├────────────────────────────────────────────────────────────────────────────────────────────────────────────┤
│                                                                                                            │
│ ┌────────────────────────────────┐     ┌───────────────────────────────────────┐     ┌───────────────────┐ │
│ │ GIAI ĐOẠN 1                    │     │ GIAI ĐOẠN 2                           │     │ GIAI ĐOẠN 3       │ │
│ │ TÌM DỮ LIỆU ĐẦU VÀO            │     │ LƯU TRỮ & XỬ LÝ DỮ LIỆU TỰ ĐỘNG       │     │ TRỰC QUAN BÁO CÁO │ │
│ │ Excel (3 File Số Liệu)         │     │ PostgreSQL + DBeaver                  │     │ Power BI          │ │
│ │                                │     │                                       │     │                   │ │
│ │ 1. Dữ liệu hạch toán mỗi tháng │     │ • BƯỚC 1: NẠP LIỆU (DBeaver Import)   │     │ • 2 Trang Nền     │ │
│ │    (GL) — 63.134 dòng          │ ──► │   stg_fact_txn_month (63.134)         │ ──► │   Tảng            │ │
│ │                                │     │   stg_fact_kpi_month (2.932.922)      │     │                   │ │
│ │ 2. Dữ liệu sao kê thẻ mỗi      │     │   stg_asm_target     (420)            │     │ • 2 Báo Cáo Tra   │ │
│ │    tháng — 2.932.922 dòng      │     │                 ▼                     │     │   Cứu & Tổng Hợp  │ │
│ │                                │     │ • BƯỚC 2: TÍNH TOÁN (PL/pgSQL)        │     │                   │ │
│ │ 3. Dữ liệu kết quả sale của    │     │   1. DDL Danh mục (7 bảng dim_)       │     │ • 2 Báo Cáo Trực  │ │
│ │    ASM mỗi tháng — 420 dòng    │     │   2. Bảng tạm 3 bước:                 │     │   Quan Đánh Giá   │ │
│ │                                │     │      tmp_pnl_step1..3, tmp_xh_step1..3│     │                   │ │
│ │                                │     │   3. Bảng sự kiện (2 bảng fct_)       │     │ • 1 Trang Phân    │ │
│ │                                │     │   4. Ghi nhật ký (log_proc_run)       │     │   Tích Sâu        │ │
│ │                                │     │                 ▼                     │     │                   │ │
│ │                                │     │ • BƯỚC 3: ĐẦU RA VIEW (Schema rpt)    │     │ (Tổng 7 trang PBI │ │
│ │                                │     │   v_baocao_tonghop                    │     │  + Từ điển 68 chỉ │ │
│ │                                │     │   v_xephang_asm                       │     │  tiêu + 100 DAX)  │ │
│ │                                │     │   v_baocao_pnl_excel_pivoted          │     │                   │ │
│ └────────────────────────────────┘     └───────────────────────────────────────┘     └───────────────────┘ │
└────────────────────────────────────────────────────────────────────────────────────────────────────────────┘
```

---

## 2. Chi Tiết 3 Giai Đoạn Xử Lý

### Giai Đoạn 1: Tìm Dữ Liệu Đầu Vào (Excel — 3 File Số Liệu)
- **Nguồn dữ liệu**: 3 tệp Excel dữ liệu thô từ các khối nghiệp vụ ngân hàng trong thư mục `input/`:
  1. **Dữ liệu hạch toán mỗi tháng (GL)** (`fact_txn_month_raw_data_202402020504.xlsx` — 1,95 MB, gồm **63.134** dòng bút toán: 62.953 dòng gắn mã đơn vị mạng lưới và 181 dòng chi phí Hội sở mã `'00'`): *Chứa* bút toán thu - chi thực tế của 7 vùng & Hội sở ➔ *Dùng để* gán trực tiếp vào vùng và tổng hợp **P&L lũy kế 7 vùng**.
  2. **Dữ liệu sao kê thẻ mỗi tháng** (`fact_kpi_month_raw_data_202402020653.xlsx` — 117,2 MB, gồm **2.932.922** dòng sao kê hợp đồng thẻ trong 5 tháng `202301..202305`): *Chứa* dư nợ, hạn mức, doanh số chi tiêu & nhóm nợ của từng hợp đồng ➔ *Dùng để* phân bổ chi phí Hội sở theo tỷ lệ và kiểm soát **nợ xấu (NPL)**.
  3. **Dữ liệu kết quả sale của ASM mỗi tháng** (`kpi_asm_data_202305.xlsx` — gồm **420** dòng của **84** nhân sự ASM qua 5 tháng): *Chứa* chỉ tiêu giao & kết quả thực hiện (thẻ mới, kích hoạt, doanh số) ➔ *Dùng để* tính tỷ lệ hoàn thành KPI, điểm quy mô và **chấm điểm xếp hạng ASM**.

### Giai Đoạn 2: Lưu Trữ & Xử Lý Dữ Liệu Tự Động (PostgreSQL + DBeaver)
Triển khai trong schema `banking_project` (**19 bảng · 3 view · 11 thủ tục**) qua 3 bước nội bộ:

#### Bước 1 — Nạp liệu (`sql/dim/init_staging_tables.sql` + DBeaver Import):
- Khởi tạo cấu trúc 3 bảng tiếp nhận dữ liệu thô (`stg_fact_txn_month`, `stg_fact_kpi_month`, `stg_asm_target` — khớp thứ tự 1–2–3 với 3 nguồn dữ liệu ở Giai đoạn 1) và sử dụng công cụ **DBeaver Data Import** đưa trực tiếp dữ liệu từ 3 tệp Excel vào kho PostgreSQL, đồng thời chuẩn hóa chuỗi tên tỉnh thành (`pos_city_norm`) bảo toàn hơn 36.000 hợp đồng thẻ tại Bà Rịa - Vũng Tàu.

#### Bước 2 — Tính toán (`sql/dim/`, `sql/tmp/`, `sql/fct/`):
1. **Khởi tạo 7 bảng danh mục (`sql/dim/`)**:
   - `dim_area.sql`: Dựng `dim_area` (8 vùng từ `'A'` đến `'H'`) và `dim_param_area` (64 tỉnh thành quy về 8 vùng).
   - `dim_month_headcount.sql`: Dựng trục tháng `dim_month` (5 dòng), trục ngày `dim_date` (151 dòng), bảng định biên `dim_sm_headcount` (35 dòng) và thủ tục `sp_load_dim()`.
   - `dim_asm.sql`: Dựng `dim_asm` (84 quản lý vùng).
   - `dim_report_detail.sql`: Dựng cây chỉ tiêu `dim_report_detail` (**55 dòng** gồm 33 chỉ tiêu/tiêu đề P&L và 22 chỉ tiêu Xếp hạng ASM).
2. **Tính toán qua 6 bảng tạm 3 bước (`sql/tmp/`)**:
   - `tmp_pnl_step.sql`: Khai báo 3 bảng tạm dạng dọc `tmp_pnl_step1..3` (`tmp_pnl_step1_driver` 315 dòng, `tmp_pnl_step2_ratio` 560 dòng, `tmp_pnl_step3_gl_split` 535 dòng) và 3 thủ tục bước `sp_pnl_step1..3`.
   - `tmp_xh_step.sql`: Khai báo 3 bảng tạm dạng dọc `tmp_xh_step1..3` (`tmp_xh_step1_asm_avg` 1.164 dòng, `tmp_xh_step2_npl_area` 105 dòng, `tmp_xh_step3_fin_area` 315 dòng) và 3 thủ tục bước `sp_xh_step1..3`.
3. **Tổng hợp bảng sự kiện và ghi nhật ký (`sql/fct/`)**:
   - `fct_pnl_allocation.sql`: Tạo bảng nhật ký `log_proc_run`, bảng sự kiện `fct_pnl_value` (1.115 dòng) và thủ tục `sp_baocao_tonghop(p_month)`.
   - `fct_xephang_asm.sql`: Tạo bảng sự kiện `fct_asm_value` (8.536 dòng) và thủ tục `sp_xephang_asm(p_month)`.
   - `sp_pipeline.sql`: Tạo 2 thủ tục điều phối tổng `sp_run_pipeline(p_month_key)` và `sp_run_all_months()` tự động chạy trọn vẹn cả 5 tháng (`202301..202305`), ghi nhận lịch sử vào `log_proc_run` (208 dòng, 0 dòng `FAIL`).

#### Bước 3 — Đầu ra View báo cáo (`sql/rpt/`):
Khởi tạo **3 View báo cáo sạch** trong schema `banking_project` để Power BI kết nối trực tiếp:
1. `v_baocao_tonghop` (`sql/rpt/rpt_pnl_view.sql` — 35 dòng, 32 cột, đơn vị triệu đồng, lọc `area_code <> 'A'` kèm cột `sort` 1..7).
2. `v_xephang_asm` (`sql/rpt/rpt_xephang_view.sql` — 388 dòng, 28 cột, kèm cột `sort` theo thứ hạng chung cuộc `rank_final` 1..84).
3. `v_baocao_pnl_excel_pivoted` (`sql/rpt/rpt_pnl_excel_pivoted_view.sql` — 160 dòng = 32 dòng chỉ tiêu P&L × 5 tháng, trải ngang 10 cột hiển thị khớp 100% bảng ma trận Trang 3 `BÁO CÁO KẾT QUẢ KINH DOANH VÙNG` trên Power BI).

### Giai Đoạn 3: Trực Quan Các Báo Cáo (Power BI — Executive Orange Theme)
- Tệp `output/Bao cao quan tri va phan tich (Ngan Hang).pbix` kết nối vào PostgreSQL, vận hành **100 measure DAX** (bao gồm bộ measure tính chỉ số KPI, bộ 21 measure định dạng có điều kiện màu nền `PnlTable_BgColor_*` & màu chữ `PnlTable_FontColor_*` cho từng cột bảng P&L vùng, và các visual HTML Content cỡ chữ lớn) cùng bảng `Data Glossary` (**68 chỉ tiêu nghiệp vụ chuẩn hóa**).
- Hệ thống gồm **7 trang báo cáo** đồng bộ theo bảng màu **Executive Orange / Orange Tree**:
  1. **2 Trang Nền Tảng**:
     - Trang 1: `GIỚI THIỆU ĐỀ TÀI` (Tổng quan bối cảnh, 3 nguồn dữ liệu đầu vào, quy trình xử lý kỹ thuật 3 giai đoạn và 4 dashboard đầu ra).
     - Trang 2: `TỪ ĐIỂN DỮ LIỆU` (Ánh xạ chuẩn hóa 68 chỉ tiêu sang thuật ngữ nghiệp vụ ngân hàng).
  2. **2 Bản Báo Cáo Tra Cứu & Tổng Hợp**:
     - Trang 3: `BÁO CÁO KẾT QUẢ KINH DOANH VÙNG` (*Chứa* 32 chỉ tiêu tài chính P&L *để* tra cứu và đối soát số liệu của 7 vùng và Hội sở, tự động phân cấp dòng nền tối chữ sáng `#FFFFFF`/`#FECACA` và dòng chi tiết nền sáng chữ đậm `#0F172A`/`#DC2626`).
     - Trang 4: `BÁO CÁO XẾP HẠNG ASM` (*Chứa* bảng điểm xếp hạng 84 ASM *để* khen thưởng cá nhân xuất sắc và chấn chỉnh nhân sự yếu).
  3. **2 Bản Báo Cáo Trực Quan Hoá Đánh Giá**:
     - Trang 5: `ĐÁNH GIÁ HIỆU QUẢ KINH DOANH VÙNG` (*Chứa* biểu đồ cơ cấu thu – chi – dự phòng *để* so sánh hiệu quả sinh lời giữa 7 vùng).
     - Trang 6: `ĐÁNH GIÁ HIỆU SUẤT ASM` (*Chứa* biểu đồ tương quan doanh số bán hàng và nợ xấu NPL *để* nhận diện các ASM đánh đổi rủi ro lấy quy mô).
  4. **1 Bản Phân Tích Chuyên Sâu**:
     - Trang 7: `INSIGHT` / `PHÂN TÍCH CHUYÊN SÂU VÀ ĐƯA RA KẾT LUẬN` (Khổ canvas `1920x2250` với cỡ chữ lớn sắc nét 19px – 48px: 4 thẻ KPI điều hành, Biểu đồ Thác nước đóng góp LNTT 7 vùng 250,5 tỷ đồng, Bóc tách nghịch lý cơ chế phạt vùng Đông Nam Bộ làm 84% quản lý tụt hạng, và Bảng hành động điều hành 5 địa bàn kèm tác động định lượng).

---

## 3. Hướng Dẫn Vận Hành Trong DBeaver

1. **Khởi tạo bảng tiếp nhận và nạp dữ liệu thô**:
   Chạy `sql/dim/init_staging_tables.sql`, sau đó dùng chức năng **Import Data** của DBeaver nạp 3 tệp Excel vào `stg_fact_txn_month`, `stg_fact_kpi_month`, `stg_asm_target`.
2. **Khởi tạo danh mục, bảng tạm và thủ tục**:
   Chạy lần lượt các kịch bản SQL theo thứ tự lớp:
   - Lớp `sql/dim/`: `dim_area.sql` ➔ `dim_month_headcount.sql` ➔ `dim_asm.sql` ➔ `dim_report_detail.sql`.
   - Lớp `sql/tmp/`: `tmp_pnl_step.sql` ➔ `tmp_xh_step.sql`.
   - Lớp `sql/fct/`: `fct_pnl_allocation.sql` ➔ `fct_xephang_asm.sql` ➔ `sp_pipeline.sql`.
3. **Thực thi tính toán tự động toàn bộ 5 tháng**:
   ```sql
   SET search_path TO banking_project, public;
   CALL sp_run_all_months();
   ```
4. **Khởi tạo 3 View báo cáo đầu ra**:
   Chạy 3 tệp trong `sql/rpt/`: `rpt_pnl_view.sql` ➔ `rpt_xephang_view.sql` ➔ `rpt_pnl_excel_pivoted_view.sql`.
5. **Kiểm tra số đối chiếu chuẩn**:
   - Lợi nhuận trước thuế toàn hàng tháng `202302` đạt **92.226,35 triệu đồng**; tháng `202305` đạt **250.450,06 triệu đồng**.
   - Quán quân bảng xếp hạng ASM tháng `202302` là **Hoàng Văn Nam** với **34 điểm** (`sort = 1`).
