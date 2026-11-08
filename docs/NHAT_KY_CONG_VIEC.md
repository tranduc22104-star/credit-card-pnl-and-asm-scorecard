# NHẬT KÝ CÔNG VIỆC

## DANG DỞ

- Phân tích toàn bộ 13 tệp SQL trong thư mục sql/ và viết lại hệ thống chú thích (comments) trong từng tệp rõ ràng, tường minh về mặt nghiệp vụ ngân hàng và kỹ thuật SQL để người đọc dễ hiểu.

## ĐÃ XONG
### 2026-11-08
222. **Đồng Bộ Toàn Diện 4 Tầng Hệ Thống Theo Quy Trình 3 Giai Đoạn & 3 View Chính Thức**
   - Thực hiện đồng bộ 100% giữa DBeaver (`banking_project`), mã nguồn `sql/`, thư mục `images/` và toàn bộ tài liệu dự án (`README.md`, `README_eng.md`, `docs/PIPELINE.md`, `docs/HIEN_TRANG_HE_THONG.md`):
     1. **Dọn thư mục `images/`**: Lưu trữ 2 ảnh nháp thử nghiệm (`architecture_pipeline_3steps.png`, `pipeline_architecture_user_schema.png`) vào `.staging/archived_files/`, giữ đúng 9 ảnh chính thức trong `images/`.
     2. **Chuẩn hóa `sql/rpt/` và DBeaver**: Loại bỏ `rpt_pnl_matrix_view.sql` và các view phụ (`_vnd`, `v_baocao_pnl_pivot`), chỉ giữ đúng **3 tệp SQL tương ứng 3 View báo cáo sạch** trong `banking_project`: `v_baocao_tonghop` (35 dòng), `v_xephang_asm` (388 dòng), `v_baocao_pnl_excel_pivoted` (160 dòng).
     3. **Cập nhật `README.md` và `README_eng.md`**: Chuyển toàn bộ mô tả quy trình (Mục 5), công cụ (Mục 9), cấu trúc thư mục (Mục 10) sang **Quy trình 3 giai đoạn (Excel ➔ PostgreSQL + DBeaver ➔ Power BI Import)**; nâng hệ thống báo cáo Power BI lên **7 trang** chia làm 3 bộ sản phẩm; đồng bộ Mục 7 Phần C khớp 100% với Trang 7 Power BI (`84%` – `16/19` quản lý vùng tại Đông Nam Bộ, đủ 5 địa bàn kèm cột tác động định lượng).
     4. **Cập nhật `docs/PIPELINE.md` và `docs/HIEN_TRANG_HE_THONG.md`**: Đồng bộ cấu trúc 19 bảng, 3 view, 11 stored procedures (`dim_report_detail` 55 dòng, `log_proc_run` 208 dòng, 0 FAIL) và hướng dẫn vận hành trong DBeaver.
   - Kiểm tra đối soát vượt qua 100% tiêu chí bằng `.staging/check_toc.py` (`ok`), `.staging/check_int_pair.py` (`ok`, 0 lệch số >= 10) và `.staging/push_check.py`.
### 2026-11-08
221. **Chuẩn Hóa Bước 3 Giai Đoạn 2 Trên Infographic Quy Trình (Đúng 3 View Chính Thức Nạp Power BI)**
   - Cập nhật Bước 3 Giai đoạn 2 (`BƯỚC 3: ĐẦU RA VIEW BÁO CÁO`) trên sơ đồ `images/quy-trinh.png` và `workflow_quy_trinh_ky_thuat.html`:
     * Loại bỏ các view đuôi `_vnd` không sử dụng trên Power BI.
     * Chỉ giữ đúng **3 View sạch schema `rpt`** phục vụ trực tiếp hệ thống báo cáo Power BI: `v_baocao_tonghop`, `v_xephang_asm` và `v_baocao_pnl_excel_pivoted`.
     * Căn chỉnh lại độ rộng 3 khung pill cân đối với 3 bảng `stg_*` ở Bước 1, chữ `v_baocao_pnl_excel_pivoted` nằm gọn trong khung, sắc nét tuyệt đối.
### 2026-11-08
220. **Tinh Gọn & Căn Chỉnh Bố Cục Infographic Quy Trình Kỹ Thuật (Xoá Chữ Xám Phụ & Cân Đối 3 Cột)**
   - Tinh chỉnh sơ đồ trực quan Quy trình xử lý kỹ thuật 3 giai đoạn theo yêu cầu của người dùng:
     * **Bước 3 Giai đoạn 2 (Đầu ra View báo cáo)**: Xoá toàn bộ chữ xám phụ bên dưới tên view, chỉ giữ 4 pill tên view (`v_baocao_tonghop`, `v_xephang_asm`, `v_baocao_tonghop_vnd`, `v_xephang_asm_vnd`) nằm gọn gàng trong khung.
     * **Giai đoạn 3 (Trực quan các báo cáo)**: Xoá toàn bộ các dòng chữ xám diễn giải bên dưới, chỉ giữ đúng 3 tiêu đề chính (`2 Bản Báo Cáo Tổng Hợp`, `2 Bản Báo Cáo Được Trực Quan Hoá`, `1 Bản Phân Tích Sâu`) kèm vạch nhấn màu và số thứ tự rõ nét.
     * **Căn chỉnh bố cục & Font chữ**: Thay thế hoàn toàn các ký tự emoji bị lỗi hiển thị ô vuông (`[]`) bằng huy hiệu tròn đánh số `1, 2, 3`; đồng bộ chiều cao điểm đầu và điểm cuối của các khối nội dung trong cả 3 Card thẳng hàng ngang tuyệt đối.
   - Cập nhật đồng bộ tệp ảnh `images/quy-trinh.png` (1200x470 px) và Artifact `workflow_quy_trinh_ky_thuat.html`.
### 2026-11-08
219. **Chuẩn Hóa Infographic Quy Trình Kỹ Thuật (Đúng 3 File Nguồn & Đúng 3 Nhóm Báo Cáo)**
   - Rà soát và chuẩn hóa chính xác nội dung hiển thị trên sơ đồ infographic:
     * **Giai đoạn 1 (Dữ liệu đầu vào)**: Giữ đúng 3 tệp số liệu thô theo ảnh gốc của người dùng:
       1. Sổ Hợp Đồng Tín Dụng (\act_kpi_month\ - 2,9 triệu dòng).
       2. Sổ Bút Toán Kế Toán GL (\act_txn_month\ - 63 nghìn dòng).
       3. Chỉ Tiêu Quản Lý Vùng (\kpi_asm_data\ - 84 nhân sự ASM).
     * **Giai đoạn 2 (Kho dữ liệu & Tính toán SQL)**: Giữ trọn vẹn mini-pipeline 3 bước trực quan: Nạp liệu (\stg_*\), Tính toán (lưới 4 ô PL/pgSQL \dim_\, \	mp_\, \ct_\, \log_proc_run\), Đầu ra (4 View pt\).
     * **Giai đoạn 3 (Trực quan các báo cáo)**: Tinh chỉnh đúng 3 nhóm đầu ra theo yêu cầu:
       1. *2 Bản Báo Cáo Tổng Hợp* (P&L 7 Vùng & Xếp hạng 84 ASM).
       2. *2 Bản Báo Cáo Được Trực Quan Hoá* (Dashboard Lãi Lỗ Trọng Tâm & Dashboard Hiệu Suất/Rủi Ro ASM).
       3. *1 Bản Phân Tích Sâu* (Phân Tích Chuyên Sâu, Thác Nước P&L 250,5 Tỷ & Khung Hành Động Điều Hành).
   - Xuất bản đồng bộ ảnh chất lượng cao \images/quy-trinh.png\ (1200x520 px) và Artifact \workflow_quy_trinh_ky_thuat.html\.

### 2026-11-08
218. **Thiết Kế Lại Infographic Quy Trình Kỹ Thuật 3 Giai Đoạn Thuần Trực Quan (Visual-First Flowchart)**
   - Tái thiết kế toàn bộ sơ đồ quy trình kỹ thuật từ dạng văn bản sang mô hình infographic thuần trực quan (Visual-first Flowchart), loại bỏ hoàn toàn các đoạn văn dài để người xem nắm bắt ngay lập tức qua sơ đồ khối và icon:
     * **Khung Card 1 (DỮ LIỆU ĐẦU VÀO / Excel)**: Trình bày trực quan 4 khối pill entity kèm tên tệp và số liệu định lượng (Sổ Hợp đồng \act_kpi_month\ 2,9M dòng, Sổ Bút toán \act_txn_month\ 63K dòng, Chỉ tiêu \kpi_asm_data\ 84 ASM, Bảng tham số \param_area\).
     * **Khung Card 2 (KHO DỮ LIỆU & TÍNH TOÁN SQL / PostgreSQL + DBeaver)**: Mô hình hóa mini-pipeline 3 bước liên hoàn bằng mũi tên đứng:
       - *Bước 1 (Nạp liệu)*: Khối nạp DBeaver Native Import đổ vào 3 bảng staging \stg_*\.
       - *Bước 2 (Tính toán)*: Lưới 4 ô thực thi PL/pgSQL (1. DDL \dim_*\, 2. Bảng tạm \	mp_*\ 3 bước, 3. Bảng sự kiện \ct_*\, 4. Audit nhật ký \log_proc_run\).
       - *Bước 3 (Đầu ra)*: Khối 4 pill view chuẩn hóa schema pt\ (\_baocao_tonghop\, \_xephang_asm\, \_baocao_pnl_excel_pivoted\, \_baocao_tonghop_vnd\).
     * **Khung Card 3 (TRỰC QUAN CÁC BÁO CÁO / Power BI)**: Phân tầng trực quan 3 nhóm sản phẩm báo cáo (2 Báo cáo Tổng hợp P&L/ASM, 2 Dashboard Trọng tâm đòn bẩy & rủi ro, 1 Trang Phân tích Chuyên sâu Thác nước P&L 250,5 tỷ & Khung hành động).
     * **Mũi tên liên kết giữa các Card**: Bổ sung 2 luồng liên kết rõ ràng có nhãn: \DBeaver Import\ (Card 1 -> Card 2) và \Power BI IMPORT\ (Card 2 -> Card 3).
   - Xuất bản ảnh độ phân giải cao thay thế \images/quy-trinh.png\ (1200x540 px) và tạo Artifact HTML tương tác \workflow_quy_trinh_ky_thuat.html\.

### 2026-11-08
217. **Tạo Workflow Quy Trình Kỹ Thuật 3 Giai Đoạn (DBeaver + PostgreSQL PL/pgSQL + Power BI Import)**
   - Thiết kế và xuất bản sơ đồ Workflow quy trình xử lý kỹ thuật 3 giai đoạn (gồm 3 card song song chuẩn nhận diện hệ thống) bám sát cấu trúc ảnh mẫu:
     * **Card 1 (GIAI ĐOẠN 1 - TÌM DỮ LIỆU ĐẦU VÀO / Excel)**: 3 tệp số liệu thô (sổ hợp đồng 2,9 triệu dòng, sổ giao dịch 63 nghìn dòng, chỉ tiêu 84 nhân sự ASM, bảng tham số).
     * **Card 2 (GIAI ĐOẠN 2 - LƯU TRỮ & XỬ LÝ DỮ LIỆU TỰ ĐỘNG / PostgreSQL + DBeaver)**: Cập nhật chi tiết 3 khâu kỹ thuật:
       - *Nạp liệu*: DBeaver đưa trực tiếp dữ liệu thô từ các file Excel vào kho PostgreSQL (\stg_\).
       - *Tính toán*: Thực thi các script SQL theo thứ tự: DDL tạo danh mục (\dim_\), Stored Procedure 3 bước tính toán tạm (\	mp_\), tổng hợp số liệu sự kiện (\ct_\) và ghi nhật ký (\log_proc_run\).
       - *Đầu ra*: Dựng 4 View báo cáo sạch (pt_\) để Power BI kết nối Import trực tiếp.
     * **Card 3 (GIAI ĐOẠN 3 - TRỰC QUAN CÁC BÁO CÁO / Power BI)**: Nạp số liệu vào mô hình qua chế độ Import, vận hành hệ thống 5 trang báo cáo tương tác và phân tích điều hành.
   - Xuất bản ảnh độ nét cao \images/quy-trinh.png\ (1000x380 px) tích hợp logo chuẩn từ ảnh gốc và tạo Artifact HTML tương tác \workflow_quy_trinh_ky_thuat.html\.

### 2026-11-07
216. **Tái Dựng Sơ Đồ Kiến Trúc Pipeline Chuẩn Cấu Trúc Bảng Thực Tế & Chế Độ Import**
   - Tái dựng toàn diện sơ đồ kiến trúc luồng dữ liệu 3 vùng (Data Sources -> Data Processing -> Reporting/Visualization) bám sát 100% bố cục và phong cách thiết kế của ảnh mẫu:
     * **Cột 1 (DATA SOURCES)**: Giữ 3 tệp nguồn Excel (\act_kpi_month_raw_data\, \act_txn_month_raw_data\, \kpi_asm_data\) kết nối qua luồng \IMPORT\ với biểu trưng DBeaver.
     * **Cột 2 (DATA PROCESSING)**: Thay thế toàn bộ tên bảng cũ sang cấu trúc thực tế của schema \anking_project\:
       - Hàng Dim (4 bảng): \dim_area\, \dim_param_area\, \dim_asm\, \dim_month_headcount\.
       - Hàng Staging (3 bảng): \stg_fact_kpi_month\, \stg_fact_txn_month\, \stg_asm_target\.
       - Hàng Audit (1 bảng): \log_proc_run\ cùng biểu trưng PostgreSQL.
       - Nhánh \PROCEDURE\: Các thủ tục PL/pgSQL nạp ra 2 bảng sự kiện kết quả \ct_pnl_value\ và \ct_asm_value\.
     * **Cột 3 (REPORTING/VISUALIZATION)**: Thay thế mũi tên \DIRECT QUERY\ thành \IMPORT\. Chuẩn hóa 2 trang báo cáo tổng hợp (\BÁO CÁO TỔNG HỢP\, \BÁO CÁO XẾP HẠNG\) nằm trực tiếp trong Power BI, kết nối \VISUALIZE\ vào khối \DASHBOARDS\ cùng biểu trưng Power BI.
   - Xuất bản đồng bộ ra 2 định dạng: Tệp ảnh độ phân giải cao (\images/pipeline_architecture_user_schema.png\ 1600x480) và tệp tương tác HTML (\pipeline_architecture_recreated.html\).

### 2026-11-07
215. **Cập Nhật Toàn Diện Bảng Data Glossary & Measure HTML Trong Power BI Desktop (68 Chỉ Tiêu Nghiệp Vụ Chuẩn)**
   - Tái cấu trúc và mở rộng toàn diện bảng Từ điển dữ liệu nghiệp vụ (\Data Glossary\) và Measure \Data_Glossary_HTML\ trực tiếp trong mô hình Power BI Desktop (\output/Bao cao quan tri va phan tich (Ngan Hang).pbix\) thông qua giao thức TOM API (cổng SSAS 62753), phục vụ người xem nắm bắt 100% logic khi chỉ theo dõi Power BI mà không cần mở file Excel:
     * **Bao phủ đầy đủ 68 chỉ tiêu nghiệp vụ chuẩn hóa** chia làm 5 phân nhóm nghiệp vụ rõ ràng:
       1. *0. Định danh & Phân cấp (Sort 10..30)*: Kỳ báo cáo dồn tích (month_key YTD), Mã vùng (area_code A..H), Tên vùng kinh doanh (area_name).
       2. *1. Báo cáo Lãi Lỗ P&L (Sort 40..350)*: Đủ 32 dòng chuẩn Excel khớp 100% Sheet \BaocaoTonghop\ (LNTT, Thu nhập thẻ TOI kèm 5 dòng lãi/phí; Chi phí thuần KDV kèm DT nguồn vốn & 3 loại CP vốn TT2, TT1, CCTG; Chi phí thuần HĐ khác kèm 6 dòng doanh thu/chi phí đối tác; Tổng thu nhập hoạt động TOI; Tổng chi phí hoạt động OPEX kèm 4 dòng chi phí thuế phí, nhân viên, quản lý, tài sản; Chi phí dự phòng tín dụng; Định biên nhân sự Sale Manager; Tiêu đề phân nhóm Chỉ số tài chính; 4 tỷ số tài chính CIR, Margin, Hiệu suất vốn, Hiệu suất BQ/nhân sự).
       3. *2. Đánh Giá & Xếp Hạng ASM (Sort 360..560)*: Đủ 21 biến số và thứ hạng chuẩn Sheet \BaocaoXepHangASM\ (Email, Tên ASM, Tỉnh/Địa bàn; 4 chỉ số quy mô LTN, PSDN, Approval Rate, NPL bef WO kèm 4 thứ hạng tương ứng; Điểm QM & Xếp hạng QM; 4 thứ hạng tài chính vùng rank CIR, Margin, HS Vốn, HSBQ; Điểm FIN & Xếp hạng FIN; Tổng điểm thi đua & Thứ hạng chung cuộc Rank Final #1..#84).
       4. *3. Nguyên Tắc Phân Bổ (Sort 570..620)*: Giải thích tường minh phương pháp Rule 1 (gán thẳng theo Analysis Code) và Rule 2 (phân bổ Pool Hội sở theo tỷ lệ Driver), kèm 4 bộ Driver nghiệp vụ cốt lõi (DNCK bình quân sau WO nhóm 1, nhóm 2, nhóm 2-5; Số lượng thẻ PSDN; Định biên nhân sự SM; DNCK bình quân trước WO).
       5. *4. Thuật Ngữ Viết Tắt (Sort 630..680)*: Định nghĩa chuẩn xác các từ viết tắt chuyên ngành ngân hàng (DVML, KDV, TT1 & TT2, CCTG, NPL & WO, RSM / BM / ASM / SM).
     * Nâng cấp Measure \Data_Glossary_HTML\ (81.443 ký tự render) với hệ thống badge màu sắc hiện đại (Xanh lá P&L, Xanh dương ASM, Vàng hổ phách Quy tắc phân bổ, Tím Từ viết tắt, Xám Dùng chung), định dạng zebra xen kẽ và highlight tiêu đề phân nhóm ấm áp.
     * Cấu hình thuộc tính \SortByColumn\ liên kết các trường text sang \Sort_Order\, kích hoạt Full Refresh trên SSAS: 68 dòng nạp thành công, 0 lỗi DAX/XMLA.

### 2026-11-07
214. **Đồng Bộ Thứ Tự Sort_Order Khớp 100% 32 Dòng Báo Cáo P&L Chuẩn Excel**
   - Rà soát và đồng bộ toàn diện `sort_order` và tên các chỉ tiêu trong `sql/dim/dim_report_detail.sql` bám sát 100% từng dòng từ Row 3 đến Row 34 của Sheet `BaocaoTonghop_T5` trong file Excel mẫu:
     * Dải `sort_order` chạy từ 30 đến 340 (tương ứng Row 3 đến Row 34): `1. Lợi nhuận trước thuế` (30), `Thu nhập từ hoạt động thẻ` (40), 5 dòng thu nhập thẻ (50..90), `Chi phí thuần KDV` (100), 4 dòng chi phí vốn gồm cả DT Nguồn vốn (110..140), `Chi phí thuần hoạt động khác` (150) kèm 6 dòng hoạt động khác (160..210), `Tổng thu nhập hoạt động` (220), `Tổng chi phí hoạt động` (230) kèm 4 dòng CP hoạt động (240..270), `Chi phí dự phòng` (280), `2. Số lượng nhân sự ( Sale Manager )` (290), `3. Chỉ số tài chính` (300), và 4 chỉ số tài chính CIR, Margin, Hiệu suất vốn, Hiệu suất BQ nhân sự (310..340).
   - Nâng cấp View `sql/rpt/rpt_pnl_excel_pivoted_view.sql`:
     * Bổ sung COALESCE để các dòng giá trị 0 (DT Nguồn vốn, DT Fintech, CP tàu...) hiển thị `0.00` chuẩn xác như file Excel và ảnh mẫu.
     * Dòng tiêu đề `3. Chỉ số tài chính` để trống (NULL) toàn bộ các ô dữ liệu.
   - Cập nhật đồng bộ 3 Measure DAX màu sắc trong Power BI Desktop (`PnlTable_BgColor_TieuChi`, `PnlTable_FontColor_TieuChi`, `PnlTable_BgColor_Values`) theo dải `sort_order` mới và kích hoạt Full Refresh thành công vào mô hình.

### 2026-11-07
213. **Tách Tiêu Đề "3. Chỉ Số Tài Chính" & Chuẩn Hóa Tên 4 Chỉ Số Con Tránh Lặp Chữ**
   - Cập nhật sql/dim/dim_report_detail.sql:
     * Tách riêng dòng tiêu đề nhóm `report_id = 95` mang tên `3. Chỉ số tài chính` (`sort_order = 230`, `unit = 'header'`).
     * Chuẩn hóa tên 4 chỉ số con bỏ tiền tố lặp: `CIR (%)` (sort_order = 240), `Margin (%)` (sort_order = 250), `Hiệu suất trên/vốn (%)` (sort_order = 260), `Hiệu suất BQ/ Nhân sự` (sort_order = 270) theo đúng 100% mẫu Excel đối chiếu.
   - Nâng cấp View sql/rpt/rpt_pnl_excel_pivoted_view.sql (`v_baocao_pnl_excel_pivoted` và `v_baocao_pnl_pivot`): dùng CROSS JOIN danh mục với các tháng để dòng tiêu đề số 3 hiển thị đầy đủ, các ô dữ liệu để rỗng chuẩn xác.
   - Cập nhật 3 Measure màu sắc DAX trong Power BI Desktop (`PnlTable_BgColor_TieuChi`, `PnlTable_FontColor_TieuChi`, `PnlTable_BgColor_Values`): dòng tiêu đề `3. Chỉ số tài chính` nhận màu nền nâu cam (`#C55A11`), chữ trắng; các dòng con bên dưới nhận nền trắng và chữ đen bình thường. Đã kích hoạt Full Refresh trên Power BI.

### 2026-11-07
212. **Bổ Sung Cột Sort Vào 4 Bảng View Báo Cáo P&L Và Xếp Hạng ASM**
   - Cập nhật sql/rpt/rpt_pnl_view.sql và sql/rpt/rpt_xephang_view.sql bổ sung trường sort chuẩn hóa logic nghiệp vụ bám sát Excel:
     * _baocao_tonghop và _baocao_tonghop_vnd: Bổ sung cột sort (1..7 tương ứng 7 vùng kinh doanh từ B đến H theo thứ tự cột chuẩn Excel: Đông Bắc Bộ, Tây Bắc Bộ, ĐB Sông Hồng, Bắc Trung Bộ, Nam Trung Bộ, Tây Nam Bộ, Đông Nam Bộ).
     * _xephang_asm và _xephang_asm_vnd: Bổ sung cột sort lấy trực tiếp từ thứ hạng tổng kết (
ank_final, 1..84) theo đúng thứ tự dòng trong sheet Xếp hạng ASM của file Excel output.
   - Nạp lại 4 view trong PostgreSQL và kiểm tra đối soát:
     * Số dòng toàn vẹn: _baocao_tonghop (35 dòng), _baocao_tonghop_vnd (35 dòng), _xephang_asm (388 dòng), _xephang_asm_vnd (388 dòng).
     * Toàn bộ giá trị sort đều NOT NULL (100% dòng có thứ tự sắp xếp).
     * Tháng 2/2023: LNTT đạt chuẩn **92.226 triệu đồng**; Top 1 ASM: Hoàng Văn Nam (**34 điểm**, sort = 1).

### 2026-11-07
211. **Tạo View Bảng Tổng Hợp Chỉ Số Lãi Lỗ Trải Ngang Chuẩn Excel (v_baocao_pnl_excel_pivoted)**
   - Tạo mới tệp SQL sql/rpt/rpt_pnl_excel_pivoted_view.sql định nghĩa 2 View trải ngang dữ liệu phân bổ P&L:
     * _baocao_pnl_excel_pivoted: Khung nhìn chuẩn hóa với 10 cột hiển thị đúng tên có dấu khớp 100% giao diện Power BI Table visual (TIÊU CHÍ, HỘI SỞ, Đông Bắc Bộ, Tây Bắc Bộ, Đồng Bằng Sông Hồng, Bắc Trung Bộ, Nam Trung Bộ, Tây Nam Bộ, Đông Nam Bộ, Total).
     * _baocao_pnl_pivot: Bản view chuẩn snake_case (	ieu_chi, hoi_so, dong_bac_bo, ..., 	otal) phục vụ truy vấn backend và code SQL.
   - Cơ chế tính toán và liên kết:
     * Nối ct_pnl_value với dim_report_detail (lấy theo nhóm 
eport_group = 'PNL'), giữ nguyên sort_order logic nghiệp vụ.
     * Cột Total tính chuẩn xác theo tổng 7 vùng mạng lưới kinh doanh (B đến H), không bị nhân đôi số liệu pool Hội sở (A).
     * Đối soát kỹ thuật: Tháng 202302 LNTT đạt chuẩn **92.226 triệu đồng**; Tháng 202303 dòng Chi phí dự phòng Hội sở đạt đúng -6.467.791.437,00 VNĐ, tổng 7 vùng -502.875.452.402,68 VNĐ khớp ảnh đối chiếu.

### 2026-11-07
210. **Chuẩn Hóa Cột Sort Theo Excel & Cập Nhật Data Glossary Trong Power BI**
   - Chuẩn hóa thứ tự sắp xếp (sort_order) trong PostgreSQL bám sát 100% thứ tự từng dòng của Báo cáo Lãi lỗ Excel (output/Bao cao lai lo luy ke tu dau nam 202305.xlsx):
     * Cập nhật sql/dim/dim_report_detail.sql: Đặt 1. Lợi nhuận trước thuế lên đầu (sort_order = 10), tiếp theo là Thu nhập hoạt động thẻ (sort_order = 20..70), Chi phí thuần KDV (sort_order = 80..100), Chi phí hoạt động khác (sort_order = 110..140), Chi phí hoạt động chung (sort_order = 160..200), Dự phòng rủi ro (sort_order = 210), Định biên ASM (sort_order = 220) và 4 Chỉ số tài chính (sort_order = 230..260).
     * Tạo mới View sql/rpt/rpt_pnl_matrix_view.sql (
_baocao_pnl_matrix 1.115 dòng) chuẩn hóa dòng cột phục vụ visual Matrix trên Power BI đối chiếu y hệt Sheet 1 Excel.
   - Cập nhật bảng Data Glossary trong Power BI Desktop:
     * Bổ sung trường Sort_Order (10..370) vào Calculated Table Data Glossary.
     * Cấu hình thuộc tính SortByColumn cho cột Tên Nghiệp Vụ / Chỉ Số và Tên Biến Trong Dữ Liệu tự động liên kết với Sort_Order.
     * Cập nhật Measure Data_Glossary_HTML tự động sắp xếp bảng thuật ngữ theo đúng thứ tự logic nghiệp vụ.
### 2026-11-06
209. **Tái Cấu Trúc Toàn Diện Hệ Thống Sang Thuần SQL Không Dùng Python**
   - Hoàn thành tái cấu trúc kiến trúc dự án từ đầu theo mô hình tinh gọn không phụ thuộc runtime Python:
     * Dọn dẹp và lưu trữ toàn bộ các script Python cũ trong ingestion/ vào thư mục .staging/legacy_ingestion/.
     * Xác lập chuẩn đầu vào chỉ gồm đúng 3 file dữ liệu gốc của Ngân hàng trong input/ (stg_fact_txn_month, stg_fact_kpi_month, stg_asm_target). Loại bỏ hoàn toàn sự phụ thuộc vào file thứ tư Tham so va mau doi chieu.xlsx.
     * Toàn bộ bảng danh mục (Dim) như 8 Vùng kinh doanh (dim_area), 64 Tỉnh thành ánh xạ (dim_param_area xử lý chuẩn hóa Bà Rịa - Vũng Tàu), 25 Chỉ tiêu báo cáo LNTT (dim_report_detail), Lịch và định biên nhân sự (dim_month_headcount, dim_sm_headcount) được khởi tạo và nạp dữ liệu mồi thuần túy bằng SQL trong sql/dim/.
     * Dữ liệu 3 bảng Staging được nạp trực tiếp qua cơ chế Native Import của DBeaver / PostgreSQL.
     * Toàn bộ logic phân bổ P&L 7 vùng (Rule 1 & Rule 2) và Xếp hạng đa chiều ASM chạy 100% bằng Stored Procedures PL/pgSQL độc lập trong DB, điều phối qua thủ tục duy nhất CALL banking_project.sp_run_all_months();.
   - Kiểm tra đối soát số liệu kỹ thuật vượt qua 100% tiêu chí chuẩn nghiệp vụ:
     * Tháng 2: LNTT 7 vùng đạt đúng **92,226 triệu đồng**; Top 1 ASM: Hoàng Văn Nam (**34 điểm**).
     * Tháng 5: LNTT 7 vùng đạt đúng **250,450 tỷ đồng** (~250,5 tỷ đồng).
     * Hai View báo cáo kết nối Power BI (
_baocao_tonghop 35 dòng, 
_xephang_asm 388 dòng) hoạt động trơn tru.
### 2026-11-06
208. **Xóa Bỏ Triệt Để Chú Thích Mở Ngoặc Tiếng Anh Rườm Rà Trong README**
   - Rà soát và xóa bỏ toàn diện 40 vị trí mở ngoặc chú thích tiếng Anh rườm rà không cần thiết trong `README.md` theo yêu cầu của người dùng:
     * Mục 7 Phần B: Xóa sạch các cụm `(Observed Facts)`, `(Business Inferences)`, `(Hypotheses Requiring Further Verification)` ở cả 4 vùng kinh doanh.
     * Mục 7 Phần C: Xóa các cụm dịch thuật `(Executive Decision Support)`, `(Executive KPI Cards)`, `(Waterfall Analysis)`.
     * Các đề mục và nội dung quy tắc: Xóa bỏ các cụm tiếng Anh mở ngoặc như `(Initial Business Request)`, `(Refined Business Requirements)`, `(Data Gap Analysis)`, `(P&L Allocation Framework)`, `(Direct Cost Tracing)`, `(Driver-Based Cost Allocation)`, `(Treasury Cost)`, `(Credit Provisioning)`, `(IT & Operations)`, `(General Overhead)`, `(Multi-dimensional ASM Scorecard)`, `(Rank Scaling)`, `(GL Reconciliation)`, `(Mathematical Invariants)`, `(Data Quality Checks)`, `(Business Sanity Checks)`, `(Independent Recalculation & Cross-Audit)`.
   - Giữ nguyên vẹn đúng 3 thuật ngữ kỹ thuật và nghiệp vụ ngân hàng cốt lõi thông dụng: `(Area Sales Manager - ASM)`, `(Waterfall)` và `(audit trail)`.
   - Đối soát thành công 100% bằng `.staging/check_toc.py` (ok), `.staging/check_int_pair.py` (ok) và `.staging/push_check.py` (ok). Cắt task cũ ở cuối danh sách, duy trì nghiêm ngặt trần 50 task gần nhất (208 xuống 159).

207. **Tinh Chỉnh Mục 7 Phần C README Thành Báo Cáo Tóm Tắt Nghiệp Vụ Độc Lập**
   - Tinh chỉnh Mục 7 Phần C trong cả hai bản tài liệu `README.md` (tiếng Việt) và `README_eng.md` (tiếng Anh) theo đúng định hướng sản phẩm của người dùng: README là bản báo cáo tóm tắt độc lập (Executive Summary), song song với bảng điều khiển trực quan Power BI để người đọc có thể linh hoạt lựa chọn phương thức tiếp cận.
   - Loại bỏ hoàn toàn tiền tố tham chiếu "Trang 5: " và không chèn ảnh Power BI vào nội dung văn bản trong Phần C. Viết lại phần mở đầu theo hướng tổng hợp các phát hiện chuyên sâu và căn cứ ra quyết định điều hành (Executive Decision Support Framework).
   - Bảo toàn trọn vẹn 4 tầng phân tích định lượng cốt lõi: 4 chỉ số KPI điều hành trọng yếu, Bóc tách dòng chảy LNTT 7 vùng (đỉnh 299,2 tỷ, vạch đích 250,5 tỷ đồng), Nghịch lý cơ chế phạt vùng Đông Nam Bộ (+26 điểm kịch khung, 74% ASM rơi đáy bảng), và Ma trận hành động điều hành 4 nhóm địa bàn.
   - Kiểm tra đối soát thành công 100% bằng `.staging/check_toc.py`, `.staging/check_int_pair.py` và `.staging/push_check.py`. Cắt task cũ ở cuối danh sách, duy trì nghiêm ngặt trần 50 task gần nhất (207 xuống 158).

206. **Đồng Bộ Trang 5 Phân Tích Chuyên Sâu Lên README & Chuẩn Bị Push Git Toàn Diện**
   - Trích xuất cấu trúc và nội dung trang cuối sau khi người dùng tinh chỉnh trên Power BI Desktop (`output/Bao cao quan tri va phan tich (Ngan Hang).pbix`) và ảnh chụp trang kết luận (`images/ket-luan.png`): Trang 5 mang tên "PHÂN TÍCH CHUYÊN SÂU VÀ ĐƯA RA KẾT LUẬN" với tiêu đề lớn "TỔNG HỢP DỮ LIỆU QUẢN TRỊ & CĂN CỨ RA QUYẾT ĐỊNH ĐIỀU HÀNH NĂM 2023", bố cục 4 tầng thông tin hoàn chỉnh (4 KPI Cards, Thác nước P&L 7 vùng 250,5 tỷ, Nghịch lý cơ chế phạt vùng Đông Nam Bộ +26 điểm, Ma trận hành động điều hành 4 nhóm).
   - Đồng bộ hóa toàn diện nội dung Trang 5 vào cả hai bản tài liệu dự án `README.md` (tiếng Việt) và `README_eng.md` (tiếng Anh) tại Mục 2 và Mục 7 (Phần C).
   - Kiểm tra đối soát thành công 100% bằng `.staging/check_toc.py` (chuẩn hóa anchor mục lục) và `.staging/check_int_pair.py` (khớp đa tập số liệu giữa hai ngôn ngữ).
   - Cập nhật số liệu dung lượng bộ đẩy trong `docs/HIEN_TRANG_HE_THONG.md` (32 tệp, 4,66 MiB).
   - Chạy bộ kiểm `.staging/push_check.py` vượt qua tất cả tiêu chí an toàn (không lộ secret, không file vượt trần GitHub, không liên kết gãy) và tiến hành push Git đồng bộ.

205. **Chuyển Đổi Toàn Bộ Dữ Liệu Sang Biến Động DAX 100% & Khắc Phục Triệt Để Trục Y Biểu Đồ 1**
   - Loại bỏ 100% việc hardcode số tĩnh trên toàn bộ 4 Measure DAX của Power BI Desktop (`Page5_Part1_KPICards_HTML`, `Page5_Part2_Waterfall_HTML`, `Page5_Part3_DongNamBo_HTML`, `Page5_Part4_MatranHanhdong_HTML`), thay thế hoàn toàn bằng các biến động DAX (`VAR v_... = CALCULATE(...)`) tự tính toán trực tiếp từ bảng dữ liệu gốc `banking_project v_baocao_tonghop` và `v_xephang_asm` theo ngữ cảnh tháng của slicer (`vM = SELECTEDVALUE(dim_month[month_key], MAX(dim_month[month_key]))`).
   - Xử lý dứt điểm lỗi lệch số học giữa các tháng (vụ 92,2 tỷ vs 61,4 tỷ): Bản chất 92,2 tỷ là LNTT của Tháng 2, trong khi Tháng 5 đạt 250,5 tỷ đồng. Khi chuyển sang biến động DAX, phương trình toán học Biểu đồ Thác nước tự động khớp chính xác 100% từng số lẻ cho mọi tháng:
     * Tại Tháng 5: ĐBSH (+54,3 tỷ) + NTB (+50,0 tỷ) + TNB (+167,9 tỷ) + 3 Vùng (+27,0 tỷ) = Đỉnh +299,2 tỷ; trừ ĐNB (−48,8 tỷ) = Vạch đích +250,5 tỷ đồng.
     * Tại Tháng 2: Tự động tính đúng 19,3 + 17,3 + 65,1 + 10,8 − 20,4 = 92,2 tỷ đồng.
   - Khắc phục triệt để lỗi thị giác cắt xén chữ trên trục Y Biểu đồ 1:
     * Mở rộng `viewBox` SVG từ `1150 355` lên `1200 355`.
     * Tăng khoảng lề trái an toàn cho nhãn trục Y lên `x=140` (`text-anchor="end"`), dời trục gióng và các cột bắt đầu từ `x=150`, tạo khoảng đệm lề trái rộng 140px, xóa bỏ hoàn toàn hiện tượng các nhãn dài (`+299 tỷ (Đỉnh)`, `+250.5 tỷ (Chốt)`) bị tràn viền và xén mất chữ số đầu.
   - Đồng bộ cập nhật đồng thời trên 3 tầng: File tổng hợp `performance_diagnosis_merged_chart_v2.html` (kèm chú thích tên biến dữ liệu rõ ràng), 4 module HTML độc lập và nạp trực tiếp qua TOM vào 4 Measure trong Power BI Desktop.
   - Verify bằng headless Edge kết xuất ảnh cận cảnh trục Y và toàn trang, khớp chuẩn xác 100%. Cắt task 155 ở cuối danh sách, duy trì nghiêm ngặt trần 50 task gần nhất (205 xuống 156).

204. **Phục Hồi (Rollback) Biểu Đồ 2 Về Phiên Bản Nguyên Bản Thoáng Đãng Theo Yêu Cầu**
   - Phục hồi (rollback) chính xác 100% cấu trúc, nội dung và kiểu dáng giao diện của Biểu đồ 2 (Bóc tách nghịch lý cơ chế đánh giá tại Đông Nam Bộ) về phiên bản nguyên bản theo đúng hình ảnh người dùng tải lên:
     * Cột 1: Điểm phạt vùng `+26 điểm` (Phạt kịch khung Hạng 7/7 toàn hàng) kèm khối giải thích cơ chế ở đáy thẻ.
     * Cột 2: Bảng so sánh Before vs After của 3 quản lý tiêu biểu (Lê Văn Bình, Trần Văn Hải, Trần Văn Anh) với các thẻ thứ hạng xanh/đỏ rõ nét.
     * Cột 3: Hậu quả `74% Quản lý` rơi vào phân vị 25% cuối bảng kèm Hộp kiến nghị tách bạch thẻ điểm nền xanh mint.
   - Đồng bộ cập nhật đồng thời trên 3 tầng: File tổng hợp `performance_diagnosis_merged_chart_v2.html`, module `pbi_part3_bieu_do_2.html` và nạp trực tiếp qua TOM vào Measure `Page5_Part3_DongNamBo_HTML` trên Power BI Desktop.
   - Verify bằng headless Edge kết xuất ảnh đối soát trùng khớp 100% với ảnh yêu cầu của người dùng. Cắt task 154 ở cuối danh sách, duy trì nghiêm ngặt trần 50 task gần nhất (204 xuống 155).

203. **Khắc Phục Triệt Để Lỗi Cắt Xén Chữ Trục Tung Biểu Đồ 1 & Chuẩn Hóa Tọa Độ SVG**
   - Xác định và xử lý dứt điểm lỗi kỹ thuật thị giác trên Biểu đồ 1 (Thác nước P&L 7 vùng): do thuộc tính `text-anchor="end"` đặt tại tọa độ `x=50` khiến các chuỗi nhãn dài như `+110 tỷ (Đỉnh)` và `+92,2 tỷ (Chốt)` bị tràn qua biên trái `x=0` của `viewBox`, dẫn tới việc bị cắt mất các ký tự số đầu tiên (`+11` và `+9`).
   - Tái cấu trúc toàn diện hệ trục tọa độ SVG:
     * Mở rộng `viewBox` từ `1100 350` lên `1150 355`.
     * Tăng khoảng lùi lề trái trục tung từ `x=50` lên `x=95` (tạo khoảng đệm an toàn > 25px cách mép trái).
     * Dời toàn bộ 6 cột và các đường nối ngang sang phải tương ứng (bắt đầu từ `x=105` thay vì `x=60`), đảm bảo cả hai mép trái và phải đều thoáng đãng, cân đối tuyệt đối.
   - Đồng bộ cập nhật đồng thời trên 3 tầng: File tổng thể `performance_diagnosis_merged_chart_v2.html`, module `pbi_part2_bieu_do_1.html` và nạp trực tiếp qua TOM vào Measure `Page5_Part2_Waterfall_HTML` trong Power BI Desktop.
   - Verify bằng headless Edge kết xuất ảnh cận cảnh trục Y: các nhãn `+150 tỷ`, `+110 tỷ (Đỉnh)`, `+92,2 tỷ (Chốt)` hiển thị đầy đủ 100%. Cắt task 153 ở cuối danh sách, duy trì nghiêm ngặt trần 50 task gần nhất (203 xuống 154).

202. **Tái Cấu Trúc Biểu Đồ 2 Tinh Gọn (Compact) & Triệt Tiêu Khoảng Trắng Thừa**
   - Tái cấu trúc Biểu đồ 2 (Bóc tách nghịch lý cơ chế đánh giá tại Đông Nam Bộ) theo thiết kế tinh gọn (High Information Density), triệt tiêu 100% khoảng trắng thừa vô ích:
     * Cắt giảm hơn 35% chiều cao tổng thể (từ 420px xuống chỉ còn ~260px), thu gọn lề đệm panel từ 22px xuống 14px 18px.
     * Lấp đầy khoảng trống ở Cột 1 bằng bảng tính cơ chế cộng dồn định lượng: Bán hàng tự thân (~18 điểm) + Phạt vùng (+26 điểm) = Điểm chung cuộc (~44 điểm bét bảng).
     * Tối ưu Cột 3: Ghép nối con số `74% Quản lý` liền mạch với Hộp kiến nghị tách bạch thẻ điểm, cân đối hoàn hảo với bảng 3 quản lý ở Cột 2.
   - Đồng bộ cập nhật đồng thời trên file tổng hợp `performance_diagnosis_merged_chart_v2.html`, module `pbi_part3_bieu_do_2.html` và nạp trực tiếp qua TOM vào Measure `Page5_Part3_DongNamBo_HTML` trên Power BI Desktop.
   - Verify bằng headless Edge kết xuất ảnh đối soát. Cắt task 152 ở cuối danh sách, duy trì nghiêm ngặt trần 50 task gần nhất (202 xuống 153).

201. **Nâng Cấp Độ Rõ Nét & Khả Năng Đọc (Readability) Cho Biểu Đồ 2 & Biểu Đồ 3**
   - Đại tu toàn diện cỡ chữ (font-size) và độ tương phản màu sắc (contrast) cho Biểu đồ 2 (Bóc tách nghịch lý Đông Nam Bộ) và Biểu đồ 3 (Ma trận hành động điều hành):
     * Cỡ chữ tiêu đề bảng & panel nâng từ 16px lên 18px đậm (`font-weight: 800`); mô tả phụ nâng từ 12.5px lên 14px (`color: #334155`).
     * Nội dung bảng ma trận nâng từ 11px-12.5px lên 13.5px-14.5px; các số liệu định lượng nâng lên 15px-32px đậm nét.
     * Triệt tiêu hoàn toàn màu chữ xám mờ (`#64748b`), thay bằng các gam màu có độ tương phản cao (`#1e293b`, `#0f172a`, `#334155`).
     * Nới rộng padding các hàng bảng từ 10px lên 14px giúp bố cục thoáng đãng, dễ lướt mắt trên màn hình Power BI.
   - Đồng bộ cập nhật đồng thời trên 3 tầng: File tổng hợp `performance_diagnosis_merged_chart_v2.html`, 2 module độc lập (`pbi_part3_bieu_do_2.html`, `pbi_part4_bieu_do_3.html`), và nạp trực tiếp qua TOM vào 2 DAX Measure trong Power BI Desktop (`Page5_Part3_DongNamBo_HTML`, `Page5_Part4_MatranHanhdong_HTML`).
   - Verify bằng headless Edge kết xuất ảnh đối soát sắc nét. Cắt task 151 ở cuối danh sách, duy trì nghiêm ngặt trần 50 task gần nhất (201 xuống 152).

200. **Nạp Trực Tiếp 4 DAX Measure Chẩn Đoán Vào Power BI Desktop Đang Chạy**
   - Kết nối trực tiếp vào máy chủ Analysis Services nội bộ của Power BI Desktop đang mở (`localhost:52483`) bằng giao thức Tabular Object Model (TOM).
   - Nạp tự động và lưu thành công 4 DAX Measure HTML vào bảng `LAI LO (Visuals & DAX)` trong thư mục hiển thị chuyên biệt `05. Chan Doan 4 Phan (HTML)`:
     * `Page5_Part1_KPICards_HTML`: 4 thẻ chỉ số KPI trọng yếu toàn hệ thống.
     * `Page5_Part2_Waterfall_HTML`: Biểu đồ Thác nước bóc tách dòng chảy lợi nhuận trước thuế 7 vùng + 3 viên thuốc trạng thái.
     * `Page5_Part3_DongNamBo_HTML`: Bóc tách nghịch lý cơ chế đánh giá cào bằng tại Đông Nam Bộ (Lưới 3 cột).
     * `Page5_Part4_MatranHanhdong_HTML`: Ma trận hành động điều hành 5 quyết sách định lượng.
   - Xác thực độ hợp lệ của cả 4 measure bằng truy vấn ADOMD (`EVALUATE ROW(...)` thành công, độ dài chuỗi từ 8.943 đến 15.700 ký tự). Cắt task 150 ở cuối danh sách, duy trì nghiêm ngặt trần 50 task gần nhất (200 xuống 151).

199. **Tách Dashboard Thành 4 Phần Cho Power BI & Xóa Toàn Bộ Thứ Tự Số**
   - Xóa bỏ triệt để các tiền tố thứ tự số (`01 · `, `02 · `, `03 · `) trên file tổng hợp `performance_diagnosis_merged_chart_v2.html` và trên toàn bộ các file thành phần theo đúng yêu cầu người dùng.
   - Phân tách và đóng gói trọn vẹn thành 4 module độc lập cho Power BI (Visual HTML Content):
     * **Phần 1**: `pbi_part1_kpi_cards.html` (4 thẻ chỉ số KPI trọng yếu).
     * **Phần 2**: `pbi_part2_bieu_do_1.html` (Biểu đồ 1: Thác nước bóc tách dòng chảy lợi nhuận trước thuế 7 vùng + 3 viên thuốc trạng thái).
     * **Phần 3**: `pbi_part3_bieu_do_2.html` (Biểu đồ 2: Bóc tách nghịch lý cơ chế đánh giá tại Đông Nam Bộ).
     * **Phần 4**: `pbi_part4_bieu_do_3.html` (Biểu đồ 3: Ma trận hành động điều hành).
   - Tự động sinh 4 mã DAX Measure tương ứng trong `.staging/` (`dax_pbi_part1_kpi_cards.txt`, `dax_pbi_part2_bieu_do_1.txt`, `dax_pbi_part3_bieu_do_2.txt`, `dax_pbi_part4_bieu_do_3.txt`) đã xử lý escape chuỗi `""`, sẵn sàng gán trực tiếp vào visual HTML Content.
   - Verify bằng headless Edge kết xuất 4 ảnh độc lập sắc nét. Cắt task 149 ở cuối danh sách, duy trì nghiêm ngặt trần 50 task gần nhất (199 xuống 150).

198. **Tinh Chỉnh Văn Phong Điều Hành Thực Tế & Thiết Kế Cao Cấp Cho Dashboard**
   - Rà soát và gọt giũa toàn diện câu từ trên file `performance_diagnosis_merged_chart_v2.html` theo đúng phong thái điều hành thực tế của ngân hàng:
     * Thay các cụm từ sách vở ("Khu vực thâm hụt", "Trụ cột lợi nhuận kèm rủi ro", "Chất lượng quản trị tối ưu") thành các thuật ngữ quản trị trực diện ("Vùng thua lỗ nghiêm trọng", "Tăng trưởng nóng kèm rủi ro", "Hiệu quả và kiểm soát tốt").
     * Viết lại thông điệp bất cập Mục 02 sát thực tiễn: "Cơ chế phạt cào bằng lợi nhuận vùng khiến người bán hàng giỏi nhất bị tụt hạng oan".
     * Làm mềm chỉ đạo hành động Mục 03: "Rà soát lại danh mục nợ; bóc tách trích lập và hoàn nhập dự phòng" (thay chữ "Kiểm toán" nặng nề).
   - Tinh chỉnh thiết kế thị giác chuẩn doanh nghiệp cấp cao:
     * Gỡ bỏ biểu tượng còi báo động giật gân tại Đông Nam Bộ, thay bằng nhãn trang nhã "Vùng duy nhất chịu lỗ".
     * Đổi màu cột "TỔNG LỢI NHUẬN" từ than chì xám đen sang màu Xanh Navy đậm sang trọng (`#1e3a8a`), đồng điệu với vạch đích và tiêu đề.
     * Tăng khoảng cách đệm trên hàng viên thuốc trạng thái (Status Pills) giúp biểu đồ có không gian thoáng mắt.
   - Verify bằng headless Edge kết xuất ảnh đối soát. Cắt task 148 ở cuối danh sách, duy trì nghiêm ngặt trần 50 task gần nhất (198 xuống 149).

197. **Chuẩn Hóa Ngôn Ngữ Thuần Việt, Xóa Bỏ Toàn Bộ Từ Viết Tắt & Tiếng Anh**
   - Rà soát và loại bỏ 100% từ tiếng Anh (Waterfall, Analysis, Top, vs, NIM, P&L, NPL, CIR, ASM...) và từ viết tắt (ĐB, ĐNB, ĐBB, BTB, TBB, LNTT, tr.đ, GĐ, T5, LN...) trên toàn bộ file `performance_diagnosis_merged_chart_v2.html`.
   - Chuẩn hóa thành các thuật ngữ thuần Việt đầy đủ: "Đồng bằng Sông Hồng", "Đông Nam Bộ", "Ba vùng Đông Bắc - Bắc Trung - Tây Bắc", "Tỷ lệ nợ xấu", "Chi phí vận hành", "Quản lý kinh doanh", "Biên lãi thuần", "Lợi nhuận trước thuế", "triệu đồng", "Tháng 5", "Giám đốc Vùng".
   - Verify bằng headless Edge kết xuất ảnh đối soát. Cắt task 147 ở cuối danh sách, duy trì nghiêm ngặt trần 50 task gần nhất (197 xuống 148).


### 2026-11-05
196. **Tích Hợp Biểu Đồ Thác Nước (Waterfall Chart) Cho Mục 01 Trên Dashboard**
   - Thay thế toàn bộ biểu đồ Combo cột dàn trải mang tính quản trị cũ tại Mục 01 trên file `performance_diagnosis_merged_chart_v2.html` bằng **Biểu đồ Thác nước (Waterfall Chart)** bóc tách dòng chảy Lợi nhuận trước thuế (LNTT) theo đúng phê duyệt của người dùng.
   - Thể hiện trực quan hành trình tích lũy dòng tiền P&L 7 vùng: làm nổi bật đỉnh 141 tỷ đồng do các vùng có lãi tạo ra, cú rơi tự do làm bốc hơi 35% lợi nhuận của "hố đen" Đông Nam Bộ (−48,8 tỷ đồng) và vạch đích LNTT toàn hàng 92,2 tỷ đồng.
   - Đồng bộ 3 viên thuốc trạng thái (Status Pills) siêu gọn phía dưới, kết nối liền mạch với Mục 02 (Bóc tách nghịch lý Đông Nam Bộ) và Mục 03 (Ma trận hành động).
   - Verify bằng headless Edge kết xuất ảnh đối soát. Cắt task 146 ở cuối danh sách, duy trì nghiêm ngặt trần 50 task gần nhất (196 xuống 147).

195. **Đại Tu Tinh Giản Toàn Diện Dashboard Theo Chuẩn 15 Giây Của Ban Điều Hành**
   - Tinh giản toàn diện giao diện `performance_diagnosis_merged_chart_v2.html` theo tiêu chuẩn ra quyết định nhanh của Ban Lãnh đạo (Executive 15-Second Rule), cắt giảm hơn 70% lượng chữ trên toàn trang:
     * Mục 01: Gỡ bỏ 3 đoạn văn dài dòng, thay bằng 3 pills trạng thái 1 hàng ngang với chỉ thị màu sắc sắc nét (Đông Nam Bộ lỗ −48,8 tỷ; Tây Nam Bộ nợ xấu đỉnh 22%; Nam Trung Bộ NPL tối ưu 11,2%).
     * Mục 02: Chuyển đổi phân tích chữ sang trực quan Before vs After: thể hiện trực tiếp mức tụt hạng của 3 quản lý giỏi (#24 ➔ #31 tụt 7 bậc, #28 ➔ #33 tụt 5 bậc, #36 ➔ #41 tụt 5 bậc) + Hộp kiến nghị tách bạch thẻ điểm.
     * Mục 03: Chuyển bảng kế hoạch hành động thành Ma trận hành động điều hành (Executive Action Matrix): triệt tiêu hoàn toàn văn xuôi, chỉ dùng từ khóa nghiệp vụ và con số tác động tài chính đậm nét.
   - Nâng tỷ lệ diện tích Visuals & Số liệu nổi bật lên > 75%, loại bỏ cảm giác đọc tài liệu Word.
   - Verify bằng headless Edge kết xuất ảnh đối soát. Cắt task 145 ở cuối danh sách, duy trì nghiêm ngặt trần 50 task gần nhất (195 xuống 146).

194. **Gỡ Bỏ Hoàn Toàn Panel Điểm Tài Chính Cấp Vùng & Khóa Luồng 3 Bước**
   - Loại bỏ triệt để panel "02 · Điểm tài chính cấp vùng" trên file `performance_diagnosis_merged_chart_v2.html` theo đúng chỉ đạo dứt khoát của người dùng.
   - Nâng cấp khối bóc tách bất cập Đông Nam Bộ thành **Mục 02 độc lập (Full-width)** với bố cục Lưới 3 cột nghiệp vụ hiện đại (Modern Fintech Executive), thoáng đãng và liền mạch.
   - Giữ nguyên **Mục 03 · Kế hoạch hành động & Đề xuất điều hành (Tháng 06/2023)** dạng bảng 5 cột tinh gọn, dễ hiểu.
   - Toàn trang dashboard chuẩn hóa mạch lạc đúng 3 bước điều hành: 01 Toàn cảnh vĩ mô 7 vùng ➔ 02 Bóc tách nghịch lý Đông Nam Bộ ➔ 03 Kế hoạch hành động toàn hàng.
   - Verify bằng headless Edge kết xuất ảnh đối soát. Cắt task 144 ở cuối danh sách, duy trì nghiêm ngặt trần 50 task gần nhất (194 xuống 145).

193. **Tinh Giản & Đơn Giản Hóa Bảng Kế Hoạch Hành Động Điều Hành (Mục 03)**
   - Đại tu toàn diện Bảng Kế hoạch hành động trên `performance_diagnosis_merged_chart_v2.html` theo yêu cầu "viết gọn lại, đơn giản dễ hiểu": tinh gọn bảng từ 6 cột xuống 5 cột phẳng sắc sảo (`Ưu tiên`, `Địa bàn`, `Vấn đề thực tế`, `Giải pháp thực hiện`, `Mục tiêu kỳ vọng`).
   - Biên tập lại toàn bộ câu từ: loại bỏ các đoạn văn dài dòng, cô đọng thành các chỉ đạo nghiệp vụ dứt khoát, đi thẳng vào bản chất (Tây Nam Bộ minh bạch 4,4 tỷ dự phòng; Đông Nam Bộ tách bạch thẻ điểm xóa lỗ +55 tỷ; Bắc Trung Bộ tiết kiệm 1,5 tỷ/tháng; Nam Trung Bộ nhân rộng cẩm nang; ĐB Sông Hồng duy trì > 55 tỷ/tháng).
   - Thống nhất đánh số 3 phân đoạn toàn trang: 01 Toàn cảnh vĩ mô ➔ 02 Điểm tài chính cấp vùng & Nghịch lý Đông Nam Bộ ➔ 03 Kế hoạch hành động điều hành.
   - Verify bằng headless Edge kết xuất ảnh đối soát. Cắt task 143 ở cuối danh sách, duy trì nghiêm ngặt trần 50 task gần nhất (193 xuống 144).

192. **Tinh Gọn & Đơn Giản Hóa Mục 02 (Điểm Tài Chính Cấp Vùng) Cân Đối 2 Cột**
   - Tái thiết kế Mục 02 trên `performance_diagnosis_merged_chart_v2.html` theo yêu cầu "viết gọn lại, đơn giản dễ hiểu": gỡ bỏ biểu đồ thanh ngang cồng kềnh, chuyển sang danh sách flat list 7 vùng mỏng nhẹ, trực quan (6 vùng lãi nhận 5–23đ vs Đông Nam Bộ lỗ nhận phạt 26đ).
   - Tích hợp hộp tóm tắt 3 ý gãy gọn, giải thích rõ nguyên tắc P&L càng ít điểm càng tốt và việc điểm phạt 26đ cộng thẳng vào từng quản lý trong vùng.
   - Sắp xếp Mục 02 (Cột trái) và Mục 03 (Cột phải: Bóc tách Đông Nam Bộ) cân đối hoàn hảo trong bố cục lưới 2 cột (50-50), tiếp nối bằng Mục 04 (Bảng Kế hoạch hành động full-width).
   - Verify bằng headless Edge kết xuất ảnh đối soát. Cắt task 142 ở cuối danh sách, duy trì nghiêm ngặt trần 50 task gần nhất (192 xuống 143).

191. **Loại Bỏ Section 02 & Tái Cấu Trúc Báo Cáo Thành Luồng 3 Bước Hiện Đại**
   - Gỡ bỏ hoàn toàn panel Biểu đồ thanh ngang điểm tài chính 7 vùng (`02 · Điểm tài chính cấp vùng`) theo đúng chỉ đạo người dùng trên `performance_diagnosis_merged_chart_v2.html`.
   - Nâng cấp khối bóc tách địa bàn Đông Nam Bộ thành **Mục 02 độc lập (Full-width Panel)** với bố cục Lưới 3 cột nghiệp vụ hiện đại (Modern Fintech Executive):
     * Cột 1: Điểm tài chính áp chung (26 điểm · Vùng lỗ −48,8 tỷ).
     * Cột 2: Năng lực bán hàng tự thân không tính lỗ vùng (#24 Lê Văn Bình, #28 Trần Văn Hải, #36 Trần Văn Anh).
     * Cột 3: Hậu quả 14/19 nhân sự rơi vào 25% cuối bảng & Kiến nghị tách riêng Thẻ điểm bán hàng với P&L vùng.
   - Đánh lại số thứ tự Bảng Kế hoạch hành động thành **Mục 03 · Kế hoạch hành động & Đề xuất điều hành (Tháng 06/2023)**.
   - Verify bằng headless Edge kết xuất ảnh đối soát (`.staging/crop_new_sec02_full.png` và `.staging/crop_new_sec03_full.png`), đạt chuẩn thẩm mỹ cao cấp. Cắt task 141 ở cuối, duy trì nghiêm ngặt trần 50 task (191 xuống 142).

190. **Khôi Phục & Tích Hợp Toàn Diện Bảng Kế Hoạch Hành Động Điều Hành (Mục 04)**
   - Bổ sung hoàn chỉnh Bảng Kế hoạch hành động & Đề xuất điều hành Tháng 06/2023 (Mục 04) vào file `performance_diagnosis_merged_chart_v2.html` sau khi bị khuyết ở lần tái thiết kế trước.
   - Thể hiện đầy đủ 5 đề xuất hành động trọng tâm tương ứng 5 vùng địa bàn: Tây Nam Bộ (Minh bạch 4.447 tr.đ dự phòng), Đông Nam Bộ (Xóa lỗ +55 tỷ khi NPL về 14%, tách bạch thẻ điểm cá nhân), Bắc Trung Bộ (Tiết kiệm 1,5 tỷ/tháng, CIR về 21%), Nam Trung Bộ (Giữ CIR < 15% & NPL < 12%), ĐB Sông Hồng (> 55 tỷ/tháng, giữ 30,6% thị phần).
   - Thiết kế bảng theo chuẩn mực Modern Fintech Executive: table borderless phẳng, badge trạng thái mức độ phân tầng sắc sảo, căn lề cột số liệu định lượng chuyên nghiệp.
   - Verify bằng headless Edge kết xuất ảnh đối soát. Cắt task 140 ở cuối danh sách, duy trì nghiêm ngặt trần 50 task gần nhất (190 xuống 141).

189. **Tái Thiết Kế Toàn Diện Dashboard Theo Phong Cách Modern Fintech Executive (Stripe / Apple Style)**
   - Đại tu toàn bộ mỹ thuật giao diện của file `performance_diagnosis_merged_chart_v2.html`: canvas xám mát cao cấp (`#f8fafc`), hệ thống thẻ trắng bo góc 12px viền mỏng `#e2e8f0` với đổ bóng mờ siêu nhẹ, xóa bỏ hoàn toàn hiện tượng card-in-card vụn vặt và các khối màu pastel lòe loẹt.
   - Nâng cấp 4 thẻ KPI hàng đầu với top accent border line tinh tế, số liệu 28px font Inter nổi bật.
   - Tối ưu hóa Biểu đồ 01 thanh thoát với nhãn số liệu rõ ràng và 3 thẻ Executive Insights dạng lưới ngang tích hợp icon SVG nét mảnh.
   - Cân đối lưới 50-50 cho Section 02 & 03: biểu đồ thanh ngang 7 vùng mượt mà và khối bóc tách 3 phân đoạn nghiệp vụ liền mạch tại Đông Nam Bộ; bảo toàn 100% văn phong diễn đạt tự nhiên, súc tích.
   - Verify headless Edge đạt chuẩn thẩm mỹ hiện đại. Cắt task 139 ở cuối danh sách, duy trì nghiêm ngặt trần 50 task gần nhất (190 xuống 141).

188. **Khôi Phục Thiết Kế Mốc Prompt 332 & Biên Tập Văn Phong Diễn Đạt Tự Nhiên**
   - Roll back toàn bộ thiết kế giao diện về mốc kết thúc Prompt 332: Mục 01 cân đối nhãn số âm và nợ xấu đỉnh; Mục 02 biểu đồ cột ngang 7 vùng; Mục 03 lưới 50-50 với 4 card màu phân tầng trực quan (Đỏ, Xanh lam, Cam, Xanh lá).
   - Viết lại toàn bộ câu từ theo phong cách tự nhiên, thực tế của chuyên viên kinh doanh / quản trị ngân hàng (loại bỏ cả hai thái cực: không giật gân kịch tính kiểu AI, và không hàn lâm cứng nhắc).
   - Trình bày 3 điểm nhấn điều hành Mục 01, ghi chú chuyển tiếp Mục 02 và 4 card Mục 03 ngắn gọn, rõ ràng, tập trung vào bản chất số liệu và đề xuất tách bạch thẻ điểm bán hàng với P&L vùng.
   - Verify bằng headless Edge kết xuất ảnh đối soát. Cắt task 138 ở cuối danh sách, duy trì nghiêm ngặt trần 50 task gần nhất (190 xuống 141).

187. **Khôi Phục Thiết Kế Màu Sắc Phân Tầng Trực Quan & Giữ Nguyên Văn Phong Chuẩn Mực**
   - Roll back thiết kế giao diện về hệ màu phân tầng trực quan trên `performance_diagnosis_merged_chart_v2.html`: hộp ghi chú điều hành Mục 01 nền xanh nhạt (`#f0f7ff`), khung chuyển tiếp Mục 02 nền cam ấm (`#fff7ed`), và 4 card Mục 03 với 4 nền pastel tương phản dịu mắt (Đỏ, Xanh lam, Cam, Xanh lục).
   - Bảo toàn 100% văn phong phân tích tài chính chuyên nghiệp đã chuẩn hóa: giữ nguyên các phân tích định lượng về P&L khu vực, rủi ro tập trung, cơ chế tính gộp điểm phạt và kiến nghị phân định 2 cấu phần đánh giá; tuyệt đối không dùng emoji và từ ngữ cảm tính.
   - Duy trì hệ thống font chữ to rõ (11.5px – 13px) đảm bảo trải nghiệm đọc tối ưu.
   - Verify headless Edge đạt chuẩn thẩm mỹ. Cắt task 137 ở cuối danh sách, duy trì nghiêm ngặt trần 50 task gần nhất (190 xuống 141).

186. **Chuẩn Hóa Thiết Kế & Văn Phong Chuyên Nghiệp (Loại Bỏ Phong Cách AI)**
   - Rà soát và loại bỏ 100% biểu tượng cảm xúc emoji (💡, ⚠️, 👉, 🏆) trên toàn bộ dashboard `performance_diagnosis_merged_chart_v2.html`.
   - Biên tập lại toàn diện văn phong theo chuẩn mực Quản trị Tài chính & Phân tích Dữ liệu Ngân hàng: thay thế các từ ngữ giật gân, cảm tính ("cào bằng", "phạt oan", "đội sổ", "kéo chìm") bằng các thuật ngữ định lượng chính xác ("hiệu quả P&L", "chất lượng tài sản", "rủi ro tập trung", "cơ chế tính gộp điểm phạt", "phân vị 25% cuối bảng").
   - Chuyển đổi giao diện 4 thẻ Mục 03 sang phong cách Corporate Flat Design cao cấp: nền trắng trang nhã (`#ffffff`), viền xám mảnh (`#e2e8f0`), giữ viền nhấn trái 3.5px phân tầng trực quan thay cho các khối màu pastel lòe loẹt.
   - Verify bằng headless Edge kết xuất ảnh đối soát. Cắt task 136 ở cuối danh sách, duy trì nghiêm ngặt trần 50 task gần nhất (190 xuống 141).

185. **Nâng Cấp Độ Dễ Đọc (Readability) & Tối Ưu Tương Phản Toàn Diện Dashboard**
   - Rà soát và loại bỏ 100% các cỡ chữ siêu nhỏ (8px, 8.5px, 9px, 9.5px, 10px), chuẩn hóa hệ thống phân cấp font lên ngưỡng dễ đọc tối thiểu 11.5px – 13px trên toàn bộ file `performance_diagnosis_merged_chart_v2.html`.
   - **Mục 01**: Tăng kích thước nhãn số trên cột (11.5px – 12.5px); nhãn nợ xấu (12px) bổ sung viền đệm trắng (`paint-order: stroke fill`) che đường lưới ngang; nới chiều cao viewBox lên 400 xóa chạm đáy trục hoành; khóa `white-space: nowrap` cho thanh Chú giải (Legend) trên 1 hàng thẳng thớm.
   - **Mục 02 & 03**: Chuẩn hóa nhãn Đông Nam Bộ thành `26đ (Hạng 7/7 · Đội sổ)` đồng bộ 7 vùng, nới viewBox 590 triệt tiêu tràn mép; nâng toàn bộ tiêu đề thẻ lên 12.5px đậm, badge rank và tên nhân sự lên 12px – 12.5px với màu tương phản sắc nét.
   - Verify headless Edge xác nhận toàn bộ trang thoáng mắt, các con số nổi bật, cực kỳ êm dịu khi theo dõi. Cắt task 135 ở cuối, giữ vững trần 50 task (190 xuống 141).

184. **Hoàn thiện thiết kế thị giác Mục 01 (Biểu đồ Kết hợp Quy mô - Lợi nhuận - Nợ xấu 7 vùng)**
+   - Sửa lỗi vỡ layout flexbox của hộp ghi chú điều hành (`.chart-note`), chuyển về dạng khối thông suốt với 3 gạch đầu dòng rõ ràng.
+   - Định vị lại nhãn `−19,5%` của Đông Nam Bộ ra ngoài đáy cột đỏ (`y=331`, đỏ sẫm `#b91c1c`), hiển thị trọn vẹn số âm trên nền sáng.
+   - Tinh chỉnh khoảng cách nhãn nợ xấu `22,0% (Đỉnh)` và `67%` tại cột Tây Nam Bộ, triệt tiêu hoàn toàn sự chồng lấn.
+   - Rút gọn tiêu đề phụ định vị nghiệp vụ sang trọng; verify ảnh kết xuất headless Edge đạt chuẩn thẩm mỹ cao cấp.
+
+### 2026-11-05
183. **Tái Thiết Kế & Căn Chỉnh Đồng Bộ 4 Ô (Cards) Tại Mục 03 (Đông Nam Bộ)**
18:    - Triển khai tối ưu hóa toàn diện giao diện 4 ô trong Mục 03 trên `performance_diagnosis_merged_chart_v2.html` theo yêu cầu của người dùng:
19:      + **Cân đối lưới 50-50 (`1fr 1fr`)**: Mở rộng đáng kể bề ngang cho Panel 03, giúp các ô bên trong thoáng đãng, không bị co ép chữ.
20:      + **Đóng khung đồng bộ 4 ô thông tin** với viền điểm nhấn mép trái (accent left border 3.5px) và bo góc mềm mại (7px):
21:        * Ô 1 (Đỏ nhạt · Accent đỏ): Điểm tài chính cấp vùng 26 điểm, badge lỗ −48,8 tỷ và dòng tác động.
22:        * Ô 2 (Xanh lam nhạt · Accent xanh dương): Kết quả bán hàng tự thân với thước đo và 3 thanh trượt căn lề thẳng hàng.
23:        * Ô 3 (Cam nhạt · Accent cam): Hậu quả thực tế trên bảng xếp hạng (14/19 quản lý rơi vào nhóm 25% cuối bảng).
24:        * Ô 4 (Xanh lá · Accent xanh lục): Nhận xét điều hành và kiến nghị cơ chế tách bạch thẻ điểm.
25:      + Chuẩn hóa đồng nhất padding `8px 11px`, margin-bottom `8px` và font size giữa các ô.
26:    - **Verify**: Dùng headless Edge kết xuất ảnh cận cảnh (`.staging/v2_panel03_aligned_deep.png`) và soi chiếu thị giác máy tính, xác nhận 100% bố cục chuẩn mực, sắc nét.
27:    - Cắt task 133 ở cuối danh sách, duy trì nghiêm ngặt trần 50 task (183 xuống 134).
28: 
29: """
30: 
31: if '## ĐÃ XONG\
### 2026-11-05\
182.' in text:
32:     text = text.replace('## ĐÃ XONG\
### 2026-11-05\
182.', '## ĐÃ XONG\
' + task_183 + '### 2026-11-05\
182.')
33: elif '## ĐÃ XONG\\r\
### 2026-11-05\\r\
182.' in text:
34:     text = text.replace('## ĐÃ XONG\\r\
### 2026-11-05\\r\
182.', '## ĐÃ XONG\\r\
' + task_183.replace('\
', '\\r\
') + '### 2026-11-05\\r\
182.')
35: 
36: # 3. Cắt task 133 ở cuối
37: m = re.search(r'\
133\\.\\s+\\*\\*', text)
38: if not m:
39:     m = re.search(r'\\r\
133\\.\\s+\\*\\*', text)
40: 
41: if m:

182. **Chuẩn Hóa Nhãn Thứ Hạng Cấp Vùng Trên Biểu Đồ 02 (Tránh Nhầm Lẫn Với Rank Cá Nhân)**
   - Tiếp thu phản biện chuẩn xác của người dùng về con số khó hiểu "7đ điểm mà Hạng #6 Tây Nam Bộ":
     + Làm rõ nguyên nhân: Con số #6 trong database là do hàm `RANK() OVER (ORDER BY diem_fin ASC)` xếp hạng trên 84 cá nhân quản lý (sau 5 người NTB thì 16 người TNB được gán #6). Việc gán nhãn này trên biểu đồ 7 vùng gây hiểu nhầm rằng TNB xếp thứ 6 trong 7 vùng.
     + Chuẩn hóa đồng bộ toàn bộ 7 vùng trên Biểu đồ 02 thành **Thứ hạng Cấp Vùng (1/7 đến 7/7)**: Nam Trung Bộ (Hạng 1/7 · Tốt nhất), Tây Nam Bộ (Hạng 2/7), ĐBSH (Hạng 3/7), Đông Bắc Bộ (Hạng 4/7), Bắc Trung Bộ (Hạng 5/7), Tây Bắc Bộ (Hạng 6/7) và Đông Nam Bộ (Hạng 7/7 · Đội sổ toàn hàng).
     + Đồng bộ Khối 1 tại Biểu đồ 03: `26 điểm (Đội sổ Hạng 7/7 · Đẩy cá nhân xuống Hạng #66/84)` để liên kết logic giữa cấp vùng và cấp cá nhân.
   - **Verify**: Dùng headless Edge kết xuất ảnh cận cảnh (`.staging/v2_rank_fixed_crop.png`) và soi chiếu thị giác máy tính, xác nhận 100% rành mạch, chuẩn nghiệp vụ.
   - Cắt task 132 ở cuối danh sách, duy trì nghiêm ngặt trần 50 task (182 xuống 133).

"""

if '## ĐÃ XONG\
### 2026-11-05\
181.' in text:
    text = text.replace('## ĐÃ XONG\
### 2026-11-05\
181.', '## ĐÃ XONG\
' + task_182 + '### 2026-11-05\
181.')
elif '## ĐÃ XONG\\r\
### 2026-11-05\\r\
181.' in text:
    text = text.replace('## ĐÃ XONG\\r\
### 2026-11-05\\r\
181.', '## ĐÃ XONG\\r\
' + task_182.replace('\
', '\\r\
') + '### 2026-11-05\\r\
181.')

# 3. Cắt task 132 ở cuối
m = re.search(r'\
132\\.\\s+\\*\\*', text)
if not m:
    m = re.search(r'\\r\
132\\.\\s+\\*\\*', text)

if m:

181. **Thay Thế Biểu Đồ 02 Bằng Biểu Đồ Cột Ngang Điểm Tài Chính 7 Vùng Dẫn Vào Mục 03**
   - Loại bỏ hoàn toàn Biểu đồ Dumbbell 74 giám đốc vùng theo yêu cầu tinh giản của người dùng.
   - Xây dựng Biểu đồ Cột ngang (Horizontal Bar Chart) tinh gọn: `02 · ĐIỂM TÀI CHÍNH CẤP VÙNG (THÁNG 05/2023)`:
     + Thang đo trực quan từ 0đ đến 30đ (thang điểm phạt: điểm càng thấp càng tốt).
     + Xếp hạng 7 vùng: Nam Trung Bộ 5đ (Tốt nhất · Xanh lá), Tây Nam Bộ 7đ, ĐBSH 13đ, ĐBB 18đ, BTB 19đ, TBB 24đ và Đông Nam Bộ 26đ (Đội sổ toàn hàng · Hạng #66, Đỏ rực).
     + Hộp callout dẫn nhập trực tiếp sang Mục 03: Giải thích mức phạt 26 điểm sàn này được áp cào bằng lên toàn bộ 19 quản lý Đông Nam Bộ, tạo cầu nối mạch lạc dẫn vào phân tích chi tiết.
   - **Verify**: Dùng headless Edge kết xuất ảnh cận cảnh (`.staging/v2_bridge_perfect_crop.png`) và soi chiếu thị giác máy tính, xác nhận 100% bố cục chuẩn mực, không chạm mép chữ.
   - Cắt task 131 ở cuối danh sách, duy trì nghiêm ngặt trần 50 task (181 xuống 132).

"""

if '## ĐÃ XONG\
### 2026-11-05\
180.' in text:
    text = text.replace('## ĐÃ XONG\
### 2026-11-05\
180.', '## ĐÃ XONG\
' + task_181 + '### 2026-11-05\
180.')
elif '## ĐÃ XONG\\r\
### 2026-11-05\\r\
180.' in text:
    text = text.replace('## ĐÃ XONG\\r\
### 2026-11-05\\r\
180.', '## ĐÃ XONG\\r\
' + task_181.replace('\
', '\\r\
') + '### 2026-11-05\\r\
180.')

# 3. Cắt task 131 ở cuối
m = re.search(r'\
131\\.\\s+\\*\\*', text)
if not m:
    m = re.search(r'\\r\
131\\.\\s+\\*\\*', text)

if m:

180. **Rollback Tệp `performance_diagnosis_merged_chart_v2.html` Về Trạng Thái Kết Thúc Prompt 325**
   - Khôi phục hoàn toàn cấu trúc trang báo cáo theo đúng yêu cầu của người dùng tại Prompt 325:
     + **Mục 01**: Biểu đồ Cột nhóm kết hợp Đường (Combo Column & Line Chart).
     + **Mục 02**: Biểu đồ Dumbbell so sánh thứ hạng 74 giám đốc vùng (tháng 1 vs tháng 5) có mã vùng và cột thay đổi thứ hạng.
     + **Mục 03**: Cấu trúc điểm đánh giá tại Đông Nam Bộ (4 khối mạch lạc; Khối 1 chỉ gồm con số 26 điểm sàn Hạng #66, badge lỗ −48,8 tỷ và dòng 'Điểm này gây điều gì', đã loại bỏ dải oval cam cam; Khối 2 bán hàng tự thân Lê Văn Bình, Trần Văn Hải, Trần Văn Anh; Khối 3 hậu quả 14/19 quản lý rơi vào đáy bảng; Khối 4 nhận xét điều hành).
     + **Mục 04**: Các trọng tâm điều hành với 5 thẻ chỉ tiêu định lượng tài chính.
   - **Verify**: Dùng headless Edge chụp ảnh toàn trang (`.staging/v2_rollback_full.png`) và crop cận cảnh (`.staging/v2_rollback_crop_sec23.png`), xác nhận 100% khớp chính xác trạng thái Prompt 325.
   - Cắt task 130 ở cuối danh sách, duy trì nghiêm ngặt trần 50 task (180 xuống 131).

"""

if '## ĐÃ XONG\
### 2026-11-05\
179.' in text:
    text = text.replace('## ĐÃ XONG\
### 2026-11-05\
179.', '## ĐÃ XONG\
' + task_180 + '### 2026-11-05\
179.')
elif '## ĐÃ XONG\\r\
### 2026-11-05\\r\
179.' in text:
    text = text.replace('## ĐÃ XONG\\r\
### 2026-11-05\\r\
179.', '## ĐÃ XONG\\r\
' + task_180.replace('\
', '\\r\
') + '### 2026-11-05\\r\
179.')

# 3. Cắt task 130 ở cuối
m = re.search(r'\
130\\.\\s+\\*\\*Gỡ Tệp `\\.gitignore`', text)
if not m:
    m = re.search(r'\\r\
130\\.\\s+\\*\\*Gỡ Tệp `\\.gitignore`', text)

if m:

179. **Xây Dựng Biểu Đồ SVG Trực Quan Hóa Các Ca Bị Kéo Tụt Hạng Và Nguyên Nhân (Visual Chart)**
   - Triển khai chuyển đổi toàn bộ Panel 02 trên `performance_diagnosis_merged_chart_v2.html` thành **Biểu đồ SVG Trực quan (Visual Shift & Slope Chart)** chuyên nghiệp theo phản hồi của người dùng:
     + **Trục hoành phân 3 vùng thứ hạng đồ họa**: Vùng Xanh lá (#1–#25: Top đầu) ──► Vùng Vàng (#26–#55: Trung bình) ──► Vùng Đỏ (#56–#84: Nguy hiểm / Đáy bảng).
     + **Nhóm 1 (Tụt dốc phong độ T1 ──► T5)**: Vẽ vector mũi tên đỏ trượt dốc dài từ chấm xanh T1 sang chấm đỏ T5 (Hoàng Văn Bình −31 bậc; Nguyễn Thị Bích −29 bậc; Lê Thị Thu −25 bậc).
     + **Nhóm 2 (Bán giỏi bị kéo chìm do lỗ vùng)**: Thể hiện chấm xanh lá tự thân xuất sắc (Trần Văn Hải Top 28, Lê Văn Bình Top 24) bị vector phạt đỏ kéo dạt/ghìm điểm do gánh 26đ sàn ĐNB (−48,8 tỷ); dải 14/19 quản lý ĐNB bị đẩy chìm xuống đáy bảng.
     + **Cột nguyên nhân đồ họa bên phải**: Tích hợp các thẻ visual có badge định lượng đo lường và dòng nguyên nhân cốt lõi song hành cùng từng dòng vector.
     + Bổ sung Legend màu sắc chuẩn xác và khung Kết luận & Giải pháp can thiệp cấp thiết ở đáy.
   - **Verify**: Dùng headless Edge kết xuất ảnh cận cảnh (`.staging/sec02_visual_perfect_crop.png`, `.staging/sec02_visual_bottom_actions.png`) và soi chiếu thị giác máy tính, xác nhận 100% hình ảnh đồ họa trực quan, chuẩn xác.
   - Cắt task 129 ở cuối danh sách, duy trì nghiêm ngặt trần 50 task (179 xuống 130).

"""

if '## ĐÃ XONG\
### 2026-11-05\
178.' in text:
    text = text.replace('## ĐÃ XONG\
### 2026-11-05\
178.', '## ĐÃ XONG\
' + task_179 + '### 2026-11-05\
178.')
elif '## ĐÃ XONG\\r\
### 2026-11-05\\r\
178.' in text:
    text = text.replace('## ĐÃ XONG\\r\
### 2026-11-05\\r\
178.', '## ĐÃ XONG\\r\
' + task_179.replace('\
', '\\r\
') + '### 2026-11-05\\r\
178.')

# 3. Cắt task 129 ở cuối
m = re.search(r'\
129\\.\\s+\\*\\*Chặn Thư Mục CV', text)
if not m:
    m = re.search(r'\\r\
129\\.\\s+\\*\\*Chặn Thư Mục CV', text)

if m:

178. **Hợp Nhất Biểu Đồ 2 & 3 Thành Panel Bóc Tách Các Trường Hợp Bị Kéo Tụt Hạng Và Nguyên Nhân**
   - Triển khai gộp toàn bộ Biểu đồ 02 (Dumbbell chart biến động) và Biểu đồ 03 (Nghịch lý ĐNB) trên `performance_diagnosis_merged_chart_v2.html` thành 1 panel điều hành cấp cao:
     + **Tiêu đề**: `02 · BÓC TÁCH CÁC TRƯỜNG HỢP BỊ KÉO TỤT HẠNG & NGUYÊN NHÂN CỐT LÕI`.
     + **Cột 1 (Tụt dốc phong độ T1 ──► T5)**: Bóc tách 3 ca tụt nặng nhất hệ thống: Hoàng Văn Bình (−31 bậc do hụt bán & nợ xấu 18,1%), Nguyễn Thị Bích (−29 bậc do nợ xấu vùng 22,0% đỉnh toàn hàng), Lê Thị Thu (−25 bậc do CIR 19,7% bào mòn).
     + **Cột 2 (Bị kéo oan do cơ chế điểm vùng T5)**: Bóc tách nghịch lý ĐNB: Trần Văn Hải (bán tự thân Top 28 bị phạt 26đ kéo tụt xuống Top 33), Lê Văn Bình (Top 24 bị ghìm chặt), 14/19 quản lý ĐNB (74%) bị đẩy xuống nhóm 25% cuối bảng (Hạng 64–84).
     + **Khung kết luận & giải pháp cấp thiết**: Phân định giải pháp siết rủi ro với nhóm 1 và tách bạch Thẻ điểm cá nhân khỏi P&L toàn vùng với nhóm 2.
     + Đổi số thứ tự panel cuối thành `03 · CÁC TRỌNG TÂM ĐIỀU HÀNH`, chuẩn hóa 3 phần báo cáo xuyên suốt.
   - **Verify**: Dùng headless Edge chụp ảnh toàn trang (`.staging/v2_merged_full1600.png`) và crop cận cảnh, xác nhận 100% cân đối, thông thoáng và chuẩn mực.
   - Cắt task 128 ở cuối danh sách, duy trì nghiêm ngặt trần 50 task (178 xuống 129).

"""

if '## ĐÃ XONG\
### 2026-11-05\
177.' in text:
    text = text.replace('## ĐÃ XONG\
### 2026-11-05\
177.', '## ĐÃ XONG\
' + task_178 + '### 2026-11-05\
177.')
elif '## ĐÃ XONG\\r\
### 2026-11-05\\r\
177.' in text:
    text = text.replace('## ĐÃ XONG\\r\
### 2026-11-05\\r\
177.', '## ĐÃ XONG\\r\
' + task_178.replace('\
', '\\r\
') + '### 2026-11-05\\r\
177.')

# 3. Cắt task 128 ở cuối
m = re.search(r'\
128\\.\\s+\\*\\*Viết Lại Các Bước Trong Mục CV', text)
if not m:
    m = re.search(r'\\r\
128\\.\\s+\\*\\*Viết Lại Các Bước Trong Mục CV', text)

if m:

177. **Tinh Gọn Khối 1 Mục 03 (Điểm Tài Chính Đông Nam Bộ) Theo Hướng Trực Diện**
   - Loại bỏ hoàn toàn dải 19 oval màu cam (`.dots19`) tại Khối 1 Mục 03 trong tệp `performance_diagnosis_merged_chart_v2.html` theo phản hồi của người dùng.
   - Trình bày cô đọng và sắc bén 2 trọng tâm cốt lõi:
     + **Con số điểm**: `26 điểm` (Đội sổ toàn hàng · Hạng #66) kèm badge `Do vùng lỗ −48,8 tỷ`.
     + **Điểm này gây điều gì**: Cào bằng áp chung khoản phạt 26 điểm này vào kết quả của toàn bộ 19 quản lý, tự động kéo tụt thứ hạng chung cuộc của tất cả nhân sự tại Đông Nam Bộ bất kể năng lực bán hàng tự thân.
   - **Verify**: Dùng headless Edge chụp ảnh màn hình và crop cận cảnh (`.staging/sec3_clean_crop3.png`), xác nhận giao diện thông thoáng, chuẩn xác 100%.
   - Cắt task 127 ở cuối danh sách, duy trì nghiêm ngặt trần 50 task (177 xuống 128).

'''

if '## ĐÃ XONG\
### 2026-11-05\
176.' in text:
    text = text.replace('## ĐÃ XONG\
### 2026-11-05\
176.', '## ĐÃ XONG\
' + task_177 + '### 2026-11-05\
176.')
elif '## ĐÃ XONG\\r\
### 2026-11-05\\r\
176.' in text:
    text = text.replace('## ĐÃ XONG\\r\
### 2026-11-05\\r\
176.', '## ĐÃ XONG\\r\
' + task_177.replace('\
', '\\r\
') + '### 2026-11-05\\r\
176.')

# 3. Cắt task 127 ở cuối
m = re.search(r'\
127\\.\\s+\\*\\*Thêm Data Analyst Vào Dòng Định Vị', text)
if not m:
    m = re.search(r'\\r\
127\\.\\s+\\*\\*Thêm Data Analyst Vào Dòng Định Vị', text)

if m:

176. **Tái Cấu Trúc Toàn Diện Mục 03 (Đông Nam Bộ) Theo Luồng Nghiệp Vụ 4 Khối Mạch Lạc**
   - Triển khai tái thiết kế Mục 03 trên `performance_diagnosis_merged_chart_v2.html` theo chuẩn báo cáo phân tích điều hành C-Level:
     + **Khối 1 (Điểm tài chính vùng)**: Khẳng định con số 26 điểm (Mức sàn bét bảng Hạng 66/66 toàn quốc) do vùng lỗ -48,8 tỷ đồng (CIR 105,4%); trực quan hóa dải 19 chấm cam đồng hạng chịu chung gánh nặng lỗ vùng.
     + **Khối 2 (Bán hàng tự thân bị kéo oan)**: Nêu rõ thước đo năng lực bán hàng tự thân xuất sắc của Lê Văn Bình (Hạng #24, 107đ), Trần Văn Hải (Hạng #28, 124đ), Trần Văn Anh (Hạng #36, 155đ) trên thang đo xếp hạng phát triển kinh doanh độc lập.
     + **Khối 3 (Hậu quả cụ thể)**: Chỉ rõ 14/19 quản lý (74%) bị đẩy vào nhóm 25% cuối bảng (Hạng 64–84); Trần Văn Hải từ Top 28 bị kéo tụt xuống Hạng #33; làm méo mó bản chất thi đua và triệt tiêu động lực nhân sự giỏi.
     + **Khối 4 (Nhận xét điều hành & Kiến nghị chính sách)**: Đóng khung nổi bật kiến nghị chiến lược tách bạch thẻ điểm bán hàng cá nhân khỏi P&L cấp vùng (chuyển chỉ tiêu lỗ vùng vào KPI Giám đốc Vùng/Hội sở thay vì trừ điểm nhân viên).
   - Tinh chỉnh CSS chống xén chữ (`grid-template-columns: 95px 1fr 65px`) và gỡ class flex gây vỡ chữ trong khung nhận xét.
   - **Verify**: Dùng headless Edge kết xuất ảnh cận cảnh (`.staging/sec3_perfect_crop.png`) và soi chiếu thị giác máy tính, xác nhận 100% bố cục chuẩn mực, sắc nét.
   - Cắt task 126 ở cuối danh sách, duy trì nghiêm ngặt trần 50 task (176 xuống 127).

### 2026-11-05
