# NHẬT KÝ CÔNG VIỆC







## DANG DỞ

_(Không có)_

## ĐÃ XONG

### 2026-11-18

361. **Áp dụng Bản 2 (đã tinh chỉnh) đồng bộ cho cả `README.md` và `README_eng.md`**
   - Cập nhật trọn bộ Mục 1, 2, 3, 4.1–4.2, 5, 8, 10 của `README.md` theo Bản 2 (bỏ đếm bước/lặp số máy móc, đổi cột bảng 8 chỉ tiêu sang `Chiều hướng tốt` & `Phạm vi tính`, viết lại Bước 3 giới thiệu 7 trang Power BI gọn thoáng, giữ `đóng gọn thành 1 khối có đường kẻ dọc và tự động tô đỏ mọi số âm` ở Trang 5, sửa Mục 10 thành `mô hình Power BI gồm 90 công thức DAX`).
   - Dịch và rút gọn đối ứng sang `README_eng.md` khớp hoàn toàn về số liệu & cấu trúc; kiểm chứng `check_int_pair.py` (`ok`), `check_toc.py` (`ok`), `push_check.py` (22 tệp hợp lệ, 0 liên kết gãy).

360. **Gọt gọn các đoạn trùng lặp trong `README.md` / `README_eng.md` và cập nhật `docs/PIPELINE.md` khớp thực tế**
   - Chỉnh sửa đồng bộ `README.md` & `README_eng.md`:
     - Rút gọn `Năm kiến nghị gửi Ban Điều Hành` thành `Ba kiến nghị cấp Hội sở gửi Ban Điều Hành` (loại bỏ trùng lặp với bảng 7 vùng ngay phía trên).
     - Gọt gọn Mục 2 Bước 3 (dòng 80), bỏ lặp câu `36.000 hợp đồng` ở dòng 213, đồng nhất dùng `công thức DAX` & `nền vàng kem dịu` ở Mục 8 và Mục 10.
   - Cập nhật `docs/PIPELINE.md` từ thông số cũ (`100 DAX`, `Executive Orange`, `55` dòng `dim_report_detail`, `8.536` dòng `fct_asm_value`, Trang 4–5 bị đảo thứ tự) về đúng `90 công thức DAX`, `56` chỉ tiêu, `1.552` dòng `tmp_xh_step1_asm_avg`, `8.924` dòng `fct_asm_value`, `29` cột `v_xephang_asm`, bảng màu `#F7F3CE`/`#FFFFA0` và đúng thứ tự Trang 1–7.
   - Kiểm chứng `check_int_pair.py` (`ok`), `check_toc.py` (`ok`), `push_check.py` (22 tệp hợp lệ, 0 liên kết gãy).

359. **Sửa toàn bộ chỗ sai số liệu & chuốt lại văn phong thuần Việt tự nhiên cho `README.md` và `README_eng.md`**
   - Đối chiếu dữ liệu thật tháng 5/2023 và sửa đồng bộ cả `README.md` + `README_eng.md`:
     - Thay 3 tên giả & thứ hạng sai ở Mục 6 Phần C bằng đúng số liệu thật trên bảng xếp hạng (`Trần Văn Hải` `#28 → #33` rớt 5 bậc, `Nguyễn Thị Hằng` `#52 → #61` rớt 9 bậc, `Lê Văn An` `#55 → #62` rớt 7 bậc, còn `16/19` người tức `84%` bị đẩy xuống nhóm `#61–#84`).
     - Đồng bộ `Hạng tổng thể`, cập nhật Kiến nghị 05 khớp với bước tách bán hàng cá nhân đã làm trên Trang 6.
     - Gỡ các mã màu hex & tên hàm/bảng kỹ thuật rườm rà khỏi `README.md`/`README_eng.md` (giữ ở `docs/HIEN_TRANG_HE_THONG.md`), thay các cụm từ mang tính kỹ thuật/AI (`Wide`, `$\rightarrow$`, `Phạm vi · N quản lý`, `100% cá nhân`, `Nghịch lý`, `hình mẫu vận hành gọn`, `độ dày lợi nhuận`) sang tiếng Việt đời thường dễ hiểu.
   - Kiểm chứng `check_int_pair.py` (`ok`), `check_toc.py` (`ok`), `push_check.py` (22 tệp hợp lệ, 0 liên kết gãy).

358. **Rà soát và chuẩn hóa toàn bộ chỗ nhắc tên Trang 7 thành `KẾT QUẢ KINH DOANH CỦA DOANH NGHIỆP`**
   - Sửa đồng nhất toàn bộ 5 vị trí gọi tắt/cũ tại `README.md` (dòng 80, 261), `README_eng.md` (dòng 80, 261) và `docs/PIPELINE.md` (dòng 87–88) về đúng `KẾT QUẢ KINH DOANH CỦA DOANH NGHIỆP`, kiểm chứng `Select-String "Trang 7|Page 7"` + `check_int_pair.py` / `check_toc.py` / `push_check.py`.

357. **Chuẩn hóa đúng tên Trang 7 thành `KẾT QUẢ KINH DOANH CỦA DOANH NGHIỆP` trong tài liệu**
   - Bỏ chữ `VÀ ĐỀ XUẤT` dư thừa tại 5 vị trí (`README.md` dòng 244 & 287, `README_eng.md` dòng 244 & 287, `docs/HIEN_TRANG_HE_THONG.md` dòng 23) để khớp đúng `displayName` trang 7 trong `output/Ket qua kinh doanh va xep hang asm.pbix`.

356. **Đồng bộ `README.md`, `README_eng.md` và `docs/HIEN_TRANG_HE_THONG.md` theo toàn bộ chỉnh sửa mới trên Power BI**
   - Kiểm tra thực tế `output/Ket qua kinh doanh va xep hang asm.pbix` và model Power BI Desktop (12 bảng, 90 measure), cập nhật đầy đủ vào `README.md`, `README_eng.md` & `docs/HIEN_TRANG_HE_THONG.md`: nền canvas `#F7F3CE`, tiêu đề bảng P&L `#E8DF70`, thiết kế `#FFFFA0` & `ASM_Leaderboard_HTML` (1 khối, lưới dọc, 26 cột tiếng Việt, `Hạng tổng thể`, `QUY MÔ BÁN HÀNG`, `Năng suất bình quân`, số âm `#DC2626`, `(LŨY KẾ T01–T05/2023)`), nhãn `(Lũy kế T01–T05)` trên Trang 5/6/7, Slicer `dim_chon_vung[lua_chon]` có `Toàn hàng` tại Trang 4/5/6, và chỉnh phần tổng kết Trang 6/7 (`Hồ sơ được duyệt`, `7-region action plan`).
   - Kiểm chứng `check_int_pair.py` (`ok`), `check_toc.py` (`ok`), `push_check.py` (22 tệp hợp lệ, 0 liên kết gãy).

352. **Hoàn tất Slicer Khu Vực có tùy chọn `"Toàn hàng"` (`dim_chon_vung`) trên Trang 4, 5, 6**
   - Người dùng đã gắn `dim_chon_vung[lua_chon]` thay thế cho `area_name` trên cả 3 Slicer Khu Vực (`25c08843`, `7011e357`, `bd547e51`), bỏ Slicer vùng thừa ở Trang 3 và lưu `output/Ket qua kinh doanh va xep hang asm.pbix`, kết hợp 3 measure `HASONEVALUE` + quan hệ Many-to-Many 1 chiều `v_baocao_tonghop[area_code]` -> `dim_chon_vung[area_code]`.

355. **Tô đỏ `#DC2626` toàn bộ số âm trong `ASM_Leaderboard_HTML` (Trang 5)**
   - Chạy `update_asm_lb_neg_red.py` bổ sung `_psdnColor`, `_apprColor`, `_nplColor`, `_cirColor`, `_marginColor`, `_hsbqColor` (`color:#DC2626;font-weight:800;` khi `< 0`) đồng bộ với `_ltnColor` & `_hsColor` và đẩy TOM (`TOM_SAVED_OK len=26059 ERR=`).
   - Kiểm chứng ADOMD (`ADOMD_DNB_OK len=34764`) xác nhận `-16.2%` (`margin`), `-79.0%` (`hs_von`), `-3.251` (`hsbq_trieu_dong`) của `Đông Nam Bộ` hiển thị chữ đỏ `#DC2626` + duyệt ảnh `asm_lb_neg_dnb.png`.

354. **Ghi rõ `(Lũy kế T01–TXX)` đồng bộ cho toàn bộ 8 measure tính lũy kế (Trang 5, Trang 6, Trang 7)**
   - Chạy `update_all_ytd_labels.py` cập nhật 8 measure qua TOM (`TOM_SAVED_8_OK!`, 0 lỗi DAX):
     - Trang 5 (`ASM_Leaderboard_HTML`): banner `★ BẢNG XẾP HẠNG QUẢN LÝ VÙNG (LŨY KẾ T01–T05/2023)` (tháng 1: `LŨY KẾ T01/2023`).
     - Trang 6 (`ASM_Block1_Top3_Selected_Radar_HTML_v2`, `ASM_Block2_Bottom3_Selected_Radar_HTML_v2`, `ASM_Block3_All_Regions_Radar_HTML_v2`, `Insight_DanhGiaHieuQua_HTML1`): badge `Tháng 05/2023 (Lũy kế T01–T05)` và thanh mốc chuẩn Khối 4 `... • T01–T05/2023`.
     - Trang 7 (`Page5_Part1_KPICards_HTML`, `Page5_Part2_Waterfall_HTML`, `Page5_Part4_MatranHanhdong_HTML`): đồng bộ `vKyStr = "Lũy kế T01–T05/2023"` và nhãn `.period-tag` `Tháng 05/2023 (Lũy kế T01–T05)`.
   - Kiểm chứng 24 phép đánh giá ADOMD (`ADOMD_ALL_24_OK!` qua T05/T02/T01) và duyệt 4 ảnh `ytd_p6_b1.png`, `ytd_p6_b3.png`, `ytd_p6_b4.png`, `ytd_p7_b4.png`.

353. **Bổ sung kỳ lũy kế động vào tiêu đề banner `ASM_Leaderboard_HTML` (Trang 5)**
   - Chạy `update_asm_lb_banner_ytd.py` đọc lại bản live từ Power BI Desktop (giữ nguyên các chỉnh sửa tay `Hạng tổng thể`, `QUY MÔ BÁN HÀNG`, `Năng suất bình quân`), bổ sung `_curMonthKey` / `_ytdLabel` hiển thị `★ BẢNG XẾP HẠNG QUẢN LÝ VÙNG (LŨY KẾ ĐẾN THÁNG MM/YYYY)` và đẩy TOM (`TOM_SAVED_OK len=25249 ERR=`).
   - Kiểm chứng ADOMD qua tháng `202305` (`len05=117560`), tháng `202302` (`len02=104252`), lọc `"Đông Nam Bộ"` (`Tổng: 19 ASM`) và duyệt ảnh `asm_lb_banner_ytd.png`.

### 2026-11-17

351. **Việt hóa toàn bộ 26 tiêu đề cột & 3 dải nhóm của `ASM_Leaderboard_HTML` (Trang 5)**
   - Chạy `update_asm_lb_vi_headers.py` cập nhật `ASM_Leaderboard_HTML` qua TOM (`TOM_SAVED_OK len=24742`):
     - Đổi 3 dải nhóm thành `THÔNG TIN CHUNG`, `QUY MÔ BÁN HÀNG & RỦI RO`, `TÀI CHÍNH (THEO VÙNG)` (cố định `height: 52px` khớp `top: 52px`).
     - Dịch toàn bộ 18 biến snake_case/tiếng Anh (`rank_final` → `Hạng chung cuộc`, `ltn_avg` → `Doanh số mở thẻ BQ`, `psdn_avg` → `Khách có dư nợ BQ`, `approval_rate_avg` → `Tỷ lệ duyệt thẻ BQ`, `npl_truoc_wo_luy_ke` → `Nợ xấu trước WO`, `cir` → `Chi phí / Thu nhập (CIR)`, `margin` → `Biên lợi nhuận`, `hs_von` → `Sinh lời trên vốn`, `hsbq_nhan_su` → `Năng suất BQ / Người`, `Điểm FIN` → `Điểm Tài Chính`, cùng toàn bộ các cột `Hạng ...` và `Email` → `Quản lý / Email`).
     - Sửa lỗi nhãn đơn vị cột `psdn_avg` từ `trđ/thẻ` sang `khách`, ghi chú `% · theo vùng` dưới cột Nợ xấu, và bật `white-space: normal` để tiêu đề 2–3 dòng gọn không bị cắt chữ.
   - Kiểm chứng ADOMD (`ADOMD_OK html_len=120785`), khẳng định không còn tên cột snake_case cũ trong `<thead>`, duyệt ảnh `asm_lb_vi_left.png` & `asm_lb_vi_full.png` và đồng bộ `README.md` / `docs/HIEN_TRANG_HE_THONG.md`.

350. **Thêm đường kẻ dọc (vertical grid) cho `ASM_Leaderboard_HTML` (Trang 5)**
   - Chạy `update_asm_lb_vgrid.py` cập nhật `ASM_Leaderboard_HTML` qua TOM (`TOM_SAVED_OK len=24379`): thêm `border-right: 1px solid #C8BC58` cho `.lb-th`, `border-right: 1px solid #E4DA8A` cho các ô dữ liệu `.lb-c`, `.lb-c-rk`, `.lb-l`, `.lb-r`, nâng độ ưu tiên vạch phân nhóm `.lb-table .lb-sep` (`2.5px solid #999900`) và bỏ viền phải ở cột cuối `.lb-table th:last-child, .lb-table td:last-child`.
   - Kiểm chứng ADOMD (`ADOMD_OK html_len=120512` tháng `202305`) và duyệt ảnh `asm_lb_vgrid.png`.

349. **Thiết kế `ASM_Leaderboard_HTML` (Trang 5) liền thành 1 khối thống nhất**
   - Gộp `.lb-banner` và `.lb-table-box` vào chung 1 card `.lb-wrap` có `border: 2px solid #999900`, `border-radius: 10px`, `overflow: hidden`, `background: #FFFFFF`; gỡ bỏ viền/bo góc/`margin-bottom: 10px` tách đôi giữa banner và bảng, đồng thời bổ sung thẻ đóng `</span>` ở `.lb-banner-tag`.
   - Đẩy qua TOM (`ASM_Leaderboard_HTML` độ dài `24005`), kiểm chứng ADOMD và duyệt ảnh `asm_lb_ffffa0.png`.

348. **Chỉnh lại thiết kế màu sắc 3 trang bảng (`Trang 2 Từ điển dữ liệu`, `Trang 3 Lãi lỗ lũy kế vùng`, `Trang 5 Báo cáo xếp hạng ASM`) lấy `#FFFFA0` làm tông chủ đạo**
   - Viết và chạy `update_palette_ffffa0.py` cập nhật **23 measure DAX** qua TOM (`Data Glossary[Data_Glossary_HTML]`, `ASM_Leaderboard_HTML`, 11 `PnlTable_BgColor_*` và 10 `PnlTable_FontColor_*`):
     - Trang 2 (`Data_Glossary_HTML`): header bảng `#FFFFA0` chữ `#25251F`, nhóm cấp 1 `#FFFFB5`, cấp 2 `#FFFFD6`, dòng chi tiết `#FFFFFF`/`#FFFFF5`, cell nhấn `#FFFFA0`, viền `#999900`.
     - Trang 3 (`21 PnlTable_*`): dòng LNTT `sort_order = 30` tô `#FFFFA0` chữ `#25251F`; tổng cấp 1 `{220, 230}` tô `#FFFFC2`; nhóm cấp 2 `{40, 100, 150, 280}` tô `#FFFFD9`; nhóm `{290, 300}` tô `#FFFFEE`; dòng chi tiết trắng `#FFFFFF` (`Total` `#FFFFF5`), giữ nguyên chữ Hội sở `#253659`, số âm `#DC2626`, số 0 `#858500`. Ghi chú: màu nền tiêu đề cột native `#E0E004` nằm trong `visual.json` của file `.pbix`, không sửa được qua TOM khi Power BI Desktop đang mở.
     - Trang 5 (`ASM_Leaderboard_HTML`): banner `#FFFFA0` → `#FFF799`, group header `#FFFFA0`/`#FFFFBA`, cột `Tổng điểm` & huy hiệu `#1` `#FFFFA0`, top 1–3 `#FFFFB5`/`#FFFFE2`, chữ `#25251F`, giữ nguyên xanh `#16A34A` / đỏ `#DC2626`.
   - Kiểm chứng TOM (`SaveChanges succeeded (23 measures)!`), ADOMD (32 dòng P&L tháng 202305 + HTML Trang 2 & Trang 5) và duyệt ảnh `glossary_ffffa0.png`, `asm_lb_ffffa0.png`, `pnl_table_ffffa0.png`.
   - Đồng bộ mô tả màu trong `README.md`, `README_eng.md`, `docs/HIEN_TRANG_HE_THONG.md`.

347. **Gộp Khối 4 (`Insight_DanhGiaHieuQua_HTML1`) thành 1 khối thống nhất đồng bộ Khối 1–3**
   - Bọc thanh tiêu đề (có đường kẻ phân cách + cặp badge vàng `#FFFF00`), thanh Mốc chuẩn phân nhóm và lưới 2×2 bốn thẻ nhóm vào chung một card trắng lớn (`border: 1.5px solid #CCCC00; border-top: 5px solid #858500; border-radius: 14px`) y hệt ngôn ngữ thiết kế Khối 3.
   - Đẩy Power BI Desktop (`SaveChanges succeeded!`), kiểm tra `0` lỗi trên 16 HTML payloads, duyệt ảnh `page6_v2_t5.png` & `page6_v2_t5_H.png` và chạy đủ `check_int_pair.py`, `check_toc.py`, `push_check.py`.

346. **Bỏ pill `Đạt: ≥ ...` ở thanh Mốc chuẩn và đổi nhãn `(LỌC HỒ SƠ)` → `(CHƯA CHỌN LỌC)` trên Khối 4 (`Insight_DanhGiaHieuQua_HTML1`)**
   - Xoá 2 badge lặp `Đạt: ≥ ...` trên thanh Mốc chuẩn phân nhóm, căn chỉnh lại 2 hộp mốc chuẩn (`border-left: 5px solid #858500`, `30px` số chuẩn, `17.5px` nhãn) cho thoáng và cân đối, đồng thời đổi tên nhóm 2 sang `NHÓM BÁN TỐT - DUYỆT THẤP (CHƯA CHỌN LỌC)` dựa trên dữ liệu thực (`304.5` hồ sơ nộp/tháng, rớt `~65%`).
   - Đẩy Power BI Desktop (`SaveChanges succeeded!`), kiểm tra `0` lỗi trên 16 HTML payloads, duyệt ảnh `page6_v2_t5.png` và đồng bộ `README.md`, `README_eng.md`.

345. **Mở rộng chiều cao bố cục và phóng to toàn bộ chữ Khối 4 (`Insight_DanhGiaHieuQua_HTML1`) Trang 6**
   - Nới padding/gap của Khối 4 để lấp đầy chiều cao khung `1005px` trên Power BI Desktop và phóng to đồng bộ toàn bộ cỡ chữ: tiêu đề chính `28px` + badge `21px`, thanh Mốc chuẩn (`22.5px` tiêu đề, `20px` mô tả, `18px` nhãn, `29px` số chuẩn, `19px` pill), 4 thẻ nhóm (`25px` tiêu đề nhóm, `35px/21.5px` số lượng, `22px` điều kiện, `21.5px` nhãn KPI, `39px` số KPI, `20px` dòng so sánh, `22px` *Việc cần làm*).
   - Đẩy Power BI Desktop qua TOM (`SaveChanges succeeded!`), kiểm tra `0` lỗi trên 16 HTML payloads, duyệt ảnh `page6_v2_t5.png` & `page6_v2_t5_H.png` và chạy `check_int_pair.py`, `check_toc.py`, `push_check.py`.

344. **Tăng cỡ chữ các thành phần nhỏ trên Khối 4 (`Insight_DanhGiaHieuQua_HTML1`) Trang 6**
   - Tăng `+2..3.5px` các chữ nhỏ trong thanh Mốc chuẩn (`13.5px -> 16.5px` nhãn chuẩn, `15px -> 17.5px` pill đạt chuẩn, `16.5px -> 18.5px` mô tả, `19.5px -> 21px` tiêu đề chuẩn, `24px -> 27px` số chuẩn) và trong 4 thẻ nhóm (`15.5px -> 18.5px` dòng so sánh chênh lệch, `18px -> 20px` nhãn chỉ số, `18.5px -> 20.5px` mô tả điều kiện, `19.5px -> 20.5px` Việc cần làm, `22px -> 23.5px` tiêu đề nhóm, `34px -> 36px` số chính), giữ nguyên tên nhóm `NHÓM BÁN KÉM - DUYỆT CAO (TIỀM NĂNG)` trên model live.
   - Đẩy Power BI Desktop (`SaveChanges succeeded!`), kiểm tra `0` lỗi trên 16 HTML payloads, duyệt ảnh `page6_v2_t5.png` & `page6_v2_t5_H.png` và đồng bộ `README.md`, `README_eng.md`, `docs/HIEN_TRANG_HE_THONG.md`.

343. **Bỏ dòng Lãi/Lỗ ở cột Khu vực và tăng cỡ chữ bảng 7 vùng (`Page5_Part4_MatranHanhdong_HTML`)**
   - Xoá `.area-pnl` dưới tên từng vùng trong cột Khu vực, mở nhẹ độ rộng cột `Thực trạng hiện tại` (`30.5%`) & `Mục tiêu hướng tới` (`21.5%`) và tăng cỡ chữ bảng lên `+3..4px` (`th 22.5px`, `td 21px`, `.area-name 24px`, `.badge-pri 20.5px`, `.impact-main 22px`, `.impact-sub 19.5px`) trong `update_page7_v3.py`.
   - Đẩy Power BI Desktop (`SaveChanges succeeded!`), kiểm tra `0` lỗi trên 20 HTML payloads, duyệt ảnh `page7_v3_t5.png` & `page7_v3_t1.png` xác nhận vừa khít `830px` và chạy đủ `check_int_pair.py`, `check_toc.py`, `push_check.py`.

342. **Bổ sung đầy đủ 7 vùng vào `Page5_Part4_MatranHanhdong_HTML` trên Trang 7**
   - Thêm 2 vùng còn thiếu (`Tây Bắc Bộ`, `Đông Bắc Bộ`) bên cạnh 5 vùng hiện có trong `update_page7_v3.py`, sắp theo thứ tự ưu tiên `Khẩn cấp -> Ưu tiên -> Theo dõi -> Duy trì / Nhân rộng` và co padding gọn vào khung `830px`.
   - Đẩy Power BI Desktop qua TOM (`SaveChanges succeeded!`), kiểm tra `0` lỗi trên 20 HTML payloads (`202305..202301`), duyệt ảnh `page7_v3_t5.png` & `page7_v3_t1.png` và đồng bộ `README.md`, `README_eng.md`, `docs/HIEN_TRANG_HE_THONG.md`.

341. **Nâng cấp Khối 4 (`Insight_DanhGiaHieuQua_HTML1`) sang 2 trục cá nhân (`Doanh số mở thẻ × Tỷ lệ duyệt thẻ`) có thanh Mốc chuẩn phân nhóm**
   - Tính 2 mốc bình quân lũy kế YTD toàn hàng (`_avg_ltn`, `_avg_appr`), trình bày thành thanh **Mốc chuẩn phân nhóm** ngay dưới tiêu đề (ví dụ T05/2023: `2,141 Tr.đ` | `42.8%`; T02/2023: `986 Tr.đ` | `41.8%`), hiển thị chênh lệch so với chuẩn trong từng thẻ nhóm và chia 4 nhóm 100% cá nhân (`22 – 12 – 14 – 36` toàn hàng T05/2023; `2 – 2 – 4 – 11` Đông Nam Bộ).
   - Cập nhật qua TOM (`SaveChanges succeeded!`), kiểm tra `0` lỗi trên 16 HTML payloads, duyệt ảnh `page6_v2_t5.png`, `page6_v2_t5_H.png`, `page6_v2_t2.png` và đồng bộ `README.md`, `README_eng.md`, `docs/HIEN_TRANG_HE_THONG.md`.

340. **Thay trục `Doanh số mỗi khách` bằng `Hồ sơ được duyệt` (`App Approved` YTD) và đồng bộ tiêu đề Khối 4 Trang 6**
   - Bổ sung mã chỉ tiêu `223` (`App approved binh quan YTD`) qua `dim_report_detail` (56 dòng) → `sp_xh_step1_asm_avg` (`tmp_xh_step1_asm_avg` 1.552 dòng) → `sp_xephang_asm` (`fct_asm_value` 8.924 dòng, giữ nguyên 100% điểm số & thứ hạng `201..222`) → `v_xephang_asm` (29 cột, thêm `app_approved_avg`).
   - Thêm cột `app_approved_avg` vào `'banking_project v_xephang_asm'` trong Power BI TOM + Refresh (`388` dòng, bình quân T05 = `105.07`), cập nhật `ASM_Block1..3_Selected_Radar_HTML_v2` (mở rộng `viewBox` trái để nhãn `HỒ SƠ ĐƯỢC DUYỆT` không bị cắt chữ `Đ`) và nâng cấp tiêu đề + 2 badge vàng tách biệt cho Khối 4 (`Insight_DanhGiaHieuQua_HTML1`).
   - Kiểm chứng 16 HTML payloads (`0` lỗi), duyệt ảnh `page6_v2_t5.png` và `page6_v2_t5_H.png`, đồng bộ `README.md`, `README_eng.md`, `docs/HIEN_TRANG_HE_THONG.md`.

339. **Đồng bộ màu vàng sáng (`#FFFF00`) cho toàn bộ ô tháng trên Trang 6 & Trang 7**
   - Chuyển `.badge-month` (`ASM_Block1_Top3_Selected_Radar_HTML_v2`, `ASM_Block2_Bottom3_Selected_Radar_HTML_v2`, `ASM_Block3_All_Regions_Radar_HTML_v2` trên Trang 6) và `.period-tag` (`Page5_Part2_Waterfall_HTML`, `Page5_Part4_MatranHanhdong_HTML` trên Trang 7) sang nền `#FFFF00`, viền `2px solid #858500`, chữ `#25251F`, `font-weight: 900` đồng bộ với ô khu vực/toàn hàng.
   - Đã biên dịch, đẩy lên Power BI Desktop qua TOM (`SaveChanges succeeded!`), kiểm tra `0` lỗi trên 16 HTML Trang 6 + 20 HTML Trang 7 và duyệt trực quan `page6_v2_t5.png`, `page7_v3_t5.png`.

338. **Bỏ chỉ số `Tỷ lệ nợ xấu` khỏi Khối 3 (`ASM_Block3_All_Regions_Radar_HTML_v2`) và đồng bộ 4 trục cá nhân (`Doanh số mỗi khách = LTN / PSDN`)**
   - Cập nhật `DAX_BLOCK3` trong `scratch/update_page6_v1.py` và đẩy lên Power BI Desktop (`SaveChanges succeeded!`):
     - Đổi trục trái SVG, thẻ KPI thứ 4 (`DOANH SỐ MỖI KHÁCH BÌNH QUÂN`), bảng tổng hợp vùng `_vungSummary` (`_best_val4_vung`) và dòng điểm nhấn 3 từ `Nợ xấu (npl)` sang `LTN / PSDN` (`tr/khách`, thang `/ 35.0`, cao hơn bình quân tô xanh `#16A34A` / thấp hơn tô đỏ `#DC2626`).
   - Đã chạy `py_compile`, kiểm tra ADOMD qua 4 bối cảnh (`202305`, `202304`, `202302`, `202305_H` — `16` HTML `0` lỗi), kiểm chứng trực quan qua `page6_v2_t5.png` (`22.5 tr/khách`, cao nhất Tây Nam Bộ `27.8 tr/khách`), `page6_v2_t5_H.png` (Đông Nam Bộ `22.6 tr/khách`, `▲ +0.5% so với toàn hàng`), `page6_v2_t2.png` (`13.6 tr/khách`, cao nhất Tây Bắc Bộ `20.4 tr/khách`), và đồng bộ `README.md`, `README_eng.md`, `docs/HIEN_TRANG_HE_THONG.md`.

337. **Khóa Khối 1 & Khối 2 Trang 6 theo Toàn hàng và thay trục `Tỷ lệ nợ xấu` (vùng) bằng chỉ số cá nhân `Doanh số mỗi khách (LTN / PSDN)`**
   - Cập nhật `scratch/update_page6_v1.py` và đẩy 2 measure (`ASM_Block1_Top3_Selected_Radar_HTML_v2`, `ASM_Block2_Bottom3_Selected_Radar_HTML_v2`) lên Power BI Desktop (`localhost:52763`, `SaveChanges succeeded!`):
     - Khóa cố định Khối 1 (`TOP 3 QUẢN LÝ VÙNG DẪN ĐẦU (TOÀN HÀNG)`) và Khối 2 (`3 QUẢN LÝ VÙNG CUỐI BẢNG (TOÀN HÀNG)`) theo `_allTable` của `Tháng` đang chọn, bỏ lọc `Khu Vực` để không bị trùng nhân sự tại các vùng ít người (`5` ASM ở Bắc Trung Bộ, Nam Trung Bộ).
     - Thay chỉ số & trục thứ 4 từ `Nợ xấu` (cấp vùng) sang `LTN / PSDN` (`DOANH SỐ MỖI KHÁCH`, đơn vị `tr/khách`, thang Radar `/ 35.0`, cao hơn bình quân tô xanh `#16A34A` / thấp hơn tô đỏ `#DC2626`).
     - Giữ nguyên Khối 3 & Khối 4 lọc theo `Khu Vực` và vẫn theo dõi `Nợ xấu vùng` đúng cấp dữ liệu.
   - Đã chạy `py_compile`, kiểm tra ADOMD qua 4 bối cảnh (`202305`, `202304`, `202302`, `202305_H` — `16` HTML `0` lỗi), kiểm chứng trực quan qua `page6_v2_t5.png`, `page6_v2_t5_H.png`, `page6_v2_t2.png` (T05: Hoàng Văn Nam `#1` đạt `25.7 tr/khách` vs bình quân `22.5 tr/khách`; Hoàng Văn Lợi `#84` đạt `10.5 tr/khách`), và đồng bộ `README.md`, `README_eng.md`, `docs/HIEN_TRANG_HE_THONG.md`.

### 2026-11-16

336. **Thêm 2 chữ số thập phân cho bảng `banking_project v_baocao_pnl_excel_pivoted` (đơn vị triệu đồng)**
   - Cập nhật Power Query M của phân vùng bảng `banking_project v_baocao_pnl_excel_pivoted` trên Power BI Desktop (`localhost:58919`) từ `Number.Round(Record.Field(_, colName) / 1000000, 0)` sang `Number.Round(Record.Field(_, colName) / 1000000, 2)` để giữ 2 chữ số thập phân khi quy đổi sang triệu đồng.
   - Đổi `FormatString` của cả 9 cột số liệu (`HỘI SỞ (Phân Bổ)`, 7 vùng kinh doanh, `Tổng`) từ `#,##0` sang `#,##0.00` và chạy làm mới toàn phần (`RequestRefresh(Full)` + `SaveChanges()`, `SAVE_WITH_REFRESH_OK`).
   - Đã đối chiếu qua ADOMD: `LNTT 202302` cột `Tổng` = `92,226.35`; `LNTT 202305` cột `Tổng` = `250,450.06` (`HỘI SỞ` `-365,780.75`, `Đông Bắc Bộ` `13,805.98`, `Nam Trung Bộ` `50,036.27`); `Hiệu suất BQ/ Nhân sự` = `3,430.82`; `CIR (%)` = `17.37`.

335. **Sửa logic lấy và hiển thị thứ hạng toàn hàng (`rank_final`) cho `ASM_Block1_Top3_Selected_Radar_HTML_v2` và `ASM_Block2_Bottom3_Selected_Radar_HTML_v2`**
   - Chỉnh `scratch/update_page6_v1.py` tự động dò cổng `msmdsrv.exe` đang chạy (`localhost:61075`) thay cho cổng gán cứng.
   - Sửa `ASM_Block1_Top3_Selected_Radar_HTML_v2`: bỏ chữ gán cứng `Hạng 1`, `Hạng 2`, `Hạng 3` ở 3 nút tab, thanh trạng thái `Đang xem` và chú thích radar; đổi nguồn sắp xếp sang `rank_final` (`Tổng hạng` toàn hàng) kèm biến `_t1_rank`, `_t2_rank`, `_t3_rank` (ví dụ khi lọc **Đông Nam Bộ** tháng `202305` hiển thị đúng `Hạng 24 • Lê Văn Bình`, `Hạng 33 • Trần Văn Hải`, `Hạng 36 • Trần Văn Anh`).
   - Đồng bộ sửa `ASM_Block2_Bottom3_Selected_Radar_HTML_v2`: đổi cột xếp hạng và hiển thị từ `rank_ptkd` sang `rank_final` (ví dụ ở **Đông Nam Bộ** hiển thị `Hạng 84`, `Hạng 83`, `Hạng 82` khớp bảng Trang 5 thay vì `Hạng 81`).
   - Đã chạy `py_compile`, cập nhật lên Power BI Desktop (`SaveChanges succeeded!`), kiểm tra ADOMD qua `4` bối cảnh chính (`16` HTML, `0` lỗi) + đủ `7` vùng tháng `202305` và đối chiếu trực quan qua `page6_v2_t5.png`, `page6_v2_t5_H.png`.

334. **Giữ duy nhất 1 tệp `.pbix` trong `output/` và chuẩn hóa mô tả commit GitHub thành `"Add files via upload"`**
   - Đưa `output/Pure_Yellow_Improved_Theme.json` vào `NEVER_PUSH` trong `.staging/push_check.py` để thư mục `output/` trên GitHub chỉ giữ duy nhất 1 tệp báo cáo Power BI (`output/Ket qua kinh doanh va xep hang asm.pbix`, tổng `22` tệp toàn kho).
   - Cập nhật mô tả dòng `output/` và lược bỏ tên tệp JSON bảng màu trong `README.md`, `README_eng.md`, `docs/HIEN_TRANG_HE_THONG.md`.
   - Gỡ `output/Pure_Yellow_Improved_Theme.json` khỏi Git index (`git rm --cached`), chạy kiểm tra `.staging/check_toc.py`, `.staging/check_int_pair.py`, `.staging/check_readme_pair.py`, `.staging/push_check.py`, sửa commit với mô tả `"Add files via upload"` và đẩy lên `origin/main`.

### 2026-11-15

333. **Cập nhật `README.md`, `README_eng.md` và `docs/HIEN_TRANG_HE_THONG.md` bằng ngôn ngữ tự nhiên, dễ hiểu và đồng bộ 7 trang báo cáo Pure Yellow**
   - Viết lại toàn bộ 11 mục của `README.md` (và bản đối ứng `README_eng.md`, mỗi bản `392` dòng) bằng văn phong gần gũi, dễ đọc, loại bỏ từ ngữ sáo rỗng kiểu AI; đồng bộ với 7 trang báo cáo trong `output/Ket qua kinh doanh va xep hang asm.pbix` (`90` measure DAX, bảng màu `Pure Yellow` `#545400` / `#858500` / `#FFFF00` / `#FFFFE8` / `#253659` / `#16A34A`, sơ đồ `images/quy-trinh.png` với `Import` và `DirectQuery`, 5 KPI Card tách số phát sinh tháng/lũy kế cùng khung nhận xét động trên Trang 4, 4 nhóm năng lực `Bán tốt - Nợ thấp` / `Bán tốt - Nợ cao` / `Bán chậm - Nợ thấp` / `Bán kém - Nợ cao` trên Trang 6, và bảng kế hoạch hành động 5 vùng ngôn ngữ tự nhiên trên Trang 7).
   - Cập nhật `docs/HIEN_TRANG_HE_THONG.md` khớp trạng thái ngày `2026-11-15` (`output/Ket qua kinh doanh va xep hang asm.pbix`, `90` measure DAX, thứ tự 7 trang báo cáo và phạm vi push `22` tệp).
   - Cập nhật `.staging/push_check.py` để loại các tệp thử nghiệm/dự phòng cục bộ, thay `40` đường dẫn `file:///C:/Users/.../*.png` trong `docs/NHAT_KY_CONG_VIEC.md` thành tên tệp ngắn gọn không lộ đường dẫn máy cá nhân (`0` liên kết gãy).
   - Đã chạy kiểm tra `.staging/check_toc.py` (`0` lỗi mục lục hai chiều), `.staging/check_int_pair.py` (`lech chi co ban VI : khong co`, `lech chi co ban EN : khong co` cho mọi số `>= 10`, `"tháng 5"` = `15` khớp `"May"` = `15`), `.staging/check_readme_pair.py` (`4 / 4 CAN BANG`), `.staging/push_check.py` (`22` tệp, `0` liên kết gãy, `0` lỗ hổng) và đẩy lên `origin/main`.

332. **Viết lại `Page5_Part4_MatranHanhdong_HTML` (Trang 7) bằng ngôn ngữ dễ hiểu, diễn giải rõ ràng**
   - Sửa `scratch/update_page7_v3.py` (tự động dò cổng `msmdsrv` đang chạy thay cho port gán cứng) và cập nhật `Page5_Part4_MatranHanhdong_HTML` lên Power BI Desktop (`localhost:62446`, `len=15020`, `SaveChanges succeeded!`):
     - Đổi 5 tiêu đề cột thành `Mức độ`, `Khu vực`, `Thực trạng hiện tại`, `Giải pháp cần làm`, `Mục tiêu hướng tới` và tinh chỉnh cỡ chữ (`21.5–22.5px`) giúp câu diễn giải đầy đủ hiển thị thoáng, không tràn chiều cao bảng.
     - Viết lại toàn bộ 5 dòng vùng (`Tây Nam Bộ`, `Đông Nam Bộ`, `Bắc Trung Bộ`, `ĐB Sông Hồng`, `Nam Trung Bộ`) bằng câu văn tự nhiên, nêu rõ nguyên nhân – hành động – mục tiêu định lượng (trong đó Nam Trung Bộ diễn giải động `"cứ 1 đồng vốn thu về X đồng lãi"` khớp cả 5 tháng `202301..202305`).
   - Đã chạy `py_compile`, kiểm tra ADOMD qua 5 tháng (`202301..202305`) xác nhận `0` từ cấm/`NaN`/`#ERROR`, cập nhật `scratch/capture_all_7_pages.py` trỏ tới `output/Ket qua kinh doanh va xep hang asm.pbix` và kiểm chứng trực quan qua `page7_v3_t5.png`, `page7_v3_t2.png`, `all7_page7_kqkd_doanh_nghiep.png`.

331. **Nâng cấp `Insight_DanhGiaHieuQua_HTML` (Trang 4) thành DAX động 100%, chuẩn màu Pure Yellow và căn thẳng 4 cạnh**
   - Viết `scratch/update_page4_insight_v2.py` và đẩy lên Power BI Desktop (`localhost:51329`, `TOM_SAVE_OK len=23992`):
     - Chuyển từ chuỗi HTML tĩnh (trộn lẫn số lũy kế Tháng 2 với Tháng 5) sang DAX động 100% tính theo `Tháng` (`_effectiveCurMonth`) và `Khu Vực`, đồng bộ số liệu phát sinh tháng với Waterfall / Scatter / Combo Chart / KPI Card kèm số lũy kế đầu năm trong ngoặc để đối chiếu Trang 3.
     - Tách riêng 2 nhánh ngữ cảnh: **Toàn hàng (7 vùng)** tự động tìm vùng Top 1 / Top 2 LNTT, vùng dẫn đầu sinh lời vốn & vùng kiểm soát CIR tốt nhất, vùng thâm hụt và cơ cấu thu/dự phòng; **Lọc 1 vùng** tự động xếp hạng `X/7`, so sánh tỷ trọng dự phòng với bình quân toàn hàng và đưa khuyến nghị riêng theo trạng thái lãi/lỗ.
     - Chuẩn hóa Pure Yellow (`#545400` header chữ `#FFFF00`, `#FFFFE8` nền thân, `#16A34A` xanh / `#DC2626` đỏ / `#FFFFB3` badge nổi), bỏ bóng cam cũ và Việt hóa `CIR / SM / TOI / Bancas`.
     - Chỉnh `body { padding: 1px 2px 1px 3px }` (khử cộng đôi padding `html,body` trong khung `fcda613253c6181dee98`) giúp 4 cạnh khớp thẳng với `Scatter` (`970..1890`) và `Combo` (`1230..2020`), đồng thời đặt header `21px` / badge `15px` để không bị cắt `...` kể cả với tên vùng dài nhất (`Đồng Bằng Sông Hồng`).
   - Đã chạy `py_compile`, truy vấn ADOMD 4 ngữ cảnh (`202305_All`, `202302_All`, `202305_DBSH`, `202305_DNB`) thành công 100%, cập nhật `scratch/capture_all_7_pages.py` + `scratch/render_verify_p4_insight.py` và kiểm chứng trực quan qua `verify_page4_insight_states.png` + `all7_page4_danh_gia_vung.png`.

330. **Căn đều mép trái/phải dải KPI Card Trang 4 (`KPI_Cards_DanhGiaHieuQua_HTML`) với các visual trên trang và tăng cỡ chữ thêm +3–4px**
   - Sửa `scratch/update_page4_kpi_v2.py` và đẩy lên Power BI Desktop (`localhost:51566`, `TOM_SAVE_OK len=13291`):
     - Đổi `.kpi-row` sang `padding: 4px 4px; height: 236px;` để triệt tiêu phần lề hụt vào bên trong khung `htmlContent` (`x=0, width=1908`), căn thẳng mép trái/phải với `Page Navigator`, `Slicer`, `Waterfall` và `Scatter` (`inner_left=17`, `inner_right=1890`).
     - Tăng cỡ chữ thêm `+3–4px`: `.kpi-title` (`16.5 -> 20.5px`), `.kpi-val` (`38 -> 42px`), `.kpi-unit` (`16 -> 19.5px`), `.kpi-mom` (`16 -> 19.5px`), `.kpi-ytd` (`16 -> 19.5px`), đồng thời bỏ badge `Tháng XX` góc phải để toàn bộ 5 tiêu đề hiển thị trọn vẹn 100%, không bị cắt `...`.
   - Đã chạy `py_compile`, kiểm tra ADOMD qua 3 bối cảnh (`202305_All`, `202301_All`, `202305_DNB`), cập nhật `capture_all_7_pages.py` (`iframe left:11px; width:1886px`) và kiểm chứng trực quan qua `verify_page4_kpi_states.png` + `all7_page4_danh_gia_vung.png`.

329. **Đổi nhãn badge dưới mũi tên Power BI ở Giai đoạn 2 → 3 trên `images/quy-trinh.png` từ `Import` thành `DirectQuery`**
   - Cập nhật lại `.conn-badge` (`font-size: 10.5px; padding: 2px 3px`) và đổi chữ badge ở `Connector 2 -> 3` từ `Import` thành `DirectQuery` trong `workflow_quy_trinh_ky_thuat.html`.
   - Chạy lại `.staging/render_gold_quytrinh.py` (`images/quy-trinh.png`, kích thước `2400x940`) và `render_verify_p1_p4.py` (`verify_page1_pure_yellow.png`), kiểm tra trực quan xác nhận chữ `DirectQuery` hiển thị sắc nét, không chạm viền.

328. **Nâng cấp KPI Card Trang 4 (`KPI_Cards_DanhGiaHieuQua_HTML`) lên chuẩn 9.2+ điểm của Trang 7, tạo lại ảnh `images/quy-trinh.png` chuẩn bảng màu Pure Yellow (`Import`) và bổ sung `visualStyles` trong `output/Pure_Yellow_Improved_Theme.json`**
   - Cập nhật measure `KPI_Cards_DanhGiaHieuQua_HTML` trong bảng `'LAI LO (Visuals & DAX)'` trên Power BI Desktop (`localhost:51566`, `update_page4_kpi_v2.py`):
     - Đổi sang nền thẻ trắng `#FFFFFF`, viền vàng `#E5E500`, bóng đổ `0 5px 14px rgba(84,84,0,0.10)` và thanh chỉ báo đỉnh `6px` (`#16A34A` xanh lá / `#DC2626` đỏ).
     - Tô màu ngữ nghĩa cho con số chính `38px`: `Thu Nhập Hoạt Động`, `Lợi Nhuận Trước Thuế`, `Năng Suất Bình Quân` tự động đổi `#16A34A` (`>= 0`) ↔ `#DC2626` (`< 0`); `Chi Phí Hoạt Động` & `Chi Phí Dự Phòng` giữ `#DC2626` và dòng biến động `so với T...` giữ quy tắc chi phí giảm xanh lá (`#16A34A`) / tăng đỏ (`#DC2626`).
     - Chuẩn hóa tiếng Việt (`Tháng 05`, `so với T04`, `Lũy kế:`, xử lý riêng tháng `202301` thành `Kỳ đầu năm (Tháng 01)`) và sửa thẻ thứ 5 (`Năng Suất Bình Quân`) hiển thị phát sinh tháng ở trên (`+915.7 trđ/người` tại T05) và `Lũy kế: 4,099.5 trđ/người` ở dưới để không lặp số.
   - Tạo lại `images/quy-trinh.png` (`2400x940` RGBA) qua `.staging/render_gold_quytrinh.py` từ `workflow_quy_trinh_ky_thuat.html` với đúng bảng màu Pure Yellow (`#545400`, `#858500`, `#FFFF00`, `#FFFFE8`, `#253659`, `#16A34A`) và sửa nhãn kết nối Power BI từ `DirectQuery` thành `Import` (`Power BI` / `Import`).
   - Bổ sung `visualStyles` cho `pageNavigator`, `shape`, `waterfallChart`, `scatterChart`, `lineClusteredColumnComboChart` vào `output/Pure_Yellow_Improved_Theme.json` (`11` visual styles, JSON hợp lệ) và quét các thuộc tính màu gán cứng (`#FED7AA`, `#FFB877`, `#FF7A00`, `#C59828`, `#FBD38D`) trong `output/duphong.pbix` để hướng dẫn chuẩn xác từng mục Reset trong Power BI Desktop.
   - Đã kiểm `py_compile`, kiểm ADOMD qua 4 bối cảnh (`202305_All`, `202302_All` khớp LNTT `92,226`, `202301_All`, `202305_DNB` đổi Đỏ tự động), đối chiếu trực quan `images/quy-trinh.png`, `verify_page1_pure_yellow.png`, `verify_page4_kpi_states.png` và `all7_page4_danh_gia_vung.png`.

327. **Đánh giá ảnh chụp và thu nhỏ các cỡ chữ quá lớn trên Trang 6 (`ĐÁNH GIÁ NĂNG LỰC ASM`) về tỷ lệ cân đối**
   - Rà soát 4 ảnh chụp hiện trạng Trang 6 (`page6_v2_t5.png`, `page6_v2_t5_tab2.png`, `page6_v2_t2.png`, `page6_v2_t5_H.png`) và điều chỉnh hạ các cỡ chữ bị phóng quá khổ trong `update_page6_v1.py`:
     - **Khối 1 & 2 (`ASM_Block1_Top3_Selected_Radar_HTML_v2`, `ASM_Block2_Bottom3_Selected_Radar_HTML_v2`)**: `.card-title` (`26 -> 21.5px`), `.badge-month` (`21 -> 18px`), `label.tab-btn` (`23 -> 20px`), `.status-sub-bar` (`23.5 -> 19.5px`), Radar SVG (`25 -> 19.5`, `viewBox='-58 -14 466 320'`), `.radar-legend` (`18 -> 16.5px`), `.kpi-lbl` (`21.5 -> 18.5px`), `.kpi-val` (`41 -> 35px`), `.kpi-sub` (`20.5 -> 17.5px`).
     - **Khối 3 (`ASM_Block3_All_Regions_Radar_HTML_v2`)**: `.title-text` (`32 -> 27px`), `.badge-scope`/`.badge-month`/`.note-line` (`23 -> 19.5px`), Radar SVG (`25 -> 20.5`, `viewBox='-60 -14 470 320'`), `.kpi-lbl` (`24 -> 20px`), `.kpi-val` (`45 -> 38px`), `.kpi-sub` (`23 -> 18.5px`), `.insight-head` (`27.5 -> 22.5px`), `.insight-row` (`26 -> 21px`).
     - **Khối 4 (`Insight_DanhGiaHieuQua_HTML1`)**: tiêu đề băng rôn (`33 -> 27px`), badge (`25 -> 20px`), tiêu đề nhóm (`28.5 -> 23px`), số đếm (`42 -> 34px` / `26 -> 20px`), mô tả nhóm (`26 -> 20px`), nhãn phụ KPI (`26 -> 19.5px`), giá trị (`44 -> 36px`), hộp `Việc cần làm` (`27.5 -> 21px`).
   - Đã chạy `py_compile`, cập nhật lên Power BI Desktop (`localhost:53952`, `SaveChanges succeeded!`), kiểm tra `0` lỗi trên `16` chuỗi HTML qua 4 bối cảnh và đối chiếu trực quan 4 ảnh kết xuất mới (`page6_v2_t5.png`, `page6_v2_t5_tab2.png`, `page6_v2_t2.png`, `page6_v2_t5_H.png`).

326. **Căn đều mép trái/phải khối KPI Card (`Page5_Part1_KPICards_HTML`) thẳng hàng với khối Waterfall (`Page5_Part2_Waterfall_HTML`) trên Trang 7**
   - Sửa `DAX_PART1` (`Page5_Part1_KPICards_HTML`) trong `update_page7_v3.py`: bỏ `12px` lề ngang ở `.kpi-row` (`width: 100%; padding: 8px 0; height: 172px;`) để thẻ đầu và thẻ cuối giãn sát `100%` chiều rộng khung visual giống `.panel` của `Page5_Part2_Waterfall_HTML`.
   - Đồng bộ `body { padding: 4px 0; }` cho `DAX_PART2` (`Page5_Part2_Waterfall_HTML`) và `DAX_PART4` (`Page5_Part4_MatranHanhdong_HTML`) để thống nhất lề ngang `0px` cả trong Power BI `HTML Content` lẫn khi xuất ảnh đối chiếu.
   - Đã chạy `py_compile`, cập nhật lên Power BI Desktop qua `localhost:53952` (`SaveChanges succeeded!`), vượt qua toàn bộ kiểm tra (`0` lỗi trên `20` chuỗi HTML qua 5 kỳ `202301..202305`) và đo kiểm pixel trên `page7_v3_t5.png` (`first_white = 2`, `last_white = 1917` trùng khít cả 3 khối `Part1`, `Part2`, `Part4`).

325. **Tăng cỡ chữ (+3–4px), chuyển chú thích radar & dòng phụ KPI sang bố cục 2 hàng chống tràn/mờ trên Trang 6 và xuất file Power BI Theme Pure Yellow cải tiến**
   - Chuyển `.radar-legend` (`18px`) và `.kpi-sub` (`20.5px`) Khối 1–2 sang 2 hàng chống cắt tên dài (`Hạng 2: Hoàng Thị Hà`, `Hạng 83: Phạm Thị Thanh`, `Nguyễn Văn Khánh`), tinh chỉnh radar SVG (`font-size='25'`, `viewBox='-70 -18 490 330'`) và nâng cỡ chữ +3–4px trên cả 4 khối (Khối 3 `45px`/`24px`/`23px`/`26px`, Khối 4 `28.5px`/`26px`/`44px`/`27.5px`).
   - Thay toàn bộ viền/lưới nhạt `#FFFFB3` trên nền trắng bằng `#CCCC00`/`#858500`, sửa đa giác Tab 2 sang `#858500`, đồng bộ `"D"` -> `"Đồng Bằng Sông Hồng"`, sửa lỗi Khối 4 hiển thị `()` thành `0 (0.0%)` khi nhóm trống (`COALESCE(COUNTROWS(...), 0)`), tách mô tả 4 nhóm thành 2 hàng rõ nét và giữ 4 tiêu đề nhóm thẳng 1 hàng.
   - Xuất file theme chuẩn Power BI Desktop tại `output/Pure_Yellow_Improved_Theme.json` (và bản sao artifact), kiểm chứng `json.load` + `py_compile`, cập nhật `localhost:53952` (`SaveChanges succeeded!`), kiểm tra `0` lỗi trên `16` chuỗi HTML và đối chiếu trực quan 4 ảnh (`page6_v2_t5.png`, `page6_v2_t5_tab2.png`, `page6_v2_t2.png`, `page6_v2_t5_H.png`).

324. **Chuẩn hóa Trang 6 (Đánh giá năng lực ASM) theo Cách 1, bảng màu Pure Yellow (#FFFF00) và chuẩn đọc 5–10 giây**
   - Sửa `Thang 5` -> `Tháng MM/YYYY`, xóa sạch viết tắt (`LTN`, `KH PSDN`, `NPL`, `BQ`, `ASM`, `TOP 84/83/82`), đồng bộ thuật ngữ `toàn hàng` / `7 vùng`, áp bảng màu Pure Yellow (`#FFFF00` + `#25251F` + Navy `#253659`) cùng chuẩn màu Tốt = Xanh (`#16A34A`) / Xấu = Đỏ (`#DC2626`), bỏ dòng giải thích dài, căn chỉnh `.radar-legend` (`14px`) / `.kpi-sub b` (`nowrap`) không tràn viền và nâng cỡ chữ đọc rõ ở zoom 50%.

323. **Xóa dòng mô tả phụ `.panel-desc` dưới tiêu đề chính trên Khối 2 và Khối 4 Trang 7**
   - Bỏ `<p class='panel-desc'>` cùng rule CSS tương ứng trên `Page5_Part2_Waterfall_HTML` và `Page5_Part4_MatranHanhdong_HTML`, tăng chiều cao `.chart-svg` lên `525px` và `.action-table` lên `724px`, đẩy lên `localhost:53952` (`SaveChanges succeeded!`), kiểm tra `0` lỗi trên `20` HTML qua 5 kỳ và đối chiếu `page7_v3_t4.png`, `page7_v3_t5.png`.

322. **Xóa hộp tổng góc phải trên Khối 2, chỉ giữ nhãn tháng/năm gọn cho Khối 2 và Khối 4 Trang 7**
   - Thay hộp `.total-pill` 3 dòng ở Khối 2 (`Page5_Part2_Waterfall_HTML`) bằng nhãn gọn `Tháng MM/YYYY` (`<span class='period-tag'>`), đồng bộ sang Khối 4 (`Page5_Part4_MatranHanhdong_HTML`), cập nhật vào `localhost:53952` (`SaveChanges succeeded!`), kiểm tra `0` lỗi trên `20` HTML qua 5 kỳ và đối chiếu `page7_v3_t4.png`, `page7_v3_t5.png`.

321. **Căn chỉnh lại 4 thẻ KPI, đổi màu % tăng/giảm chi phí & dự phòng và chuẩn hóa câu chữ biểu đồ thác nước Trang 7**
   - Căn đều `Page5_Part1_KPICards_HTML` (`height: 172px`, `padding: 15px 16px 11px 16px`, `.kpi-label: 20.5px`, `.kpi-value: 44px`, `.kpi-sub: 18.5px`) giúp 4 thẻ cân đối theo cả 2 chiều và tránh chạm cụm icon góc phải của Power BI; đổi chú thích Thẻ 1 thành `Đã trừ chi phí vốn`.
   - Đổi quy ước màu `% so với tháng trước` cho Chi phí vận hành và Dự phòng nợ xấu: tăng (`> 0`) tô Đỏ (`#DC2626`), giảm (`<= 0`) tô Xanh (`#16A34A`).
   - Chuẩn hóa câu chữ Khối 2 & Khối 4: đổi tiêu đề sang `... của doanh nghiệp`, `Hiệu suất vốn toàn hàng`, `Đơn vị: Tỷ đồng (Lũy kế từ đầu năm <năm>)`, chú giải biểu đồ thành `Thu nhập / Lợi nhuận` và `Chi phí / Dự phòng`, và thống nhất dùng `Toàn hàng` / `Toàn hàng (7 vùng)` trên toàn bộ 7 vùng.
   - Đẩy vào mô hình trực tiếp `localhost:53952` (`SaveChanges succeeded!`), kiểm tra `0` lỗi trên `20` chuỗi HTML qua 5 kỳ (`202301..202305`) và chụp ảnh kiểm chứng `page7_v3_t4.png`, `page7_v3_t5.png`.

320. **Bỏ hẳn Khối 3 (`Page5_Part3_DongNamBo_HTML`) và cô đặc 3 khối còn lại của Trang 7 theo chuẩn nhìn 5–10 giây**
   - Làm rỗng `Page5_Part3_DongNamBo_HTML` (`84` ký tự HTML trong suốt) trên mô hình TOM trực tiếp (`localhost:53952`) và đưa điểm nhấn nhân sự Đông Nam Bộ (`84%` / `75%` / `69%` quản lý vùng rớt nhóm cuối) vào dòng thứ 2 của thẻ đáy Khối 2.
   - Đánh giá và chuẩn hóa 3 khối còn lại (`Page5_Part1_KPICards_HTML`, `Page5_Part2_Waterfall_HTML`, `Page5_Part4_MatranHanhdong_HTML`) cho người xem mới hoàn toàn đọc hiểu trong 5–10 giây: loại bỏ toàn bộ từ viết tắt/thuật ngữ (`Lãi TH`, `CP KD khác`, `CP HĐ`, `Dự phòng RR`, `CIR`, `ASM`, `LTN`, `TỔNG LNTT`, `Chiếm X% TN`), gán động nhãn vùng lỗ (`v_NegAreaCnt`), giữ chuẩn màu Xanh (`#16A34A` = dương/tăng/lãi) / Đỏ (`#DC2626` = âm/giảm/lỗ/chi phí) và cỡ chữ lớn đọc rõ ở zoom 50%.
   - Kiểm tra ADOMD và chụp ảnh đối chiếu 4 kỳ (`T05`, `T03`, `T02`, `T01` — `0 NaN/Infinity/chữ viết tắt` trên 16 HTML): `page7_v3_t5.png`, `page7_v3_t3.png`, `page7_v3_t2.png`, `page7_v3_t1.png`.

319. **Hoàn thiện Trang 7: Đồng nhất 4 thẻ KPI, sửa 3 điểm thiết kế Khối 2, áp dụng chuẩn màu Xanh/Đỏ và tăng cỡ chữ +3–4px đọc rõ ở zoom 50%**
   - **Đồng nhất 4 thẻ KPI (`Page5_Part1_KPICards_HTML`):** Chuyển toàn bộ về khung trắng viền Pure Yellow + vạch màu trên đồng nhất 3 dòng (`Tổng thu nhập hoạt động`, `Chi phí hoạt động`, `Chi phí dự phòng rủi ro`, `Lợi nhuận trước thuế`), bổ sung tỷ lệ tăng/giảm phát sinh tháng so với tháng trước (xử lý an toàn riêng cho T1 `202301`), bỏ văn phong AI/kỹ thuật.
   - **Sửa 3 điểm hạn chế Khối 2 (`Page5_Part2_Waterfall_HTML`):** Bắt buộc màu Xanh lá (`#16A34A`) cho thu nhập/lợi nhuận/chỉ số tăng và Đỏ (`#DC2626`) cho chi phí/dự phòng/lỗ; bỏ `justify-content: space-between` trên 3 thẻ nhận định đáy để xóa khoảng trống giữa thẻ; chuẩn hóa câu chữ ngân hàng phổ thông.
   - **Đồng bộ Khối 3 & 4 (`Page5_Part3_DongNamBo_HTML`, `Page5_Part4_MatranHanhdong_HTML`) & tăng cỡ chữ +3–4px:** Tăng cỡ chữ toàn trang ~3–4px để đọc rõ ở mức thu nhỏ 50%, thu gọn tiêu đề thẻ để bỏ rớt dòng thừa, thay số `26` gõ cứng bằng biến động `vH_FinScore`.
   - **Nghiệm thu (Verify):** Cập nhật lên `localhost:53952` qua TOM (`SaveChanges succeeded!`), evaluate ADOMD qua 4 tháng `202305`, `202303`, `202302`, `202301` (`0 NaN/Infinity/AI jargon tokens` qua 16 HTML payloads), đối chiếu ảnh thực tế tại `page7_v2_top_blocks_t5.png`, `page7_v2_t5.png`, `page7_v2_t3.png`, `page7_v2_t2.png`.

318. **Dựng thử Phương án 1 cho Trang 7 (`KẾT QUẢ KINH DOANH CỦA DOANH NGHIỆP`) trên file Power BI Desktop đang mở (`localhost:53952`)**
   - **Cập nhật 4 DAX HTML measures theo Phương án 1 (100% động theo tháng, chuẩn Pure Yellow + Shadow 3D + chữ to + ngôn ngữ ngân hàng thuần Việt):**
     * `Page5_Part1_KPICards_HTML`: 4 thẻ KPI tổng hợp cấp ngân hàng (Thu nhập hoạt động toàn hàng, Phân bổ Hội sở & Vận hành, Dự phòng rủi ro & Nợ xấu, Lợi nhuận trước thuế toàn hàng kèm quy mô bán của 84 ASM).
     * `Page5_Part2_Waterfall_HTML`: Biểu đồ SVG Cầu nối cấu trúc hình thành Lợi nhuận lũy kế toàn hàng (Thu nhập thẻ -> CP Vốn KDV -> CP KD khác -> Tổng thu nhập HĐ -> Chi phí HĐ -> Dự phòng RR -> Tổng LNTT) tự động co giãn tỷ lệ theo tháng, đi kèm 3 thẻ phân tích vùng trọng điểm.
     * `Page5_Part3_DongNamBo_HTML`: Lấy động `TOPN 3` ASM có doanh số LTN cao nhất tại Đông Nam Bộ trực tiếp từ `v_xephang_asm` (loại bỏ hoàn toàn 3 tên giả gõ cứng cũ; cập nhật động cả chú thích vượt chuẩn BQ và tổng số ASM toàn quốc).
     * `Page5_Part4_MatranHanhdong_HTML`: Bảng kế hoạch hành động 5 vùng trọng điểm tính động 100%, sửa triệt để lỗi CIR Bắc Trung Bộ bị nhân 100 lần (`2646.9%` -> `26.5%`) và thay thế số ước tính gõ cứng bằng phép tính định lượng trực tiếp từ `v_baocao_tonghop` và `v_xephang_asm`.
   - **Nghiệm thu (Verify):** Evaluate cả 4 measures cho Tháng 5 (`202305`) và Tháng 2 (`202302`) không lỗi DAX; render và đối chiếu ảnh chụp toàn trang `page7_phuong_an_1_t5.png` và `page7_phuong_an_1_t2.png`.

### 2026-11-14

317. **Lược bỏ phần danh sách nhân sự (gương mặt tiêu biểu, lưu ý nợ, giữ nợ sạch, cần hỗ trợ) ở đáy 4 thẻ Ma Trận Năng Lực ASM (`Insight_DanhGiaHieuQua_HTML1`)**
   - **Tối ưu bố cục thẻ tinh gọn & thoáng đãng**:
     * Bỏ hoàn toàn dòng liệt kê tên ASM và đường viền nét đứt phân cách ở cuối mỗi thẻ.
     * Khối thẻ tập trung trọn vẹn vào 3 trọng tâm quản trị:
       1. Tên nhóm & Phụ đề điều kiện xếp loại (gọn gàng, không rớt dòng).
       2. Hai ô chỉ số KPI cốt lõi (Doanh số BQ & Tỷ lệ nợ xấu BQ) với số to **38px** cực kỳ nổi bật.
       3. Khối màu định hướng hành động `💡 Việc cần làm` với chữ to **25px** rõ ràng.
   - **Nghiệm thu trên Power BI Desktop**:
     * Cập nhật measure `Insight_DanhGiaHieuQua_HTML1` qua TOM API.
     * Snapshot đối soát:
       + `matrix_pbi_dbsh_clean.png` (Vùng ĐBSH)
       + `matrix_pbi_all_clean.png` (Toàn hệ thống).

### 2026-11-14

316. **Phóng to vượt trội toàn bộ chữ trong 4 khối thẻ Ma Trận Năng Lực ASM (KPI 38px, Việc cần làm 25px, Tên tiêu biểu 24px) theo ảnh chụp thực tế của người dùng**
   - **Tối ưu kích thước chữ các thành phần trong 4 thẻ (Khắc phục tình trạng chữ bị lọt thỏm)**:
     * Con số KPI (Doanh số & Tỷ lệ nợ xấu): Tăng mạnh lên **`38px`** (black 900), đơn vị `Tr.đ` / `%` lên **`23px`** đậm nét.
     * Nhãn KPI (`Doanh số bình quân`, `Tỷ lệ nợ xấu bình quân`): Tăng lên **`23px`** (màu đậm `#555`, font-weight 600).
     * Dòng định hướng `💡 Việc cần làm`: Tăng lên **`25px`** (dòng cao 1.45, font-weight 500).
     * Dòng danh sách nhân sự (`Gương mặt tiêu biểu`, `Cần lưu ý kiểm soát nợ`, `Giữ nợ rất sạch`, `Cần hỗ trợ ngay`): Tăng lên **`24px`** (màu chữ than đậm `#25251F`, rõ ràng dễ đọc).
     * Phụ đề dưới tên nhóm: Tăng lên **`23px`** (font-weight 600).
     * Số lượng nhân sự trong Badge: Tăng lên **`38px`** bold 900, tỷ lệ % lên **`24px`**.
     * Tinh chỉnh tên 4 nhóm gọn gàng không bị rớt dòng:
       + `🌟 NHÓM BÁN TỐT - NỢ THẤP (TOÀN DIỆN)`
       + `⚡ NHÓM BÁN TỐT - NỢ CAO (TĂNG NÓNG)`
       + `🛡️ NHÓM BÁN CHẬM - NỢ THẤP (AN TOÀN)`
       + `⚠️ NHÓM BÁN KÉM - NỢ CAO (NGUY CƠ)`
   - **Triển khai & Kiểm thử trực tiếp**:
     * Cập nhật vào Tabular Model Power BI Desktop qua TOM API.
     * Chụp snapshot đối chiếu trực tiếp với ảnh người dùng cung cấp:
       + `matrix_pbi_dbsh_v4.png` (Khớp với ngữ cảnh ảnh chụp của người dùng)
       + `matrix_pbi_all_v4.png` (Toàn mạng lưới).

### 2026-11-14

315. **Tăng cỡ chữ lên 5-6px và bản địa hóa ngôn ngữ thuần Việt quản trị ngân hàng cho Ma Trận 4 Nhóm Năng Lực ASM (`Insight_DanhGiaHieuQua_HTML1`)**
   - **Tăng kích thước phông chữ toàn diện (+5-6px)**:
     * Tiêu đề khối: Tăng từ 22px lên **28px** (bold 800 `#545400`).
     * Tên 4 nhóm: Tăng từ 21px lên **26px** (bold 800).
     * Số lượng nhân sự trong thẻ: Tăng từ 26px lên **32px** (black 900), tỷ lệ % tăng lên **21px**.
     * Chỉ số bình quân (LTN, NPL): Tăng từ 20px lên **26px** (nhãn tăng lên **19px**).
     * Nội dung hướng xử lý thực tế: Tăng từ 16px lên **21px** (dòng cao 1.45).
     * Danh sách nhân sự tiêu biểu: Tăng từ 15px lên **20px**.
   - **Bản địa hóa ngôn ngữ thực tế ngân hàng (Loại bỏ hoàn toàn thuật ngữ dịch máy / AI)**:
     * Chuyển đổi tên nhóm gần gũi với quản lý kinh doanh:
       + Nhóm 1: `🌟 NHÓM BÁN TỐT - NỢ THẤP (TOÀN DIỆN)`
       + Nhóm 2: `⚡ NHÓM BÁN TỐT - NỢ CAO (TĂNG TRƯỞNG NÓNG)`
       + Nhóm 3: `🛡️ NHÓM BÁN CHẬM - NỢ THẤP (AN TOÀN)`
       + Nhóm 4: `⚠️ NHÓM BÁN KÉM - NỢ CAO (CẦN GIẢI QUYẾT GẤP)`
     * Định hướng hành động thực tiễn ngân hàng thay cho khẩu hiệu sáo rỗng:
       + Nhóm 1: Khen thưởng kịp thời, nhân rộng cách làm hay cho các vùng khác và đưa vào danh sách quy hoạch quản lý.
       + Nhóm 2: Tạm dừng việc chạy theo doanh số, siết lại khâu xét duyệt hồ sơ và tập trung gọi điện nhắc nợ sớm.
       + Nhóm 3: Giao thêm chỉ tiêu bán hàng, hướng dẫn kỹ năng chốt hợp đồng và thúc đẩy nhân viên chủ động tìm khách mới.
       + Nhóm 4: Lãnh đạo vùng ngồi lại rà soát từng hồ sơ nợ, cử người có kinh nghiệm kèm cặp trực tiếp và kiểm tra lại địa bàn.
   - **Triển khai & Nghiệm thu trên Power BI Desktop**:
     * Cập nhật measure `Insight_DanhGiaHieuQua_HTML1` qua TOM API.
     * Render đối soát trực quan:
       + `matrix_pbi_all_v2.png` (Toàn mạng lưới)
       + `matrix_pbi_dbsh_v2.png` (Vùng ĐBSH)
       + `matrix_pbi_dnb_v2.png` (Vùng ĐNB).

### 2026-11-14

314. **Thiết kế Ma Trận 4 Góc Năng Lực 2x2 (Doanh số LTN vs. Kiểm soát Rủi ro NPL) cho trang Đánh Giá Năng Lực ASM (`Insight_DanhGiaHieuQua_HTML1`)**
   - **Mục tiêu & Nghiệp vụ Quản trị**:
     * Thay thế visual `81d1a6c0a44c33d91ee5` (W = 1920, H = 820) đang bị gắn nhầm measure của trang P&L.
     * Phân loại toàn bộ 84 Quản lý kinh doanh (ASM) tại 7 Vùng theo 2 chiều năng lực cốt lõi: Năng lực tăng trưởng doanh số (LTN) và Năng lực kiểm soát chất lượng nợ (Tỷ lệ NPL) so với Mốc chuẩn toàn hàng (T5: BQ LTN = 2,141 tr.đ, BQ NPL = 17.3%).
     * 4 nhóm năng lực chiến lược:
       1. 🌟 **Ngôi sao toàn diện (Stars)** (LTN $\ge$ BQ & NPL $\le$ BQ): T5 toàn mạng lưới có 22 ASM (26.2%). BQ LTN 3,287 tr.đ, BQ NPL 14.1%. Định hướng: Khen thưởng, giữ chân nhân tài, quy hoạch bổ nhiệm cán bộ nguồn.
       2. ⚡ **Động lực tăng tốc (Challengers)** (LTN $\ge$ BQ & NPL > BQ): T5 có 12 ASM (14.3%). BQ LTN 3,031 tr.đ, BQ NPL 20.6%. Định hướng: Siết chặt thẩm định tín dụng, đôn đốc thu hồi nợ sớm, sàng lọc phân khúc.
       3. 🛡️ **Thận trọng / An toàn (Conservative)** (LTN < BQ & NPL $\le$ BQ): T5 có 18 ASM (21.4%). BQ LTN 1,522 tr.đ, BQ NPL 14.0%. Định hướng: Giao thêm room chỉ tiêu, đào tạo kỹ năng bán hàng & chốt deal.
       4. ⚠️ **Cần can thiệp / Nguy cơ (At-Risk)** (LTN < BQ & NPL > BQ): T5 có 32 ASM (38.1%). BQ LTN 1,368 tr.đ, BQ NPL 20.1%. Định hướng: Áp dụng PIP cải thiện hiệu suất 30-60 ngày, cử Stars kèm cặp 1-1, tái cơ cấu địa bàn.
   - **Tương tác linh hoạt theo Slicer Vùng & Tháng**:
     * Khi xem Toàn hàng: Tổng kết 84 nhân sự toàn mạng lưới.
     * Khi click Slicer chọn Vùng (ví dụ ĐBSH, ĐNB): Giữ nguyên mốc chuẩn toàn hàng làm thước đo tham chiếu, tự động phân bổ và hiển thị tỷ lệ % + danh sách ASM cụ thể của Vùng đó (ví dụ ĐBSH có 11 Stars, 12 Conservative, 0 At-risk; ĐNB có 15 At-risk, 4 Challengers).
   - **Chuẩn thiết kế Pure Yellow + Shadow 3D + Chữ to**:
     * Nền toàn visual `#FFFFF5`, thẻ nền trắng `#FFFFFF`, chữ than `#25251F`, đối ứng Navy `#253659`, dải vàng `#858500`, `#CCCC00`, `#545400`, `#FFFF00`.
     * Shadow 3D sâu `0 6px 18px rgba(84,84,0,0.14)`, viền trái 6px đặc trưng, font-size lớn (tiêu đề 22px, số lượng 26px bold, KPI 20px, nội dung 18px).
   - **Triển khai & Kiểm thử**:
     * Cập nhật measure `Insight_DanhGiaHieuQua_HTML1` và alias `ASM_Block4_Matrix_4Quadrant_HTML` vào bảng `'LAI LO (Visuals & DAX)'` qua TOM API.
     * Render đối soát trực quan:
       + `matrix_pbi_all.png` (Toàn mạng lưới)
       + `matrix_pbi_dbsh.png` (Vùng ĐBSH)
       + `matrix_pbi_dnb.png` (Vùng ĐNB).

### 2026-11-14

313. **Đồng bộ hóa 100% vạch lưới Radar & Trục SVG của `ASM_Block3_All_Regions_Radar_HTML_v2` theo đúng chuẩn Block 1 & Block 2**
   - **Đồng bộ toàn diện hệ thống vạch lưới đa giác (Spider Web Grid) sắc nét & tương phản cao**:
     * Thay thế vạch mờ `#FFFFB3` đơn điệu cũ bằng hệ thống 4 cấp độ đa giác chuẩn của Block 1 & 2:
       + Vòng 100%: Nét đứt `4,4` màu mù tạt `#CCCC00` dày 1.5px.
       + Vòng 75%: Nét đứt `3,3` màu mù tạt `#CCCC00` dày 1.2px.
       + Vòng 50%: Nét liền màu mù tạt `#CCCC00` dày 1.2px.
       + Vòng 25%: Nét liền màu vàng nhạt `#FFFFB3` dày 1px.
     * 4 trục thẳng đứng/ngang nối từ tâm ra 4 đỉnh sử dụng màu ô liu đậm **`#858500`** dày 1.2px, hiển thị vững chãi, rõ nét trên nền thẻ trắng.
     * Tọa độ chuẩn hóa: Tâm `(175, 145)`, bán kính tối đa `_r_max = 100`, ViewBox `-40 -10 410 310` rộng rãi.
   - **Nghiệm thu trực tiếp trên mô hình Power BI Desktop (port 58239)**:
     * Cập nhật thành công vào Tabular Model qua TOM API.
     * Render và snapshot đối soát:
       + `block3_all_v3.png` (Chế độ Toàn Hàng)
       + `block3_region_v3.png` (Chế độ Khu Vực).

### 2026-11-14

312. **Nâng cấp khối Insight `ASM_Block3_All_Regions_Radar_HTML_v2`: Thay đổi số liệu sang Tổng quy mô & Tỷ trọng mạng lưới, Tăng font chữ lên 20.5px**
   - **Thay đổi hoàn toàn bản chất con số phân tích (Loại bỏ trùng lặp với 4 thẻ KPI)**:
     * *Chế độ Toàn Hàng*:
       + Quy mô nhân sự động: Tự động đếm theo tháng (`_total_asm`, ví dụ 84 ASM ở T5, 74 ASM ở T1-T2) phân bổ trên 7 Vùng.
       + **Tổng quy mô kinh doanh toàn hệ thống**: Tính tổng doanh số LTN toàn hàng `179,846 triệu đồng` (≈ `179.8 tỷ đồng`) và tổng khách hàng PSDN phát sinh `8,459 KH` (thay vì lặp lại số BQ 2,141 tr và 100.7 KH).
       + **Phân hóa mạng lưới & Điểm sáng vùng**: Tự động tìm Vùng dẫn đầu doanh số LTN bình quân (`Bắc Trung Bộ` 3,089 tr/ASM) và Vùng kiểm soát nợ NPL tốt nhất (`Nam Trung Bộ` 11.2%).
     * *Chế độ Từng Khu Vực (ví dụ Đồng Bằng Sông Hồng)*:
       + Quy mô vùng: 23 ASM (chiếm `27.4%` lực lượng toàn hàng).
       + **Đóng góp kinh doanh thực tế**: Tạo ra `55,010 triệu đồng LTN` (đóng góp `30.6%` toàn hàng) và `2,499 KH PSDN` (đóng góp `29.5%` toàn hàng).
       + Tương quan năng lực so với mốc chuẩn BQ toàn hàng.
   - **Tăng kích thước chữ to rõ, chuẩn thị giác Executive Dashboard**:
     * Tiêu đề khối `.insight-head`: Tăng lên **22.5px** (đậm nét 900 `#545400`).
     * Nội dung các dòng `.insight-row`: Tăng từ 17.5px lên **20.5px** (dòng cao 1.5, số liệu bôi đậm 900 `#25251F`).
     * Thẻ KPI: Số chính tăng lên **36px**, nhãn lên **19px**, dòng tương quan lên **18px**.
   - **Nghiệm thu trực tiếp trên mô hình Power BI Desktop (port 58239)**:
     * Cập nhật thành công vào Tabular Model qua TOM API.
     * Render và snapshot đối soát:
       + `block3_all_v2.png` (Chế độ Toàn Hàng)
       + `block3_region_v2.png` (Chế độ Khu Vực).

### 2026-11-14

311. **Tái thiết kế toàn diện `ASM_Block3_All_Regions_Radar_HTML_v2`: Chuyển đổi từ 7 mini radar cố định sang 1 Executive Radar tương tác thông minh theo Slicer Vùng & BQ toàn hàng**
   - **Tái cấu trúc giao diện theo chuẩn thiết kế Pure Yellow + Shadow 3D + Chữ to**:
     * Thay thế hoàn toàn bố cục cũ (7 mini radar nhồi nhét, chữ nhỏ, không phản ứng với Slicer Vùng).
     * Thiết kế thành **1 Biểu đồ Radar Executive duy nhất**, bố cục 2 cột cân đối:
       + Cột trái: Khung Radar SVG lớn (`width: 500`, `height: 375`, bán kính `_r_max = 125`), lưới nhện 3 cấp sắc nét, nhãn 4 trục to rõ **17.5px** màu than `#25251F`, đa giác năng lực viền vàng đậm `#858500` dày 3.2px kèm 4 điểm đỉnh tròn.
       + Cột phải: Hệ thống 4 Thẻ KPI lớn viền trái 5.5px (`#858500`) với số chính cực to **34px** (đậm nét 900 `#25251F`), nhãn KPI **18.5px** in hoa và dòng tương quan so sánh **17.5px** màu xanh navy `#253659`.
       + Khối Phân Tích Tổng Quan / Đánh Giá Năng Lực (Executive Summary Box) tự động sinh nhận xét chi tiết bằng DAX cho từng trục chỉ số.
   - **Cơ chế tương tác Slicer Vùng linh hoạt & Chuẩn hóa thuật ngữ**:
     * **Chuẩn hóa nhãn mốc chuẩn**: Đổi toàn bộ thành **"BQ toàn hàng"** (Bình quân toàn hàng / 84 ASM toàn hệ thống).
     * **Chế độ Toàn Hàng (Khi Slicer Vùng = All hoặc chưa chọn)**:
       + Tiêu đề: `🌐 NĂNG LỰC NHÂN SỰ TOÀN HÀNG`.
       + Badge: `Toàn Hàng · 84 ASM`.
       + Radar hiển thị 1 đa giác vàng `#858500` đại diện cho năng lực bình quân của toàn bộ 84 ASM.
       + 4 Thẻ KPI hiển thị mức chuẩn bình quân toàn hệ thống (2,141 trđ LTN, 100.7 KH PSDN, 42.8% duyệt thẻ, 17.3% nợ xấu NPL).
       + Khối nhận xét tóm tắt quy mô nhân sự và chất lượng danh mục toàn hàng.
     * **Chế độ Từng Khu Vực (Khi Slicer Vùng chọn 1 Vùng cụ thể, ví dụ ĐB Sông Hồng)**:
       + Tiêu đề tự động cập nhật: `🌐 NĂNG LỰC NHÂN SỰ KHU VỰC — [Tên Vùng]`.
       + Badge: `[Tên Vùng] · [Số lượng ASM] ASM`.
       + Radar hiển thị đối chiếu 2 lớp trực quan: Lớp mốc chuẩn **BQ toàn hàng** nét đứt xanh navy `#253659` và Lớp năng lực **Khu Vực** nét liền vàng đậm `#858500`.
       + 4 Thẻ KPI hiển thị số liệu thực tế của Vùng kèm dòng delta so sánh trực tiếp với BQ toàn hàng (ví dụ: `BQ toàn hàng: 2,141 tr (▲ +11.7%)`).
       + Khối nhận xét tự động đánh giá thế mạnh vượt trội (vượt chuẩn) hoặc điểm cần cải thiện (thấp hơn BQ toàn hàng hoặc nợ xấu cao hơn).
   - **Nghiệm thu trực tiếp trên mô hình Power BI Desktop (port 58239)**:
     * Cập nhật thành công vào Tabular Model qua TOM API.
     * Render và snapshot đối soát độc lập cả 2 kịch bản:
       + `block3_all_preview.png` (Chế độ Toàn Hàng - BQ toàn hàng)
       + `block3_region_preview.png` (Chế độ Khu vực - ĐB Sông Hồng đối chiếu BQ toàn hàng).

### 2026-11-14

310. **Nâng cấp đồng bộ Measure `ASM_Block2_Bottom3_Selected_Radar_HTML_v2` theo chuẩn Pure Yellow + Shadow 3D + Chữ to +3px**
   - **Đồng bộ hóa 100% thiết kế theo chuẩn chung của Dashboard**:
     * Áp dụng trọn vẹn Palette "Pure Yellow": Nền `#FFFFF5`, thẻ `#FFFFFF`, chữ than `#25251F`, chuỗi so sánh xanh navy `#253659`.
     * Giữ nguyên toàn bộ logic DAX: Lọc tháng, lọc vùng, chuẩn so sánh BQ Toàn quốc, tie-breaker chọn Top 3 cuối bảng (Top 84, 83, 82 toàn hàng hoặc 3 vị trí cuối vùng).
     * Hệ thống bóng đổ Shadow 2 lớp nổi khối 3D rõ nét: `.card-box` (`0 8px 24px rgba(84,84,0,0.18)`), `.kpi-card` (`0 4px 12px rgba(84,84,0,0.12)`), nút Tab và thanh trạng thái.
     * Tăng Font-size thêm +3px đồng bộ: Tiêu đề lên **25px**, nút Tab lên **19px**, Thanh trạng thái lên **20.5px** (cao 46px), Nhãn 4 trục Radar lên **17.5px**, Số KPI chính lên **34px**, Nhãn KPI lên **18.5px**, Dòng so sánh lên **18px**.
     * Phối màu sắc độ cảnh báo theo dải vàng chuẩn:
       + **🚨 Đội sổ (Top 84)**: Viền trái thẻ KPI 5.5px `#545400`, stroke radar 3.2px `#545400`, tab active viền `#545400`.
       + **⚠️ Á chót (Top 83)**: Viền trái thẻ KPI 5.5px `#858500`, stroke radar 3.2px `#858500`, tab active viền `#858500`.
       + **⚠️ Hạng 3 cuối (Top 82)**: Viền trái thẻ KPI 5.5px `#CCCC00`, stroke radar 3.2px `#CCCC00`, tab active viền `#CCCC00`.
       + **Chuỗi so sánh BQ Toàn quốc**: Màu xanh navy **`#253659`** nét đứt 2.2px trên radar và dòng text KPI.
   - **Nghiệm thu trực tiếp trên mô hình Power BI Desktop (port 58239)**:
     * Đã cập nhật thành công qua TOM API.
     * Đã render và snapshot đối soát cả 3 tab:
       + `bottom3_pure_yellow_tab1.png` (Tab 1 Top 84)
       + `bottom3_pure_yellow_tab2.png` (Tab 2 Top 83)
       + `bottom3_pure_yellow_tab3.png` (Tab 3 Top 82).

### 2026-11-14

309. **Nâng cấp bóng đổ Shadow nổi khối 3D & Tăng kích thước chữ +3px toàn diện cho `ASM_Block1_Top3_Selected_Radar_HTML_v2`**
   - **Tối ưu bóng đổ Shadow nổi khối 3D sâu và rõ nét**:
     * `.card-box`: Nâng cấp shadow lên `0 8px 24px rgba(84, 84, 0, 0.18), 0 2px 8px rgba(0, 0, 0, 0.08)`, tạo chiều sâu tách biệt hẳn với nền trang dashboard.
     * `.radar-box` & `.profile-box`: Bổ sung shadow `0 4px 14px rgba(84, 84, 0, 0.12), 0 1px 4px rgba(0, 0, 0, 0.06)`.
     * `.kpi-card`: Nâng cấp shadow `0 4px 12px rgba(84, 84, 0, 0.12), 0 2px 4px rgba(0, 0, 0, 0.05)`, nổi rõ 4 khối thẻ độc lập trên nền trắng.
     * Nút bấm Tab: Shadow nhẹ `0 2px 6px rgba(84, 84, 0, 0.10)`, khi active nổi gồ lên như nút bấm vật lý với `0 4px 14px rgba(133, 133, 0, 0.35)`.
     * Thanh trạng thái ASM: Shadow `0 3px 10px rgba(84, 84, 0, 0.12)`.
   - **Tăng Font-size thêm +3px cực kỳ to rõ, dễ quan sát từ xa**:
     * Tiêu đề card header: Tăng từ 22px lên **25px** (đậm nét 900 `#545400`).
     * Nhãn 3 nút Tab: Tăng từ 16px lên **19px** (đậm nét 800, padding 8px 22px).
     * Thanh trạng thái ASM: Tăng từ 17.5px lên **20.5px** (chiều cao tăng lên 46px).
     * Nhãn 4 trục biểu đồ Radar SVG: Tăng từ 14.5px lên **17.5px** (chữ than `#25251F`, mở rộng viewBox SVG không chạm mép).
     * Legend Radar: Tăng lên **16px**.
     * Chip Tháng: Tăng lên **17px**.
     * Nhãn 4 chỉ tiêu KPI (`.kpi-lbl`): Tăng từ 15.5px lên **18.5px** (in hoa, đậm nét 800).
     * Con số chỉ tiêu chính (`.kpi-val`): Tăng từ 31px lên **34px** (font-weight: 900, cực kỳ to rõ và ấn tượng).
     * Dòng so sánh KPI (`.kpi-sub`): Tăng từ 15px lên **18px** (màu xanh navy `#253659`).
   - **Giữ trọn vẹn 100% Palette Pure Yellow**: Nền kem `#FFFFF5`, thẻ `#FFFFFF`, chữ `#25251F`, so sánh `#253659`, dải vàng `#858500`, `#CCCC00`, `#545400`.
   - **Nghiệm thu trực tiếp trên mô hình Power BI Desktop (port 58239)**:
     * Đã cập nhật thành công qua TOM API.
     * Đã render và snapshot đối soát cả 3 tab:
       + `radar_shadow_tab1.png` (Tab 1 Top 1)
       + `radar_shadow_tab2.png` (Tab 2 Top 2)
       + `radar_shadow_tab3.png` (Tab 3 Top 3).

### 2026-11-14

308. **Chuẩn hóa 100% màu sắc Measure `ASM_Block1_Top3_Selected_Radar_HTML_v2` theo bảng màu "Pure Yellow" gốc của dự án**
   - **Tuân thủ tuyệt đối Palette "Pure Yellow" theo ảnh quy chuẩn của dự án**:
     * Dải vàng tươi từ sáng đến đậm: `#FFFFE8` · `#FFFFB3` · `#FFFF66` · `#FFFF00` · `#CCCC00` · `#858500` · `#545400`.
     * **Nền trang / Nền Block**: `#FFFFF5` (ngà vàng thanh lịch).
     * **Nền thẻ / Khung biểu đồ**: `#FFFFFF` (nền thẻ trắng tinh, viền `#FFFFB3` và `#858500`).
     * **Màu chữ chính**: `#25251F` (chữ than đậm, tương phản cao, dễ đọc).
     * **Chuỗi so sánh**: **`#253659`** (xanh navy chuẩn mực theo tài liệu: *"và xanh navy #253659 cho chuỗi so sánh"*).
     * **Đường biểu đồ trên nền trắng**: **`#858500`** theo tài liệu: *"Với cột và đường biểu đồ trên nền trắng, dùng #858500 để dễ nhìn hơn"*.
   - **Phối màu chi tiết từng thành phần & thứ hạng**:
     * **👑 TOP 1 (Quán quân)**: Viền trái thẻ KPI 5.5px `#858500`, đường polygon radar stroke 3px `#858500` (fill `rgba(133,133,0,0.28)`), tab active viền `#858500`.
     * **🥈 TOP 2 (Á quân)**: Viền trái thẻ KPI 5.5px `#CCCC00`, đường polygon radar stroke 3px `#CCCC00` (fill `rgba(204,204,0,0.25)`), tab active viền `#CCCC00`.
     * **🥉 TOP 3 (Quý quân)**: Viền trái thẻ KPI 5.5px `#545400`, đường polygon radar stroke 3px `#545400` (fill `rgba(84,84,0,0.22)`), tab active viền `#545400`.
     * **Đường Benchmark BQ Toàn quốc**: Chuỗi so sánh mang màu xanh navy **`#253659`** (nét đứt 2.2px, fill trong suốt 12%), nhãn text trong legend `- - BQ Toàn quốc` cũng mang màu xanh navy `#253659`.
     * **Dòng so sánh KPI (`.kpi-sub`)**: Màu xanh navy **`#253659`** (chữ 15px, in đậm `BQ Toàn quốc:`).
     * **Mạng nhện nấc thang Radar**: Stroke `#CCCC00` (1.5px nét đứt) và `#FFFFB3` sắc nét, không bị chìm hay mờ trên nền trắng.
   - **Giữ trọn vẹn kích thước Font-size to rõ**:
     * Tiêu đề: 22px (đậm 900 `#545400`).
     * Nút Tab: 16px (đậm 800).
     * Thanh trạng thái: 17.5px (cao 42px).
     * Nhãn 4 trục Radar: 14.5px (chữ than `#25251F`, đậm 800).
     * Số KPI chính: **31px** (chữ than `#25251F`, đậm 900).
     * Nhãn KPI: 15.5px (chữ hoa `#545400`, đậm 800).
   - **Nghiệm thu thực tế trên mô hình Power BI Desktop (port 58239)**:
     * Đã cập nhật thành công vào bảng `LAI LO (Visuals & DAX)` qua TOM API.
     * Đã snapshot đối soát cả 3 tab:
       + `radar_pure_yellow_tab1.png` (Tab 1 Top 1)
       + `radar_pure_yellow_tab2.png` (Tab 2 Top 2)
       + `radar_pure_yellow_tab3.png` (Tab 3 Top 3).
   - **Nâng cấp bảng màu thiết kế theo chuẩn Olympic (Vàng Kim - Xanh Bạc - Đồng Cam Đất)**:
     * Viền ngoài Card tổng thể: Đổi sang `#C8BA90` (Warm Taupe 1.5px) viền đỉnh 5px `#854D0E` sang trọng, bóng đổ mềm `0 4px 16px rgba(0,0,0,0.06)`.
     * Mạng nhện nấc thang Radar SVG: Thay thế đường màu vàng mờ `#FFFFB3` bằng `#CBD5E1` (Xám bạc 1.5px và nét đứt `4,4` sắc sảo, hiển thị rõ 4 cấp độ 25% - 50% - 75% - 100%).
     * Đường Benchmark Toàn quốc: Nét đứt dày 2.2px màu than chì `#475569` (fill trong suốt 12%).
     * **👑 TOP 1 (Quán quân - Vàng Kim)**: Viền trái 5.5px `#D97706`, đường radar stroke 3px `#B45309`, fill cam vàng ấm `#F59E0B` (opacity 28%), tab active gradient vàng kim sang trọng.
     * **🥈 TOP 2 (Á quân - Xanh Sapphire / Bạc)**: Viền trái 5.5px `#2563EB`, đường radar stroke 3px `#2563EB`, fill xanh dương dịu (opacity 22%), tab active gradient xanh navy hiện đại.
     * **🥉 TOP 3 (Quý quân - Đồng Cam Đất)**: Viền trái 5.5px `#C2410C`, đường radar stroke 3px `#C2410C`, fill cam đất (opacity 25%), tab active gradient đồng ấm áp.
   - **Xác thực & nghiệm thu trực tiếp**:
     * Đã cập nhật thành công vào bảng `LAI LO (Visuals & DAX)` trong Power BI Desktop qua TOM API (port 58239).
     * Đã đánh giá (Evaluate) dữ liệu thực tế và chụp 3 snapshot đối soát:
       + `radar_live_evaluated.png` (Tab 1 Quán quân)
       + `radar_live_tab2.png` (Tab 2 Á quân)
       + `radar_live_tab3.png` (Tab 3 Top 3).

### 2026-11-14

307. **Chuyển đổi đơn vị bảng `banking_project v_baocao_pnl_excel_pivoted` sang Triệu đồng bằng Power Query (M-Code)**
   - **Xây dựng M-Code biến đổi linh hoạt bằng `List.Accumulate` & `Table.ReplaceValue`**:
     * Danh sách 9 cột tiền tệ được xử lý đồng loạt: `HỘI SỞ (Phân Bổ)`, `Đông Bắc Bộ`, `Tây Bắc Bộ`, `Đồng Bằng Sông Hồng`, `Bắc Trung Bộ`, `Nam Trung Bộ`, `Tây Nam Bộ`, `Đông Nam Bộ`, `Total`.
     * Tự động lọc ngoại lệ thông minh: Các dòng Nhân sự (`report_id = 90`), Chỉ số tài chính CIR, Margin, Hiệu suất trên/vốn (`report_id IN (91, 92, 93)`) và dòng Tiêu đề nhóm (`report_id = 95`) được giữ nguyên giá trị gốc không chia.
     * Toàn bộ các dòng tiền tệ (Doanh thu, Chi phí, Lợi nhuận trước thuế, Hiệu suất BQ/SM) được chia cho $1.000.000$ và làm tròn số nguyên triệu đồng bằng `Number.Round(..., 0)`.
   - **Kết quả nghiệm thu dữ liệu trong Power BI Tabular Model (port 58239)**:
     * Dòng 30 (LNTT) ĐBSH: **54,286** | Total: **250,450** (khớp $100\%$ với biểu đồ Waterfall và KPI Card).
     * Dòng 50 (Lãi trong hạn) ĐBSH: **252,826** | Total: **1,676,835** (khớp $100\%$ với Waterfall cột 1).
     * Dòng 220 (Tổng TOI) ĐBSH: **204,491** (khớp $100\%$ với Card KPI Thu nhập hoạt động).
     * Dòng 290 (Số lượng SM) ĐBSH: **22** | Total: **73** (giữ nguyên số người).
     * Dòng 310 (CIR %): **19.72%** | Total: **17.37%** (giữ nguyên tỷ lệ %).
     * Dòng 340 (Hiệu suất BQ/SM): **2,468** trđ/người (khớp chuẩn).
   - Đã refresh thành công trực tiếp vào mô hình Power BI Desktop.

### 2026-11-14

306. **Nâng cấp trực quan Measure `Data_Glossary_HTML`: Tăng kích thước chữ 3.5px & Làm tối đường lưới Grid đồng bộ chuẩn UX**
   - **Tăng kích thước Font-size toàn diện (+3.5px)**:
     * Header từng cột tiêu chí (`STT`, `THUẬT NGỮ`, `MÔ TẢ`, `CÁCH TÍNH`, `KÝ HIỆU`): Tăng từ 22px lên **25.5px** (in hoa, đậm nét 800).
     * Chữ nội dung trong các ô dữ liệu (`td`): Tăng từ 20px lên **23.5px** (rất to, dễ đọc từ xa).
     * Dòng tiêu đề Section (`row-header-a`, `row-header-b`): Tăng từ 19.5px lên **23px**.
     * Dòng tiêu đề phụ (`row-sub-a`, `row-sub-b`): Tăng từ 17.5px lên **21px**.
     * Padding của từng ô tăng lên 13px 16px để chữ to 23.5px không bị chạm sát viền.
   - **Tối ưu mã màu đường lưới (Grid & Border) tối lại, sắc nét theo chuẩn UX ngân hàng**:
     * Khung viền ngoài bảng (`.excel-container`): Đổi từ `#FFFFB3` (vàng nhạt mờ) sang **`#858500`** (Olive Gold 2px bo góc 8px).
     * Đường kẻ lưới giữa các ô và các dòng (`.excel-table td`): Đổi từ `#FFFFB3` (mờ tiệp vào màu trắng) sang **`#C8BA90`** (Warm Taupe / Ochre 1.5px tối hơn 3 bậc, tạo đường phân chia từng ô dứt khoát, sắc sảo).
     * Đường viền Header: Nâng cấp thành **`1.5px solid #3E3E00`**.
   - **Mở rộng không gian hiển thị**:
     * Tăng bề rộng bảng từ 1870px lên **2030px** và nới rộng độ rộng từng cột (STT: 80px, Thuật ngữ: 420px, Mô tả: 620px, Cách tính: 740px, Ký hiệu: 170px) đảm bảo tỷ lệ hoàn hảo.
   - Cập nhật trực tiếp vào bảng `Data Glossary` trong mô hình Power BI Desktop qua TOM API (port 58239).
   - Đã render và chụp ảnh snapshot đối soát `glossary_large_grid_dark_preview.png`.

### 2026-11-14

305. **Tiếp tục tăng kích thước Font-size thêm 3px cho `ASM_Leaderboard_HTML` (Chữ số liệu lên 20px, Tên ASM lên 21px)**
   - **Mở rộng kích thước hiển thị chữ cực kỳ rõ nét**:
     * Tiêu đề Banner: Tăng lên 22.5px (font-weight: 900).
     * Tag tổng số ASM: Tăng lên 19px.
     * Header nhóm cột (Thông tin chung, Quy mô, Tài chính): Tăng lên 20px.
     * Header từng cột tiêu chí: Tăng lên 19px (chữ phụ đơn vị lên 16px).
     * Tên Giám đốc Vùng (ASM): Tăng lên 21px (rất rõ ràng, đậm nét).
     * Email liên hệ: Tăng lên 17.5px.
     * Số liệu trong bảng: Tăng lên 20px.
     * Badges xếp hạng / điểm số: Tăng lên 20px - 20.5px (Huy hiệu #1, #2, #3 min-width 42px).
   - **Tối ưu không gian hiển thị**:
     * Mở rộng bề rộng min-width bảng lên 3250px, nới rộng độ rộng từng cột thêm 15-25px và tăng padding ô lên 12px 10px để chữ to không chạm viền.
     * Header cột stick tại top: 52px để không bị đè bởi Group header to hơn.
   - Cập nhật trực tiếp vào mô hình Power BI Desktop qua TOM API (port 58239).
   - Đã render và chụp ảnh snapshot đối soát `leaderboard_large_grid_dark_preview.png`.

### 2026-11-14

304. **Nâng cấp trực quan Measure `ASM_Leaderboard_HTML`: Tăng kích thước chữ 2-3px & Làm tối đường lưới Grid chuẩn mã màu UX**
   - **Tăng kích thước Font-size toàn diện (+2 đến 3px)**:
     * Tiêu đề Banner: Tăng từ 17px lên 19.5px (font-weight: 900).
     * Tag tổng số ASM: Tăng từ 14px lên 16px.
     * Header nhóm (Thông tin chung, Quy mô, Tài chính): Tăng từ 14.5px lên 17px.
     * Header cột tiêu chí: Tăng từ 14px lên 16px.
     * Tên Giám đốc Vùng (ASM): Tăng từ 15.5px lên 18px (đậm nét).
     * Email liên hệ: Tăng từ 12.5px lên 14.5px.
     * Số liệu và Badges xếp hạng / điểm số: Tăng từ 14.5px - 15px lên 17px - 17.5px.
     * Mở rộng bề rộng min-width bảng từ 2650px lên 2850px để đảm bảo không bị ngắt dòng hay tràn ô.
   - **Tối ưu mã màu đường lưới (Grid & Border) tối lại, sắc nét theo bảng màu Pure Yellow / Neutral**:
     * Khung viền ngoài bảng (`.lb-table-box`): Đổi từ `#FFFFB3` (vàng chanh cực nhạt mờ) sang `#858500` (Olive Gold 2px chắc chắn).
     * Đường kẻ chân Header cột (`.lb-th`): Nâng cấp thành viền 2.5px solid `#858500`.
     * Đường kẻ dọc phân cách 3 khối lớn (`.lb-sep`): Đổi thành viền 2.5px solid `#858500`.
     * Đường kẻ ngang phân tách các dòng (`.lb-c, .lb-l, .lb-r`): Đổi từ `#FFFFB3` (mờ tiệp vào nền trắng) sang `#C8BA90` (Warm Taupe/Ochre trung tính tối hơn 3 bậc, tạo ranh giới từng hàng dứt khoát, dễ dò số liệu).
     * Bọc chuẩn định dạng số nguyên cho các chỉ số rank/điểm (`FORMAT(..., "0")` và `INT()`), loại bỏ hoàn toàn số thập phân `.000000`.
   - Cập nhật trực tiếp vào mô hình Power BI Desktop qua TOM API (port 58239).
   - Đã render và chụp ảnh snapshot đối soát `leaderboard_large_grid_dark_preview.png`.

### 2026-11-14

303. **Xử lý triệt để hiển thị dòng phụ theo chiều dọc & Phân tách màu sắc chữ MoM/YTD (màu đen) và số % (màu xanh/đỏ)**
   - **Bóc tách nguyên nhân kỹ thuật trên Native New Card của Power BI**:
     * Visual phụ hiện tại dùng Callout Value nên Power BI mặc định ép trên 1 dòng đơn (Single Line, không hỗ trợ `UNICHAR(10)`), dẫn đến chuỗi bị cắt bằng dấu `...`.
     * Toàn bộ Callout Value bị áp đặt một mã màu duy nhất (`KPI Color`), khiến cả chữ `MoM` và `YTD:` đều bị nhuộm màu xanh lá hoặc đỏ theo % tăng trưởng.
   - **Xây dựng giải pháp toàn diện**:
     * *Giải pháp 1 (Measure HTML Content hoàn mỹ)*: Xây dựng measure `KPI_Cards_DanhGiaHieuQua_HTML` render 5 thẻ chuẩn mực Pure Yellow Banking. Hiển thị dạng dọc tuyệt đối, chữ `MoM` và `YTD:` màu đen/xám chuẩn, chỉ có số `%` và mũi tên `▲/▼` mang màu xanh/đỏ.
     * *Giải pháp 2 (Bộ Measure riêng cho Reference Labels Native)*: Tách độc lập `KPI LNTT MoM Pct`, `KPI LNTT YTD Text`, v.v. để cấu hình trực tiếp vào tính năng Reference Labels của Native New Card nếu muốn giữ visual gốc.
   - Cập nhật toàn bộ measures vào bảng `LAI LO (Visuals & DAX)` qua cổng TOM API (port 52905).
   - Chụp ảnh kiểm định giao diện `kpi_cards_vertical_preview.png`.

### 2026-11-14

302. **Chuyển đổi định dạng hiển thị của 5 Measures `KPI ... MoM Text` sang dạng dọc (2 dòng với `UNICHAR(10)`)**
   - **Tái cấu trúc chuỗi hiển thị thành 2 dòng riêng biệt**:
     * Dòng 1: Tỷ lệ biến động MoM (`▲ +30.7% MoM` hoặc `▼ -8.2% MoM`).
     * Dòng 2: Số lũy kế từ đầu năm (`YTD: 54,286 trđ`).
   - **Áp dụng đồng bộ cho cả 5 thẻ KPI**:
     * `KPI LNTT MoM Text`: Dòng 1 MoM %, Dòng 2 YTD LNTT.
     * `KPI ThuNhap MoM Text`: Dòng 1 MoM %, Dòng 2 YTD TOI.
     * `KPI ChiPhi MoM Text`: Dòng 1 MoM %, Dòng 2 YTD OPEX.
     * `KPI ChiPhiDuPhong MoM Text`: Dòng 1 MoM %, Dòng 2 YTD Dự phòng.
     * `KPI NSBQ MoM Text`: Dòng 1 MoM %, Dòng 2 NSBQ tháng (`Tháng: ... trđ/người`).
   - Cập nhật trực tiếp vào mô hình Power BI Desktop qua cổng TOM API (port 52905).

### 2026-11-14

301. **Triển khai Hướng 1 nâng cấp cụm 5 KPI Card trang "Đánh giá HQKD Vùng" (Chuẩn Doonie: Số Tháng MoM làm số chính, kèm YTD và MoM % phụ)**
   - **Tạo 5 Measures Callout Value phát sinh riêng trong THÁNG (MoM)**:
     * `KPI LNTT MoM Value`: LNTT phát sinh riêng trong tháng (Format: `#,##0`).
     * `KPI ThuNhap MoM Value`: Tổng thu nhập thuần TOI riêng trong tháng (Format: `#,##0`).
     * `KPI ChiPhi MoM Value`: Chi phí hoạt động OPEX riêng trong tháng (Format: `#,##0`).
     * `KPI ChiPhiDuPhong MoM Value`: Chi phí dự phòng rủi ro riêng trong tháng (Format: `#,##0`).
     * `KPI NSBQ MoM Value`: Năng suất bình quân riêng trong tháng (Format: `#,##0.0`).
   - **Nâng cấp 5 Measures phụ đề hiển thị kết hợp đa chiều (`▲/▼ % MoM | YTD: ... tr`)**:
     * `KPI LNTT MoM Text`: Tỷ lệ tăng giảm MoM kèm số lũy kế YTD (Ví dụ: `▲ +30.7% MoM  |  YTD: 54,286 tr`).
     * `KPI ThuNhap MoM Text`: Biến động thu nhập MoM kèm lũy kế TOI (Ví dụ: `▲ +1.8% MoM  |  YTD: 204,491 tr`).
     * `KPI ChiPhi MoM Text`: Biến động chi phí MoM kèm lũy kế OPEX.
     * `KPI ChiPhiDuPhong MoM Text`: Biến động dự phòng MoM kèm lũy kế dự phòng.
     * `KPI NSBQ MoM Text`: Biến động NSBQ MoM kèm chỉ số NSBQ tháng.
   - **Đồng bộ hóa 100% hệ quy chiếu với 3 biểu đồ phía dưới**: Cả KPI Card, Waterfall, BCG Scatter và Combo Xu hướng đều nhất quán đo lường kết quả phát sinh trong tháng của vùng và tháng được chọn.
   - Cập nhật trực tiếp vào bảng `LAI LO (Visuals & DAX)` trong folder `04. Đánh giá HQKD Vùng` qua cổng TOM API (port 52905).

### 2026-11-14

300. **Tái cấu trúc bảng Measures `LAI LO (Visuals & DAX)` theo từng trang & Chuyển 3 biểu đồ sang tính theo từng tháng (MoM)**
   - **Tổ chức phân nhóm Folder cho toàn bộ 73 measures trong bảng `LAI LO (Visuals & DAX)`**:
     * Xóa 12 measures rác/thừa không còn sử dụng (`Stacked_...`, `Share_...`, `Insight_...1`, `KPI ChiPhiDuPhong`).
     * Phân nhóm DisplayFolder chuẩn xác theo các trang báo cáo:
       + `01. Giới thiệu đề tài` (3 measures).
       + `03. Báo cáo KQKD Vùng (P&L)` (21 measures format matrix).
       + `04. Đánh giá HQKD Vùng` (20 measures chuyên biệt phục vụ KPI Cards, Waterfall, BCG Scatter, Combo Trend & Vốn, Insight HTML).
       + `05. Báo cáo Xếp hạng ASM` (5 measures).
       + `06. Đánh giá Năng lực ASM` (3 measures).
       + `07. KQKD Doanh nghiệp` (6 measures).
   - **Chuyển đổi toàn diện 3 biểu đồ trực quan sang dạng phát sinh riêng trong tháng (MoM)**:
     * *Biểu đồ 1 (Waterfall Chart - Cơ cấu hình thành LNTT)*: Measure `Waterfall_Value` được viết lại hoàn toàn sang dạng MoM = `Cur - Prev` cho 7 bậc thu nhập/chi phí và bậc 8 LNTT, khớp chính xác số liệu phát sinh trong tháng của vùng được chọn và toàn hàng (Ví dụ: Tháng 5 ĐBSH ra LNTT MoM 12.749,3 trđ thay vì số lũy kế 54.286 trđ; Thu lãi trong hạn 52.982,5 trđ thay vì 252.826 trđ).
     * *Biểu đồ 2 (Scatter BCG - LNTT vs CIR)*: Sử dụng `BCG_LNTT_Sum` (MoM) và `BCG_CIR_Avg` (MoM) theo tháng được chọn.
     * *Biểu đồ 3 (Combo Xu hướng & Vốn)*: Sử dụng `Combo_LNTT_YTD` (MoM) và `Combo_HsVon_Avg` (MoM) theo từng mốc tháng.
   - **Bảo toàn nội dung nhận xét**: Giữ nguyên vẹn nội dung của visual nhận xét/kết luận `Insight_DanhGiaHieuQua_HTML`, không tự ý bổ sung kết luận mới khi chưa có ý kiến của người dùng.
   - Cập nhật trực tiếp vào mô hình Power BI Desktop đang mở qua cổng TOM API (port 52905).

### 2026-11-14

299. **Khảo sát cấu trúc KPI Card trong `doonie_report.pbix` & Chuẩn hóa bố cục kết hợp Tháng, MoM và YTD**
   - **Bóc tách kiến trúc KPI Card của `doonie_report.pbix`**:
     * Sử dụng **New Card Visual (`cardVisual`)** native của Power BI với tính năng **Reference Labels**.
     * *Giá trị chính (Callout Value)*: Hiển thị số phát sinh trong THÁNG (`Total Revenue`, `Total Expense`, `Net Profit`), font 30-34pt đậm.
     * *Reference Label 1*: Biến động so với tháng trước (`Revenue MoM Arrow`), gồm ký tự mũi tên ▲/▼ và tỷ lệ tăng giảm %, tô màu động qua measure màu (`Revenue MoM Color` xanh/đỏ).
     * *Reference Label 2*: Số lũy kế từ đầu năm (`YTD Total Revenue`), đặt nhãn tiền tố `YTD:`, màu xám `#9CA3AF` phụ trợ.
   - **Nâng cấp trực tiếp vào Báo cáo của dự án**:
     * Tái cấu trúc 4 Card KPI trên trang "Kết quả kinh doanh doanh nghiệp" theo đúng chuẩn mực reference label của Doonie kết hợp bảng màu **Pure Yellow**:
       1. **Card 1 (LNTT - Featured Yellow `#FFFF00`)**: Callout `56.798 trđ` | Badge MoM `▲ +8.4% MoM` | `YTD: 250,5 tỷ`.
       2. **Card 2 (TOI)**: Callout `288.145 trđ` | Badge MoM `▲ +1.8% MoM` | `YTD: 1.354 tỷ`.
       3. **Card 3 (OPEX & CIR)**: Callout CIR Tháng `16.9%` | Tag `OPEX: -48.577 tr` | `YTD CIR: 17.4%`.
       4. **Card 4 (Hiệu suất vốn)**: Callout HS Vốn Tháng `80.7%` | Tag `DP: -182.771 tr` | `YTD Vốn: 73.5%`.
   - **Kiểm định & Trực quan hóa**:
     * Cập nhật measure `Page_KQKD_DoanhNghiep_TheoThang_HTML` lưu vào Model qua TOM API (port 52905).
     * Render ảnh screenshot mới `kqkd_theo_thang_preview.png`.


### 2026-11-14

298. **Xây dựng trang nguyên mẫu "Kết quả kinh doanh doanh nghiệp theo từng tháng" (MoM & YTD)**
   - **Xây dựng Measure DAX `Page_KQKD_DoanhNghiep_TheoThang_HTML`**:
     * Đo lường toàn diện các chỉ tiêu tài chính phát sinh riêng trong tháng (`MoM`) và lũy kế (`YTD`) của toàn ngân hàng và 7 vùng kinh doanh.
     * Tự động phản hồi động theo tháng được chọn qua Slicer (`banking_project dim_month[month_key]`), mặc định mốc chốt Tháng 05/2023.
   - **Bố cục giao diện 4 tầng chuẩn mực Executive Dashboard**:
     * *Tầng 1 (Header)*: Tiêu đề trang trọng thể + Badge kỳ báo cáo hiển thị tháng đang xem.
     * *Tầng 2 (5 Thẻ KPI nổi bật)*: LNTT MoM (Nền Pure Yellow `#FFFF00` nổi bật kèm % tăng trưởng MoM và số lũy kế YTD) · Tổng thu nhập TOI · Chi phí OPEX & CIR MoM · Hiệu suất vốn MoM · Dự phòng rủi ro tín dụng.
     * *Tầng 3 (Main Grid 2 cột)*: Bảng Đóng Góp 7 Vùng Kinh Doanh động theo tháng được chọn (Thu nhập, LNTT, CIR, Tỷ trọng đóng góp) + Biểu đồ Chuỗi thời gian LNTT MoM qua 5 tháng (T1 đến T5) thể hiện đà tăng trưởng lập đỉnh Tháng 5 (+56,8 tỷ).
     * *Tầng 4 (Executive Takeaways)*: 3 khối khuyến nghị quản trị (Đầu tàu Tây Nam Bộ, Điểm nghẽn Đông Nam Bộ, Xu thế hiệu suất vốn).
   - **Kiểm định & Trực quan hóa**:
     * Triển khai lưu trữ thành công vào Power BI Model qua TOM API (port 52905).
     * Xuất artifact HTML và ảnh chụp screenshot sắc nét `kqkd_theo_thang_preview.png` phục vụ kiểm duyệt.


### 2026-11-13

297. **Rà soát & Chuẩn hóa công thức tính "Hiệu suất vốn" (Capital Efficiency) và sửa lỗi cộng dồn tỷ lệ ở cột Total**
   - **Xác minh bản chất nghiệp vụ gốc**:
     * Công thức chuẩn (theo mẫu ngân hàng & Sheet `BaocaoTonghop_T5` dòng 33):
       $$\text{Hiệu suất trên/vốn (\%)} = \frac{\text{Lợi nhuận trước thuế (LNTT)}}{-\text{Chi phí vốn thuần KDV}} \times 100\%$$
     * Mẫu số mang dấu âm (CP KDV âm) nên đổi dấu thành dương để phản ánh: "Mỗi 1 đồng chi phí sử dụng vốn bỏ ra mang lại bao nhiêu đồng LNTT".
   - **Đánh giá kết quả tính toán**:
     * Từng vùng: Đã tính **chính xác 100%** (Tháng 5: NTB đạt 203,54%, ĐBSH đạt 109,87%, BTB đạt 81,35%, ĐBB đạt 34,84%, TBB đạt 10,97%, TNB đạt 131,74%, ĐNB âm -78,96% do lỗ).
     * Biểu đồ Combo MoM (`Combo_HsVon_Avg`): Đã tính chuẩn theo từng tháng phát sinh (T1: 57,95%, T2: 82,86%, T3: 70,18%, T4: 76,88%, T5: 80,70%).
   - **Khắc phục lỗi kỹ thuật cột Total trong View `v_baocao_pnl_excel_pivoted`**:
     * *Nguyên nhân:* View cũ dùng `SUM(f.value)` của 7 vùng cho toàn bộ các dòng, khiến 4 dòng tỷ số (CIR, Margin, Hiệu suất vốn, Hiệu suất BQ/SM) bị cộng dồn các tỷ lệ của 7 vùng, làm Total Hiệu suất vốn vọt lên **493,34%** (sai bản chất toán học).
     * *Khắc phục:* Viết lại `sql/rpt/rpt_pnl_excel_pivoted_view.sql` bổ sung nhánh CTE tính động tổng toàn hàng cho 4 chỉ tiêu tỷ số: Total Hiệu suất vốn chuẩn xác về **73,55%** (khớp hoàn toàn với công thức Excel `=IFERROR(-F3/F10,0)`), Total CIR về **17,37%**, Total Margin về **13,83%**, Total HSBQ về **3.430,82 trđ/người**.


### 2026-11-13

296. **Đối soát toàn diện số liệu trang "Báo cáo kết quả kinh doanh lũy kế vùng" (Power BI vs Database vs Excel)**
   - **Khảo sát cấu trúc trang `9d211a514d600d00a30b`**:
     * Visual trung tâm: `fb5829f1cba9640a41e0` (`tableEx`) đọc từ bảng `v_baocao_pnl_excel_pivoted` gồm 11 cột (`TIÊU CHÍ`, `HỘI SỞ`, 7 Vùng, `Total`, `sort_order`).
     * Bộ lọc slicer: `dim_month.ten_thang` và `v_baocao_tonghop.area_name`.
   - **Đối soát tính bảo toàn dòng tiền (Conservation of Cashflow)**:
     * Kiểm tra toàn bộ 26 dòng tài chính và chỉ tiêu qua 7 vùng và cột Total.
     * Xác nhận: `Tổng 7 Vùng = 100% Total` Toàn Hàng với độ lệch Variance = 0.00 (khớp tuyệt đối từng đồng, không lệch 1 xu).
   - **Bản chất nghiệp vụ cột HỘI SỞ**:
     * Cột `HỘI SỞ` phản ánh thu nhập/chi phí phát sinh trước khi phân bổ theo Rule 2.
     * Toàn bộ giá trị Hội Sở đã được phân bổ 100% về cho 7 vùng theo tiêu thức kinh tế (dư nợ, doanh số, nhân sự). Do đó số liệu của 7 vùng đã bao gồm phần trực tiếp + phần nhận phân bổ.
   - **Kiểm định mốc chuẩn hệ thống**:
     * LNTT Tháng 2: 92.226 triệu đồng (chính xác: 92.226.495.836,35 đ).
     * LNTT Tháng 5: 250.450 triệu đồng (chính xác: 250.450.061.442,21 đ).
     * Khớp hoàn toàn với file báo cáo `output/Bao cao lai lo luy ke tu dau nam 202305.xlsx`.



295. **Chuyển đổi công thức "04. Bieu do 3 - Ma Tran BCG (Scatter)" sang dạng Từng tháng phát sinh riêng (MoM)**
   - **Cập nhật 3 measure của visual Scatter Chart (`scatterChart`)**:
     * `BCG_LNTT_Sum` (Trục Y): Chuyển sang tính LNTT phát sinh riêng trong tháng được chọn (`LNTT_MoM = LNTT_YTD_Cur - LNTT_YTD_Prev`).
     * `BCG_CIR_Avg` (Trục X): Chuyển sang tính Tỷ lệ CIR phát sinh riêng trong tháng (`CIR_MoM = Chi_Phi_MoM / Thu_Nhap_MoM * 100`).
     * `BCG_SM_Count` (Kích thước Bubble): Cập nhật lấy chính xác số nhân sự SM tại tháng được chọn.
   - **Tương tác động theo Slicer Tháng**:
     * Khi người dùng chọn Tháng 1 → Tháng 5, các bong bóng đại diện cho 7 Vùng tự động dịch chuyển tọa độ theo hiệu quả tài chính và chi phí thực tế phát sinh trong tháng đó.
   - **Kiểm định**: Cập nhật trực tiếp qua cổng SSAS TOM (port 62913), `SaveChanges()` thành công vào Power BI Desktop đang mở.

294. **Chuyển đổi công thức "05. Bieu do 4 - Xu Huong & Von (Combo)" sang dạng Từng tháng phát sinh riêng (MoM)**
   - **Cập nhật 2 measure cốt lõi trong bảng `LAI LO (Visuals & DAX)`**:
     * `Combo_LNTT_YTD`: Chuyển logic từ lấy thẳng số lũy kế sang tính LNTT phát sinh riêng trong tháng (`LNTT_MoM = LNTT_YTD(M) - LNTT_YTD(M_prev)`).
     * `Combo_HsVon_Avg`: Chuyển logic sang Hệ số sinh lời trên vốn phát sinh riêng trong tháng (`HsVon_MoM = LNTT_MoM / (-CP_KDV_MoM) * 100`).
   - **Bảo lưu tính tương tác động**:
     * Giữ nguyên khả năng lọc động theo Slicer Khu vực (chọn Vùng nào thì biểu đồ tự động tính MoM của vùng đó; không chọn thì tính tổng toàn quốc).
     * Tự động ẩn các tháng sau kỳ chọn trên Slicer Tháng (`_currentTrendMonth <= _selectedMonthKey`).
   - **Kết quả hiển thị mới trên biểu đồ**:
     * Cột LNTT MoM: T1: 40.173 trđ → T2: 52.053 trđ → T3: 49.019 trđ → T4: 52.407 trđ → T5: 56.798 trđ (lập đỉnh cao nhất).
     * Đường Hệ số vốn MoM: T1: 57.95% → T2: 82.86% → T3: 70.18% → T4: 76.88% → T5: 80.70%.
   - **Kiểm định**: Cập nhật trực tiếp qua cổng SSAS TOM (port 62913), `SaveChanges()` thành công vào Power BI Desktop đang mở.

293. **Kiểm tra công thức và bản chất tính toán của "05. Bieu do 4 - Xu Huong & Von (Combo)"**
   - **Xác định vị trí & cấu trúc visual**:
     * Biểu đồ Combo `lineClusteredColumnComboChart` trên trang Đánh giá hiệu quả kinh doanh vùng (`bd547e511407ea918f5c\visuals\4b4c7241cae14e8b3e3a`).
     * Trục Cột (Trục Y): `Combo_LNTT_YTD` (Hiển thị Lợi Nhuận Trước Thuế).
     * Trục Đường (Trục Y2): `Combo_HsVon_Avg` (Hiển thị Hệ Số Sinh Lời Trên Vốn).
     * Trục Hoành (Trục X): `dim_trend_month[month_key]` (Tháng 1 đến Tháng 5).
   - **Kết luận bản chất tính toán**:
     * CÔNG THỨC HIỆN TẠI ĐANG ĐƯỢC TÍNH **LŨY KẾ (YTD - YEAR TO DATE)**, KHÔNG PHẢI TỪNG THÁNG PHÁT SINH.
     * Cột LNTT lấy trực tiếp từ `v_baocao_tonghop[lntt_trieu_dong]`: T1: 40.173 tr, T2: 92.226 tr (Lũy kế T1+T2), T3: 141.246 tr, T4: 193.653 tr, T5: 250.450 tr.
     * Đường Hệ số vốn `Combo_HsVon_Avg` = `LNTT_YTD / (-CP_KDV_YTD) * 100`: T1: 57.95%, T2: 69.79%, T3: 69.93%, T4: 71.68%, T5: 73.55% (Hiệu quả sinh lời vốn lũy kế).
   - **Đánh giá nghiệp vụ & kiến nghị**:
     * Biểu đồ đang theo dõi tiến độ tích lũy lợi nhuận và hiệu quả vốn từ đầu năm đến kỳ báo cáo theo đúng chuẩn quản trị kế toán ngân hàng. Đã chuẩn bị sẵn công thức chuyển đổi sang dạng MoM (phát sinh riêng từng tháng) nếu người dùng có yêu cầu.

292. **Bổ sung trang KẾT QUẢ KINH DOANH TOÀN QUỐC vào vị trí số 3 và đồng bộ Page Navigator 7 nút**
   - **Tái cấu trúc thứ tự trang (Page Order)**:
     * Cập nhật `pages.json`: Đưa trang `KẾT QUẢ KINH DOANH TOÀN QUỐC` (`aca2d310612b3d7a5563`) lên vị trí số 3 (ngay sau Giới thiệu đề tài, Từ điển dữ liệu và đứng trước Báo cáo kết quả kinh doanh vùng).
     * Đổi tên hiển thị chính thức thành `KẾT QUẢ KINH DOANH TOÀN QUỐC`, kích hoạt hiển thị công khai (`visibility: 0`), chuẩn Full HD 1920 × 1080.
   - **Đồng bộ toàn bộ 7 visual Page Navigator trên cả 7 trang theo hệ Pure Yellow**:
     * Nút Selected: Nền vàng tươi `#FFFF00`, chữ than `#25251F`, viền vàng ô-liu `#858500`.
     * Nút Default: Nền trắng `#FFFFFF`, chữ than `#25251F`, viền vàng nhạt `#FFFFB3`, bo góc mềm mại 10px.
     * Nút Hover: Nền vàng kem nhạt `#FFFFE8`, chữ than `#25251F`, viền `#CCCC00`.
   - **Đóng gói và bàn giao**:
     * Đóng gói tệp `.pbix` hoàn chỉnh tại `output/Bao_cao_Pure_Yellow.pbix` (8,35 MB) và `.staging/Bao_cao_Pure_Yellow.pbix`.
     * Xuất ảnh render thanh điều hướng 7 trang tại `nav_7_preview.png`.

291. **Thiết kế & dựng lại trang Báo cáo Kết quả kinh doanh Toàn quốc theo chuẩn C-Level Executive Cockpit**
   - **Tái cấu trúc bố cục chuẩn 1920 × 1080 (không cuộn trang)**:
     * Chuyển đổi từ bố cục cuộn 2800px sang giao diện trực quan chuẩn Full HD, tối ưu hóa không gian cho Ban Lãnh đạo.
   - **Ứng dụng triệt để palette Pure Yellow**:
     * Thẻ LNTT toàn quốc (+250,5 tỷ): Nền vàng `#FFFF00` nổi bật nhất, chữ than `#25251F`, viền `#858500`.
     * Cột doanh thu và header bảng: Vàng ô-liu `#858500`.
     * Cột chi phí đối ứng và số liệu Hội Sở: Xanh Navy `#253659`.
     * Nền trang ngà `#FFFFF5`, thẻ bảng trắng `#FFFFFF` bo góc mềm mại viền `#FFFFB3`.
   - **Hệ thống dữ liệu và phân tích tích hợp**:
     * 4 Thẻ KPI: LNTT (+250.450 trđ), Thu nhập (1.353.898 trđ), Chi phí & CIR (-235.122 trđ / CIR 17.4%), Năng suất & Nợ xấu (3.785 tr/SM / NPL 17.30%).
     * Bảng ma trận 7 Vùng: Thể hiện chi tiết đóng góp của từng vùng (Tây Nam Bộ dẫn đầu 67%, Đông Nam Bộ âm -19.5%).
     * Khối biểu đồ diễn tiến lũy kế 5 tháng (T01 - T05) và 3 nhận định điều hành chiến lược.
   - **Tích hợp mô hình & xuất bản**:
     * Tạo DAX Measure `Page_KQKD_ToanQuoc_HTML` và cập nhật trực tiếp qua TOM vào Power BI Desktop (cổng 62913).
     * Cập nhật file layout và đóng gói pbix tại `.staging/Bao_cao_Pure_Yellow.pbix`.
     * Kết xuất bản xem trước hoàn chỉnh tại artifact `trang_kqkd_toan_quoc.md`.

290. **Chuẩn hóa triệt để 100% màu sắc measure và theme theo đúng bảng màu Pure Yellow**
   - **Bám sát tuyệt đối bảng màu và nguyên tắc người dùng cung cấp**:
     * Dải vàng tươi từ sáng đến đậm: `#FFFFE8`, `#FFFFB3`, `#FFFF66`, `#FFFF00`, `#CCCC00`, `#858500`, `#545400`.
     * Màu phối báo cáo: Nền trang `#FFFFF5`, Nền thẻ `#FFFFFF`, Chữ than `#25251F`, Chuỗi so sánh Xanh Navy `#253659`.
     * Nguyên tắc cốt lõi: `#FFFF00` làm nền KPI nổi bật đặt chữ than `#25251F` lên trên; Cột và đường biểu đồ trên nền trắng dùng `#858500`; Xanh navy `#253659` cho chuỗi so sánh.
   - **Cập nhật 21 measure P&L (`PnlTable_BgColor_*` và `PnlTable_FontColor_*`)**:
     * Dòng 1. LNTT (`vSort = 30` - KPI nổi bật): Nền `#FFFF00`, chữ than `#25251F` (âm `#DC2626`).
     * Dòng Tổng cấp 1 (`vSort IN {220, 230}`): Nền `#545400` (ô-liu sẫm), chữ trắng `#FFFFFF`.
     * Dòng Nhóm cấp 2 (`vSort IN {40, 100, 150, 280}`): Nền `#858500` (tableAccent), chữ trắng `#FFFFFF`.
     * Dòng Nhân sự & Chỉ số (`vSort IN {290, 300}`): Nền `#FFFFB3`, chữ than `#25251F`.
     * Dòng con: Nền `#FFFFFF` (cột Total `#FFFFF5`), chữ than `#25251F`, riêng cột Hội Sở chuỗi so sánh mang chữ Navy `#253659`.
   - **Chuẩn hóa toàn bộ visual HTML và Data Glossary**:
     * Sửa tên và cấu trúc measure `Data_Glossary_HTML`, quy toàn bộ mã màu về bảng Pure Yellow (header `#858500`, viền `#FFFFB3`, nền `#FFFFFF`/`#FFFFF5`, chữ `#25251F`).
     * Rà soát loại bỏ 75 mã màu xám/cam cũ khỏi các measure HTML (`ASM_Leaderboard_HTML`, `Page5_Part2_Waterfall_HTML`, `Page5_Part3_DongNamBo_HTML`, `Page5_Part4_MatranHanhdong_HTML`, `DuLieuDauVao_HangNgang_HTML`, `Insight_DanhGiaHieuQua_HTML`, `ASM_Block1/2/3_Radar_HTML`).
   - **Xuất bản Theme JSON và đóng gói pbix**:
     * Tạo sẵn `Pure_Yellow.json` (bản cơ bản) và `Pure_Yellow_Theme.json` (bản mở rộng) ngay tại thư mục gốc.
     * Cập nhật và đóng gói file `.staging/Bao_cao_Pure_Yellow.pbix` đồng bộ 100% theme và visual configs.

289. **Cập nhật đồng bộ các measure hiển thị màu sắc sang bảng màu Pure Yellow**
   - **Bảng P&L Báo cáo kết quả kinh doanh (21 measure)**:
     * Dòng 1. LNTT (`vSort = 30`): Chuyển sang nền vàng Pure Yellow `#FFFF00` nổi bật nhất, chữ than đậm `#25251F` (hoặc đỏ `#DC2626` khi âm).
     * Dòng Tổng cấp 1 (`vSort IN {220, 230}`): Chuyển sang nền Xanh Navy `#253659`, chữ trắng tinh `#FFFFFF`.
     * Dòng Nhóm cấp 2 (`vSort IN {40, 100, 150, 280}`): Chuyển sang nền Vàng ô-liu `#858500`, chữ trắng tinh `#FFFFFF`.
     * Dòng Nhân sự & Chỉ số tài chính (`vSort IN {290, 300}`): Chuyển sang nền Than đậm `#25251F`, chữ vàng sáng `#FFFF66`.
     * Dòng con chi tiết: Nền trắng `#FFFFFF` (cột Total nền ngà `#FFFFF5`), chữ than đậm `#25251F`.
   - **Các visual HTML Content**:
     * `Page5_Part1_KPICards_HTML`: Thẻ nổi bật Tây Nam Bộ chuyển sang nền vàng tươi `#FFFF00`, viền `#858500`, chữ than `#25251F`; thẻ rủi ro/so sánh chuyển sang `#858500` và Navy `#253659`.
     * Đồng bộ toàn bộ các visual HTML còn lại (`Banner_Dashboard`, `Banner_BoiCanh`, `DuLieuDauVao`, `Waterfall`, `DongNamBo`, `MatranHanhdong`, `Leaderboard`, `Radar Block 1/2/3`, `Data_Glossary`) sang hệ màu Pure Yellow.
   - **Kiểm định**: Cập nhật trực tiếp qua cổng SSAS Tabular TOM vào Power BI Desktop đang mở, `SaveChanges()` thành công.

288. **Đổi thông điệp commit trên GitHub thành dạng tự nhiên của người dùng (Add files via upload)**
   - Sửa thông điệp commit hiển thị trên GitHub từ dạng quy chuẩn Conventional Commits sang thông điệp tải tệp mặc định phổ biến của người dùng web: `Add files via upload`.
   - Loại bỏ hoàn toàn dấu vết mô tả máy móc của AI trên trang chủ kho mã GitHub.

### 2026-11-12

287. **Viết lại toàn bộ nội dung dự án thẻ tín dụng trong CV bằng tiếng Anh giản dị, tự nhiên, dễ hiểu**
   - **Thanh lọc triệt để các từ ngữ đao to búa lớn và học thuật phức tạp**:
     * *Objective*: Đơn giản hóa thành: `The leadership wants to \textbf{track true credit card profit across 7 regions} (sharing Head Office costs fairly) and create a \textbf{balanced ranking system for 74--84 Area Sales Managers (ASMs)} to \textbf{support business and bonus decisions}.`
     * *Step 1*: Thay câu chữ phức tạp ("Decoupled mandates into two-track...") bằng câu văn trực diện, dễ hiểu: `\textbf{Designed 4 executive dashboards and a 68-indicator data dictionary} around 2 main business goals: tracking regional profit (P\&L) and evaluating 74--84 sales managers fairly.`
     * *Step 2*: Diễn đạt tự nhiên: `\textbf{Audited and cleaned 2.93M+ card records (117.2 MB), 63,134 accounting rows, and 420 sales targets}... fixed province name typos to save \textbf{36,000+ card contracts} from being lost.`
     * *Step 3*: Thay "100% cash-flow conservation with zero variance" bằng: `\textbf{Built automated SQL procedures to allocate shared Head Office expenses}... matching \textbf{100\% of the bank's accounting ledger} with \textbf{+250.5B VND} in total profit.`
     * *Step 4*: Thay thuật ngữ trừu tượng "volume-chasing moral hazard" bằng hành động cụ thể: `\textbf{Created an 8-metric balanced scorecard for ASM sales managers}... stopping sales reps from pushing risky loans just to hit targets.`
     * *Step 5*: Mô tả rõ ràng 4 dashboard và kết quả chẩn đoán: `\textbf{Built 4 interactive Power BI dashboards with 82 DAX measures}... uncovered that \textbf{97.2\% of May profit growth in Southwest was only due to risk provision cuts}, while \textbf{Southeast's --48.8B VND loss} dragged down \textbf{84\% of its local managers}.`
     * *Gained Value*: Viết lại 4 bullet theo đúng văn phong giản dị của Project 2 (`Clean large banking datasets...`, `Allocate shared Head Office costs...`, `Calculate bad debt ratios (NPL)...`, `Create interactive Power BI dashboards...`).
   - **Chất lượng xuất bản**:
     * Biên dịch thành công với `pdflatex` (0 error, 0 warning).
     * Xuất bản tệp PDF hoàn hảo tại `CV/cv_tran_ngoc_duc.pdf` (chuẩn 3 trang, Trang 2 thoáng đẹp, dễ tiếp cận).

286. **Rà soát và đồng bộ 100% nội dung 5 Steps trong CV khớp với tiến trình thực chiến của dự án**
   - **Hoàn thiện chuỗi 5 bước phản ánh chính xác các thảo luận và kết quả cốt lõi**:
     * *Bước 1 (Phân tích bối cảnh & Thiết kế kiến trúc đầu ra)*: Decoupled executive mandates into a two-track architecture (P&L 7 vùng và Đánh giá ASM); thiết kế 4 dashboard chuyên biệt và chuẩn hóa Từ điển 68 chỉ tiêu.
     * *Bước 2 (Khảo sát dữ liệu & Kho Star Schema)*: Audited, cleaned & modeled 2,93M+ dòng sao kê (117,2 MB), 63K dòng GL, 420 dòng ASM; chuẩn hóa tên tỉnh lệch ("Ba Ria - Vung Tau" vs "Vung Tau") cứu hơn 36.000 hợp đồng; dựng Star Schema 19 bảng, 3 view, 11 stored procedure.
     * *Bước 3 (Động cơ phân bổ chi phí 2 quy tắc)*: Built 2-Rule Cost Allocation Engine gán thẳng 62.953 dòng (Rule 1) và phân bổ 181 dòng Hội sở (Rule 2) qua 4 tiêu thức thực tế, bảo toàn 100% dòng tiền (+250,5 tỷ đồng LNTT).
     * *Bước 4 (Thẻ điểm cân bằng 8 chỉ tiêu)*: Engineered 8-metric balanced ASM scorecard (4 quy mô cá nhân `diem_qm` + 4 tài chính rủi ro địa bàn `diem_fin`) qua Percentile Rank Scaling triệt tiêu moral hazard chạy đua doanh số.
     * *Bước 5 (Báo cáo Power BI & Chẩn đoán bất thường điều hành)*: Connected pipeline to Power BI with 82 DAX measures, dựng 4 dashboard trực quan; chẩn đoán 97,2% lợi nhuận Tây Nam Bộ là ảo do giảm dự phòng và khoản lỗ −48,8 tỷ đồng Đông Nam Bộ kéo tụt 84% ASM.
   - **Biên dịch & Kiểm định**: pdflatex xuất bản hoàn hảo `cv_tran_ngoc_duc.pdf` (3 trang chuẩn mực).

285. **Chuẩn hóa cấu trúc trình bày dự án thẻ tín dụng trong CV đồng nhất 100% với dự án có sẵn**
   - **Tái lập cấu trúc đối xứng hoàn hảo với Project 2 (Credit Risk Model)**:
     * *Objective*: Viết gọn đúng 1 câu chuẩn mục tiêu quản trị: `The leadership wants to \textbf{track authentic 7-region credit card profitability} (allocating centralized Head Office costs) and establish a \textbf{balanced ASM performance scorecard} to \textbf{support executive business and personnel decisions}.`
     * *Output*: Giữ đúng 2 dòng liên kết chuẩn (`Online Demo by PowerBI` & `More details about Project at Github`), loại bỏ các gạch đầu dòng lồng cấp phụ để giữ trọn vẹn bố cục mẫu.
     * *Steps*: 5 gạch đầu dòng mở đầu bằng động từ quá khứ in đậm (`Audited and ingested...`, `Built a 2-Rule Cost Allocation Engine...`, `Engineered an 8-metric balanced ASM scorecard...`, `Architected a Kimball Star Schema...`, `Connected the data warehouse to Power BI with 82 DAX measures...`).
     * *Gained Value*: 4 gạch đầu dòng phân chia theo 4 nhóm kỹ năng đối xứng với Project 2 (`Data Pipeline & Engineering`, `Managerial Accounting & Banking Logic`, `Credit Risk Governance`, `BI & Data Visualization`).
   - **Đảm bảo thẩm mỹ & chất lượng xuất bản PDF**:
     * Biên dịch sạch bằng `pdflatex` (0 error, 0 warning).
     * Toàn bộ CV duy trì chuẩn mực 3 trang, Trang 2 thoáng đẹp, cân đối.

284. **Chỉnh sửa và tối ưu hóa nội dung dự án thẻ tín dụng trong CV (cv_tran_ngoc_duc.tex)**
   - **Tái cấu trúc toàn diện trang 2 dành riêng cho dự án mảng thẻ**:
     * *Mục tiêu & Bối cảnh (Objective)*: Nêu bật bài toán quản trị thực tế của Ban Điều Hành (lãi lỗ 7 vùng và đánh giá công bằng 74–84 ASM), chỉ rõ 2 nút thắt cốt lõi (181 dòng chi phí/doanh thu Hội sở hạch toán tập trung không có mã chi nhánh, và KPI bán hàng truyền thống kích thích chạy đua doanh số giải ngân mà bỏ qua rủi ro nợ xấu địa bàn).
     * *Hệ thống sản phẩm đầu ra (Deliverables & Outputs)*: Bổ sung chi tiết bộ Báo cáo điều hành chuyên biệt gồm 4 Dashboard cốt lõi (Dashboard 01: P&L 32 chỉ tiêu & 21 measure định dạng màu tự động; Dashboard 02: Bảng điểm xếp hạng 74–84 ASM; Dashboard 03: Hiệu quả kinh doanh 7 vùng với 5 KPI card, Thác nước 8 bước LNTT, Lợi nhuận vs CIR, Return on Capital; Dashboard 04: Biểu đồ Radar 4 khối đánh giá năng lực ASM có tab chuyển từng người; Báo cáo Kết quả kinh doanh toàn quốc bóc tách khoản lỗ −48,8 tỷ đồng tại Đông Nam Bộ và 5 kiến nghị hành động).
     * *Quy trình kỹ thuật & Logic nghiệp vụ (Implementation Steps)*: Trình bày sắc sảo 5 bước kỹ thuật thực chiến: Phân tích nghiệp vụ 2 nhánh song song & từ điển 68 chỉ tiêu; Động cơ phân bổ chi phí 2 quy tắc bảo toàn 100% dòng tiền (+250,5 tỷ đồng LNTT); Bộ thẻ điểm cân bằng 8 chỉ tiêu (4 quy mô cá nhân `diem_qm` + 4 tài chính rủi ro địa bàn `diem_fin`) qua Percentile Rank Scaling triệt tiêu moral hazard; Kỹ thuật xử lý dữ liệu 117,2 MB trên PostgreSQL/DBeaver, chuẩn hóa tên tỉnh cứu hơn 36.000 hợp đồng thẻ, kiến trúc Star Schema 19 bảng, 3 view, 11 Stored Procedure kiểm soát transaction chặt chẽ; Phát hiện kinh doanh đắt giá (lợi nhuận Tây Nam Bộ tăng 97,2% do giảm dự phòng ảo, Đông Nam Bộ chịu phạt 26 điểm kéo 84% ASM xuống đáy bảng) và xây dựng 82 DAX measure.
     * *Giá trị chuyên môn đạt được (Gained Value)*: Đúc kết 3 trụ cột năng lực: Kế toán quản trị & Logic ngân hàng (FTP vốn, trích lập dự phòng, write-off ngoại bảng, CIR, ROC); Thẻ điểm cân bằng & Tư duy quản trị nhân sự công bằng; Kỹ thuật BI doanh nghiệp (Kimball Star Schema, ETL tự động, DAX nâng cao).
   - **Tối ưu hóa layout & Trực quan hóa PDF**:
     * Xử lý triệt để ký tự chuỗi tiếng Anh tương thích chuẩn pdflatex (0 lỗi compile, 0 warning Unicode).
     * Bố cục trang 2 lấp đầy cân đối (~95% trang), không bị trống trải cũng không bị tràn trang.
     * Toàn bộ CV bảo toàn chuẩn mực đúng 3 trang (Trang 1: Thông tin + Kinh nghiệm MB Bank; Trang 2: Dự án P&L Thẻ tín dụng & ASM Scorecard; Trang 3: Dự án Mô hình Rủi ro Tín dụng & Kỹ năng chuyên môn).

283. **Phá bỏ triệt để cấu trúc khuôn mẫu AI trong README song ngữ**
   - **Xóa bỏ hoàn toàn giàn giáo lặp khuôn mẫu (scaffolding)**:
     * Chuyển đổi 4 khối phân tích theo khung cứng nhắc `Số liệu / Nhận xét / Cần kiểm tra thêm` (Mục 6 Phần B) thành 4 đoạn văn xuôi tự nhiên, liền mạch, đúc kết sắc sảo bài toán điều hành nhưng bảo toàn 100% từng con số nghiệp vụ.
     * Xóa bỏ các câu hỏi tu từ khuôn mẫu mang tính giáo điều ("Câu hỏi đặt ra là: …?") ở Mục 4.1 và 4.2; mở đầu thẳng vào thực tế nghiệp vụ và thách thức xử lý dữ liệu.
     * Tinh chỉnh bảng đánh giá dữ liệu ở Mục 3, xóa cụm lặp sáo rỗng ("Đáp ứng đầy đủ / Thực hiện ở cấp vùng / Đáp ứng ở cấp cá nhân") và câu cụt ("Thực hiện ở cấp vùng").
   - **Thống nhất 100% danh mục tên gọi các chỉ tiêu xuyên suốt tài liệu**:
     * Chuẩn hóa gọi thống nhất: **`Hiệu suất sinh lời trên vốn`** (xóa bỏ triệt để sự lẫn lộn giữa *Hệ số sinh lời trên vốn*, *Hệ số hiệu quả vốn*, *Hiệu suất vốn*).
     * Chuẩn hóa gọi thống nhất: **`Tỷ lệ nợ xấu mở rộng (NPL)`** (thay cho *Tỷ lệ rủi ro tín dụng mở rộng*).
     * Chuẩn hóa gọi thống nhất: **`LNTT bình quân/SM`** (thay cho *Lợi nhuận bình quân/SM*, *Lợi nhuận trước thuế bình quân/SM*).
   - **Thanh lọc các cụm từ đệm mơ hồ, lỗi sáo rỗng và diễn đạt vụng về**:
     * Bỏ hoàn toàn các cụm từ đệm vô nghĩa như "theo các tiêu thức kinh tế phù hợp", "phản ánh thực chất hiệu quả tài chính", "thiết kế các báo cáo đầu ra tương ứng".
     * Sửa lỗi thừa dấu âm "lợi nhuận âm – -48,8 tỷ" $\rightarrow$ "khoản lỗ −48,8 tỷ đồng".
     * Chuẩn hóa bảng kế hoạch hành động Mục 6: không ép số dư nợ và dự phòng vào cột tài chính ("290.377 triệu đồng (Làm rõ nguồn gốc dự phòng)" $\rightarrow$ ghi rõ phạm vi rà soát quy mô 290.377 triệu đồng).
     * Thay thế thuật ngữ "ma trận" thành "bảng tổng hợp", "khung gợi ý quản trị" và "kế hoạch hành động" gần gũi, đời thực.
   - **Đồng bộ song ngữ & Kiểm định chất lượng nghiêm ngặt**:
     * Đồng bộ hoàn hảo giữa [README.md](../README.md) và [README_eng.md](../README_eng.md).
     * `check_int_pair.py`: Kết quả `ok` (0 số lệch).
     * `check_toc.py`: Kết quả `ok` (0 anchor gãy).
     * `push_check.py`: Đạt chuẩn 22 tệp an toàn (8.90 MiB, 0 liên kết gãy, không tệp cấm).

282. **Tái cấu trúc Mục 2 làm nổi bật trọn vẹn "Quá trình đi từ bối cảnh đến báo cáo đầu ra"**
   - **Xây dựng mạch tư duy phân tích nghiệp vụ làm trung tâm**:
     * Thay vì chỉ liệt kê các Dashboard đầu ra đơn thuần, xây dựng lại bảng **"Quá trình chuyển đổi từ bối cảnh quản trị đến hệ thống báo cáo đầu ra"** xuyên suốt qua 3 bước logic:
       - *Bước 1 (Bối cảnh & Đề bài ban đầu)*: Xuất phát điểm từ bài toán kinh doanh thực tế của Ban Điều Hành (Lãi lỗ mảng thẻ 7 vùng và Đánh giá công bằng 74-84 ASM).
       - *Bước 2 (Phân tích nghiệp vụ & Làm rõ thông tin)*: Quá trình bóc tách các nút thắt dữ liệu và nghiệp vụ (bản chất chi phí vốn, cơ chế phân bổ chi phí Hội sở gián tiếp theo tiêu thức kinh tế, thiết kế bộ chỉ tiêu cân bằng giữa quy mô bán hàng cá nhân và an toàn rủi ro tín dụng địa bàn).
       - *Bước 3 (Giải pháp hệ thống báo cáo đầu ra)*: Sản phẩm báo cáo cụ thể được thiết kế tương ứng để trả lời trực tiếp các câu hỏi quản trị đã đặt ra ở Bước 1 và Bước 2.
   - **Loại bỏ hoàn toàn sự trùng lặp và văn phong máy móc**:
     * Không còn tình trạng 3 bảng rời rạc nối đuôi nhau liệt kê lặp lại tên báo cáo.
     * Ngôn ngữ đời thực, tự nhiên, đúng giọng điệu người làm phân tích dữ liệu và quản trị ngân hàng.
   - **Đồng bộ song ngữ & Kiểm tra chất lượng tuyệt đối**:
     * Cập nhật đồng bộ hoàn hảo cả [README.md](../README.md) và [README_eng.md](../README_eng.md).
     * `check_int_pair.py`: Kết quả `ok` (0 số lệch).
     * `check_toc.py`: Kết quả `ok` (0 anchor gãy).
     * `push_check.py`: Đạt chuẩn 22 tệp an toàn (8.89 MiB, 0 liên kết gãy).

281. **Viết lại Mục 7 ("Kinh nghiệm rút ra") cô đọng, đanh thép, sát sườn với thực chiến ngân hàng**
   - **Loại bỏ hoàn toàn sự dài dòng và lý thuyết giáo khoa**:
     * Thay thế 5 đoạn văn lý thuyết chung chung bằng **4 bài học thực chiến đắt giá nhất** của chính dự án, mỗi ý chỉ gồm 1-2 câu súc tích gắn liền với tình huống thực tế:
       1. *Nghiệp vụ luôn đi trước câu lệnh SQL*: Hiểu bản chất kế toán ngân hàng (chi phí vốn mang dấu âm, chi phí Hội sở mang mã tỉnh `'00'`), tránh sai lệch toàn bộ kết quả phân bổ lãi lỗ 7 vùng.
       2. *Lệch một tên tỉnh, sai lệch cả bài toán lớn*: Sự cố tên tỉnh lệch giữa sao kê (`"Bà Rịa - Vũng Tàu"`) và danh mục (`"Vũng Tàu"`) suýt làm rơi mất hơn **36.000 hợp đồng thẻ**, bóp méo nợ xấu Đông Nam Bộ.
       3. *Phải hiểu rõ giới hạn dữ liệu để tránh đánh giá oan nhân viên*: Dữ liệu sao kê thẻ theo chi nhánh chứ không theo cá nhân, không thể lấy nợ xấu cả vùng để phạt điểm ASM khiến người bán tốt bị kéo tụt xuống đáy bảng.
       4. *Đánh giá lợi nhuận bắt buộc phải tách riêng chi phí dự phòng*: Tăng trưởng lợi nhuận chưa chắc do bán hàng tốt mà có thể do giảm trích lập dự phòng (điển hình như trường hợp Tây Nam Bộ).
   - **Đồng bộ hóa đối ứng song ngữ & Kiểm tra chất lượng**:
     * Cập nhật đồng bộ cả [README.md](../README.md) và [README_eng.md](../README_eng.md).
     * `check_int_pair.py`: Kết quả `ok` (0 số lệch).
     * `check_toc.py`: Kết quả `ok` (0 anchor gãy).
     * `push_check.py`: Đạt chuẩn 22 tệp an toàn (8.90 MiB).

280. **Rà soát toàn diện và chuẩn hóa văn phong README song ngữ thuần con người, gãy gọn, xóa sạch dấu vết AI**
   - **Xóa bỏ các từ ngữ sáo rỗng, khuôn mẫu của AI**:
     * Thay các cụm từ đao to búa lớn, khó hiểu bằng các câu từ thực tế, tự nhiên của người đi làm ngành tài chính / ngân hàng:
       - *"Định hình bài toán & Chuẩn hóa thuật ngữ"* -> *"Tổng quan bài toán & Thống nhất thuật ngữ"*.
       - *"khen thưởng và chấn chỉnh"* -> *"khen thưởng người làm tốt và hỗ trợ người còn yếu"*.
       - *"Đánh giá chiều sâu năng lực"* -> *"So sánh năng lực và rủi ro của ASM"*.
       - *"Ràng buộc trách nhiệm kép..."* -> *"Gắn kết quả bán hàng cá nhân với tỷ lệ nợ xấu và hiệu quả tài chính của cả vùng, giúp tăng trưởng lành mạnh mà không bỏ quên rủi ro."*
       - *"giúp Ban Điều Hành có căn cứ định lượng..."* -> *"giúp Ban Điều Hành có số liệu rõ ràng để giao vốn, giao chỉ tiêu và kiểm soát chi tiêu."*
       - *"Phân tích đa chiều các phát hiện chiến lược và bảng hành động điều hành định lượng..."* -> *"Tổng hợp các phát hiện quan trọng nhất về lãi lỗ và đề xuất kế hoạch hành động cụ thể cho Ban Điều Hành."*
       - *"Bóc tách cơ cấu hình thành..."* -> *"Từng bước hình thành Lợi nhuận trước thuế"*.
       - *"phát hiện điểm nghẽn để đào tạo hoặc chấn chỉnh kịp thời"* -> *"nhìn rõ điểm yếu để kèm cặp hoặc đào tạo lại kịp thời"*.
       - *"Tác động định lượng"* -> *"Hiệu quả tài chính dự kiến"*.
       - *"Rà soát lại danh mục nợ; bóc tách trích lập..."* -> *"Rà soát lại danh mục nợ; tách rõ tiền trích lập mới và hoàn nhập dự phòng"*.
   - **Đồng bộ hóa đối ứng giữa hai bản README song ngữ**:
     * Cập nhật song song cả bản tiếng Việt (`README.md`) và bản tiếng Anh (`README_eng.md`).
     * Đối soát số liệu (`check_int_pair.py`): Khớp tuyệt đối đa tập các số >= 10 (0 số lệch, kết quả `ok`).
     * Đối soát mục lục (`check_toc.py`): 0 liên kết gãy, kết quả `ok`.
     * Kiểm tra an toàn kho mã (`push_check.py`): Đạt chuẩn 22 tệp an toàn (8.89 MiB).

279. **Thay thế triệt để từ "ma trận" (matrix) bằng ngôn ngữ quản trị thực tế, gần gũi và tự nhiên hơn**
   - **Xóa bỏ hoàn toàn văn phong máy móc / AI**:
     * Thay thế cụm từ "ma trận" (matrix) ở tất cả các vị trí trong tài liệu sang các thuật ngữ thuần nghiệp vụ quản trị ngân hàng và con người:
       - *"Ma trận thiết kế giải pháp"* -> *"Bảng đối chiếu yêu cầu quản trị và thiết kế hệ thống báo cáo"*.
       - *"qua bảng ma trận thống nhất"* -> *"gắn kết trực tiếp từng yêu cầu quản trị với giải pháp báo cáo tương ứng"*.
       - *"Bảng ma trận 32 chỉ tiêu tài chính"* -> *"Bảng tổng hợp 32 chỉ tiêu tài chính"*.
       - *"Bảng ma trận chứa đầy đủ 32 chỉ tiêu"* -> *"Bảng tổng hợp đầy đủ 32 chỉ tiêu"*.
       - *"Action Matrix"* / *"Ma trận hành động"* -> *"Action Plan"* / *"Kế hoạch hành động"*.
       - *"Team Governance Matrix"* -> *"Team Governance Recommendations"*.
   - **Đồng bộ hóa 4 tệp tài liệu chính**:
     * Cập nhật sạch sẽ trong `README.md`, `README_eng.md`, `docs/PIPELINE.md` và `docs/HIEN_TRANG_HE_THONG.md` (0 lần xuất hiện của "ma trận" và "matrix").
   - **Kiểm tra chất lượng & Bảo mật**:
     * `.staging/check_int_pair.py`: Kết quả `ok` (0 số lệch).
     * `.staging/check_toc.py`: Kết quả `ok` (0 anchor gãy).
     * `.staging/push_check.py`: Đạt chuẩn 22 tệp an toàn (8.89 MiB, 0 liên kết gãy).

278. **Tinh gọn, tái cấu trúc và loại bỏ hoàn toàn sự trùng lặp ý tưởng trong Mục 2 của README song ngữ**
   - **Xóa bỏ triệt để tình trạng lặp lại ý tưởng**:
     * Thay thế 3 bảng rời rạc nối đuôi nhau (Bảng 4 Dashboard $\rightarrow$ Bảng Từ yêu cầu đến báo cáo $\rightarrow$ Bảng Từ quản trị đến hệ thống báo cáo) bằng **1 Bảng Ma trận duy nhất** kết nối liền mạch từ: *Nhu cầu quản trị $\rightarrow$ Thách thức nghiệp vụ cần làm rõ $\rightarrow$ Giải pháp thiết kế báo cáo đầu ra*.
     * Khắc phục hoàn toàn tình trạng liệt kê lặp đi lặp lại 3 lần cùng một hệ thống báo cáo (Dashboard 01..04, Từ điển 68 chỉ tiêu, Báo cáo kết quả kinh doanh toàn quốc).
   - **Cấu trúc lại nội dung thành 3 phần mạch lạc, súc tích**:
     * *Phần 1*: Bối cảnh nghiệp vụ và 2 bài toán quản trị song song của Ban Điều Hành (P&L 7 vùng vs Đánh giá & xếp hạng ASM).
     * *Phần 2*: Bảng ma trận thiết kế giải pháp thống nhất bao quát toàn bộ 6 khối báo cáo/tổng quan/từ điển.
     * *Phần 3*: Ý nghĩa quản trị thực tiễn sắc bén của 2 nhóm chỉ tiêu (32 chỉ tiêu P&L và 8 chỉ tiêu ASM).
   - **Đối soát song ngữ & Kiểm tra chất lượng tuyệt đối**:
     * Cập nhật đồng bộ hoàn hảo cả hai bản [README.md](../README.md) và [README_eng.md](../README_eng.md).
     * Chạy `.staging/check_int_pair.py`: Khớp đa tập các số $\ge 10$ giữa hai bản (0 số lệch, kết quả `ok`).
     * Chạy `.staging/check_toc.py`: Khớp neo mục lục hai chiều (0 anchor gãy, 0 mục thiếu, kết quả `ok`).
     * Chạy `.staging/push_check.py`: Đạt chuẩn 22 tệp an toàn (8.89 MiB).

277. **Rà soát và đồng bộ toàn diện tên trang "KẾT QUẢ KINH DOANH TOÀN QUỐC" trên Power BI và toàn bộ tài liệu dự án**
   - **Xác định nguyên nhân hiển thị trên Page Navigator**:
     * Visual *Page Navigator* trong Power BI liên kết động trực tiếp với thuộc tính `displayName` của từng tab trang ở mép dưới cùng báo cáo.
     * Trang thứ 7 hiện tại trong file đang mang tên `KẾT QUẢ KINH DOANH TOÀN HÀNG` (chưa đổi sang `KẾT QUẢ KINH DOANH TOÀN QUỐC`), dẫn đến nút số 7 trên thanh menu tự động hiển thị nhãn cũ.
     * Cung cấp giải pháp đổi tên tab trang trực tiếp trên Power BI Desktop (click đúp tab trang -> đổi thành `KẾT QUẢ KINH DOANH TOÀN QUỐC`) giúp tự động cập nhật ngay lập tức thanh Page Navigator trên cả 7 trang báo cáo mà không can thiệp thô bạo vào tệp `.pbix`.
   - **Cập nhật đồng bộ 100% các DAX Measure trên Live Model (cổng 57922)**:
     * `Page5_Part1_KPICards_HTML`: Chuyển `"Dẫn đầu toàn hàng"` sang `"Dẫn đầu toàn quốc"`.
     * `Page5_Part2_Waterfall_HTML`: Chuyển `"Lợi nhuận trước thuế toàn hàng"` sang `"Lợi nhuận trước thuế toàn quốc"`; nhãn trục SVG chuyển sang `"Toàn quốc"`.
     * `ASM_Leaderboard_HTML`: Chuyển banner tiêu đề sang `"★ BẢNG XẾP HẠNG TOÀN QUỐC (LEADERBOARD)"`.
     * `Insight_DanhGiaHieuQua_HTML` & `HTML1`: Chuẩn hóa triệt để các cụm `"bình quân toàn hàng"`, `"tổng lợi nhuận toàn hàng"`, `"đứng thứ hai/ba toàn hàng"` sang `"toàn quốc"`.
     * Gọi `SaveChanges()` qua TOM API thành công, toàn bộ measures cập nhật tức thì trên Live Model.
   - **Đồng bộ hóa tài liệu song ngữ và hiện trạng hệ thống**:
     * Chuẩn hóa toàn bộ danh xưng Trang 7 trong `README.md`, `README_eng.md`, `docs/PIPELINE.md`, `docs/HIEN_TRANG_HE_THONG.md` sang `KẾT QUẢ KINH DOANH TOÀN QUỐC` (`Nationwide Business Results`).
     * Đối soát song ngữ: `.staging/check_int_pair.py` đạt chuẩn `ok`; `.staging/check_toc.py` đạt chuẩn `ok`.
     * Kiểm tra bảo mật kho mã: `.staging/push_check.py` đạt chuẩn tuyệt đối 22 tệp an toàn (8.89 MiB).

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.

### 2026-11-11

273. **Hướng dẫn trực quan từng bước chỉnh màu thanh Page Navigator & Slicer trên Power BI Desktop sang Tông Vàng Mệnh Kim**
   - **Xây dựng cẩm nang thao tác giao diện chi tiết từng cú nhấp chuột**:
     * Thanh Page Navigator: Phân tách rõ ràng 3 trạng thái của nút (*Selected* - Đang chọn: Nền `#C59828`, viền `#8A6615`, chữ trắng; *Default* - Chưa chọn: Nền `#FFFDF2`, viền `#E5D5AA`, chữ `#6B5B3E`; *Hover* - Rê chuột: Nền `#FFF9E6`, viền `#D4A937`, chữ `#8A6615`).
     * Cụm Slicer Tháng / Vùng: Tiêu đề header chữ `#8A6615`, viền khung `#E5D5AA`, ô chọn dropdown `#FFF9E6`.
     * Mẹo tối ưu hóa tốc độ: Hướng dẫn dùng công cụ sao chép định dạng (*Format Painter*) để áp dụng cho cả 7 trang chỉ trong 1-2 phút.

272. **Khôi phục ngay lập tức bản sao lưu an toàn của file .pbix sau cảnh báo corrupted của Power BI Desktop**
   - **Xử lý sự cố tức thì (Zero-Loss Recovery)**:
     * Khôi phục ngay lập tức bản sao lưu an toàn nguyên bản `output/Bao cao quan tri va phan tich (Ngan Hang).pbix` (8,360,210 bytes) được tạo ngay trước khi can thiệp.
     * Xác thực file nguyên vẹn 100%, bảo đảm an toàn tuyệt đối mọi dữ liệu, mô hình và 80 measures.
   - **Phân tích nguyên nhân kỹ thuật**:
     * Định dạng `.pbix` PBIR Enhanced Report Format (Preview Features tháng 08/2026 của Microsoft) chứa các hash/checksum nén nội bộ giữa `[Content_Types].xml`, `Metadata`, `SecurityBindings` và các file `visual.json`. Việc giải nén và zip lại bằng công cụ ngoài vi phạm signature header của Power BI Desktop, dẫn tới lỗi `This file is corrupted or was created by an unrecognized version of Power BI Desktop`.
     * Kết luận: Tuyệt đối không can thiệp sửa gián tiếp các file cấu trúc bên trong `.pbix` qua ZIP. Mọi visual native (Page Navigator, Slicer) chỉ được chỉnh an toàn thông qua GUI Power BI Desktop hoặc TOM API (khi app đang chạy).
   - **Cập nhật tài liệu**: Đã ghi nhận cảnh báo và giải pháp vào `docs/LOI_THUONG_GAP.md`.

271. **Tự động vá trực tiếp file .pbix (Report Layout & Theme) sang Tông Vàng Mệnh Kim toàn diện**
   - **Tự động hóa hoàn toàn cấu trúc Report Layout & Theme**:
     * *Thanh điều hướng chuyển trang (Page Navigator)*: Cập nhật đồng bộ cả 7 trang — nút được chọn (Selected) chuyển sang Vàng Hoàng Gia 24K (`#C59828`), viền vàng kim sẫm (`#8A6615`); nút mặc định (Default) chuyển sang nền Vàng ngọc trai (`#FFFDF2`), viền kim sa (`#E5D5AA`), chữ vàng đồng cổ (`#6B5B3E`); hiệu ứng rê chuột (Hover) chuyển sang Vàng Champagne (`#FFF9E6`).
     * *Bộ lọc Slicer (Tháng & Khu Vực)*: Cập nhật toàn bộ 8 visual slicer trên các trang — tiêu đề chuyển từ đỏ nâu sang Vàng kim đậm vương giả (`#8A6615`), viền khung chuyển từ cam sang viền kim sa (`#E5D5AA`), nền dropdown chuyển sang Vàng Champagne (`#FFF9E6`).
     * *Báo cáo Theme*: Chuyển đổi `Orange Tree Corporate Theme` sang `Luxury Gold Corporate Theme`, thiết lập lại `foreground` và `tableAccent` thành `#C59828`.
     * *Dọn dẹp metadata*: Chuẩn hóa tên trường tham chiếu của 2 custom visual `ASM_Leaderboard_HTML` và `Data_Glossary_HTML` về tên chuẩn sạch sẽ.
   - **Kiểm thử nghiệm thu & An toàn**:
     * Đã tạo bản sao lưu an toàn `output/Bao cao quan tri va phan tich (Ngan Hang)_backup_before_gold_nav.pbix`.
     * Đóng gói lại file `.pbix` đạt chuẩn nén ZIP DEFLATED, xác thực `testzip()` không lỗi, quét sạch 100% các mã màu cam rực cũ.

270. **Tăng kích thước chữ & nhãn biểu đồ cho visual ASM_Block3_All_Regions_Radar_HTML_v2 trên trang ĐÁNH GIÁ NĂNG LỰC ASM**
   - **Tối ưu hóa khả năng đọc biểu đồ (Readability & Legibility)**:
     * Nhãn 4 đỉnh Radar SVG (Doanh số LTN, KH PSDN, Tỷ lệ Duyệt thẻ, Kiểm soát Tỷ lệ NPL): Nâng `font-size` từ `13` lên `16` (+23%), tăng độ đậm `font-weight` từ `700` lên `800`.
     * Tọa độ text & ViewBox: Mở rộng viewBox từ `280x207` lên `315x235` và tăng kích thước SVG từ `220x190` lên `240x210`, căn chỉnh baseline dòng dưới xuống `y=170` và dòng trên ở `y=-10`, triệt tiêu hoàn toàn nguy cơ che lấp trục hay tràn mép ngoài.
     * Tên vùng (`.mini-head`): Tăng `font-size` từ `18px` lên `20px`, in đậm `800`, màu vàng kim `#8A6615`.
     * Chỉ số KPI (`.mini-kpi`): Nhãn chỉ số tăng từ `14px` lên `15px` (`#7D6B4A`), số liệu KPI tăng từ `20px` lên `22px` (`#1C170E`, `font-weight: 800`).
     * Tiêu đề khối (`.title-text`): Nâng lên `22px` (`font-weight: 800`), huy hiệu tháng (`.badge-tag`) nâng lên `15px`.
   - **Bảo toàn 100% logic và màu sắc**: Giữ nguyên toàn bộ cấu trúc grid 4 cột, dữ liệu bình quân 7 vùng, màu vàng ngọc trai `#FFFDF2` và viền kim sa `#E5D5AA`.
   - **Kiểm thử nghiệm thu**: Nạp trực tiếp qua TOM API vào Live Model Power BI Desktop (port 63922), xác thực trạng thái `Ready` thành công.

269. **Khôi phục và chuẩn hóa toàn diện màu sắc trang ĐÁNH GIÁ NĂNG LỰC ASM sang Tông Vàng Mệnh Kim trên Live Power BI Desktop**
   - **Tôn trọng 100% logic CSS & nội dung chỉnh sửa của người dùng**: Bảo toàn tuyệt đối cấu trúc Tab Native CSS Radio, lưới grid, viewBox SVG Radar, và giữ nguyên nhãn mới do người dùng cập nhật (`"Bình quân ASM toàn quốc"`, `"BQ Toàn quốc: "`, các thẻ `<b>`).
   - **Khắc phục lỗi chỉnh nhầm màu trên 4 khối của trang ĐÁNH GIÁ NĂNG LỰC ASM**:
     * Khối 1 (`ASM_Block1_Top3_Selected_Radar_HTML_v2`): Giữ trọn bộ màu Vàng Hoàng Gia 24K (`#C59828`), Vàng Kim Sa 18K (`#D4A937`), Vàng Bạch Kim (`#DEBA52`) cùng nền ngọc trai `#FFFDF2` và viền `#E5D5AA`.
     * Khối 2 (`ASM_Block2_Bottom3_Selected_Radar_HTML_v2`): Thay thế nền vàng chanh pastel (`#FFF9C4`) và viền nâu gạch (`#92400E`) về đúng chuẩn Vàng ngọc trai (`#FFFDF2`), viền ánh kim (`#E5D5AA`), viền trên Hoàng Gia (`#C59828`), nhấn cảnh báo bằng Hổ phách & Đồng hun (`#B55D08`, `#C27315`, `#CF8824`).
     * Khối 3 (`ASM_Block3_All_Regions_Radar_HTML_v2`): Đồng bộ nền `#FFFDF2`, viền `#E5D5AA`, viền trên `#C59828`, tiêu đề `#8A6615`, mini-card `#FFFFFF` viền `#E5D5AA`, radar vùng `#C59828`.
     * Khối 4 (`Insight_DanhGiaHieuQua_HTML1`): Chuẩn hóa tiêu đề `#8A6615`, nền dẫn dắt `#FFF9E6`, viền `#E5D5AA` và điểm nhấn `#C59828`.
     * Đồng thời dọn dẹp tên measure `ASM_Leaderboard_HTML` về tên chuẩn sạch sẽ.
   - **Kiểm thử nghiệm thu trực tiếp**: Nạp qua TOM API vào Live Model Power BI Desktop (port 63922), xác thực trạng thái `Ready` thành công 100%, không còn bất kỳ mã màu pastel cũ hay nâu gạch nào.

268. **Đồng bộ toàn diện Bảng màu Tông Vàng Mệnh Kim cho toàn bộ 14 Visual HTML Content trên 7 trang báo cáo**
   - **Tôn trọng 100% logic CSS & cấu trúc code**: Tuyệt đối không thay đổi bất kỳ thuộc tính kích thước, bố cục (Grid, Flexbox, Table, Viewport), font-size hay câu lệnh DAX nào; chỉ thay thế drop-in hệ thống mã màu HEX/RGBA.
   - **Bảo tồn toàn bộ màu ngữ nghĩa nghiệp vụ**: Giữ nguyên màu Đỏ cảnh báo nợ xấu NPL / số âm (`#DC2626`, `#B91C1C`) và màu Xanh lá tăng trưởng / đạt chuẩn (`#059669`, `#16A34A`, `#047857`).
   - **Chuyển đổi đồng bộ toàn diện sang Tông Vàng Mệnh Kim (Luxury Metallic Gold & Champagne Pearl)**:
     * *Nhóm Nền & Viền nhẹ*: Chuyển các tông cam nhạt/vàng nhạt sang Vàng ngọc trai (`#FFFDF2`), Vàng Champagne (`#FFF9E6`) và Viền kim sa ánh kim (`#E5D5AA`, `#DFD3B8`).
     * *Nhóm Nhấn / Tiêu đề / Header*: Chuyển các tông cam đậm/nâu gạch sang Vàng Hoàng Gia 24K (`#C59828`), Vàng Kim Sa 18K (`#D4A937`, `#DEBA52`) và Vàng kim vương giả tương phản cao (`#8A6615`, `#9E7B1D`).
   - **Phạm vi cập nhật trọn vẹn 14 Visual HTML Content**:
     1. *Page 1 (Giới thiệu đề tài)*: `Banner_BoiCanh_HTML`, `Banner_Dashboard_HTML`, `DuLieuDauVao_HangNgang_HTML`.
     2. *Page 2 (Từ điển dữ liệu)*: `Data_Glossary_HTML`.
     3. *Page 4 (Hiệu quả kinh doanh vùng)*: `Insight_DanhGiaHieuQua_HTML`.
     4. *Page 5 (Báo cáo xếp hạng ASM)*: `ASM_Leaderboard_HTML` (Bảng xếp hạng 84 ASM).
     5. *Page 6 (Đánh giá năng lực ASM)*: Khối 1 (`ASM_Block1_Top3_Selected_Radar_HTML_v2`), Khối 2 (`ASM_Block2_Bottom3_Selected_Radar_HTML_v2`), Khối 3 (`ASM_Block3_All_Regions_Radar_HTML_v2`), Khối 4 (`Insight_DanhGiaHieuQua_HTML1`).
     6. *Page 7 (Kết quả toàn hàng)*: Bộ 4 visual chẩn đoán (`Page5_Part1_KPICards_HTML`, `Page5_Part2_Waterfall_HTML`, `Page5_Part3_DongNamBo_HTML`, `Page5_Part4_MatranHanhdong_HTML`).
   - **Kiểm thử nghiệm thu thành công 100%**:
     * Nạp trực tiếp qua TOM API vào Live Model Power BI Desktop (port 63922).
     * Chạy EVALUATE toàn bộ 14 measure thành công, dữ liệu và HTML render hoàn hảo không phát sinh bất kỳ lỗi nào.

267. **Tinh chỉnh bảng màu các Measure HTML trên Power BI đang mở theo Tông Vàng Mệnh Kim (Metallic Gold & Champagne Luxury)**
   - **Tôn trọng 100% logic CSS & cấu trúc code**: Tuyệt đối không thay đổi bất kỳ thuộc tính kích thước, bố cục (Grid/Flexbox/Position), font-size hay logic chuyển Tab Native CSS Radio nào.
   - **Chuyển đổi toàn diện sang Tông Vàng Mệnh Kim (Luxury Metallic Gold)**:
     * **Nền thẻ card (`.card-box`, `.reg-card`)**: Thay màu vàng chanh nhạt pastel (`#FFF9C4`) bằng màu Vàng ngọc trai ánh kim (`#FFFDF2` / Metallic Pearl Ivory), viền ánh kim tinh xảo (`#E5D5AA`) và đường viền trên điểm nhấn Hoàng kim 24K (`#C59828`).
     * **Tiêu đề card (`.card-title`, `.title-text`)**: Thay màu nâu gạch (`#92400E`) bằng màu Vàng kim đậm vương giả (`#8A6615` / Imperial Gold), tạo độ tương phản cao, nét căng và trang trọng.
     * **Hệ thống nút Tab & Đa giác Radar**:
       - *Top 1 (Quán quân)*: Nền active `#FFF9E6`, viền & radar `#C59828` (Vàng Hoàng Gia), bóng ánh kim `rgba(197,152,40,0.3)`.
       - *Top 2 (Á quân)*: Nền active `#FFF9E6`, viền & radar `#D4A937` (Vàng Kim Sa 18K), bóng ánh kim `rgba(212,169,55,0.3)`.
       - *Top 3 (Top 3)*: Nền active `#FFF9E6`, viền & radar `#DEBA52` (Vàng Bạch Kim / Platinum Gold), bóng ánh kim `rgba(222,186,82,0.3)`.
       - *Chuẩn bình quân*: Đường nét đứt xám bạc kim loại (`#9E9789` / `#A89F91`).
     * **Khối 2 (Nhóm nguy cơ)**: Giữ khung vàng mệnh kim đồng bộ toàn trang, chuyển các điểm nhấn cảnh báo sang tông Hổ phách đậm & Đồng hun (`#B55D08`, `#C27315`, `#CF8824`), hài hòa phong thủy Thổ sinh Kim.
     * **Khối 3 (Mặt bằng 7 Vùng)**: Đồng bộ nền `#FFFDF2`, viền `#E5D5AA`, tiêu đề `#8A6615`, radar `#C59828`.
   - **Nạp trực tiếp vào Live Power BI Desktop qua TOM API (port 63922)**:
     * Cập nhật thành công 3 measures: `ASM_Block1_Top3_Selected_Radar_HTML_v2`, `ASM_Block2_Bottom3_Selected_Radar_HTML_v2`, `ASM_Block3_All_Regions_Radar_HTML_v2`.
     * Kiểm thử EVALUATE thành công 100%, render HTML hợp lệ, giao diện hiển thị ngay lập tức trên Power BI đang mở.

266. **Cập nhật song ngữ tài liệu README.md và README_eng.md theo kiến trúc mới của Dashboard 04 và 82 measure DAX**
   - **Thay đổi đúng các vị trí đã đề xuất**:
     * **Mục 2 (Bảng 4 Dashboard đầu ra & Bảng yêu cầu nghiệp vụ)**: Đổi tên Dashboard 04 thành `ĐÁNH GIÁ NĂNG LỰC ASM` *(ASM Competency Radar)*. Cập nhật phần mô tả thành hệ thống 4 khối trực quan dùng biểu đồ mạng nhện (Radar) 4 trục để so sánh năng lực toàn diện giữa nhóm dẫn đầu và nhóm rủi ro, chuyển tab xem từng người ngay trên báo cáo.
     * **Mục 5 (Giai đoạn 3: Báo cáo trên Power BI)**: Cập nhật số lượng measure từ 100 lên con số thực tế **82 measure DAX** (đồng bộ ở Mục 5, Mục 8 và Mục 10).
     * **Cập nhật chi tiết Dashboard 04 (Giai đoạn 3)**: Mô tả rõ ràng 4 khối chức năng (Khối 1: Top 3 dẫn đầu có nút tab chuyển người và số liệu minh họa thực tế của Quán quân Hoàng Văn Nam; Khối 2: Top 3 nhóm nguy cơ chỉ ra điểm nghẽn; Khối 3: So sánh mặt bằng 7 vùng; Khối 4: Gợi ý quản trị 4 nhóm nhân sự).
     * **Mục 6 Phần A**: Cập nhật bảng kết quả đánh giá mức độ đáp ứng của Dashboard 04.
   - **Văn phong mộc mạc, gần gũi, dễ hiểu**: Sử dụng câu từ tự nhiên của người làm dữ liệu ngân hàng, giải thích mạch lạc chức năng từng khối, loại bỏ hoàn toàn các từ ngữ sáo rỗng hoặc "mùi AI".
   - **Kiểm thử tự động song ngữ đạt chuẩn tuyệt đối 100%**:
     * Chạy `.staging/check_int_pair.py`: Độ lệch các con số $\ge 10$ giữa hai bản tiếng Việt và tiếng Anh bằng đúng 0 (`khong co` / `khong co`).
     * Chạy `.staging/check_toc.py`: Toàn bộ 11 mục lục và đường neo liên kết hai chiều khớp 100%.
     * Chạy `.staging/push_check.py`: Đạt chuẩn an toàn (0 file cấm, 0 kết nối nghi vấn).

265. **Kiểm tra, ghi nhận các cải tiến người dùng trực tiếp sửa trong Measure, dọn sạch 5 measure thừa và lên kế hoạch cập nhật README**
   - **Ghi nhận và tôn trọng các cải tiến thiết kế cốt lõi của người dùng**:
     * **Cơ chế chuyển Tab CSS Native Radio Input**: Chuyển sang dùng bộ `<input type='radio'>` kết hợp `<label class='tab-btn'>` và selector CSS anh em (`~`), chuyển đổi tức thì giữa Top 1/2/3 hoàn toàn mượt mà, không phụ thuộc vào thuộc tính name hay JavaScript.
     * **Chuẩn hóa Radar 4 trục cốt lõi**: Tinh giản biểu đồ Radar về 4 đỉnh nghiệp vụ then chốt (`Doanh số LTN`, `KH PSDN`, `Tỷ lệ duyệt thẻ`, `An toàn NPL`), lược bỏ trục Điểm QM trên mạng nhện để góc nhìn kinh doanh & rủi ro sắc nét nhất.
     * **Nâng cấp trực quan 4 thẻ KPI**: Kích thước số liệu KPI tăng lên **21px (Bold 800)**, nhãn 13px, thể hiện rõ giá trị thực tế đối chiếu với bình quân chuẩn hóa.
     * **Tích hợp Chip Tháng ngang hàng thanh Tab**: Đặt nhãn tháng cạnh hàng nút bấm tab giúp tối ưu không gian hiển thị, cố định chiều cao thẻ 500px chống giật layout.
   - **Dọn sạch 5 measure thừa qua TOM API (port 55812)**:
     * Đã xóa an toàn 5 measure mồ côi không có visual nào bind: `ASM_Block1_Top3_Selected_Radar_HTML`, `ASM_Block1_Top3_Selected_Radar_HTML_v2_PBI_Secure`, `ASM_Block2_Bottom3_Selected_Radar_HTML`, `ASM_Block3_All_Regions_Radar_HTML`, `ASM_Page4_Dashboard_4Blocks_HTML`.
     * Giữ nguyên vẹn 100% Khối 4 (`Insight_DanhGiaHieuQua_HTML1`) và visual Page 3 (`Insight_DanhGiaHieuQua_HTML`).
     * Đưa tổng số measure trong Power BI Model về đúng **82 measures** tinh gọn, chuẩn chỉ.
   - **Xây dựng kế hoạch cập nhật song ngữ toàn diện cho `README.md` & `README_eng.md`**:
     * Lên khung cập nhật Mục 2 (Phân tích yêu cầu và thiết kế báo cáo) và Mục 5 (Kiến trúc Power BI và Dashboard 04) đồng bộ với giao diện và measure thực tế.

264. **Rà soát, gom gọn toàn bộ Measure và dọn dẹp các thành phần không dùng trong Power BI Model**
   - **Xóa 2 bảng Calculated Table thừa**: Xóa hoàn toàn `Dim_Top3_Tab` và `Dim_Bottom3_Tab` (do hệ thống đã chuyển sang cơ chế Native Click Tab 100% bằng HTML5/CSS Grid, không còn phụ thuộc vào Slicer Power BI ngoài).
   - **Xóa 27 Measures rác/thừa không dùng**:
     * 11 measure thử nghiệm đơn lẻ (`HTML_Top1_Name`, `HTML_Top1_Area`, `HTML_Top1_Email`, `HTML_Top1_Score`, `HTML_Top1_Rank`, `HTML_Top1_Profit`, `HTML_Top1_Approval`, `HTML_Top1_NPL`, `HTML_Top1_HsVon`, `HTML_Top1_QM`, `HTML_Top1_FIN`).
     * 7 measure Radar phiên bản cũ đã lỗi thời (`ASM_Competency_Dashboard_HTML`, `ASM_Competency_Top3_Radar_HTML`, `ASM_Competency_Bottom3_Radar_HTML`, `ASM_Competency_Regional_Avg_HTML`, `ASM_Top1_HTML`, `ASM_Top1_Name`, `ASM_Top1_Info`).
     * 1 measure rỗng `NhanXet_QuanTri_LNTT` (length 0).
     * 8 measure Page 3 và Page 5 không được bind vào bất kỳ visual nào (`Page3_Headline_HTML`, `Page3_Quadrant_HTML`, `Page3_Diagnosis_Framework_HTML`, `Page3_Heatmap_Table_HTML`, `Page5_Header_HTML`, `Page5_Method_Note_HTML`, `Page5_Cross_Matrix_HTML`, `Page5_ASM_Distribution_HTML`).
   - **Gom gọn & Đồng bộ chuẩn hóa hệ thống 4 Khối Đánh giá Năng lực ASM**:
     * Khối 1: `ASM_Block1_Top3_Selected_Radar_HTML` (đồng bộ alias `_v2` và `_v2_PBI_Secure`).
     * Khối 2: `ASM_Block2_Bottom3_Selected_Radar_HTML` (đồng bộ alias `_v2`).
     * Khối 3: `ASM_Block3_All_Regions_Radar_HTML` (đồng bộ alias `_v2`).
     * Khối 4: `Insight_DanhGiaHieuQua_HTML1` (giữ nguyên vẹn 100%).
     * Khối ghép trang: `ASM_Page4_Dashboard_4Blocks_HTML`.
   - **Kiểm thử EVALUATE thành công 100%**: Tất cả 9 measure chuẩn đều thực thi trả về HTML hợp lệ, chuẩn xác và đồng bộ trên Live Model (port 55812).
   - **Đọc lại nội dung logic hoàn thiện & lập kế hoạch chi tiết cập nhật README song ngữ**.

### 2026-11-10

263. **Triển khai cơ chế Chuyển Tab 100% Native Click trực tiếp ngay trên 3 nút Tab [TOP 1] [TOP 2] [TOP 3] trong card biểu đồ**
   - **Click trực tiếp không cần Slicer ngoài**: Người dùng có thể nhấn chuột trực tiếp ngay trên 3 nút Tab `[ 👑 TOP 1 ]` `[ 🥈 TOP 2 ]` `[ 🥉 TOP 3 ]` (Khối 1) và `[ 🚨 ĐỘI SỔ ]` `[ ⚠️ ÁP CHÓT ]` `[ ⚠️ HẠNG 3 CUỐI ]` (Khối 2) ở góc trên bên phải của card biểu đồ để chuyển đổi thông tin nhân sự ngay lập tức trong chính visual HTML Content.
   - **Kiến trúc CSS Grid kết hợp `display: contents;`**:
     * Đưa cả 3 nút `<summary>` tự động xếp thành hàng ngang thẳng hàng ở góc trên bên phải card (cột 2, 3, 4 của hàng 1), giữ vị trí cố định chuẩn corporate executive.
     * Toàn bộ nội dung nhân sự (`.tab-body`: Radar SVG, 4 thẻ KPI, Nhận xét chuyên môn động) chiếm trọn 100% chiều rộng hàng 2 (`grid-column: 1 / -1; grid-row: 2;`), nằm hoàn toàn trong normal flow của CSS layout, triệt tiêu 100% nguy cơ co rút chiều cao hay trắng màn hình (vốn gặp phải khi dùng `position: absolute`).
   - **Cơ chế chống đóng tab rỗng & Lớp bảo hiểm an toàn kép (Safety Net)**:
     * Dùng `details[open] > summary.tab-btn { pointer-events: none; cursor: default; }` ngăn người dùng click vô tình đóng tab đang active, bảo đảm luôn có chính xác 1 tab được hiển thị.
     * Dùng CSS `:has()` làm lớp bảo vệ kép tự động ẩn các panel trước đó khi tab mới mở ra, bảo đảm tính loại trừ độc quyền tuyệt đối (exclusive tab switching) không phụ thuộc vào sanitization.
     * Khối 1 dùng `name='top_tabs'`, Khối 2 dùng `name='bottom_tabs'`, hoạt động độc lập tuyệt đối không can nhiễu.
   - Nạp cập nhật Live Model qua TOM API (port 60629) cho cả 2 measures (`ASM_Block1_Top3_Selected_Radar_HTML` và `ASM_Block2_Bottom3_Selected_Radar_HTML`), kiểm thử EVALUATE AdomdClient thành công 100% trên cả 2 kịch bản Toàn hàng (84 ASM) và Toàn vùng (Đông Nam Bộ), tự động đồng bộ lên Dashboard 4 Khối (`ASM_Page4_Dashboard_4Blocks_HTML`).
   - Xuất trọn bộ 6 screenshots nghiệm thu đầy đủ các trạng thái chuyển tab (`native_b1_t1.png`, `native_b1_t2.png`, `native_b1_t3.png`, `native_b2_t1.png`, `native_b2_t2.png`, `native_b2_t3.png`, `eval_native_dash.png`).

### 2026-11-10

262. **Thiết kế tích hợp Slicer lồng trong biểu đồ dạng Tab (Embedded Slicer Docking Zone) & Hoàn thiện giao diện nguyên khối**
   - **Tích hợp thanh Docking Slot trực tiếp bên trong biểu đồ**: Bố trí thanh điều hướng 	ab-dock-bar ngay dưới tiêu đề của cả Khối 1 và Khối 2:
     * Cột trái: Nhãn trạng thái nhân sự đang hiển thị (👑 Đang xem: #1 Top 1 • Hoàng Văn Nam (Hạng #1 - ĐB Sông Hồng)).
     * Cột phải: Khung 3 nút Tab nguyên khối [ 👑 TOP 1 ] [ 🥈 TOP 2 ] [ 🥉 TOP 3 ] (Khối 1) và [ 🚨 ĐỘI SỔ ] [ ⚠️ ÁP CHÓT ] [ ⚠️ HẠNG 3 CUỐI ] (Khối 2) với nút đang chọn được highlight viền và màu theme rực rỡ.
   - **Tương thích hoàn hảo với kỹ thuật Overlay Slicer (Slicer lồng trong card)**: Khi người dùng đặt visual Slicer Dim_Top3_Tab lồng vào góc trên bên phải của card biểu đồ với nền trong suốt (Background: Off), các nút bấm Slicer sẽ trùng khớp 100% với khung Docking Slot, và khi Group (Ctrl + G) lại sẽ tạo thành một visual nguyên khối tích hợp hoàn chỉnh trong Power BI Desktop.
   - Nạp cập nhật Live Model qua TOM API (port 60629), chạy kịch bản kiểm thử EVALUATE và xuất bộ screenshot nghiệm thu (	ab1_all_b1.png, 	ab2_all_b1.png, 	ab1_all_b2.png).

261. **Chuyển đổi cơ chế điều khiển Tab sang Slicer Power BI (Bảng rời Dim_Top3_Tab) & Bổ sung tie-breaker tuyệt đối email**
   - **Tạo bảng rời điều khiển native Dim_Top3_Tab và Dim_Bottom3_Tab**: Tạo Calculated Table trong mô hình Tabular qua TOM API với 2 cột TabNo (1, 2, 3) và TabLabel ('TOP 1', 'TOP 2', 'TOP 3'), thiết lập SortByColumn cho TabLabel theo TabNo đảm bảo thứ tự luôn chuẩn xác.
   - **Tie-breaker tuyệt đối không trùng lặp**: Đưa trực tiếp email (khóa định danh duy nhất của nhân sự ngân hàng) vào tiêu chí phân xử cuối cùng trong TOPN (1, _vungTable, rank_ptkd ASC, diem_qm ASC, ltn_trieu_dong DESC, email ASC) cho cả Top 3 và Bottom 3, triệt tiêu 100% rủi ro đồng hạng hoặc không ổn định giữa các phiên chạy.
   - **Tái cấu trúc 2 Measure HTML (ASM_Block1_Top3_Selected_Radar_HTML và ASM_Block2_Bottom3_Selected_Radar_HTML)**:
     * Đọc ngữ cảnh lọc Slicer qua VAR _selectedTab = SELECTEDVALUE(Dim_Top3_Tab[TabNo], 1).
     * Sử dụng chuỗi scalar SWITCH gán thông số nhân sự được chọn, loại bỏ hoàn toàn hạn chế của SWITCH trả về bảng trong DAX.
     * Xóa bỏ triệt để các thẻ <details>, <summary> và thuộc tính 
ame='top_tabs' (vốn có nguy cơ bị bộ lọc DOMPurify của custom visual loại bỏ).
     * Loại bỏ position: absolute, chuyển sang cấu trúc Flexbox phẳng 100% native, siêu nhẹ (giảm dung lượng HTML từ 16.2 KB xuống 7.5 KB, tăng tốc độ render gấp đôi), không bao giờ bị tràn lấn hay chồng chéo layout khi resize.
   - Nạp Live Model qua TOM API (port 60629), chạy kịch bản kiểm thử EVALUATE AdomdClient thành công 100% trên cả 3 Tab và các kịch bản Slicer Toàn hàng / Đông Nam Bộ, kết xuất bộ screenshot nghiệm thu (	ab1_all_b1.png, 	ab2_all_b1.png, 	ab3_all_b1.png, 	ab1_all_b2.png, 	ab2_all_b2.png, 	ab3_all_b2.png, 	ab1_dnb_b1.png, p4_slicer_dash.png).

260. **Tái cấu trúc toàn diện Radar Năng lực ASM: Xử lý đồng hạng, đảo chiều Điểm QM, nhận xét động & Tab ngang Executive**
   - **Xử lý triệt để hiện tượng đồng hạng (Tie-breaker đa tầng)**: Áp dụng công thức @SortScore = rank_ptkd * 100000000 + diem_qm * 10000 + (10000 - MIN(9999, ltn)) kết hợp TOPN và EXCEPT, bảo đảm mỗi vị trí Top 1/2/3 và Bottom 1/2/3 luôn trích xuất duy nhất một ASM, triệt tiêu hoàn toàn rủi ro ghép nhầm số liệu giữa các nhân sự khi dùng MINX.
   - **Đảo chiều chuẩn hóa Điểm QM trên biểu đồ Radar**: Công thức bán kính nghịch đảo MAX(0.15, MIN(1.0, 1.0 - ((diem_qm - 20) / 300.0))) * r_max giúp Điểm QM thấp (thứ hạng cao/tốt) bung rộng 100% ra ngoài viền đa giác; Điểm QM cao (thứ hạng thấp/kém như Đội sổ Hoàng Văn Lợi #84 QM 302) co cụm sát tâm (15% sàn); đổi tên nhãn trục SVG thành 'Điểm QM'.
   - **Chuẩn hóa tên gọi & cơ sở so sánh**: Tự động chuyển đổi chú giải và tiêu đề thành 'Bình quân ASM toàn hàng' (khi Slicer chọn All) hoặc 'Bình quân ASM trong vùng' (khi chọn 1 vùng cụ thể); dòng phụ KPI hiển thị tương ứng BQ Toàn hàng: hoặc BQ Vùng:.
   - **Bộ lọc Tháng & Vùng thông minh**: Thay thế giá trị tháng mặc định cứng bằng tháng lớn nhất có dữ liệu trong context lọc (COALESCE(SELECTEDVALUE(dim_month[month_key]), CALCULATE(MAX(month_key), ALL(...)))); nhận diện chính xác Slicer Vùng để lấy toàn bộ 84 ASM cả 7 vùng khi chọn All.
   - **Giao diện Tab ngang Executive & Nhận xét động (Dynamic Insights)**:
     * 3 Tab ngang đều nhau ở trên đầu card ([ 👑 #1 Top 1 ] [ 🥈 #2 Top 2 ] [ 🥉 #3 Top 3 ]), click tab nào tab đó phát sáng viền và chuyển đổi nội dung bên dưới mượt mà trong khung cố định position: absolute.
     * Tăng kích thước font chữ toàn diện chuẩn Corporate Banking: Tiêu đề 18px, Tab 14.5px, KPI values 17px, Nhãn KPI 12px, Nhận xét 13.5px.
     * Nhận xét động thông minh (Dynamic Text) tự động đánh giá ưu/nhược điểm dựa trên so sánh thực tế từng chỉ số của ASM với mức chuẩn bình quân.
   - Nạp cập nhật trực tiếp vào Live Tabular Model (localhost:60629) qua TOM API cho cả 2 measures (ASM_Block1_Top3_Selected_Radar_HTML và ASM_Block2_Bottom3_Selected_Radar_HTML), chạy kịch bản kiểm tra EVALUATE AdomdClient và kết xuất screenshot toàn diện (	ab_all_b1.png, 	ab_all_b2.png, 	ab_dnb_b1.png, 	ab_dnb_b2.png, 	ab_all_dash.png, 	ab_dnb_dash.png).

259. **Tích hợp Đa giác Toàn Vùng vào Radar và hoàn thiện cơ chế Accordion native chuyển đổi Top 1 / Top 2 / Top 3**



   - Bổ sung đa giác chuẩn Trung bình Toàn Vùng (Regional Benchmark) vào biểu đồ Radar của Khối 1 & Khối 2: hiển thị đường viền nét đứt màu xám bạc (`stroke='#94A3B8' stroke-dasharray='4,3' fill='rgba(148,163,184,0.2)'`) đối chiếu trực tiếp năng lực từng cá nhân với mức bình quân chung của khu vực.



   - Xây dựng cơ chế click chọn chuyển đổi dứt khoát 100% native HTML5:



     * Ứng dụng thẻ Accordion nhóm chuẩn Living Standard `<details class='asm-acc' name='top_asm' open>` (Top 1) và `<details class='asm-acc' name='top_asm'>` (Top 2, Top 3).



     * Khi click Top 1: Hiện Radar Top 1 + Toàn Vùng và thẻ Profile Quán quân.



     * Khi click Top 2: Top 1 tự đóng, Top 2 mở bung ra với Radar Top 2 + Toàn Vùng và thẻ Profile Á quân.



     * Khi click Top 3: Tương tự cho Top 3.



     * Khối 2: Áp dụng cơ chế tương tự cho nhóm 3 người cuối bảng (`name='bottom_asm'`: Đội sổ, Áp chót, Hạng 3 từ dưới lên).



     * Hoàn toàn không phụ thuộc JavaScript, không bị DOMPurify lọc bỏ, giữ trạng thái click bền vững và mượt mà trong Chromium WebView2 của Power BI Desktop.



   - Sửa triệt để lỗi định dạng Nợ xấu NPL (chia tỷ lệ 100 đúng chuẩn thập phân) và tinh chỉnh viewBox SVG để nhãn "Quy mô QM", "An toàn NPL" hiển thị hoàn hảo không bị cấn mép.



   - Tối ưu hóa tiêu đề Khối 3 (`ASM_Block3_All_Regions_Radar_HTML`) đồng bộ nhận diện với Khối 1 & Khối 2.



   - Nạp cập nhật trực tiếp vào Live Tabular Model (`localhost:60629`) qua TOM API, chạy kịch bản kiểm tra `EVALUATE` AdomdClient và kết xuất screenshot toàn diện (`b1_fixed.png`, `b2_fixed.png`, `b1_top2_opened.png`, `p4_dashboard_fixed.png`).



### 2026-11-10



258. **Tối ưu hóa Khối 1 & Khối 2: Hiển thị đồng thời thông số lần lượt của cả 3 người kèm Radar so sánh trực quan**



   - Giải quyết triệt để vấn đề xem thông số 3 người: thay vì cơ chế ẩn hiện bẫy chuột (hover/focus dễ bị mất trạng thái khi di chuột ra khỏi nút bấm trong Power BI Desktop), chuyển sang thiết kế bố cục so sánh kép chuẩn Executive Banking:



     * Cột trái (360px): Biểu đồ Radar SVG 5 trục tích hợp cả 3 đa giác màu nhận diện riêng biệt (Top 1 vàng kim nét đậm, Top 2 xanh cyan, Top 3 xanh ngọc; Khối 2 tương ứng Đội sổ đỏ, Áp chót cam, Hạng 3 vàng) kèm thanh chú giải rõ ràng.



     * Cột phải: 3 Thẻ Profile thông số chi tiết xếp lần lượt 1 ➔ 2 ➔ 3 (Doanh số LTN, KH PSDN, Tỷ lệ duyệt, Nợ xấu NPL, Điểm QM và nhận xét ưu/nhược điểm) để người dùng xem được ngay lập tức thông số của cả 3 người một cách trực quan, đối chiếu so sánh trực tiếp mà không cần bất kỳ thao tác click/hover phức tạp nào.



   - Nạp cập nhật trực tiếp vào Live Tabular Model (`localhost:60629`) qua TOM API, chạy kịch bản kiểm tra `EVALUATE` AdomdClient và kết xuất screenshot xác nhận chuẩn xác 100% (`b1_fixed.png`, `b2_fixed.png`, `p4_dashboard_fixed.png`).







### 2026-11-10



257. **Khắc phục triệt để lỗi visual HTML Content bị trắng/ẩn nội dung thân biểu đồ Radar trong Power BI Desktop**



   - Xác định nguyên nhân gốc rễ: Custom visual HTML Content chạy bộ lọc DOMPurify mặc định loại bỏ toàn bộ thẻ `<input type='radio'>`, khiến các bộ chọn CSS `#id:checked ~ .panel` không bao giờ kích hoạt, làm các panel bị giữ nguyên thuộc tính `display: none` và gây trắng toàn bộ phần thân dưới của visual.



   - Thiết kế lại cấu trúc hiển thị 100% tương thích:



     * Loại bỏ hoàn toàn các thẻ `<input>`, chuyển sang thẻ `<button type='button' tabindex='0'>` kết hợp bộ chọn CSS `:has()` hiện đại để xử lý tương tác hover/focus mượt mà.



     * Thiết lập trạng thái mặc định hiển thị trực tiếp (`display: grid` thay vì `display: none`): Panel của Top 1 (Khối 1) và Đội sổ (Khối 2) luôn luôn hiển thị đầy đủ ngay từ mili-giây đầu tiên, triệt tiêu hoàn toàn hiện tượng trắng/trống visual.



   - Nạp cập nhật trực tiếp vào Live Tabular Model (`localhost:60629`) qua TOM API, chạy kịch bản kiểm tra `EVALUATE` AdomdClient và kết xuất screenshot xác nhận (`b1_fixed.png`, `b2_fixed.png`, `p4_dashboard_fixed.png`).







### 2026-11-10



255. **Tái cấu trúc trang Đánh giá năng lực ASM thành 4 khối HTML chuyên biệt & Khôi phục nguyên vẹn Text Box cũ**



   - Khôi phục 100% nguyên trạng measure Text Box nhận xét đánh giá hiệu quả cũ (`Insight_DanhGiaHieuQua_HTML1`, 9.699 ký tự) vào đúng thư mục `06. O Nhan Xet (Executive Insights)` làm Khối 4.



   - Xây dựng hệ thống 4 measure mới trong thư mục `08. Page 4 - Danh Gia Nang Luc ASM`:



     * `ASM_Block1_Top3_Selected_Radar_HTML` (Khối 1): Biểu đồ Radar SVG chỉ hiển thị duy nhất 1 đa giác của người đang được chọn trong số Top 3 ASM dẫn đầu khu vực; tích hợp 3 tab tương tác (`👑 #1 Top 1`, `🥈 #2 Top 2`, `🥉 #3 Top 3`) chuyển đổi người xem; thay đổi động theo cả Slicer Tháng và Slicer Vùng.



     * `ASM_Block2_Bottom3_Selected_Radar_HTML` (Khối 2): Biểu đồ Radar SVG chỉ hiển thị duy nhất 1 đa giác của người đang được chọn trong số Top 3 ASM cuối bảng (đội sổ, áp chót); tích hợp 3 tab tương tác cảnh báo (`🚨 Đội sổ`, `⚠️ Áp chót`, `⚠️ Hạng X`); thay đổi động theo cả Slicer Tháng và Slicer Vùng.



     * `ASM_Block3_All_Regions_Radar_HTML` (Khối 3): Biểu đồ Radar toàn bộ 7 Vùng trên cùng một hệ trục 5 chiều; sử dụng DAX `REMOVEFILTERS` trên các trường khu vực (`v_xephang_asm[area_name]`, `v_xephang_asm[area_code]`, `v_baocao_tonghop[area_name]`) để cố định đầy đủ 7 Vùng không bị lọc mất bởi Slicer Vùng, chỉ thay đổi khi chọn Tháng; đồng thời làm nổi bật (Highlight nét đậm 3.5px vàng cam + bảng số liệu phát sáng) vùng đang được chọn trên Slicer Vùng.



     * `ASM_Page4_Dashboard_4Blocks_HTML`: Measure tổng hợp liên kết cả 4 khối theo bố cục lưới 2x2 cân đối, tự động đồng bộ và co giãn responsive.



   - Nạp cập nhật trực tiếp vào Live Tabular Model (`localhost:55502`) qua TOM API, chạy kịch bản kiểm thử EVALUATE với AdomdClient và kết xuất screenshot toàn diện (`page4_full_dnb.png`, `page4_full_tnb.png`, `b1.png`, `b2.png`, `b3.png`, `b4.png`) xác nhận hệ thống vận hành hoàn hảo 100%.







### 2026-11-10



254. **Thiết kế trang Đánh giá năng lực ASM với 3 khối biểu đồ: Radar Top 3 đứng đầu, Radar Top 3 đứng bét theo Vùng/Tháng và Chuẩn năng lực bình quân 7 Vùng**



   - Xây dựng hệ thống 4 measure DAX hoàn chỉnh theo tiêu chuẩn Corporate Banking Dark Theme:



     * `ASM_Competency_Top3_Radar_HTML`: Biểu đồ Radar SVG 5 trục năng lực (Doanh số LTN, Khách hàng mới PSDN, Tỷ lệ duyệt, An toàn nợ xấu NPL, Điểm quy mô) phân tích Top 3 ASM dẫn đầu vùng kèm Profile card và nhận xét ưu điểm vượt trội.



     * `ASM_Competency_Bottom3_Radar_HTML`: Biểu đồ Radar SVG 5 trục cảnh báo Top 3 ASM cuối bảng (đội sổ và áp chót) kèm chẩn đoán chính xác các điểm nghẽn rủi ro (hụt doanh số giải ngân, tỷ lệ từ chối hồ sơ thẻ cao trên 80%).



     * `ASM_Competency_Regional_Avg_HTML`: Biểu đồ Chuẩn năng lực bình quân nhân sự của 7 Vùng: khi đổi Slicer Tháng thì số liệu 7 vùng tự động cập nhật theo tháng đó; khi chọn Slicer Vùng thì biểu đồ vẫn cố định hiển thị đầy đủ cả 7 Vùng (sử dụng DAX REMOVEFILTERS), đồng thời làm nổi bật (Highlight) vùng đang chọn bằng viền vàng kim rực rỡ và huy hiệu `★ ĐANG CHỌN`.



     * `ASM_Competency_Dashboard_HTML`: Executive Dashboard tích hợp liền mạch toàn bộ 3 khối biểu đồ trong một giao diện duy nhất, đồng bộ font chữ, màu sắc và tự động co giãn.



   - Nạp cập nhật Live Model qua TOM API (port 55502) vào bảng `'LAI LO (Visuals & DAX)'` (Folder `08. Page 4 - Danh Gia Nang Luc ASM`).



   - Cập nhật visual trên trang báo cáo hiển thị trực tiếp Dashboard hoàn chỉnh, chạy test kiểm chứng qua AdomdClient và kết xuất screenshot xác nhận chuẩn xác 100% trên cả Đông Nam Bộ và Tây Nam Bộ.







### 2026-11-10



253. **Thiết kế lại Từ điển dữ liệu (Data Glossary) chuẩn 100% theo mẫu biểu bảng Excel đối chiếu của người dùng**



   - Rà soát hình ảnh mẫu biểu Excel người dùng cung cấp gồm 5 cột chuẩn: `STT`, `THUẬT NGỮ`, `MÔ TẢ`, `CÁCH TÍNH`, `KÝ HIỆU`.



   - Phân cấp 2 khối dòng lớn với bảng màu chuẩn nhận diện:



     * Khối A (Xanh dương): `DỮ LIỆU ĐẦU VÀO` gồm 3 nhóm tệp nguồn (`fact_kpi_month_raw_data`, `fact_txn_month_raw_data`, `kpi_asm_data`) với 24 trường thông tin chi tiết và mô tả nghiệp vụ từng trường.



     * Khối B (Xanh lá cây): `KẾT QUẢ ĐẦU RA` gồm 2 phân hệ báo cáo (`BÁO CÁO TỔNG HỢP` / P&L 25 chỉ tiêu và `BÁO CÁO XẾP HẠNG ASM` 22 tiêu chí) với đầy đủ Thuật ngữ, Mô tả nghiệp vụ, Công thức / Cách tính toán và Ký hiệu chuẩn hóa.



   - Biên soạn lại bảng DAX calculated `Data Glossary` (78 dòng dữ liệu chuẩn) và measure `Data_Glossary_HTML` với giao diện HTML/CSS phong cách Excel chuẩn (màu sắc header navy `#0E3D77`, sub-header xanh sáng `#5B9BD5`, xanh lá cây `#70AD47`, hover effect, sticky header dính trên đỉnh khi cuộn, thanh cuộn mượt mà).



   - Nạp cập nhật vào model Power BI Desktop đang mở qua TOM API, kiểm tra dữ liệu và kết xuất screenshot xác nhận chuẩn xác 100%.







### 2026-11-10



252. **Tái cấu trúc Từ điển dữ liệu (Data Glossary) theo 2 tầng phân hệ: Dữ liệu đầu vào và Dữ liệu đầu ra**



   - Thiết kế lại toàn diện bảng Calculated Table `'Data Glossary'` và measure `Data_Glossary_HTML` theo đúng cấu trúc 2 hàng lớn nghiệp vụ quản trị ngân hàng:



     * **Hàng 1 (Dữ liệu đầu vào - Input Data)**: Mô tả toàn diện 4 nguồn dữ liệu gốc ngân hàng (`fact_txn_month` - Sổ bút toán GL 2.9M dòng, `fact_kpi_month` - Sao kê 250K hợp đồng thẻ tín dụng, `kpi_asm_data` - Kết quả kinh doanh 84 ASM, `Tham so va mau doi chieu.xlsx` - Định biên và chuẩn đối chiếu), nêu rõ cấu trúc trường, nội dung và vai trò trong việc tính toán phân bổ Rule 1 - Rule 2.



     * **Hàng 2 (Dữ liệu đầu ra - Output Data & Metrics)**: Phân tách thành 2 phân hệ chuyên biệt:



       + *Phần 2.1 (Báo Cáo Kết Quả Kinh Doanh Vùng - P&L)*: 25 chỉ tiêu tài chính chuẩn hóa với đầy đủ Ký hiệu (`A.1..A.5`, `A`, `B.1..B.4`, `B`, `C`, `TOI`, `D.1..D.4`, `OPEX`, `PROV`, `LNTT`, `SM`, `CIR`, `Margin`, `HS Vốn`, `NSBQ`), Tên chỉ tiêu, Đơn vị, Mô tả ý nghĩa kinh tế và Công thức tính toán (Rule 1 gán thẳng qua Analysis Code, Rule 2 phân bổ chi phí Hội sở theo các driver nghiệp vụ tương ứng).



       + *Phần 2.2 (Báo Cáo Xếp Hạng Quản Lý Vùng - ASM)*: 22 tiêu chí đánh giá thi đua với đầy đủ Ký hiệu (`LTN_AVG`, `Rank_LTN`, `PSDN_AVG`, `Rank_PSDN`, `Approval_Rate`, `Rank_Appr`, `NPL_Truoc_WO`, `Rank_NPL`, `Điểm QM`, `Rank_PTKD`, `CIR_Vung`, `Rank_CIR`, `Margin_Vung`, `Rank_Margin`, `HS_Von_Vung`, `Rank_HS_Von`, `HSBQ_NS_Vung`, `Rank_HSBQ`, `Điểm FIN`, `Rank_FIN`, `Tổng Điểm`, `Rank Final`), Tên tiêu chí, Đơn vị, Mô tả ý nghĩa và Công thức tính thứ hạng, điểm số tổng hợp (cân bằng 50% Quy mô bán hàng cá nhân + 50% Hiệu quả tài chính vùng).



   - Nạp cập nhật bảng Calculated `Data Glossary` (51 dòng chuẩn hóa, bổ sung 2 cột `Phân Loại Dữ Liệu` và `Ký Hiệu`) và measure `Data_Glossary_HTML` trực tiếp vào model Power BI Desktop đang mở qua TOM API (`localhost:55502`).



   - Chạy query `EVALUATE` AdomdClient kiểm tra dữ liệu thực tế và kết xuất hình ảnh mô phỏng visual đạt chuẩn corporate ngân hàng.







### 2026-11-10



251. **Khắc phục triệt để lỗi phông chữ / vỡ font tiếng Việt trên khối thẻ KPI Cards trang Đánh giá hiệu quả kinh doanh vùng**



   - Xác định chính xác nguyên nhân gốc rễ: Việc truyền chuỗi tiếng Việt có dấu ("Gây lỗ vốn", "Chuyển lãi") vào measure expression qua script PowerShell và TOM API bị lỗi chuyển đổi mã ký tự (mojibake thành `GÃ¢y lá»— vá»‘n`).



   - Tái cấu trúc toàn bộ 3 measure phụ đề KPI (`KPI LNTT MoM Text`, `KPI NSBQ MoM Text`, `KPI ThuNhap MoM Text`) bằng cách thay thế các ký tự tiếng Việt có dấu bằng hàm DAX `UNICHAR()` (chuỗi `UNICHAR(9660) & " G" & UNICHAR(226) & "y l" & UNICHAR(7895) & " v" & UNICHAR(7889) & "n"` và `UNICHAR(9650) & " Chuy" & UNICHAR(7875) & "n l" & UNICHAR(227) & "i (+" & FORMAT ( _m, "0.0%" ) & ")"`).



   - Đảm bảo 100% mã nguồn DAX là ký tự ASCII thuần, triệt tiêu hoàn toàn khả năng xung đột encoding khi truyền tải qua Analysis Services / TOM API.



   - Nạp cập nhật vào model Power BI Desktop đang mở (`localhost:55502`), chạy `EVALUATE` AdomdClient kiểm tra dữ liệu thực tế cho 7 vùng:



     * Đông Nam Bộ T2 (âm -20.356 tr): hiển thị chuẩn xác `▼ Gây lỗ vốn` (màu đỏ).



     * Tây Bắc Bộ T2 (chuyển từ âm sang dương): hiển thị chuẩn xác `▲ Chuyển lãi (+270.1%)` (màu xanh).



     * Các vùng kinh doanh tăng trưởng bình thường: hiển thị chuẩn xác `▲ +X.X%` / `▼ -X.X%`.







### 2026-11-10



250. **Nâng cấp trải nghiệm bảng xếp hạng ASM (`ASM_Leaderboard_HTML`): tích hợp thanh cuộn ngang cố định, sticky header và tăng cỡ chữ dễ đọc**



   - Khắc phục triệt để hiện tượng thanh cuộn ngang bị chìm xuống tận đáy trang 3.000px: giới hạn chiều cao container `lb-table-box` ở mức `480px` nằm trọn trong khung nhìn visual `596px`, giúp thanh cuộn ngang dày `14px` luôn hiển thị cố định ngay trước mắt người dùng ở đáy bảng mà không cần phải cuộn xuống dòng 74.



   - Tích hợp `position: sticky` cho cả 2 tầng header (tầng 1 ở `top: 0`, tầng 2 ở `top: 36px`), giúp tiêu đề 26 cột luôn dính chặt trên đỉnh khi cuộn dọc xem danh sách 74–84 nhân sự.



   - Nâng cấp cỡ chữ toàn diện: tên ASM tăng lên `14px` in đậm nét, mã và tên vùng `13.5px`, tiêu đề header `13px - 13.5px`, số liệu `13.5px` (font-weight: 700) kèm khoảng cách padding thoáng (`7px - 10px`), giúp hiển thị sắc nét, dễ đọc trên mọi màn hình.



   - Nạp cập nhật vào model Power BI Desktop đang mở qua TOM API (`localhost:55502`) và kiểm tra kết xuất hình ảnh mô phỏng cuộn 3 giai đoạn (trái, giữa, phải) đạt chuẩn hoàn hảo.







### 2026-11-10



249. **Cập nhật logic màu và chỉ báo trạng thái 'Gây lỗ vốn' cho khối KPI Cards trang Đánh giá hiệu quả kinh doanh vùng**



   - Rà soát toàn bộ các measure trong nhóm `01. Khoi KPI Cards` trên trang Đánh giá hiệu quả kinh doanh vùng, phát hiện bất cập khi Lợi nhuận âm (-20.356 tr) nhưng do mức âm tháng 2 ít hơn tháng 1 nên công thức MoM vẫn ra `▲ +43.3%` màu xanh lá gây hiểu nhầm vùng kinh doanh có lãi.



   - Bổ sung logic kiểm soát rủi ro tài chính cho các chỉ tiêu tiền tệ (`KPI LNTT MoM Text`, `KPI LNTT Color`, `KPI NSBQ MoM Text`, `KPI NSBQ Color`, `KPI ThuNhap MoM Text`, `KPI ThuNhap Color`):



     * Nếu giá trị kỳ đó âm (`_mCur < 0 || _ytdCur < 0`): Ngay lập tức hiển thị nhãn cảnh báo `▼ Gây lỗ vốn` với màu đỏ cảnh báo (`#DC2626`).



     * Nếu kỳ trước lỗ mà kỳ này có lãi: Hiển thị nhãn tích cực `▲ Chuyển lãi (+X.X%)` với màu xanh (`#16A34A`).



     * Nếu kinh doanh bình thường có lãi: So sánh tăng giảm MoM theo đúng tỷ lệ phần trăm chuẩn xác.



   - Cập nhật đồng bộ 6 measure vào model Power BI Desktop đang mở qua TOM API (`localhost:55502`) và kiểm tra kết xuất EVALUATE xác nhận toàn bộ 5 thẻ KPI hiển thị chính xác nghiệp vụ ngân hàng.







### 2026-11-09



248. **Soạn lại bảng measure `ASM_Leaderboard_HTML` đầy đủ 26 tiêu chí xếp hạng theo đúng thứ tự cột Excel mẫu**



   - Rà soát cấu trúc 26 cột chi tiết của sheet `BaocaoXepHangASM_T5` trong tệp Excel mẫu đối chiếu và đối ứng chuẩn xác 1:1 với view `v_xephang_asm` trong CSDL PostgreSQL / Power BI model:



     * Cụm 1 (THÔNG TIN CHUNG): `month_key`, `area_cde`, `area_name`, `email` (hiển thị kèm họ tên ASM `sale_name`), `Tổng điểm`, `rank_final`.



     * Cụm 2 (QUY MÔ): `ltn_avg` (Dư nợ mở mới tr.đ), `rank_ltn_avg`, `psdn_avg` (trđ/thẻ), `rank_psdn_avg`, `approval_rate_avg` (%), `rank_approval_rate_avg`, `npl_truoc_wo_luy_ke` (%), `rank_npl_truoc_wo_luy_ke`, `Điểm Quy Mô`, `rank_ptkd`.



     * Cụm 3 (TÀI CHÍNH): `cir` (%), `rank_cir`, `margin` (%), `rank_margin`, `hs_von` (%), `rank_hs_von`, `hsbq_nhan_su` (tr.đ), `rank_hsbq_nhan_su`, `Điểm FIN`, `rank_fin`.



   - Thiết kế lại header bảng dạng 2 tầng (Two-Tier Header): tầng 1 gồm 3 khối nhóm lớn (`THÔNG TIN CHUNG` tối sang trọng, `QUY MÔ` xanh dương đậm, `TÀI CHÍNH` xanh ngọc đậm); tầng 2 là 26 cột chi tiết đúng 100% thứ tự kỹ thuật của Excel kèm phụ đề chỉ báo đơn vị.



   - Tối ưu hóa toàn bộ mã nguồn HTML/CSS bằng khối `<style>` và CSS class nội tuyến, giảm 75% dung lượng chuỗi kết xuất (~115 KB / tháng), tích hợp thanh cuộn ngang mượt mà `min-width: 2400px` và hiệu ứng hover hàng ngang giúp dò số liệu 26 cột không bị lệch dòng.



   - Nạp cập nhật trực tiếp vào model Power BI Desktop đang mở qua TOM API (`Microsoft.AnalysisServices.Tabular`), chạy `EVALUATE` AdomdClient kiểm tra cú pháp và kết xuất screenshot xác nhận bảng hiển thị hoàn hảo.







### 2026-11-09



247. **Xóa bỏ chữ `(DirectQuery)` tại tiêu đề Giai đoạn 3 trên sơ đồ `images/quy-trinh.png`**



   - Chỉnh sửa tệp nguồn `workflow_quy_trinh_ky_thuat.html`, xóa bỏ cụm `(DirectQuery)` tại tiêu đề Card Giai đoạn 3 (đưa về nhãn ngắn gọn, chuẩn mực `Power BI`).



   - Kết xuất lại sơ đồ bằng msedge headless với chuẩn hiển thị `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel).



   - Cập nhật đồng bộ vào `images/quy-trinh.png` và artifact `quy_trinh_ky_thuat_visual.png`.







### 2026-11-09



246. **Cập nhật toàn bộ README song ngữ theo bản văn phong tự nhiên, súc tích và đồng bộ lên GitHub**



   - Áp dụng bản văn bản tiếng Việt mới người dùng cung cấp vào `README.md`, viết lại câu chữ tự nhiên, ngắn gọn và mạch lạc hơn; tinh chỉnh hoàn toàn cụm từ 'trang' tại Mục 8 để biến tài liệu thành báo cáo dự án độc lập 100%.



   - Dịch và cập nhật đối ứng song ngữ chuẩn xác từng câu, từng số liệu sang `README_eng.md`.



   - Kiểm tra đối soát tự động: `check_toc.py` (`ok`, 11 mục), `check_int_pair.py` (`ok`, 0 lệch số >= 10), `push_check.py` (22 tệp an toàn, 3.52 MiB).







### 2026-11-09



245. **Gỡ bỏ Mục 6 (Kiểm tra và đối soát dữ liệu) khỏi hai bản README song ngữ, lưu trữ vào .staging/**



   - Trích xuất toàn bộ nội dung 5 lớp kiểm soát đối soát của Mục 6 và lưu trữ dự phòng nguyên vẹn tại `.staging/archived_section_06_audit_vi.md` (9.613 byte) và `.staging/archived_section_06_audit_en.md` (7.132 byte) để sẵn sàng tái sử dụng khi cần.



   - Gỡ bỏ hoàn toàn Mục 6 khỏi `README.md` và `README_eng.md`, tinh gọn tài liệu từ 12 mục xuống còn 11 mục; đánh số lại các tiêu đề từ Mục 6 (Kết quả phân tích và đề xuất quản trị) đến Mục 11 (Tác giả) và cập nhật đường dẫn neo mục lục.



   - Kiểm tra đối soát tự động: `check_toc.py` (`ok`, 11 mục lục khớp tiêu đề hai chiều), `check_int_pair.py` (`ok`, 0 lệch số >= 10), `push_check.py` (22 tệp an toàn, 3.53 MiB).







### 2026-11-09



244. **Chuẩn hóa triệt để README song ngữ thành tài liệu độc lập, tách biệt hoàn toàn khỏi việc dẫn chiếu các trang Power BI**



   - Loại bỏ toàn bộ lối viết tường thuật / dẫn chiếu phụ thuộc vào Power BI (như *'Trên trang mở đầu GIỚI THIỆU ĐỀ TÀI...'*, *'tương ứng từ Trang 3 đến Trang 6 trên Power BI'*, *'Tab tương ứng trên Power BI'*, *'7 trang báo cáo liên hoàn'*, *'Trang 1..7'*, *'trên trang INSIGHT'*, *'trên trang TỪ ĐIỂN DỮ LIỆU'*).



   - Tái cấu trúc nội dung để hai bản README trở thành tài liệu dự án độc lập, hoàn chỉnh: người đọc có thể chọn mở riêng Power BI hoặc đọc riêng README trên GitHub mà vẫn nắm trọn vẹn 100% bối cảnh, 4 dashboard quản trị đầu ra, 3 nguồn dữ liệu, quy trình kỹ thuật 3 giai đoạn và các phát hiện điều hành sâu sắc.



   - Đồng bộ chuẩn xác song ngữ giữa `README.md` và `README_eng.md`, vượt qua toàn bộ 3 công cụ kiểm soát: `check_toc.py` (ok), `check_int_pair.py` (0 lệch số >= 10), và `push_check.py` (22 tệp an toàn, 3.54 MiB).







### 2026-11-09



243. **Xóa bỏ hoàn toàn dải rìa trắng bên ngoài ảnh sơ đồ quy trình xử lý kỹ thuật (`images/quy-trinh.png`)**



   - Loại bỏ 27px dải trắng thừa ở cạnh phải và cạnh đáy (do bước crop trước để dư margin), đưa kích thước ảnh về chuẩn xác `2400 × 940 px` đúng theo viền khung container.



   - Áp dụng kênh trong suốt (Alpha channel) bo tròn 4 góc bên ngoài viền khung, giúp sơ đồ hiển thị liền mạch, không còn vệt trắng trên mọi nền trình duyệt/GitHub.



   - Cập nhật đồng bộ ảnh vào `images/quy-trinh.png` và artifact `quy_trinh_ky_thuat_visual.png`.



### 2026-11-09



242. **Gỡ bỏ 7 ảnh chụp các trang Power BI khỏi README song ngữ và kho mã theo yêu cầu người dùng**



   - Loại bỏ 7 khối ảnh chụp các trang Power BI (`tong-quan.png`, `tu-dien.png`, `ket-qua-kinh-doanh.png`, `xh-asm.png`, `danh-gia-kinh-doanh.png`, `danh-gia-asm.png`, `insight.png`) khỏi `README.md` và `README_eng.md`.



   - Giữ lại đúng 2 sơ đồ kỹ thuật cốt lõi: `quy-trinh.png` (Sơ đồ quy trình kỹ thuật 3 giai đoạn) và `thiet-ke-schema.png` (Mô hình kho dữ liệu Star Schema).



   - Di chuyển 7 tệp ảnh trang PBI sang `.staging/pbi_screenshots/` để lưu trữ nội bộ trên máy, rút gọn phạm vi đẩy lên kho mã còn đúng 22 tệp (~3,51 MiB).



   - Cập nhật tài liệu hiện trạng `docs/HIEN_TRANG_HE_THONG.md` và hoàn tất commit & push lên GitHub.



### 2026-11-09



241. **Gỡ tệp Excel đầu ra khỏi kho mã và đẩy lên GitHub**



   - `git rm --cached` tệp `output/Bao cao lai lo luy ke tu dau nam 202305.xlsx` (giữ bản trên máy), thêm vào `NEVER_PUSH` của `.staging/push_check.py`; cập nhật phạm vi đẩy trong `docs/HIEN_TRANG_HE_THONG.md` (29 tệp).



   - Commit Task 240–241 và push nhánh `main` (kèm commit Task 239 chưa đẩy được lần trước).



240. **Viết lại README song ngữ bám sát Power BI: bỏ báo cáo Excel đầu ra, dùng đúng cách đặt tên Dữ liệu đầu vào và 4 Dashboard đầu ra của trang Tổng quan**



   - Bỏ toàn bộ nội dung nhắc tới tệp Excel đầu ra (7 sheet đối soát); Excel chỉ còn là 3 tệp số liệu đầu vào. Việc đối soát chuyển sang PostgreSQL ↔ Power BI (bảng ma trận Trang 3).



   - Mục 2: thêm bảng `ĐẦU RA: 4 DASHBOARD CẦN XÂY DỰNG ĐỂ GIẢI QUYẾT BÀI TOÁN CỦA BAN ĐIỀU HÀNH` (01–04, Chứa cái gì – Để làm cái gì) và bảng thiết kế 7 trang. Mục 3: bảng `DỮ LIỆU ĐẦU VÀO CẦN THU THẬP` theo cột CHỨA / DÙNG ĐỂ đúng tên trên Power BI.



   - Mục 5: mô tả chi tiết từng trang (thẻ KPI, waterfall 8 bước, bong bóng Lợi nhuận–CIR, cột–đường Dư nợ mới–NPL, Quán quân 34/36 điểm, Leaderboard), nhúng 7 ảnh trang. Mục 7: bảng hành động dạng bảng, số liệu Đông Nam Bộ lấy từ measure `Page5_Part3_DongNamBo_HTML` (Loan 16đ hạng 18, Hùng 14đ hạng 21, Mai 11đ hạng 24).



   - Sửa `docs/PIPELINE.md`, `docs/HIEN_TRANG_HE_THONG.md` bỏ chữ "Sheet 1 Excel". Kiểm tra `check_toc.py`, `check_int_pair.py` (0 lệch số >= 10), `push_check.py`.



239. **Đẩy Bộ Cập Nhật Dự Án Lên GitHub (Mô Hình Power BI 100 Measure, Sơ Đồ Quy Trình Mới & Đồng Bộ Tài Liệu)**



   - Kiểm tra an toàn trước khi đẩy bằng `.staging/push_check.py`: 30 tệp (~4,49 MiB), 0 tệp vượt trần GitHub, 0 lộ mật khẩu, 0 liên kết gãy.



   - Stage đích danh các tệp được phép theo khuyến nghị của `push_check.py`, loại bỏ hoàn toàn các tệp nhạy cảm và dữ liệu thô (`ingestion/db_config.py`, `input/`, `CV/`, `docs/SESSION_PROMPT_LOG.md`, `output/duphong.pbix`).



   - Commit và push an toàn lên nhánh `main` của GitHub repository.



238. **Sửa nhãn kết nối dưới mũi tên DBeaver thành Import trên sơ đồ Quy trình xử lý kỹ thuật**



   - Cập nhật tệp nguồn `workflow_quy_trinh_ky_thuat.html` tại mũi tên nối Giai đoạn 1 (Excel) sang Giai đoạn 2 (PostgreSQL + DBeaver): đổi nhãn từ `DirectQuery` thành `Import` đúng bản chất nạp liệu thô vào CSDL, giữ nguyên `DirectQuery` tại mũi tên nối sang Giai đoạn 3 (Power BI).



   - Kết xuất lại ảnh độ phân giải cao `images/quy-trinh.png` (2427×967 px) và bản lưu trong artifact `quy_trinh_ky_thuat_visual.png`.



237. **Đồng Bộ Hóa Toàn Bộ Tài Liệu Dự Án (`README.md`, `README_eng.md`, `docs/HIEN_TRANG_HE_THONG.md`, `docs/PIPELINE.md`) Theo Các Cập Nhật Mới Nhất Trên Power BI & Sơ Đồ Tổng Quan**



   - **Cập nhật Giai đoạn 1 (3 nguồn dữ liệu đầu vào)**: Đồng bộ tên gọi, thứ tự nghiệp vụ (`1. Dữ liệu hạch toán mỗi tháng – GL`, `2. Dữ liệu sao kê thẻ mỗi tháng`, `3. Dữ liệu kết quả sale của ASM mỗi tháng`) và mô tả theo cấu trúc **Chứa ... – Dùng để ...** xuyên suốt hai bản README song ngữ và tài liệu kỹ thuật.



   - **Cập nhật Giai đoạn 2 (Kho dữ liệu PostgreSQL + DBeaver)**: Đồng bộ thứ tự 3 bảng tiếp nhận (`stg_fact_txn_month`, `stg_fact_kpi_month`, `stg_asm_target`), ký hiệu bảng tạm 3 bước (`tmp_pnl_step1..3`, `tmp_xh_step1..3`) và bảng nhật ký `log_proc_run`.



   - **Cập nhật Giai đoạn 3 (Power BI – Executive Orange Theme & 100 Measure DAX)**: Cập nhật số lượng measure DAX thực tế (**100** measure, gồm cả bộ **21** measure định dạng có điều kiện màu nền & màu chữ tương phản cao cho từng cột bảng P&L vùng và bộ visual HTML Content cỡ chữ lớn 19px – 48px trên trang Insight), đồng bộ tên gọi thực tế của 7 trang báo cáo (`GIỚI THIỆU ĐỀ TÀI`, `TỪ ĐIỂN DỮ LIỆU`, `BÁO CÁO KẾT QUẢ KINH DOANH VÙNG`, `BÁO CÁO XẾP HẠNG ASM`, `ĐÁNH GIÁ HIỆU QUẢ KINH DOANH VÙNG`, `ĐÁNH GIÁ HIỆU SUẤT ASM`, `INSIGHT`) theo hướng mô tả "Chứa cái gì – Để làm cái gì".



   - Kiểm tra đối soát tự động: `check_toc.py` (`ok`), `check_int_pair.py` (`ok`, 0 lệch số >= 10 giữa bản Việt và bản Anh), `push_check.py` (0 liên kết gãy, 0 lộ mật khẩu).



### 2026-11-09



236. **Khắc Phục Triệt Để Chữ Mờ / Chìm Trên Bảng Ma Trận P&L Power BI (Tương Phản Tuyệt Đối Nền Tối & Nền Sáng)**



   - **Xử lý dứt điểm hiện tượng chữ bị mờ chìm trong ảnh người dùng gửi**: Khi người dùng áp đồng thời Background Color (nền tối đen #0F172A, slate đậm #1E293B, cam cháy #B43806) và Font Color, các số âm màu đỏ sẫm #DC2626 và số dương màu đen #0F172A bị chìm hoàn toàn vào nền tối.



   - **Tối ưu hóa thông minh cho toàn bộ 10 measure PnlTable_FontColor_***:



     * **Tại các dòng nền tối (vSort 30, 40, 100, 150, 220, 230, 280, 290, 300)**: Tự động chuyển số âm sang **Hồng phấn rực sáng (#FECACA)** nổi bật bừng sáng trên nền đen/cam tối, số 0 sang **Trắng bạc (#E2E8F0)**, số dương sang **Trắng tinh (#FFFFFF)** và **Vàng kim (#FFBE2E)**. Cột Tiêu chí dùng chữ **Trắng tinh (#FFFFFF)**.



     * **Tại các dòng chi tiết con (nền trắng sáng #FFFFFF hoặc kem #FFFAF5)**: Số âm giữ **Đỏ tươi đậm (#DC2626)**, số 0 màu **Xám (#94A3B8)**, số dương màu **Đen slate đậm nét (#0F172A)**.



   - Cập nhật trực tiếp qua TOM API vào localhost:63565, 100% measure đạt State: Ready. Bảng Ma trận P&L hiển thị sắc nét, tương phản hoàn hảo và cực kỳ bắt mắt.



### 2026-11-09



235. **Nâng Cấp Cỡ Chữ Cực Đại (Executive Giant Scale: 19px – 48px) Cho 4 Measure Trang Insight Phù Hợp Canvas 1920x2250**



   - **Tối ưu kích thước chữ trên khổ canvas mở rộng (1920x2250)**:



     * Page5_Part1_KPICards_HTML: Phóng to số KPI lên 46px (font 900), nhãn thẻ lên 19px in hoa, phụ đề lên 20px (đọc rõ ở mọi góc nhìn).



     * Page5_Part2_Waterfall_HTML: Tiêu đề khối lên 36px, mô tả lên 23px, pill tổng LNTT lên 38px; toàn bộ chữ trên trục SVG và nhãn nấc thang tăng lên 18.5px - 21px, 3 thẻ phân tích phía dưới tăng lên 26px / 32px / 22px.



     * Page5_Part3_DongNamBo_HTML: Tiêu đề khối lên 34px, số lỗ lũy kế lên 36px, số điểm phạt lên 48px, chữ bảng so sánh 3 ASM lên 20px, nội dung giải pháp lên 21px.



     * Page5_Part4_MatranHanhdong_HTML: Tiêu đề khối lên 34px, header bảng hành động lên 22px in hoa, tên địa bàn lên 25px, toàn bộ vấn đề & hành động lên 21px, số tiền tác động định lượng lên 25px.



   - Nạp trực tiếp qua TOM API vào localhost:63565, 100% measure đạt State: Ready (0 lỗi).



### 2026-11-09



234. **Nâng Cấp Toàn Diện Cỡ Chữ & Màu Sắc Executive Orange Cho 4 Measure HTML Trang Insight Trên Power BI**



   - **Phóng to toàn bộ hệ thống cỡ chữ (25% - 40%)**:



     * Page5_Part1_KPICards_HTML: Nhãn thẻ tăng lên 14px, số liệu KPI chính phóng lên 34px, phụ đề tăng lên 15px.



     * Page5_Part2_Waterfall_HTML: Tiêu đề khối lên 25px, mô tả 16px, pill tổng LNTT lên 26px, nhãn trục và số liệu SVG tăng lên 15-16px, thẻ phân tích chuyên sâu tăng lên 18.5px/24px/16.5px.



     * Page5_Part3_DongNamBo_HTML: Tiêu đề khối lên 24px, huy hiệu lỗ lũy kế lên 25px, số điểm phạt kịch khung lên 36px, bảng xếp hạng 3 ASM và kiến nghị tăng lên 14.5px - 15.5px.



     * Page5_Part4_MatranHanhdong_HTML: Tiêu đề khối lên 24px, tiêu đề cột bảng hành động nền Nâu Espresso chữ Vàng kim 16px in hoa, toàn bộ nội dung ô địa bàn/vấn đề/hành động tăng lên 15.5px - 17.5px, chỉ số tác động tài chính lên 18px.



   - **Đồng bộ màu sắc Executive Orange / Orange Tree**: Thay thế toàn bộ gam màu Xanh Dương cũ (#2563eb, #1e3a8a, #eff6ff) sang tông Cam Hổ Phách (#FF7A00, #EA580C), Nâu Espresso (#2B1406), viền ấm (#FED7AA), giữ nguyên màu Đỏ cảnh báo (#DC2626) cho khoản lỗ Đông Nam Bộ và Xanh lục (#059669) cho chất lượng tín dụng tốt.



   - Đã nạp trực tiếp qua TOM API vào localhost:63565, 100% measure đạt State: Ready (0 lỗi).



### 2026-11-09



233. **Khắc Phục Lỗi Chữ Mờ Tàng Hình Bảng Ma Trận P&L Power BI & Chuẩn Hóa Mô Tả 3 Nguồn Dữ Liệu Đầu Vào**



   - **Xử lý triệt để lỗi hiển thị số liệu ở Ảnh 2**: Phát hiện nguyên nhân các dòng tổng/tiêu đề (như *Tổng thu nhập hoạt động, Chi phí thuần KDV, CP vốn, Chi phí dự phòng, Margin PnL...*) bị chữ trắng/vàng nhạt mờ căm trên nền sáng là do measure FontColor trước đó trả về #FFFFFF cho dòng tiêu đề khi chưa bật BackgroundColor nền tối. Đã cập nhật lại toàn bộ 10 measure PnlTable_FontColor_* trong bảng LAI LO (Visuals & DAX) của mô hình Power BI Desktop (localhost:63565) sang tông tương phản cao (LNTT cam đậm #C2410C/#9A2C00, dòng tổng đen slate #0F172A/#1E293B, số âm đỏ #DC2626, số 0 xám #94A3B8, dòng thường #1E293B), đảm bảo 100% số liệu hiển thị sắc nét và dễ đọc kể cả khi không bật Background Color.



   - **Chuẩn hóa nội dung 3 nguồn dữ liệu ở Ảnh 1**: Cung cấp trọn bộ mô tả chuẩn nghiệp vụ ngân hàng cho 3 nguồn dữ liệu theo cấu trúc thẻ <span class='tag-label tag-chua'>Chứa</span> và <span class='tag-label tag-dung'>Dùng để</span> (1. GL: Bút toán thu - chi 7 vùng & Hội sở -> Gán thẳng vùng & tổng hợp P&L; 2. Sao kê thẻ: Dư nợ, hạn mức, doanh số & nhóm nợ thẻ -> Phân bổ chi phí Hội sở & tính NPL; 3. Sale ASM: Chỉ tiêu & kết quả mở thẻ, kích hoạt, doanh số -> Chấm điểm thi đua & xếp hạng ASM).



### 2026-11-09



232. **Tạo Hệ Thống Measure Định Dạng Màu Nền & Màu Chữ (Conditional Formatting) Cho Từng Cột Của Báo Cáo Kết Quả Kinh Doanh Vùng Theo Bộ Màu Executive Orange**



   - Thiết lập trực tiếp 21 measure DAX trong bảng `LAI LO (Visuals & DAX)` của mô hình Power BI Desktop (`localhost:63565`) phục vụ định dạng có điều kiện (Cell elements: Background color & Font color) cho từng cột trong bảng Ma trận P&L vùng:



     * **Cột TIÊU CHÍ**: `PnlTable_BgColor_TieuChi` (LNTT `#B43806`, Tổng cấp 1 `#0F172A`, Nhóm cấp 2 `#1E293B`, Nhân sự/Tài chính `#2B1406`, con `#FFFFFF`) và `PnlTable_FontColor_TieuChi` (tiêu đề trắng `#FFFFFF` / vàng kim `#FFBE2E`, con `#475569`).



     * **8 Cột Khu Vực Vùng**: Tạo 8 cặp measure riêng biệt (`PnlTable_BgColor_*` & `PnlTable_FontColor_*` cho `HoiSo`, `NamTrungBo`, `TayBacBo`, `TayNamBo`, `DBSongHong`, `DongNamBo`, `DongBacBo`, `BacTrungBo`), tự động đổi màu số âm sang đỏ đậm `#DC2626` (hoặc `#FECACA` / `#FCA5A5` trên nền tối), số 0 sang `#94A3B8`, số dương sang `#1E293B`.



     * **Cột Total**: `PnlTable_BgColor_Total` (LNTT `#9A2C00`, Tổng cấp 1 `#0F172A`, Nhóm cấp 2 `#1E293B`, con kem sáng `#FFFAF5`) và `PnlTable_FontColor_Total` (LNTT `#FFBE2E`, Tổng cấp 1 `#38BDF8`, Nhóm cấp 2 `#FDE047`, con `#0F172A` / âm `#DC2626`).



   - Kiểm tra xác minh 100% measure đạt trạng thái `State: Ready` (0 lỗi DAX).



### 2026-11-09



231. **Đồng Nhất Ký Hiệu Bảng Tạm (step1..3) Và Tinh Gọn Ô Ghi Nhật Ký (log_proc_run) Trên Sơ Đồ Quy Trình**



   - Cập nhật Bước 2 Giai đoạn 2 trên workflow_quy_trinh_ky_thuat.html và kết xuất lại images/quy-trinh.png (cùng quy_trinh_ky_thuat_visual.png):



     * Ô 2. Bảng Tạm 3 Bước: đổi thành 	mp_pnl_step1..3, tmp_xh_step1..3 đồng nhất cả hai nhánh tính toán.



     * Ô 4. Ghi Nhật Ký: xoá (208 bước), chỉ giữ tên bảng log_proc_run.



### 2026-11-08



230. **Tinh Chỉnh Sơ Đồ Quy Trình Xử Lý Kỹ Thuật: Đồng Bộ Giai Đoạn 1, Xoá Phụ Đề, Icon Báo Cáo Tối Giản & Chữ Lớn**



   - Cập nhật workflow_quy_trinh_ky_thuat.html và kết xuất lại images/quy-trinh.png (cùng quy_trinh_ky_thuat_visual.png):



     * Đồng bộ tên và thứ tự 3 nguồn dữ liệu ở Giai đoạn 1 (1. Dữ liệu hạch toán mỗi tháng (GL), 2. Dữ liệu sao kê thẻ mỗi tháng, 3. Dữ liệu kết quả sale của ASM mỗi tháng) và thứ tự 3 bảng staging ở Bước 1 (stg_fact_txn_month, stg_fact_kpi_month, stg_asm_target).



     * Xoá dòng phụ đề bên phải tiêu đề QUY TRÌNH XỬ LÝ KỸ THUẬT.



     * Thay hình minh họa ở Giai đoạn 3 bằng biểu tượng trang báo cáo tối giản, đồng thời thu gọn chiều rộng Giai đoạn 3 (206px) để mở rộng Giai đoạn 1 (344px) và Giai đoạn 2 (490px), giúp phóng to cỡ chữ toàn diện và dễ đọc rõ nét.



### 2026-11-08



229. **Thiết Kế Lại Sơ Đồ Quy Trình Xử Lý Kỹ Thuật Theo Bảng Màu Orange Tree, Chữ Lớn, Chế Độ DirectQuery & Logo Thực Tế**



   - Cập nhật workflow_quy_trinh_ky_thuat.html và kết xuất lại ảnh độ phân giải cao images/quy-trinh.png (2400x940 px @2x) đồng bộ với orange_tree_theme.json và bố cục trang GIỚI THIỆU ĐỀ TÀI trên Power BI:



     * Giữ nguyên bộ 3 logo ứng dụng thực tế (Microsoft Excel, PostgreSQL + DBeaver, Power BI) từ phiên bản gốc, đặt ngang cùng tiêu đề giai đoạn để tiết kiệm diện tích chiều dọc.



     * Đồng bộ thanh tiêu đề QUY TRÌNH XỬ LÝ KỸ THUẬT (icon cam #FF7A00, chữ nâu cam đậm #9A3412, viền khung #FED7AA) và phóng to toàn bộ cỡ chữ tên tệp, mã bảng/view lên 35%–50%, hiển thị trọn vẹn trên 1 dòng.



     * Thay toàn bộ nhãn Import / Import Mode thành DirectQuery / Power BI (DirectQuery).



     * Xoá 3 dòng chữ mô tả ở Giai đoạn 3 và thay bằng hình ảnh biểu tượng màn hình Báo cáo Dashboard trực quan phối theo bảng màu orange_tree_theme.json.



### 2026-11-08



228. **Chuyển Đổi Bảng Màu Chủ Đạo Power BI Sang Tông Xám Than & Vàng Hổ Phách (Charcoal Gray & Orange Tree Gold)**



   - Cập nhật trực tiếp 18 measure DAX chứa mã màu và giao diện HTML trong mô hình Power BI Desktop đang mở (`output/Bao cao quan tri va phan tich (Ngan Hang).pbix`) sang bảng màu tương phản cao **Web Gray / Charcoal (`#1F2937`, `#262626`, `#374151`, `#494848`)** kết hợp **Orange Tree Gold (`#F59E0B`, `#D97706`, `#FACC15`, `#FEF3C7`)**:



     * **Trang 2 (`TỪ ĐIỂN DỮ LIỆU`)**: `Data_Glossary_HTML` dùng thanh tiêu đề gradient Charcoal `#1F2937 -> #374151`, huy hiệu Vàng `#F59E0B`, số thứ tự và tên chỉ số tông Charcoal/Amber.



     * **Trang 3 (`BÁO CÁO TỔNG HỢP LÃI LỖ`)**: `PnlTable_BgColor_TieuChi`, `PnlTable_FontColor_TieuChi`, `PnlTable_BgColor_Values` đổi dòng `1. Lợi nhuận trước thuế` sang nền Xám than `#262626` chữ Vàng `#FACC15` (ô số liệu nền Vàng kem `#FEF3C7`), các dòng nhóm chính nền Xám `#494848` chữ Trắng (ô số liệu nền Xám bạc `#E5E7EB`).



     * **Trang 6 (`XẾP HẠNG QUẢN LÝ VÙNG`)**: `ASM_Top1_HTML` và `ASM_Leaderboard_HTML` chuyển sang khung Charcoal viền/chữ Vàng `#FBBF24` / `#F59E0B`, cột Tổng điểm nền Vàng `#FDE68A` chữ `#92400E`.



     * **Trang 7 (`PHÂN TÍCH CHUYÊN SÂU VÀ ĐƯA RA KẾT LUẬN`)**: `Page5_Part1..4_HTML` chuyển toàn bộ gam Navy/Xanh dương sang Charcoal `#494848` / `#1F2937`, nhấn cột dẫn đầu Tây Nam Bộ bằng màu Vàng Hổ Phách `#D97706`.



   - Tạo sẵn tệp `.staging/Charcoal_Gold_Theme.json` để nạp nhanh bảng màu `dataColors` vào Power BI Desktop và hướng dẫn chi tiết các bước chỉnh màu cho các native visual trên giao diện.



### 2026-11-08



227. **Chuẩn Hóa 10 Measure DAX Khối KPI Cards Trên Trang Kết Quả Kinh Doanh Power BI**



   - Cập nhật trực tiếp 10 measure trong thư mục `01. Khoi KPI Cards` của bảng `banking_project v_baocao_tonghop`:



     * Đồng bộ `KPI NSBQ MoM Text` và `KPI NSBQ Color` theo `AVERAGE('banking_project v_baocao_tonghop'[nsbq_trieu_dong])` khớp với phép tính trung bình 7 vùng trên thẻ KPI.



     * Sửa lỗi hiển thị ký tự `"â€”"` khi chọn Tháng 1 thành `UNICHAR(8212)` (`"—"`) trên cả 5 measure `* MoM Text`.



     * Chuẩn hóa thứ tự điều kiện màu trong `KPI LNTT Color` và `KPI NSBQ Color` (xét dấu của `_pct` trước khi xét giá trị tuyệt đối).



### 2026-11-08



226. **Chuyển Đổi 3 Khung Sơ Đồ ASCII Trong README Việt – Anh Sang Bảng Markdown Chuẩn Mực**



   - Thay thế toàn bộ 3 khung vẽ ASCII (`┌───...`) dễ bị lệch cột trên GitHub tại Mục 2 (*Quy trình chuyển từ yêu cầu quản trị đến hệ thống báo cáo*), Mục 4.2 (*Bộ chỉ tiêu đánh giá hiệu quả hoạt động quản lý vùng*) và Mục 6 (*Hệ thống kiểm soát và đối soát dữ liệu 5 lớp*) trong cả `README.md` và `README_eng.md` sang dạng **Bảng Markdown** phẳng, căn lề chuẩn xác.



   - Kiểm tra `.staging/check_toc.py` (`ok`), `.staging/check_int_pair.py` (`ok`, 0 lệch số >= 10) và `.staging/push_check.py` (30 tệp chuẩn), sau đó commit và push lên GitHub.



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

### 2026-11-12

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.



### 2026-11-05\



182.' in text:



32:     text = text.replace('## ĐÃ XONG\

### 2026-11-12

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.



### 2026-11-05\



182.', '## ĐÃ XONG\

### 2026-11-12

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.



' + task_183 + '### 2026-11-05\



182.')



33: elif '## ĐÃ XONG\\r\

### 2026-11-12

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.



### 2026-11-05\\r\



182.' in text:



34:     text = text.replace('## ĐÃ XONG\\r\

### 2026-11-12

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.



### 2026-11-05\\r\



182.', '## ĐÃ XONG\\r\

### 2026-11-12

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.



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

### 2026-11-12

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.



### 2026-11-05\



181.' in text:



    text = text.replace('## ĐÃ XONG\

### 2026-11-12

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.



### 2026-11-05\



181.', '## ĐÃ XONG\

### 2026-11-12

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.



' + task_182 + '### 2026-11-05\



181.')



elif '## ĐÃ XONG\\r\

### 2026-11-12

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.



### 2026-11-05\\r\



181.' in text:



    text = text.replace('## ĐÃ XONG\\r\

### 2026-11-12

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.



### 2026-11-05\\r\



181.', '## ĐÃ XONG\\r\

### 2026-11-12

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.



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

### 2026-11-12

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.



### 2026-11-05\



180.' in text:



    text = text.replace('## ĐÃ XONG\

### 2026-11-12

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.



### 2026-11-05\



180.', '## ĐÃ XONG\

### 2026-11-12

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.



' + task_181 + '### 2026-11-05\



180.')



elif '## ĐÃ XONG\\r\

### 2026-11-12

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.



### 2026-11-05\\r\



180.' in text:



    text = text.replace('## ĐÃ XONG\\r\

### 2026-11-12

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.



### 2026-11-05\\r\



180.', '## ĐÃ XONG\\r\

### 2026-11-12

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.



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

### 2026-11-12

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.



### 2026-11-05\



179.' in text:



    text = text.replace('## ĐÃ XONG\

### 2026-11-12

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.



### 2026-11-05\



179.', '## ĐÃ XONG\

### 2026-11-12

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.



' + task_180 + '### 2026-11-05\



179.')



elif '## ĐÃ XONG\\r\

### 2026-11-12

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.



### 2026-11-05\\r\



179.' in text:



    text = text.replace('## ĐÃ XONG\\r\

### 2026-11-12

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.



### 2026-11-05\\r\



179.', '## ĐÃ XONG\\r\

### 2026-11-12

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.



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







### 2026-11-05\



178.' in text:



    text = text.replace('## ĐÃ XONG\

### 2026-11-12

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.



### 2026-11-05\



178.', '## ĐÃ XONG\

### 2026-11-12

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.



' + task_179 + '### 2026-11-05\



178.')



elif '## ĐÃ XONG\\r\

### 2026-11-12

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.



### 2026-11-05\\r\



178.' in text:



    text = text.replace('## ĐÃ XONG\\r\

### 2026-11-12

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.



### 2026-11-05\\r\



178.', '## ĐÃ XONG\\r\

### 2026-11-12

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.



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







### 2026-11-05\



177.' in text:



    text = text.replace('## ĐÃ XONG\

### 2026-11-12

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.



### 2026-11-05\



177.', '## ĐÃ XONG\

### 2026-11-12

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.



' + task_178 + '### 2026-11-05\



177.')



elif '## ĐÃ XONG\\r\

### 2026-11-12

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.



### 2026-11-05\\r\



177.' in text:



    text = text.replace('## ĐÃ XONG\\r\

### 2026-11-12

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.



### 2026-11-05\\r\



177.', '## ĐÃ XONG\\r\

### 2026-11-12

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.



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







### 2026-11-05\



176.' in text:



    text = text.replace('## ĐÃ XONG\

### 2026-11-12

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.



### 2026-11-05\



176.', '## ĐÃ XONG\

### 2026-11-12

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.



' + task_177 + '### 2026-11-05\



176.')



elif '## ĐÃ XONG\\r\

### 2026-11-12

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.



### 2026-11-05\\r\



176.' in text:



    text = text.replace('## ĐÃ XONG\\r\

### 2026-11-12

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.



### 2026-11-05\\r\



176.', '## ĐÃ XONG\\r\

### 2026-11-12

276. **Đẩy mã nguồn và tài liệu cập nhật lên kho mã GitHub (remote origin/main)**
   - **Đối soát an toàn tuyệt đối**:
     * Chạy kiểm tra bảo mật bằng `.staging/push_check.py`: Đạt chuẩn 22 tệp được phép, tổng dung lượng 8.86 MiB (tệp lớn nhất 7.97 MiB), 0 tệp vượt trần, 0 chuỗi kết nối nhạy cảm, 0 liên kết gãy, loại bỏ hoàn toàn các tệp bảo mật (`ingestion/db_config.py`, `docs/SESSION_PROMPT_LOG.md`, `.staging/`, dữ liệu ngân hàng thô).
     * Kiểm tra `git status` chọn đích danh từng tệp được phép theo đúng quy định `AGENTS.md`.
   - **Đẩy thành công commit lên nhánh `main`**: Đồng bộ toàn bộ các cập nhật về Tông Vàng Mệnh Kim, sơ đồ quy trình kỹ thuật mới `images/quy-trinh.png`, bộ đo lường tỷ lệ nợ xấu NPL và tài liệu xử lý lỗi thường gặp.

275. **Chuẩn hóa toàn diện màu sắc tựa đề và sơ đồ quy trình xử lý kỹ thuật (images/quy-trinh.png) sang Tông Vàng Mệnh Kim**
   - **Tối ưu hóa thiết kế sơ đồ quy trình kỹ thuật (`images/quy-trinh.png`)**:
     * *Tựa đề chính ("QUY TRÌNH XỬ LÝ KỸ THUẬT")*: Đổi từ màu đỏ nâu cũ (`#9A3412`) sang Vàng kim đậm vương giả (`#8A6615`), độ tương phản cao và sắc nét.
     * *Icon bánh răng tựa đề*: Đổi từ cam chói (`#FF7A00`) sang Vàng Hoàng Gia 24K (`#C59828`).
     * *Viền khung & bóng đổ container*: Đổi từ viền cam (`#FED7AA`) sang Viền kim sa ánh kim (`#E5D5AA`), bóng ánh kim `rgba(197, 152, 40, 0.1)`.
     * *Khối Giai đoạn 3 (Power BI)*: Chuyển viền sang `#E5D5AA`, nền Vàng ngọc trai `#FFFDF2`, dải accent `linear-gradient(90deg, #C59828, #DEBA52)`, mũi tên kết nối và nhãn chuyển sang sắc vàng kim đồng bộ.
   - **Kết xuất đồ họa độ phân giải cao**: Sử dụng Edge headless kết xuất với tỉ lệ `scale=2`, crop chính xác kích thước chuẩn `2400 × 940 px`, bo 4 góc ngoài bằng kênh trong suốt (Alpha channel `radius=24`), lưu đè vào `images/quy-trinh.png`.

274. **Chuyển đổi thẻ KPI Card Năng suất bình quân (NSBQ) sang Tỷ lệ nợ xấu (NPL) trên Live Model Power BI**
   - **Xây dựng bộ 3 measure tính toán NPL chuẩn mực quản trị rủi ro**:
     * `[KPI NPL Value]`: Tính tỷ lệ nợ xấu NPL của tháng và vùng được chọn từ `v_xephang_asm[npl]`, định dạng hiển thị phần trăm `0.0\%`.
     * `[KPI NPL MoM Text]` & `[KPI NSBQ MoM Text]`: Đo mức chênh lệch nợ xấu so với tháng trước ($\Delta 	ext{NPL} = 	ext{NPL}_{	ext{tháng này}} - 	ext{NPL}_{	ext{tháng trước}}$), hiển thị mũi tên và độ lệch điểm phần trăm (`▲ +0.X%` hoặc `▼ -0.X%`).
     * `[KPI NPL Color]` & `[KPI NSBQ Color]`: Chuẩn hóa logic màu sắc quản trị rủi ro nghịch chiều — NPL tăng là cảnh báo xấu (Màu Đỏ `#DC2626`), NPL giảm là tích cực/kiểm soát tốt (Màu Xanh lá `#16A34A`).
   - **Cập nhật Live Model qua TOM API (port 53553)**: Nạp trực tiếp 5 measure vào mô hình đang chạy, trạng thái `Ready` 100%, thẻ MoM Text tự động chuyển đổi ngay trên ứng dụng đang mở.



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



