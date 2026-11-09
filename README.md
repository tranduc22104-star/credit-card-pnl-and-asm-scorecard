<div align="center">

# Xây dựng báo cáo quản trị kết quả kinh doanh thẻ tín dụng và đánh giá hiệu quả hoạt động của Quản lý vùng (ASM)

**Ngôn ngữ / Language**: **Tiếng Việt** · [English](README_eng.md)

<p>
  <img src="https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white">
  <img src="https://img.shields.io/badge/DBeaver-382923?style=for-the-badge&logo=dbeaver&logoColor=white">
  <img src="https://img.shields.io/badge/Power%20BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black">
  <img src="https://img.shields.io/badge/Excel-217346?style=for-the-badge&logo=microsoftexcel&logoColor=white">
</p>

</div>

## 📑 Mục lục

1. [🏢 Bối cảnh kinh doanh và yêu cầu quản trị](#1--bối-cảnh-kinh-doanh-và-yêu-cầu-quản-trị)
2. [🎯 Phân tích yêu cầu và thiết kế báo cáo](#2--phân-tích-yêu-cầu-và-thiết-kế-báo-cáo)
3. [🔍 Khảo sát dữ liệu và đánh giá mức độ đáp ứng](#3--khảo-sát-dữ-liệu-và-đánh-giá-mức-độ-đáp-ứng)
4. [🧮 Xây dựng cách tính và các chỉ tiêu quản trị](#4--xây-dựng-cách-tính-và-các-chỉ-tiêu-quản-trị)
5. [🔄 Thiết kế quy trình xử lý và kho dữ liệu](#5--thiết-kế-quy-trình-xử-lý-và-kho-dữ-liệu)
6. [📊 Kết quả phân tích và đề xuất quản trị](#6--kết-quả-phân-tích-và-đề-xuất-quản-trị)
7. [📚 Kinh nghiệm rút ra](#7--kinh-nghiệm-rút-ra)
8. [🛠️ Công cụ và công nghệ sử dụng](#8--công-cụ-và-công-nghệ-sử-dụng)
9. [📂 Cấu trúc thư mục dự án](#9--cấu-trúc-thư-mục-dự-án)
10. [📖 Tài liệu dự án](#10--tài-liệu-dự-án)
11. [👤 Tác giả](#11--tác-giả)

---

## 1. 🏢 Bối cảnh kinh doanh và yêu cầu quản trị

### Bối cảnh hoạt động kinh doanh thẻ tín dụng
Hoạt động kinh doanh thẻ tín dụng được tổ chức tại **7 vùng** trên toàn quốc. Mỗi vùng do các quản lý vùng (Area Sales Manager - ASM) phụ trách. Tổng số ASM dao động từ **74 đến 84 người**, tùy từng thời kỳ.

### Tiếp nhận yêu cầu ban đầu từ Ban Điều Hành
Bài toán quản trị khởi nguồn từ yêu cầu định hướng chung của Ban Điều Hành:
> *"**Ban Điều Hành** yêu cầu xây dựng **hệ thống báo cáo quản trị** để theo dõi kết quả kinh doanh thẻ tín dụng tại các vùng và **đánh giá hiệu quả hoạt động** của đội ngũ **quản lý vùng (ASM)**"*

Khi tiếp nhận, yêu cầu chỉ dừng ở mức định hướng tổng thể, không cung cấp sẵn công thức tính, bảng điểm KPI hay bộ số liệu mẫu, và chưa làm rõ những nội dung sau:
- Chưa có phương pháp xác định lợi nhuận thực tế của từng vùng.
- Chưa có nguyên tắc phân bổ các khoản chi phí hạch toán tập trung tại Hội sở.
- Chưa xác định bộ chỉ tiêu đo lường hiệu quả kinh doanh và rủi ro tín dụng.
- Chưa có tiêu chí đánh giá hiệu quả hoạt động của quản lý vùng.
- Chưa có công thức tính điểm, cơ chế xếp hạng hay cấu trúc biểu mẫu báo cáo.

### Những vấn đề cần làm rõ trong công tác quản trị
Khi xem xét cách tổng hợp báo cáo hiện tại, có thể thấy ba vấn đề cần giải quyết:

1. **Chưa phản ánh đầy đủ hiệu quả tài chính:**
   Trên sổ cái kế toán, doanh thu từ lãi vay và phí mở thẻ được ghi nhận tại các chi nhánh. Trong khi đó, nhiều khoản chi phí như chi phí vốn, tiếp thị, công nghệ và chi phí của các phòng ban hỗ trợ lại được hạch toán tập trung tại Hội sở. Khi chưa phân bổ những khoản chi phí này về các vùng, báo cáo có thể cho thấy cả 7 vùng đều có lãi, khiến việc nhận diện những vùng hoạt động kém hiệu quả khó khăn hơn.

2. **Đánh giá quản lý vùng tiềm ẩn rủi ro tín dụng:**
   Nếu chỉ dựa trên doanh số giải ngân hoặc số lượng thẻ mới, đội ngũ quản lý có thể nới lỏng điều kiện phê duyệt để đạt chỉ tiêu trước mắt. Điều này có thể giúp tăng trưởng nhanh trong ngắn hạn nhưng làm tăng nợ xấu và chi phí dự phòng trong các kỳ sau.

3. **Hạn chế của báo cáo kế toán hiện tại:**
   Báo cáo hiện tại chủ yếu thể hiện số liệu lũy kế từ đầu năm, chưa tách riêng kết quả từng tháng, nên khó xác định lợi nhuận tăng là nhờ hoạt động kinh doanh chính hay do chi phí dự phòng thay đổi.

Từ bối cảnh đó, 5 câu hỏi quản trị trọng tâm được xác định cần giải quyết:

| Vấn đề quản trị | Câu hỏi cần giải quyết | Mục tiêu quản trị cần đạt |
|---|---|---|
| **Hiệu quả kinh doanh** | Vùng nào đang thực sự có lợi nhuận sau khi tính chi phí chung? | Xác định chính xác lãi lỗ 7 vùng sau phân bổ Hội sở |
| **Biến động lợi nhuận** | Nguyên nhân tăng giảm lợi nhuận hàng tháng đến từ đâu? | Phân tích các khoản thu và chi cấu thành lợi nhuận |
| **Chất lượng tín dụng** | Vùng nào đang có rủi ro nợ xấu cao đe dọa an toàn vốn? | Giám sát dư nợ theo 5 nhóm nợ và tỷ lệ nợ xấu từng vùng |
| **Hiệu quả quản lý vùng** | Quản lý vùng nào có kết quả kinh doanh và quản trị rủi ro tốt? | Xây dựng hệ thống xếp hạng dựa trên nhiều khía cạnh cho 74 - 84 nhân sự |
| **Công tác điều hành** | Cần theo dõi thông tin như thế nào để tra cứu, đối soát và ra quyết định kịp thời? | Xây dựng hệ thống báo cáo quản trị trực quan phục vụ tra cứu, đối soát và ra quyết định |

---

## 2. 🎯 Phân tích yêu cầu và thiết kế báo cáo

### Làm rõ yêu cầu nghiệp vụ và xác định đầu ra
Từ yêu cầu ban đầu, cần làm rõ Ban Điều Hành muốn theo dõi những thông tin nào về kết quả kinh doanh vùng và hiệu quả hoạt động của đội ngũ ASM. Hệ thống báo cáo được thiết kế theo hướng xác định rõ sản phẩm đầu ra trước (*Output-First*), sau đó khảo sát dữ liệu thực tế để xây dựng quy trình tính toán đáp ứng đầy đủ cả nhu cầu tra cứu đối soát số liệu chi tiết lẫn phân tích trực quan bằng biểu đồ.

### Cấu trúc đầu ra: 4 Dashboard phục vụ công tác quản lý và điều hành

Để giải quyết trọn vẹn bài toán của Ban Điều Hành, giải pháp đầu ra được thiết kế gồm **4 Dashboard quản trị trọng tâm**, mỗi sản phẩm đảm nhận một mục tiêu rõ ràng theo cấu trúc *"Chứa cái gì – Để làm cái gì"*:

| Mã số | Tên sản phẩm báo cáo / Dashboard | Mục tiêu quản trị & Nội dung cốt lõi (Chứa cái gì – Để làm cái gì) |
|:---:|---|---|
| **01** | **BÁO CÁO KẾT QUẢ KINH DOANH** | **Tổng hợp 32 chỉ tiêu tài chính** về kết quả kinh doanh của **7 vùng** (cùng cột Hội sở và Tổng toàn hàng) để tra cứu, đối soát chi tiết. |
| **02** | **BÁO CÁO XẾP HẠNG ASM** | **Tổng hợp điểm số và thứ hạng** của **74 – 84 nhân sự ASM** để hỗ trợ xét khen thưởng cá nhân làm tốt và chấn chỉnh nhân sự chưa đạt yêu cầu. |
| **03** | **HIỆU QUẢ KINH DOANH THEO VÙNG** | **So sánh hiệu quả kinh doanh và mức đóng góp** giữa **7 vùng** (thu – chi – dự phòng, CIR, hiệu suất vốn) để nhận diện vùng kinh doanh hiệu quả. |
| **04** | **ĐÁNH GIÁ HIỆU SUẤT ASM** | **Đối chiếu doanh số với tỷ lệ nợ xấu (NPL)** của từng ASM để nhận diện các trường hợp chạy theo quy mô mà làm tăng rủi ro tín dụng. |

### Bảng làm rõ yêu cầu và phân hệ giải pháp hoàn chỉnh:

Để 4 Dashboard trọng tâm trên vận hành minh bạch, có căn cứ tra cứu công thức và đi kèm các khuyến nghị điều hành định lượng, toàn bộ giải pháp được hoàn thiện thành **các phân hệ báo cáo quản trị hoàn chỉnh**:

| Yêu cầu ban đầu | Nội dung cần làm rõ | Kết quả phân tích nghiệp vụ | Phân hệ giải pháp xây dựng |
|---|---|---|---|
| **Định hình bài toán & chuẩn hóa thuật ngữ** | Người đọc cần nắm nhanh bối cảnh, nguồn dữ liệu, luồng xử lý và công thức của từng chỉ tiêu | Cần có tài liệu tổng quan toàn dự án và bộ từ điển dữ liệu giải thích rõ định nghĩa, công thức tính | • **Tổng quan bài toán**: Tóm tắt Bối cảnh nghiệp vụ, 4 Dashboard đầu ra, 3 Dữ liệu đầu vào và Quy trình xử lý kỹ thuật<br>• **Từ điển dữ liệu**: Chuẩn hóa **68 chỉ tiêu** thuộc 5 nhóm nghiệp vụ kèm công thức tính |
| **Tra cứu & đối soát kết quả kinh doanh vùng** | Lãi lỗ từng vùng có tính chi phí Hội sở không? Làm sao tra cứu và đối soát từng khoản mục thu – chi? | Phải phân bổ đầy đủ chi phí gián tiếp (vốn, vận hành, dự phòng) về 7 vùng và trình bày dạng bảng ma trận phân cấp | • **Báo cáo kết quả kinh doanh vùng (Dashboard 01)**: Bảng ma trận **32 chỉ tiêu tài chính** trải ngang qua `HỘI SỞ`, 7 vùng và `Total`, tích hợp **21 measure định dạng màu nền & màu chữ tự động** |
| **Tra cứu bảng điểm & xếp hạng nhân sự ASM** | Đánh giá ASM bằng những chỉ tiêu nào để vừa khuyến khích bán hàng vừa kiểm soát rủi ro địa bàn? | Kết hợp 4 chỉ tiêu Quy mô kinh doanh (`diem_qm`) và 4 chỉ tiêu Hiệu quả tài chính địa bàn (`diem_fin`) | • **Báo cáo xếp hạng ASM (Dashboard 02)**: Bảng điểm chi tiết của **74 – 84 ASM** (Tổng điểm, Tổng hạng, giá trị và thứ hạng từng chỉ tiêu thành phần) để khen thưởng và chấn chỉnh |
| **Phân tích trực quan hiệu quả sinh lời 7 vùng** | Lợi nhuận hình thành từ đâu? Vùng nào sinh lời cao, vùng nào chi phí lớn hoặc đang thua lỗ? | Cần bóc tách bậc thang thu – chi – dự phòng, đối chiếu lợi nhuận với CIR và hệ số sinh lời trên vốn của 7 vùng | • **Hiệu quả kinh doanh theo vùng (Dashboard 03)**: Gồm **5 thẻ KPI**, biểu đồ thác nước **8 bước** hình thành LNTT, biểu đồ bong bóng **Lợi nhuận vs CIR**, biểu đồ **Lợi nhuận & Hiệu suất vốn**, và khung **Đánh giá hiệu quả** |
| **Phân tích trực quan hiệu suất & rủi ro đội ngũ ASM** | Vùng nào và cá nhân nào tăng trưởng doanh số bền vững, nơi nào chạy theo quy mô nhưng nợ xấu cao? | Cần vinh danh Quán quân toàn diện, đồng thời đặt quy mô dư nợ cho vay mới cạnh tỷ lệ nợ xấu NPL theo từng vùng | • **Đánh giá hiệu suất ASM (Dashboard 04)**: Thẻ vinh danh **Quán quân Hạng #1**, bảng **Leaderboard**, biểu đồ kết hợp **Dư nợ mới (Cột) & Tỷ lệ nợ xấu NPL (Đường)** của 7 vùng, và khung **Nhận xét quản trị đội ngũ** |
| **Tổng hợp phát hiện sâu & ra quyết định điều hành** | Nguyên nhân gốc rễ gây lỗ hoặc tụt hạng là gì? Giải pháp hành động và tác động tài chính định lượng ra sao? | Cần liên kết kết quả lợi nhuận vĩ mô 7 vùng với cơ chế chấm điểm vi mô của ASM để đề xuất hành động theo thứ tự ưu tiên | • **Phân tích chuyên sâu & Đề xuất điều hành**: Tổng hợp **4 thẻ KPI trọng yếu**, biểu đồ thác nước đóng góp LNTT 7 vùng, phân tích tác động khoản lỗ **−48,8 tỷ** và điểm phạt **+26 điểm** tại Đông Nam Bộ (làm **84% ASM** rơi xuống nhóm đáy), cùng **Bảng hành động đề xuất** |

### Quy trình chuyển từ yêu cầu quản trị đến hệ thống báo cáo:

| Bước chuyển đổi | Nhánh 1: Quản trị kết quả kinh doanh vùng (P&L) | Nhánh 2: Đánh giá hiệu quả hoạt động Quản lý vùng (ASM) |
|---|---|---|
| **1. Yêu cầu ban đầu của Ban Điều Hành** | Theo dõi kết quả kinh doanh thẻ tín dụng tại 7 vùng | Đánh giá hiệu quả hoạt động đội ngũ Quản lý vùng (ASM) |
| **2. Các nhóm thông tin cần có trong báo cáo** *(Phân tích nghiệp vụ & làm rõ yêu cầu)* | • Thu nhập hoạt động thẻ, chi phí thuần KDV, chi phí hoạt động, chi phí dự phòng<br>• Phân bổ chi phí Hội sở theo tiêu thức kinh tế<br>• Tỷ lệ CIR, biên lợi nhuận (Margin), hiệu suất sinh lời trên vốn và năng suất bình quân/SM | • **Chỉ tiêu quy mô bán hàng cá nhân**: Dư nợ cho vay mới, số thẻ phát sinh dư nợ (PSDN), tỷ lệ phê duyệt hồ sơ<br>• **Chỉ tiêu trách nhiệm tài chính & rủi ro địa bàn**: Tỷ lệ nợ xấu mở rộng (NPL), CIR vùng, Margin, Hiệu suất vốn, LNTT bình quân/SM |
| **3. Hệ thống báo cáo quản trị đầu ra** | • **Chuẩn hóa & Từ điển**: Tổng quan bối cảnh và chuẩn hóa 68 chỉ tiêu nghiệp vụ<br>• **Báo cáo kết quả kinh doanh vùng**: Bảng tra cứu & đối soát 32 chỉ tiêu P&L<br>• **Hiệu quả kinh doanh theo vùng**: Biểu đồ hóa cơ cấu thu – chi – dự phòng 7 vùng | • **Báo cáo xếp hạng ASM**: Bảng tổng hợp điểm & thứ hạng 84 ASM<br>• **Đánh giá hiệu suất ASM**: Biểu đồ hóa tương quan doanh số & nợ xấu NPL, vinh danh Top 1 & Leaderboard<br>• **Phân tích chuyên sâu**: Bóc tách dòng chảy lợi nhuận, nghịch lý cơ chế điểm phạt vùng và bảng hành động điều hành |

### Vai trò của hai nhóm chỉ tiêu:
- **Nhóm chỉ tiêu kết quả kinh doanh vùng (32 chỉ tiêu P&L, NPL vùng, CIR, Margin, Hiệu suất trên vốn):** Phản ánh trung thực sức khỏe tài chính của từng vùng sau khi đã tính đầy đủ chi phí phân bổ từ Hội sở, giúp Ban Điều Hành có căn cứ phân bổ vốn, giao chỉ tiêu và kiểm soát định mức chi phí.
- **Nhóm chỉ tiêu đánh giá quản lý vùng (8 chỉ tiêu xếp hạng ASM trên 2 trụ cột Quy mô & Tài chính):** Kết hợp thành tích phát triển khách hàng cá nhân với chất lượng tín dụng và hiệu quả sinh lời của địa bàn nhằm tạo động lực thi đua bền vững, ngăn ngừa xu hướng nới lỏng thẩm định để chạy theo doanh số ngắn hạn.

---

## 3. 🔍 Khảo sát dữ liệu và đánh giá mức độ đáp ứng

### Dữ liệu đầu vào cần thu thập
Ngân hàng chưa có sẵn một bảng dữ liệu tổng hợp duy nhất đáp ứng ngay 4 Dashboard đầu ra. Dự án tiến hành thu thập **3 nguồn dữ liệu đầu vào (3 File Excel số liệu)** từ các khối nghiệp vụ, được xác định rõ theo cấu trúc **`CHỨA`** (nội dung dữ liệu) và **`DÙNG ĐỂ`** (mục đích tính toán):

| TT | Tên dữ liệu cần thu thập | Bảng tiếp nhận & Quy mô | **CHỨA** (Nội dung dữ liệu lưu trữ) | **DÙNG ĐỂ** (Mục đích sử dụng trong mô hình) |
|:---:|---|---|---|---|
| **1** | **Dữ liệu hạch toán mỗi tháng (GL)** | `fact_txn_month`<br>(**63.134** bút toán / 63 nghìn dòng) | **Bút toán thu - chi phát sinh tại 7 vùng & Hội sở** (gồm **62.953** dòng gắn mã tỉnh thành ghi nhận trực tiếp về vùng và **181** dòng chi phí chung hạch toán tại Hội sở mang mã tỉnh `'00'`). Khóa liên kết: `city_code`, `account_code`. | **Tính thu nhập, chi phí và lập báo cáo lãi lỗ (P&L) 7 vùng** (tổng hợp trực tiếp theo Rule 1 và phân bổ chi phí Hội sở theo Rule 2). |
| **2** | **Dữ liệu sao kê thẻ mỗi tháng** | `fact_kpi_month`<br>(**2.932.922** dòng / 2,9 triệu dòng, **117,2 MB**) | **Sao kê dư nợ, nhóm nợ và trạng thái thẻ** (ghi nhận dư nợ theo 5 nhóm nợ, các khoản nợ đã xử lý rủi ro write-off và trạng thái phát sinh dư nợ của từng hợp đồng thẻ trong 5 tháng). Khóa liên kết: `branch_code`, `month_key`. | **Tính tỷ lệ phân bổ Hội sở và đo lường nợ xấu NPL** (xây dựng bộ tiêu thức kinh tế để phân bổ chi phí Hội sở và tính tỷ lệ nợ xấu mở rộng cho 7 vùng). |
| **3** | **Dữ liệu kết quả sale của ASM mỗi tháng** | `kpi_asm_data`<br>(**420** dòng của **84** nhân sự ASM trong 5 tháng) | **Doanh số bán hàng của 84 ASM** (dư nợ cho vay mới, số thẻ phát sinh dư nợ bình quân PSDN và tỷ lệ phê duyệt hồ sơ của 74 đến 84 quản lý vùng đang hoạt động theo từng tháng). Khóa liên kết: `asm_id`, `month_key`. | **Tính điểm quy mô dùng cho xếp hạng ASM** (chấm điểm và xếp hạng trụ cột Quy mô kinh doanh `diem_qm`, kết hợp với trụ cột Tài chính `diem_fin` để xếp hạng chung cuộc). |

*(Ngoài 3 file số liệu giao dịch trên, hệ thống sử dụng bảng tham số ánh xạ **64** tỉnh thành về **8** khu vực quản lý gồm Hội sở `'A'` và 7 vùng kinh doanh `'B'..'H'`, cùng danh mục **55** chỉ tiêu báo cáo trong `dim_report_detail` và từ điển **68** chỉ tiêu trong `Data Glossary`).*

### Đánh giá mức độ đáp ứng của dữ liệu:

| Dashboard cần xây dựng | Thông tin cần có | Nguồn dữ liệu đáp ứng | Đánh giá mức độ đáp ứng và cấp dữ liệu |
|---|---|---|---|
| **01. Báo cáo kết quả kinh doanh** & **03. Đánh giá hiệu quả kinh doanh vùng** | Thu nhập, chi phí chi tiết, mã tỉnh, mã tài khoản GL, tiêu thức phân bổ Hội sở | `1. Dữ liệu hạch toán mỗi tháng (GL)` & `2. Dữ liệu sao kê thẻ mỗi tháng` | **Đáp ứng đầy đủ**: 62.953 dòng GL có mã tỉnh để gán trực tiếp; 181 dòng chi phí Hội sở (mã `'00'`) được phân bổ chính xác về 7 vùng nhờ các tiêu thức dư nợ và số lượng thẻ tính từ 2.932.922 dòng sao kê |
| **Đo lường nợ xấu (NPL) & kiểm soát rủi ro vùng** | Dư nợ 5 nhóm nợ, nợ write-off lũy kế theo chi nhánh và vùng | `2. Dữ liệu sao kê thẻ mỗi tháng` (`fact_kpi_month`) | **Thực hiện ở cấp vùng**: Dữ liệu gắn mã chi nhánh nên tổng hợp được chính xác dư nợ nhóm 1..5 và nợ write-off cho 7 vùng trong 5 tháng |
| **02. Báo cáo xếp hạng ASM** & **04. Đánh giá hiệu suất ASM** (Trụ cột Quy mô) | Doanh số giải ngân mới, số thẻ PSDN, tỷ lệ duyệt hồ sơ của từng ASM | `3. Dữ liệu kết quả sale của ASM mỗi tháng` (`kpi_asm_data`) | **Đáp ứng ở cấp cá nhân**: Có đầy đủ dữ liệu theo từng tháng của 74 đến 84 quản lý vùng để xếp hạng trực tiếp từng cá nhân |
| **Đánh giá nợ xấu & hiệu quả tài chính trong thẻ điểm ASM** (Trụ cột Tài chính & Rủi ro) | Tỷ lệ nợ xấu NPL, CIR, Margin, Hiệu suất vốn, LNTT bình quân theo ASM | Kết hợp kết quả cấp vùng từ `fact_txn_month` và `fact_kpi_month` | **Áp dụng ở cấp vùng cho các ASM cùng địa bàn**: Do hợp đồng thẻ không gắn mã nhân sự ASM, các chỉ tiêu nợ xấu và tài chính được tính ở cấp vùng rồi gắn chung cho các ASM thuộc vùng đó để ràng buộc trách nhiệm địa bàn |

### Ba vấn đề phát hiện trong dữ liệu ban đầu:
1. **Dữ liệu sao kê thẻ mỗi tháng quá lớn để xử lý thuận tiện bằng bảng tính thông thường:** Tệp dữ liệu gồm **2.932.922 dòng**, có dung lượng **117,2 MB**, vượt trần xử lý mượt mà của công cụ bảng tính truyền thống và đòi hỏi phải nạp vào hệ quản trị cơ sở dữ liệu PostgreSQL.
2. **Dữ liệu kết quả sale của ASM đang trình bày theo dạng ngang (Wide):** Các chỉ tiêu từ tháng 1 đến tháng 5 hiện được dàn thành nhiều cột ngang, nên cần xoay dọc (Unpivot/Tall format) khi đưa vào cơ sở dữ liệu quan hệ.
3. **Tên địa danh tỉnh thành chưa đồng nhất giữa các nguồn:** Tên tỉnh thành được ghi khác nhau giữa sổ sao kê và bảng danh mục vùng (ví dụ: sao kê ghi `"Bà Rịa - Vũng Tàu"` nhưng bảng tham số viết `"Vũng Tàu"`). Nếu nối dữ liệu trực tiếp mà không chuẩn hóa chuỗi (`pos_city_norm`), hơn **36.000 hợp đồng thẻ** sẽ bị rơi khỏi kết quả `JOIN`, làm sai lệch nghiêm trọng tỷ lệ nợ xấu của vùng Đông Nam Bộ.

---

## 4. 🧮 Xây dựng cách tính và các chỉ tiêu quản trị

**Bối cảnh của bài toán:** Ban Điều Hành chỉ đưa ra yêu cầu quản trị định hướng, không cung cấp sẵn công thức tính, bảng điểm KPI hay bộ số liệu mẫu. Vì vậy, toàn bộ phương pháp phân bổ P&L và cơ chế chấm điểm xếp hạng ASM được xây dựng từ việc phân tích bản chất dòng tiền và vận dụng nguyên tắc kế toán quản trị ngân hàng.

### 4.1. Xây dựng logic phân bổ thu nhập và chi phí (Lập Báo cáo P&L 7 vùng)

Câu hỏi chính cần giải quyết là: *Làm thế nào xác định kết quả kinh doanh thực sự của từng vùng khi nhiều khoản thu và chi phí trọng yếu được hạch toán tập trung tại Hội sở?*

Bài toán được triển khai qua 9 bước kế toán quản trị:
1. Phân tích toàn bộ 63.134 bút toán trong **Dữ liệu hạch toán mỗi tháng (GL)**.
2. Xác định các khoản thu, chi có mã tỉnh hoặc mã chi nhánh cụ thể để ghi nhận trực tiếp.
3. Phân loại các khoản chi phí hạch toán tập trung tại Hội sở (mã tỉnh `'00'`, vùng `'A'`).
4. Tìm hiểu bản chất kinh tế và nguyên nhân phát sinh của từng khoản mục.
5. Xác định tiêu thức phân bổ (*Cost Driver*) phản ánh đúng mức độ sử dụng nguồn lực của từng vùng.
6. Kiểm tra khả năng tính toán các tiêu thức này từ **Dữ liệu sao kê thẻ mỗi tháng** và dữ liệu định biên nhân sự.
7. Chọn phương pháp phân bổ gián tiếp theo tỷ trọng từng tháng.
8. Xây dựng công thức toán học và triển khai tự động bằng Stored Procedure trên PostgreSQL.
9. Kiểm tra tính hợp lý kinh tế và bảo toàn 100% tổng số tiền trên sổ cái sau phân bổ.

**Hai nguyên tắc phân bổ chi phí cốt lõi:**
- **Quy tắc 1 – Gán trực tiếp (Rule 1):** 62.953 bút toán phát sinh tại chi nhánh tỉnh thành được ghi nhận trực tiếp về đúng vùng kinh doanh quản lý tỉnh đó, bao gồm doanh thu (lãi trong hạn, lãi quá hạn, phí bảo hiểm, phí tăng hạn mức, phí thanh toán chậm) và các khoản chi phí trực tiếp tại địa bàn.
- **Quy tắc 2 – Phân bổ gián tiếp theo tiêu thức (Rule 2):** 181 bút toán hạch toán tập trung tại Hội sở được phân bổ về 7 vùng dựa trên tỷ trọng của từng tiêu thức kinh tế tương ứng:

$$\text{Tỷ lệ phân bổ vùng } i = \frac{\text{Giá trị tiêu thức của vùng } i}{\sum_{k=1}^7 \text{Giá trị tiêu thức của vùng } k}$$

$$\text{Chi phí phân bổ về vùng } i = \text{Chi phí Hội sở} \times \text{Tỷ lệ phân bổ vùng } i$$

*Cơ sở lựa chọn tiêu thức phân bổ cho từng nhóm khoản mục tại Hội sở (thể hiện rõ tại cột `Công Thức / Cách Tính` trong Từ điển dữ liệu của dự án):*
- **Chi phí vốn huy động & Thu lãi trong hạn / Phí tăng hạn mức phân bổ từ Hội sở:** Chi phí điều chuyển vốn nội bộ từ Hội sở xuống mạng lưới để tài trợ cho vay thẻ tín dụng tăng theo quy mô tín dụng hoạt động tốt $\rightarrow$ Phân bổ theo **Dư nợ cuối kỳ bình quân sau Write-off nhóm 1**. Vùng có dư nợ nhóm 1 bình quân lớn hơn sẽ nhận phần phân bổ tương ứng cao hơn.
- **Lãi quá hạn phân bổ từ Hội sở:** Phát sinh từ các khoản dư nợ chậm thanh toán bước đầu $\rightarrow$ Phân bổ theo **Dư nợ cuối kỳ bình quân sau Write-off nhóm 2**.
- **Chi phí dự phòng rủi ro tín dụng & Phí chậm trả / Thu ngoại bảng:** Khoản trích lập để bù đắp tổn thất tín dụng dự kiến $\rightarrow$ Phân bổ theo **Dư nợ bình quân nhóm 2 đến nhóm 5 cộng với Nợ đã xử lý rủi ro ngoại bảng (write-off)** (`d25_sau` hoặc `dtruoc`). Tiêu thức này phản ánh quy mô dư nợ có rủi ro của từng vùng trong điều kiện sổ cái (GL) chỉ hạch toán tập trung tại Hội sở.
- **Phí bảo hiểm (Bancassurance), Chi phí công nghệ và vận hành thẻ:** Doanh thu hoa hồng bảo hiểm đi kèm thẻ và chi phí duy trì hệ thống Core thẻ, hạ tầng máy chủ $\rightarrow$ Phân bổ theo **Số lượng thẻ phát sinh dư nợ bình quân** (`psdn`), đại diện cho quy mô danh mục thẻ đang hoạt động thực tế tại mỗi vùng.
- **Chi phí nhân viên, quản lý và tài sản khối hỗ trợ Hội sở:** Chi phí lương, thưởng và vận hành của các phòng ban Hội sở phục vụ mạng lưới $\rightarrow$ Phân bổ theo **Định biên nhân sự quản lý bán hàng (Sale Manager Headcount)** của từng vùng.
- *Giả định và giới hạn:* Phương pháp giả định mối quan hệ phân bổ là tuyến tính và mức chi phí bình quân trên mỗi đơn vị tiêu thức phân bổ là đồng nhất giữa các vùng; chưa tách riêng chi phí của những chiến dịch tiếp thị cục bộ tại từng địa phương.

*Chuyển đổi số lũy kế (YTD) sang số phát sinh tháng:*
Dữ liệu sổ cái tích lũy từ đầu năm được tách thành số phát sinh riêng của từng tháng để phục vụ phân tích biến động:
$$V_{\text{tháng } M} = V_{\text{lũy kế } M} - V_{\text{lũy kế } (M-1)}$$

### 4.2. Xây dựng bộ chỉ tiêu đánh giá hiệu quả hoạt động Quản lý vùng (ASM)

Câu hỏi cần giải quyết: *Nếu chỉ sử dụng doanh số giải ngân hoặc số thẻ mở mới để đánh giá quản lý vùng (ASM), liệu kết quả có phản ánh đầy đủ hiệu quả sinh lời và kiểm soát rủi ro tín dụng không?*

**Bộ chỉ tiêu kết hợp kết quả bán hàng cá nhân với trách nhiệm tài chính & rủi ro địa bàn:**
Từ **Dữ liệu kết quả sale của ASM mỗi tháng** kết hợp với kết quả P&L và nợ xấu của vùng, hệ thống xây dựng bộ đánh giá gồm **8 chỉ tiêu** chia đều thành **2 trụ cột** (mỗi trụ cột 4 chỉ tiêu). Mỗi chỉ tiêu đóng góp một thứ hạng độc lập từ 1 đến $N$:
- **Trụ cột 1: Kết quả kinh doanh và kiểm soát chất lượng tăng trưởng (`diem_qm` – Điểm Quy mô / PTKD):** Gồm **3 chỉ tiêu bán hàng cá nhân** (`Dư nợ cho vay mới bình quân`, `Số thẻ phát sinh dư nợ bình quân – PSDN`, `Tỷ lệ phê duyệt hồ sơ`) lấy từ *Dữ liệu kết quả sale của ASM mỗi tháng* cùng **1 chỉ tiêu kiểm soát chất lượng tín dụng địa bàn** (`Tỷ lệ rủi ro tín dụng mở rộng – NPL vùng`) lấy từ *Dữ liệu sao kê thẻ mỗi tháng*. Cần lưu ý rằng **tỷ lệ phê duyệt hồ sơ càng cao chưa chắc đã tốt**: tỷ lệ duyệt cao có thể phản ánh tệp khách hàng tốt nhưng cũng có thể là hệ quả của việc nới lỏng thẩm định. Do đó, việc đặt tỷ lệ duyệt hồ sơ nằm cùng trụ cột với tỷ lệ nợ xấu NPL giúp cân bằng giữa mở rộng quy mô và sàng lọc rủi ro.
- **Trụ cột 2: Hiệu quả tài chính địa bàn (`diem_fin` – Điểm Tài chính / FIN):** Gồm **4 chỉ tiêu cấp vùng** tính từ báo cáo P&L sau phân bổ (`Hệ số chi phí/thu nhập – CIR`, `Biên lợi nhuận – Margin`, `Hệ số sinh lời trên vốn`, `Lợi nhuận trước thuế bình quân/SM`). Do hợp đồng thẻ trên sao kê chỉ gắn mã chi nhánh mà không gắn mã nhân sự ASM, việc đưa 4 chỉ tiêu tài chính vùng vào bảng điểm giúp gắn kết quả cá nhân với trách nhiệm sinh lời chung của địa bàn.

**Cách tính tỷ lệ rủi ro tín dụng mở rộng (bao gồm nợ đã xử lý rủi ro ngoại bảng):**
Trong Stored Procedure SQL (`report_id = 204`), chỉ tiêu tỷ lệ nợ xấu mở rộng được tính như sau:

$$\text{Tỷ lệ rủi ro tín dụng mở rộng} = \frac{\text{Dư nợ nhóm 3–5} + \text{Write-off lũy kế}}{\text{Tổng dư nợ} + \text{Write-off lũy kế}} \times 100$$

Khác với tỷ lệ NPL nội bảng thông thường (chỉ tính dư nợ nhóm 3–5 trên tổng dư nợ nội bảng), đây là **chỉ tiêu quản trị do dự án xây dựng** nhằm cộng dồn cả phần nợ xấu đã xóa khỏi bảng cân đối kế toán (*write-off lũy kế* từ đầu năm). Cách tính này ngăn chặn hiện tượng tỷ lệ nợ xấu nội bảng giảm giả tạo sau khi ngân hàng thực hiện bút toán xử lý rủi ro ngoại bảng. *Giới hạn nghiệp vụ cần lưu ý:* Chỉ tiêu phản ánh cả tổn thất tích lũy từ các kỳ trước, nên những vùng có danh mục thẻ lâu năm có thể tích lũy số dư write-off lớn hơn các vùng mới mở rộng.

| Trụ cột 1: Kết quả kinh doanh & Kiểm soát chất lượng tăng trưởng (`diem_qm`) | Trụ cột 2: Hiệu quả tài chính địa bàn (`diem_fin`) |
|---|---|
| • **Dư nợ cho vay mới bình quân (`ltn_avg`)** *(Càng cao càng tốt)*<br>• **Số thẻ phát sinh dư nợ bình quân (`psdn_avg`)** *(Càng cao càng tốt)*<br>• **Tỷ lệ phê duyệt hồ sơ bình quân (`approval_rate_avg`)** *(Đánh giá kèm rủi ro)*<br>• **Tỷ lệ rủi ro tín dụng mở rộng (`npl_truoc_wo_luy_ke`)** *(Càng thấp càng tốt — bao gồm nợ đã xử lý rủi ro ngoại bảng)* | • **Tỷ lệ chi phí / thu nhập – `CIR`** *(Càng thấp càng tốt)*<br>• **Biên lợi nhuận – `Margin`** *(Càng cao càng tốt)*<br>• **Hệ số hiệu quả vốn (`hs_von`)** *(Càng cao càng tốt)*<br>• **Lợi nhuận bình quân / Quản lý (`hs_nhan_su`)** *(Càng cao càng tốt — gắn trách nhiệm quản trị với địa bàn)* |

**Bảng chi tiết 8 chỉ tiêu đánh giá quản lý vùng (ASM):**

| Chỉ tiêu | Nội dung phản ánh | Ý nghĩa của chỉ tiêu | Nguồn dữ liệu đầu vào | Hướng đánh giá | Cấp dữ liệu | Hạn chế cần lưu ý |
|---|---|---|---|---|---|---|
| **Dư nợ cho vay mới** | Kết quả bán hàng trực tiếp | Cho biết quy mô giải ngân khách hàng mới | `3. Dữ liệu kết quả sale của ASM` | Càng cao càng tốt | Cá nhân ASM | Chưa tính đến tỷ lệ hủy thẻ sau phát hành |
| **Số thẻ phát sinh dư nợ (PSDN)** | Mức độ sử dụng thẻ thực tế | Cho biết số thẻ có phát sinh dư nợ trong kỳ | `3. Dữ liệu kết quả sale của ASM` | Càng cao càng tốt | Cá nhân ASM | Cần cân nhắc chi phí kích hoạt và duy trì thẻ |
| **Tỷ lệ phê duyệt hồ sơ** | Kết quả sàng lọc hồ sơ | Cho biết tỷ lệ hồ sơ đăng ký được phê duyệt | `3. Dữ liệu kết quả sale của ASM` | Xem cùng nợ xấu NPL | Cá nhân ASM | Tỷ lệ quá cao có thể đi kèm nguy cơ nới lỏng thẩm định |
| **Tỷ lệ nợ xấu mở rộng (NPL)** | Kiểm soát rủi ro tín dụng | Phản ánh chất lượng tín dụng thực chất của địa bàn | `2. Dữ liệu sao kê thẻ mỗi tháng` | Càng thấp càng tốt | Cấp vùng | Hợp đồng thẻ không có mã ASM nên tính chung theo vùng |
| **Hệ số CIR của vùng** | Hiệu quả kiểm soát chi phí | Tỷ lệ tổng chi phí hoạt động trên tổng thu nhập | `1. Dữ liệu hạch toán mỗi tháng (GL)` | Càng thấp càng tốt | Cấp vùng | Phụ thuộc vào tiêu thức phân bổ chi phí từ Hội sở |
| **Biên lợi nhuận (Margin)** | Khả năng sinh lời trên thu nhập | Cho biết tỷ suất sinh lời ròng từ doanh thu thẻ | `1. Dữ liệu hạch toán mỗi tháng (GL)` | Càng cao càng tốt | Cấp vùng | Nhạy cảm với biến động chi phí vốn điều chuyển nội bộ |
| **Hệ số hiệu quả vốn** | Hiệu suất sinh lời trên vốn | Mức lợi nhuận tạo ra trên chi phí thuần KDV | `1. Dữ liệu GL` & `2. Sao kê thẻ` | Càng cao càng tốt | Cấp vùng | Phản ánh hiệu quả sử dụng vốn tổng hợp toàn vùng |
| **Lợi nhuận bình quân/SM** | Năng suất tài chính bình quân | Lợi nhuận trước thuế bình quân trên mỗi Sale Manager | `1. Dữ liệu GL` & Định biên nhân sự | Càng cao càng tốt | Cấp vùng | Tính bình quân theo số lượng định biên SM của vùng |

*Cách tổng hợp điểm khi các chỉ tiêu có đơn vị đo khác nhau:*
Do 8 chỉ tiêu có đơn vị đo lường khác nhau (triệu đồng, số lượng thẻ, tỷ lệ phần trăm), hệ thống áp dụng phương pháp **xếp hạng phân vị độc lập cho từng chỉ tiêu**:
- Mỗi chỉ tiêu được xếp hạng từ 1 đến $N$ trong toàn ngân hàng (thứ hạng 1 đại diện cho kết quả tốt nhất).
- Với các chỉ tiêu "càng thấp càng tốt" (tỷ lệ nợ xấu mở rộng, hệ số CIR), thuật toán đảo chiều sắp xếp để giá trị thấp nhất đạt hạng 1.
- Điểm tổng thi đua được tính bằng tổng điểm thứ hạng của hai trụ cột:
$$\text{Tổng Điểm} = \text{Điểm Quy Mô } (diem\_qm) + \text{Điểm Tài Chính } (diem\_fin)$$
- Quản lý vùng nào có **Tổng Điểm càng thấp thì Tổng Hạng chung cuộc trên bảng xếp hạng toàn quốc càng cao** (Hạng #1 là nhân sự có Tổng Điểm nhỏ nhất).

---

## 5. 🔄 Thiết kế quy trình xử lý và kho dữ liệu

Luồng xử lý dữ liệu từ 3 file Excel đầu vào đến hệ thống báo cáo quản trị được chuẩn hóa qua sơ đồ **`QUY TRÌNH XỬ LÝ KỸ THUẬT`** gồm **3 giai đoạn**:

<div align="center">

![Quy trình xử lý kỹ thuật — 3 giai đoạn](images/quy-trinh.png)

</div>

### Chi tiết 3 giai đoạn trong quy trình xử lý kỹ thuật:

- **Giai đoạn 1 – Dữ liệu đầu vào (`Excel – 3 File Số Liệu`):**
  Thu thập và chuẩn bị 3 tệp dữ liệu nguồn từ các phòng ban nghiệp vụ theo đúng yêu cầu quản trị:
  1. **Dữ liệu hạch toán mỗi tháng (GL)** (`fact_txn_month` • **63.134** dòng / 63 nghìn dòng): Chứa bút toán thu - chi phát sinh tại 7 vùng & Hội sở, dùng để tính thu nhập, chi phí và lập báo cáo lãi lỗ (P&L) 7 vùng.
  2. **Dữ liệu sao kê thẻ mỗi tháng** (`fact_kpi_month` • **2.932.922** dòng / 2,9 triệu dòng, dung lượng **117,2 MB**): Chứa sao kê dư nợ, nhóm nợ và trạng thái thẻ, dùng để tính tỷ lệ phân bổ Hội sở và đo lường nợ xấu NPL.
  3. **Dữ liệu kết quả sale của ASM mỗi tháng** (`kpi_asm_data` • **420** dòng của **84** nhân sự ASM trong 5 tháng): Chứa doanh số bán hàng của 84 ASM, dùng để tính điểm quy mô dùng cho xếp hạng ASM.

- **Giai đoạn 2 – Lưu trữ và xử lý tự động (`PostgreSQL + DBeaver`):**
  Kho dữ liệu được thiết kế theo mô hình Kimball Star Schema trong schema `banking_project`, gồm **19 bảng, 3 `view` và 11 `stored procedure`**, vận hành tự động qua 3 bước:
  - **Bước 1 – Nạp liệu (`Bảng Staging thô` qua `DBeaver Import`):** Sử dụng công cụ **DBeaver** theo phương thức **`Import`** để nạp trực tiếp dữ liệu từ 3 file Excel đầu vào vào 3 bảng tiếp nhận trong PostgreSQL (`stg_fact_txn_month` **63.134** dòng, `stg_fact_kpi_month` **2.932.922** dòng, `stg_asm_target` **420** dòng) và chuẩn hóa tên tỉnh thành (`pos_city_norm`), giữ lại trọn vẹn hơn **36.000** hợp đồng thẻ tại Bà Rịa - Vũng Tàu.
  - **Bước 2 – Tính toán (`SQL & Stored Procedure`):**
    1. *DDL Danh Mục (`7 bảng dim_`)*: `dim_area` (8 khu vực), `dim_param_area` (64 tỉnh thành), `dim_month` (5 tháng), `dim_date` (151 ngày), `dim_asm` (84 nhân sự), `dim_report_detail` (55 chỉ tiêu), `dim_sm_headcount` (35 dòng định biên SM).
    2. *Bảng Tạm 3 Bước (`6 bảng tmp_`)*: Cùng cấu trúc dữ liệu dạng dọc (`month_key`, `area_code`, `report_id`, `value`) lưu kết quả tính trung gian qua 3 bước cho luồng P&L (`tmp_pnl_step1..3`) và luồng Xếp hạng ASM (`tmp_xh_step1..3`).
    3. *Bảng Sự Kiện (`2 bảng fct_`)*: `fct_pnl_value` (**1.115** dòng) lưu kết quả P&L sau phân bổ của 7 vùng và Hội sở; `fct_asm_value` (**8.536** dòng) lưu chi tiết giá trị, điểm và thứ hạng từng chỉ tiêu của đội ngũ ASM qua 5 tháng.
    4. *Ghi Nhật Ký (`1 bảng log_`)*: `log_proc_run` ghi nhận lịch sử chạy của 11 thủ tục lưu trữ (**208** bản ghi `START` và `OK`, **0** bản ghi `FAIL`), đi kèm **9** khoá ngoại ảo (`Virtual Foreign Keys`) trên DBeaver.
  - **Bước 3 – Đầu ra View báo cáo (`Schema rpt`):** Tạo 3 khung nhìn báo cáo chuẩn hóa (`v_baocao_tonghop` **35** dòng, `v_xephang_asm` **388** dòng, `v_baocao_pnl_excel_pivoted` **160** dòng) sẵn sàng cung cấp dữ liệu cho Power BI.

<div align="center">

![Mô hình kho dữ liệu Star Schema](images/thiet-ke-schema.png)

</div>

- **Giai đoạn 3 – Trình diễn báo cáo quản trị & trực quan hóa điều hành (`Power BI – DirectQuery`):**
  Kho dữ liệu kết nối trực tiếp với tầng trình diễn báo cáo quản trị, vận hành hệ thống **100 measure DAX** (bao gồm bộ measure tính toán chỉ số KPI điều hành, **21** measure định dạng có điều kiện màu nền `PnlTable_BgColor_*` & màu chữ `PnlTable_FontColor_*` tương phản cao cho từng cột bảng ma trận P&L, cùng các visual HTML Content cỡ chữ lớn) và bảng từ điển **68** chỉ tiêu theo tông màu chủ đạo **Executive Orange / Orange Tree** với các phân hệ cốt lõi:

  1. **Chuẩn hóa & Từ điển dữ liệu**: Chuẩn hóa toàn bộ **68** chỉ tiêu và biến dữ liệu chia thành 5 phân nhóm nghiệp vụ (`0. Định danh & Phân cấp`, `1. Báo cáo Lãi Lỗ (P&L)`, `2. Chỉ số Tài chính & Nhân sự`, `3. Tiêu thức Phân bổ Hội sở`, `4. Đánh giá & Xếp hạng ASM`), hiển thị rõ định nghĩa, đơn vị tính, ý nghĩa nghiệp vụ và công thức tính.
  2. **Báo cáo kết quả kinh doanh vùng *(Dashboard 01)***: Bảng ma trận chứa đầy đủ **32** chỉ tiêu tài chính, nhân sự và tỷ số hiệu quả để tra cứu và đối soát số liệu của `HỘI SỞ`, **7** vùng kinh doanh (`Nam Trung Bộ`, `Tây Bắc Bộ`, `Tây Nam Bộ`, `Đồng Bằng Sông Hồng`, `Đông Nam Bộ`, `Đông Bắc Bộ`, `Bắc Trung Bộ`) và cột `Total`. Hệ thống định dạng có điều kiện tự động tô nổi bật dòng `1. Lợi nhuận trước thuế` (nền cam đậm, chữ trắng/vàng kim), các dòng tổng cấp 1 và nhóm cấp 2 (nền tối, chữ sáng tương phản cao, số âm màu hồng phấn sáng), và các dòng chi tiết con (nền sáng, số âm màu đỏ tươi, số 0 màu xám).

  3. **Báo cáo xếp hạng ASM *(Dashboard 02)***: Bảng tổng hợp điểm và thứ hạng chi tiết của toàn bộ đội ngũ ASM (**74 – 84** nhân sự theo tháng) để khen thưởng cá nhân xuất sắc và chấn chỉnh nhân sự yếu. Cung cấp bộ lọc linh hoạt theo tháng, theo vùng để tra cứu `Tổng Điểm`, `Tổng Hạng` cùng giá trị thực tế và thứ hạng của từng chỉ tiêu thành phần (`Dư Nợ Mới`, `Hạng Dư Nợ Mới`, `PSDN`, `Hạng PSDN`, `Tỷ Lệ Duyệt`, `Hạng Tỷ Lệ Duyệt`, `Tỷ Lệ Nợ Xấu`...).

  4. **Hiệu quả kinh doanh theo vùng *(Dashboard 03)***: Trực quan hóa cơ cấu thu – chi – dự phòng để so sánh hiệu quả sinh lời giữa **7** vùng thông qua 5 khối phân tích:
     - *Dải 5 thẻ KPI điều hành*: `THU NHẬP` (**1.353.898 triệu**, +1,8%), `LỢI NHUẬN` (**250.450 triệu**, +8,4%), `CHI PHÍ HOẠT ĐỘNG` (**-235.122 triệu**, +1,1%), `CHI PHÍ DỰ PHÒNG` (**-868.327 triệu**, +0,0%), `NĂNG SUẤT BÌNH QUÂN` (**4.100 triệu**, +6,0%).
     - *Biểu đồ thác nước (Waterfall) – Bóc tách cơ cấu hình thành Lợi nhuận trước thuế*: Thể hiện 4 bậc nguồn thu cộng vào (`1. Thu lãi trong hạn` **1.676.835** triệu, `2. Phí bảo hiểm (Bancas)` **30.653** triệu, `3. Thu dịch vụ thẻ` **101.481** triệu, `4. Thu lãi quá hạn` **1.497** triệu) và 3 bậc chi phí giảm trừ (`5. Chi phí vốn & HĐ khác` **-456.568** triệu, `6. Chi phí hoạt động` **-235.122** triệu, `7. Chi phí dự phòng` **-868.327** triệu) tạo thành `8. Lợi nhuận trước thuế` (**250.450** triệu).
     - *Biểu đồ bong bóng – So sánh hiệu quả sinh lời & chi phí 7 vùng*: Trục Y là Lợi nhuận trước thuế, Trục X là Tỷ lệ Chi phí / Thu nhập (CIR), độ lớn bong bóng thể hiện số lượng Sale Manager của vùng.
     - *Biểu đồ kết hợp Cột & Đường – Xu hướng lợi nhuận & hiệu quả sử dụng vốn*: Đối chiếu trực quan Lợi nhuận trước thuế (Cột) với Hệ số sinh lời trên vốn (Đường) của 7 vùng (dẫn đầu quy mô là Tây Nam Bộ **167.883** triệu với hiệu suất vốn **131,7%**; dẫn đầu hiệu suất vốn là Nam Trung Bộ **203,5%** với lợi nhuận **50.036** triệu; duy nhất Đông Nam Bộ âm **-48.763** triệu với hiệu suất vốn **-78,0%**).
     - *Khung Đánh giá hiệu quả & các điểm cần lưu ý*: Tóm tắt tự động 3 nhóm kết luận về khu vực dẫn đầu, cảnh báo vùng thua lỗ và cơ hội bán chéo bảo hiểm Bancas (mới chiếm **1,69%** TOI) cùng thu dịch vụ thẻ (**5,6%** TOI) khi thu lãi trong hạn đang chiếm tới **92,6%** còn chi phí dự phòng ăn mòn **64,1%** tổng thu nhập hoạt động.

  5. **Đánh giá hiệu suất ASM *(Dashboard 04)***: Biểu đồ hóa tương quan doanh số bán hàng và nợ xấu (NPL) để nhận diện các ASM đánh đổi rủi ro lấy quy mô qua 4 khối:
     - *Thẻ vinh danh Thành tích Quán quân tại các khu vực (Hạng #1)*: Hiển thị nổi bật hồ sơ nhân sự dẫn đầu (Hoàng Văn Nam – Vùng Đồng Bằng Sông Hồng, đạt **34 điểm** tại Tháng 2 và **36 điểm** tại Tháng 5 với Giải ngân mới **5.326 Tr.Đ**, Tỷ lệ duyệt hồ sơ **53,6%**, Nợ xấu NPL **13,9%** thấp hơn mức trung bình toàn hàng **17,3%**, Hệ số sinh lời vốn **109,9%**, Điểm Quy mô **23 điểm**, Điểm Tài chính **13 điểm**).
     - *Bảng xếp hạng toàn hàng (Leaderboard)*: Đối chiếu Top nhân sự dẫn đầu kèm chỉ số Tổng điểm, Điểm PTKD, Điểm FIN, Giải ngân mới, Tỷ lệ duyệt, Nợ xấu và Hiệu suất vốn.
     - *Biểu đồ kết hợp Cột & Đường – Chất lượng đội ngũ theo 7 vùng*: Đặt `Dư nợ cho vay khách hàng mới` (Cột: ĐB Sông Hồng **55.010** triệu, Tây Nam Bộ **35.955** triệu, Đông Nam Bộ **26.666** triệu, Tây Bắc Bộ **17.617** triệu, Đông Bắc Bộ **17.517** triệu, Bắc Trung Bộ **15.443** triệu, Nam Trung Bộ **11.635** triệu) cạnh đường `Tỷ lệ nợ xấu NPL` (Tây Nam Bộ **22,0%**, Đông Nam Bộ **19,9%**, Đông Bắc Bộ **18,1%**, Tây Bắc Bộ **15,9%**, Bắc Trung Bộ **14,7%**, ĐB Sông Hồng **13,9%**, Nam Trung Bộ **11,2%**).
     - *Khung Nhận xét quản trị đội ngũ Giám đốc vùng*: Phân tích sâu mô hình tăng trưởng an toàn tại ĐB Sông Hồng, nghịch lý quy mô – chất lượng giữa Tây Nam Bộ và Nam Trung Bộ, cùng cảnh báo đỏ tại Đông Nam Bộ.

  6. **Phân tích chuyên sâu & Căn cứ điều hành**: Phân tích đa chiều các phát hiện chiến lược và bảng hành động điều hành định lượng dành cho Ban Điều Hành (trình bày chi tiết tại Mục 6 – Phần C).

---

## 6. 📊 Kết quả phân tích và đề xuất quản trị

### Phần A – Đánh giá mức độ đáp ứng yêu cầu của Ban Điều Hành:

| Yêu cầu của Ban Điều Hành | Sản phẩm báo cáo quản trị xây dựng | Kết quả đánh giá mức độ đáp ứng |
|---|---|---|
| **Tra cứu & đối soát lãi, lỗ thực tế của 7 vùng** | **01. BÁO CÁO KẾT QUẢ KINH DOANH** | **Đáp ứng 100%**: Chứa đầy đủ 32 chỉ tiêu tài chính của 7 vùng và Hội sở sau phân bổ, khớp 100% với sổ cái GL để tra cứu và đối soát trực tiếp. |
| **Xếp hạng công bằng để khen thưởng & chấn chỉnh ASM** | **02. BÁO CÁO XẾP HẠNG ASM** | **Đáp ứng 100%**: Tổng hợp bảng điểm 2 trụ cột độc lập của 74 - 84 nhân sự ASM, giúp nhận diện rõ cá nhân xuất sắc để khen thưởng và nhân sự yếu để chấn chỉnh. |
| **So sánh cơ cấu thu – chi – dự phòng và hiệu quả sinh lời** | **03. HIỆU QUẢ KINH DOANH THEO VÙNG** | **Đáp ứng 100%**: Trực quan hóa 8 bước hình thành lợi nhuận, tương quan Lợi nhuận vs CIR và Hiệu suất sinh lời trên vốn giữa 7 vùng. |
| **Nhận diện ASM đánh đổi rủi ro tín dụng lấy quy mô** | **04. ĐÁNH GIÁ HIỆU SUẤT ASM** | **Đáp ứng tốt**: Biểu đồ hóa tương quan dư nợ giải ngân mới và tỷ lệ nợ xấu (NPL), làm rõ các vùng và cá nhân tăng trưởng nóng đi kèm nợ xấu cao. |
| **Chuẩn hóa định nghĩa và đề xuất hành động điều hành** | **TỪ ĐIỂN DỮ LIỆU & PHÂN TÍCH CHUYÊN SÂU** | **Đáp ứng 100%**: Chuẩn hóa 68 chỉ tiêu nghiệp vụ và cung cấp báo cáo phân tích chuyên sâu kèm bảng hành động định lượng cho Ban Điều Hành. |

### Phần B – Những điểm đáng chú ý từ số liệu tháng 5/2023:

1. **Tây Nam Bộ – Lợi nhuận tăng chủ yếu nhờ chi phí dự phòng ròng giảm:**
   - *Dữ kiện quan sát được:* Lợi nhuận trước thuế của vùng tăng **+4.267,8 triệu đồng**, chiếm **97,2%** mức tăng lợi nhuận toàn hệ thống trong tháng 5. Tuy nhiên, thu nhập thuần từ thẻ chỉ tăng 16,3 triệu đồng, chi phí hoạt động làm giảm lợi nhuận −195,9 triệu đồng, trong khi **chi phí trích lập dự phòng ròng giảm +4.447,3 triệu đồng**. Vùng ghi nhận **tỷ lệ rủi ro nợ xấu mở rộng cao nhất hệ thống (21,99%)** và không có quản lý vùng (ASM) nào lọt vào nhóm 25 vị trí dẫn đầu.
   - *Nhận xét nghiệp vụ:* Lợi nhuận tháng 5 tăng chủ yếu nhờ chi phí dự phòng ròng giảm. Thu nhập thuần từ hoạt động thẻ chỉ tăng 16,3 triệu đồng so với tháng trước, gần như không thay đổi, chưa cho thấy sự cải thiện đáng kể về nguồn thu kinh doanh cốt lõi trong kỳ.
   - *Điểm cần kiểm tra thêm:* Cần kiểm tra xem chi phí dự phòng giảm đến từ việc thu hồi nợ hay từ các điều chỉnh kỹ thuật liên quan đến giãn nợ; đề xuất kiểm tra thực địa chất lượng thu hồi nợ trong tháng 7.

2. **Đông Nam Bộ – Thu nhập thuần tăng nhưng lợi nhuận vẫn âm do áp lực chi phí dự phòng:**
   - *Dữ kiện quan sát được:* Vùng ghi nhận mức lỗ trước thuế **−8.787,4 triệu đồng** phát sinh riêng trong tháng 5 (lũy kế 5 tháng lỗ **−48.763 triệu đồng**, tức **−48,8 tỷ đồng**). Hoạt động bán hàng tăng trưởng mạnh khi **thu nhập thuần tăng tới +3.210,7 triệu đồng**, nhưng bị bù trừ bởi **chi phí trích lập dự phòng tăng thêm −3.234,2 triệu đồng**, khiến **16 trong số 19 quản lý vùng** rơi xuống nhóm cuối bảng xếp hạng dù doanh số cao.
   - *Nhận xét nghiệp vụ:* Vùng ghi nhận lợi nhuận âm vì chi phí dự phòng rủi ro tín dụng phát sinh trong kỳ lớn hơn phần thu nhập thuần tăng thêm từ hoạt động kinh doanh.
   - *Điểm cần kiểm tra thêm:* Cần thực hiện phân tích vintage/cohort để kiểm chứng xem các khoản cho vay tăng nhanh trong những kỳ trước có đang chuyển sang nhóm nợ quá hạn hay không; rà soát các hợp đồng đang có nợ xấu tại Đông Nam Bộ trong 30 ngày để đánh giá tốc độ dịch chuyển nợ và điều chỉnh tiêu chí phê duyệt.

3. **Đồng bằng Sông Hồng – Lợi nhuận tăng nhờ chi phí dự phòng ròng giảm, giữ vững vị thế đầu tàu quy mô an toàn:**
   - *Dữ kiện quan sát được:* Lợi nhuận trước thuế của vùng tăng thêm **+1.310,9 triệu đồng** so với tháng trước, trong khi thu nhập thuần từ thẻ thực tế giảm **−232,2 triệu đồng** và chi phí dự phòng ròng giảm **+1.455,8 triệu đồng**. Lũy kế đến tháng 5, vùng dẫn đầu giải ngân mới toàn hệ thống (**55.010 triệu đồng**, gấp 1,5 lần vùng thứ hai) nhưng vẫn giữ tỷ lệ nợ xấu ở mức **13,9%** (thấp hơn mức trung bình toàn hàng **17,3%**).
   - *Nhận xét nghiệp vụ:* Dù vùng đang là trụ cột quy mô an toàn nhất hệ thống, việc thu nhập thuần giảm nhẹ trong tháng 5 là dấu hiệu cần theo dõi thêm ở các kỳ tiếp theo.
   - *Điểm cần kiểm tra thêm:* Khi sổ sách chưa tách riêng khoản trích lập dự phòng mới và khoản hoàn nhập, cần kiểm toán nội bộ số liệu dự phòng chi tiết để phân biệt giữa suy giảm rủi ro tự nhiên và điều chỉnh kế toán kỹ thuật trước khi kết luận về xu hướng dài hạn.

4. **Nam Trung Bộ – Kết quả xếp hạng tốt đi cùng tỷ lệ nợ xấu thấp nhất và hiệu suất vốn dẫn đầu:**
   - *Dữ kiện quan sát được:* Địa bàn có 5 quản lý vùng duy trì tỷ lệ rủi ro nợ xấu mở rộng thấp nhất toàn ngân hàng (**11,24%**), đạt hệ số sinh lời trên vốn cao nhất hệ thống (**203,5%** tại biểu đồ lũy kế Tháng 5) và có tới **4 trong số 5 quản lý vùng** nằm trong nhóm 25 vị trí dẫn đầu cả nước.
   - *Nhận xét nghiệp vụ:* Kết quả này cho thấy Nam Trung Bộ là hình mẫu tối ưu hóa an toàn vốn và kiểm soát chất lượng tín dụng cần được nghiên cứu nhân rộng.
   - *Điểm cần kiểm tra thêm:* Do quy mô địa bàn nhỏ (5 quản lý vùng), cần khảo sát thực tế quy trình thẩm định và sàng lọc khách hàng tại Nam Trung Bộ, sau đó đánh giá khả năng thử nghiệm có kiểm soát trước khi nhân rộng sang các vùng khác.

### Phần C – Báo cáo phân tích chuyên sâu và căn cứ ra quyết định điều hành:

Toàn bộ phát hiện từ kết quả kinh doanh vĩ mô 7 vùng đến cơ chế đánh giá vi mô của đội ngũ ASM được tổng hợp thành **4 tầng thông tin điều hành**:

1. **Bốn thẻ chỉ số điều hành trọng yếu (KPI Cards):**
   - **Đóng góp lợi nhuận cao nhất – `67,0%`:** Tây Nam Bộ dẫn đầu toàn hàng, đóng góp +167,9 tỷ đồng trên tổng lợi nhuận hệ thống.
   - **Tỷ lệ nợ xấu đỉnh điểm – `22,0%`:** Tây Nam Bộ vượt xa ngưỡng an toàn bình quân toàn ngân hàng.
   - **Lợi nhuận trước thuế âm – `-48,8 tỷ`:** Đông Nam Bộ là vùng duy nhất chịu lỗ lũy kế 5 tháng.
   - **Quản trị tối ưu chất lượng – `11,2% Nợ xấu`:** Nam Trung Bộ duy trì tỷ lệ nợ xấu thấp nhất và đóng góp 20% lợi nhuận (+50,0 tỷ đồng).

2. **Phân tích lợi nhuận – Đóng góp lợi nhuận trước thuế theo 7 vùng (Biểu đồ Waterfall):**
   - *Đóng góp tích lũy tích cực:* Đồng bằng Sông Hồng (**+54,3 tỷ đồng**), Nam Trung Bộ (**+50,0 tỷ đồng**), Tây Nam Bộ (**+167,9 tỷ đồng**) và 3 Vùng khác (**+27,0 tỷ đồng**) tạo nên đỉnh lợi nhuận tích lũy đạt **+299,2 tỷ đồng**.
   - *Tác động kéo tụt:* Khoản lỗ **−48,8 tỷ đồng** tại Đông Nam Bộ làm giảm **16%** phần lợi nhuận tích lũy từ các vùng có lãi.
   - *Vạch đích toàn hệ thống:* Lợi nhuận trước thuế toàn hàng chốt sổ đạt **+250,5 tỷ đồng**.

3. **Tác động suy giảm lợi nhuận tại Đông Nam Bộ (Bóc tách nghịch lý cơ chế điểm phạt vùng):**
   - *Điểm tài chính bị phạt kịch khung (`26 điểm tài chính` – Phạt tối đa):* Do vùng chịu lỗ −48,8 tỷ đồng (Xếp hạng 7/7 toàn hàng ở các chỉ tiêu tài chính), toàn bộ các Quản lý ASM tại Đông Nam Bộ bị cộng điểm phạt tài chính kịch khung **26 điểm**, mất cơ hội cạnh tranh thứ hạng dù kết quả bán hàng cá nhân tốt.
   - *Thực trạng xếp hạng quản lý (Cơ chế cào bằng xóa bỏ ưu thế bán hàng tự thân):*
     * Số liệu thực tế tại Đông Nam Bộ minh họa: Nguyễn T. Loan (bán hàng **Tốt – Top sale**, điểm **16đ**) chỉ đứng **Hạng 18**; Trần V. Hùng (bán hàng **Khá**, **14đ**) đứng **Hạng 21**; Lê T. Mai (bán hàng **Trung bình**, **11đ**) đứng **Hạng 24**.
     * Trên bảng xếp hạng toàn hàng: Lê Văn Bình hạng bán hàng #24 tụt xuống #31 (tụt 7 bậc); Trần Văn Hải hạng #28 tụt xuống #33 (tụt 5 bậc); Trần Văn Anh hạng #36 tụt xuống #41 (tụt 5 bậc).
   - *Kiến nghị điều hành trọng tâm (`84% ASM nhóm đáy bảng`):* Có tới **84% Quản lý** (**16/19** nhân sự tại Đông Nam Bộ) bị đẩy xuống nhóm cuối bảng toàn hàng. **Giải pháp:** Cần tách bạch thẻ điểm bán hàng cá nhân khỏi kết quả lỗ của toàn vùng để giữ chân nhân sự sale giỏi, đồng thời giao chỉ tiêu lợi nhuận vùng và đẩy mạnh thu hồi nợ xấu ở cấp Giám đốc vùng để xóa khoản lỗ 48,8 tỷ đồng.

4. **Bảng hành động đề xuất theo địa bàn và tác động định lượng:**

| Mức ưu tiên | Địa bàn | Vấn đề cốt lõi | Hành động trọng tâm | Tác động định lượng |
|:---:|---|---|---|---|
| **Khẩn cấp** | **Tây Nam Bộ** | Nợ xấu đỉnh điểm **22,0%** – Lợi nhuận phụ thuộc giảm dự phòng | Rà soát lại danh mục nợ; bóc tách trích lập và hoàn nhập dự phòng | **290.377 triệu đồng** *(Minh bạch dự phòng)* |
| **Khẩn cấp** | **Đông Nam Bộ** | Lỗ **−48,8 tỷ** – **84%** quản lý bị kéo tụt đáy bảng | Thu hồi nợ xấu & **Tách riêng Thẻ điểm cá nhân** khỏi chỉ tiêu lợi nhuận vùng | **+55 tỷ đồng** *(Xóa lỗ khi nợ xấu về **14%**)* |
| **Ưu tiên** | **Bắc Trung Bộ** | Chi phí vận hành vượt trần **24%** doanh thu | Rà soát chi phí chi nhánh; khóa định mức chi theo doanh số thực tế | **~1,5 tỷ đồng/tháng** *(Đưa chi phí về mức an toàn **21%**)* |
| **Dài hạn** | **Nam Trung Bộ** | Hiệu suất vốn cao – Nợ xấu thấp (**11,2%**) | Chuẩn hóa quy trình thẩm định & quản trị chi phí để nhân rộng | **Giữ nợ xấu dưới 12%** *(Hiệu suất vốn trên **200%**)* |
| **Duy trì** | **Đồng bằng Sông Hồng** | Đầu tàu quy mô (chiếm **30,6%** giải ngân mới) | Giữ nhịp tăng trưởng cho vay; kèm cặp nâng đều năng suất đội ngũ quản lý | **Giải ngân trên 55 tỷ đồng/tháng** *(Giữ **30,6%** thị phần)* |

### Năm đề xuất gửi Ban Điều Hành:

| # | Đề xuất quản trị | Căn cứ số liệu thực tế | Đơn vị phụ trách · Thời hạn |
|:---:|:---|:---|:---|
| 01 | **Bổ sung chỉ tiêu lợi nhuận loại trừ biến động dự phòng:** Yêu cầu tách riêng khoản trích lập dự phòng mới và khoản hoàn nhập dự phòng để phản ánh đúng lợi nhuận kinh doanh cốt lõi. | Báo cáo hiện tại chỉ có một dòng dự phòng ròng, chưa tách riêng khoản trích lập mới và khoản hoàn nhập | Khối Quản lý rủi ro · Tháng 6 |
| 02 | **Kiểm tra danh mục nợ xấu tại 3 vùng trọng điểm:** Kiểm tra các hợp đồng phát sinh nợ quá hạn tại Đông Nam Bộ, Đông Bắc Bộ và Tây Bắc Bộ. | Tổng chi phí dự phòng tại 3 vùng này tăng thêm **6.035,1 triệu đồng** trong tháng | Quản lý vùng + Quản lý rủi ro · 30 ngày |
| 03 | **Kiểm tra thực địa quy trình cấp tín dụng và thu hồi nợ tại Tây Nam Bộ:** Thẩm định lại chất lượng hồ sơ và hiệu quả thu hồi nợ. | Nợ xấu chiếm **21,99%** (cao nhất hệ thống) nhưng vùng lại chiếm **97,2%** mức tăng lợi nhuận | Khối Kinh doanh + Quản lý rủi ro · Tháng 7 |
| 04 | **Tìm hiểu và thử nghiệm có kiểm soát cách làm tại Nam Trung Bộ:** Khảo sát quy trình thẩm định và sàng lọc khách hàng trước khi xem xét mở rộng. | Tỷ lệ nợ xấu thấp nhất (**11,24%**) và 4/5 quản lý vùng đạt top 25 | Khối Kinh doanh · Đánh giá sau 2 tháng |
| 05 | **Rà soát tiêu chí đánh giá và cơ chế xét thưởng:** Tách riêng đánh giá năng lực bán hàng cá nhân của ASM khỏi biến động dự phòng vùng; kết hợp kết quả bán hàng, chất lượng tín dụng, hiệu quả tài chính và thời gian quản lý địa bàn. | Tránh đánh giá thiếu công bằng khiến 84% ASM tại Đông Nam Bộ rơi xuống đáy bảng hoặc thưởng nhầm cho vùng tăng lợi nhuận nhờ giảm dự phòng | Ban Điều Hành · Áp dụng ngay |

---

## 7. 📚 Kinh nghiệm rút ra

1. **Hiểu rõ bản chất nghiệp vụ trước khi viết code:**
   Trong hệ thống dữ liệu tài chính ngân hàng, việc hiểu rõ tại sao chi phí vốn mang dấu âm, vì sao chi phí Hội sở mang mã tỉnh `'00'` và vùng `'A'` là điều kiện tiên quyết để xây dựng câu lệnh SQL phân bổ chính xác. Không thể giải quyết bài toán dữ liệu ngân hàng nếu chỉ tiếp cận thuần túy dưới góc độ công nghệ.

2. **Làm sạch dữ liệu danh mục là bước rất quan trọng:**
   Phát hiện sự sai lệch giữa chuỗi ký tự `"Bà Rịa - Vũng Tàu"` và `"Vũng Tàu"` trong quá trình tiền xử lý đã giữ lại trọn vẹn hơn **36.000 hợp đồng thẻ**, tránh sai lệch lớn trong kết quả tính tỷ lệ nợ xấu của vùng Đông Nam Bộ.

3. **Kiểm soát tính toàn vẹn và giao dịch trong quy trình ETL:**
   Việc thiết kế 6 bảng trung gian có cùng cấu trúc dữ liệu dạng dọc và kiểm soát transaction chặt chẽ trong các Stored Procedure giúp lưu lại lịch sử xử lý (`log_proc_run`), qua đó xác định lỗi phát sinh ở bước nào và rollback an toàn khi có sự cố.

4. **Thiết kế hệ thống báo cáo vừa phục vụ tra cứu đối soát vừa phục vụ phân tích điều hành:**
   Việc kết hợp hài hòa giữa các bảng dữ liệu đối soát chi tiết (Báo cáo kết quả kinh doanh, Báo cáo xếp hạng ASM) với các phân hệ phân tích trực quan đa chiều và báo cáo chuyên sâu giúp giải quyết trọn vẹn nhu cầu của cả bộ phận nghiệp vụ lẫn Ban Điều Hành.

5. **Hiểu rõ giới hạn của dữ liệu để tránh kết luận vội vàng:**
   Khi dữ liệu nợ xấu trên sao kê thẻ chỉ gắn mã chi nhánh ở cấp vùng, chưa thể xác định đến từng hợp đồng của từng ASM, báo cáo cần nêu rõ giới hạn này (và phân tích minh bạch tác động của điểm phạt vùng trong phần đề xuất điều hành) để lãnh đạo ra quyết định nhân sự công bằng, sát thực tế.

---

## 8. 🛠️ Công cụ và công nghệ sử dụng

Các công cụ được lựa chọn bám sát 3 giai đoạn trong sơ đồ **`QUY TRÌNH XỬ LÝ KỸ THUẬT`**:

| Công nghệ | Thành phần | Vai trò kỹ thuật trong dự án | Lý do lựa chọn |
|---|---|---|---|
| **Microsoft Excel** | 3 File Số Liệu Đầu Vào (`.xlsx`) | Cung cấp 3 nguồn dữ liệu thô đầu vào: `1. Dữ liệu hạch toán mỗi tháng (GL)`, `2. Dữ liệu sao kê thẻ mỗi tháng` và `3. Dữ liệu kết quả sale của ASM mỗi tháng` | Định dạng tệp dữ liệu gốc xuất ra từ hệ thống tác nghiệp của các phòng ban nghiệp vụ ngân hàng |
| **DBeaver 24** | Data Import, ER Diagram | Thực hiện **`Import`** trực tiếp dữ liệu từ 3 file Excel đầu vào (117,2 MB) vào 3 bảng `staging` trong PostgreSQL, quản lý 9 khoá ngoại ảo và chạy kịch bản SQL | Công cụ quản trị cơ sở dữ liệu trực quan, hỗ trợ nạp tệp dữ liệu lớn nhanh chóng và kiểm tra sơ đồ quan hệ |
| **PostgreSQL 16** | PL/pgSQL, 11 Stored Procedure | Lưu trữ kho dữ liệu Star Schema (19 bảng, 3 `view`), thực thi tự động logic phân bổ chi phí Hội sở (Rule 1 & Rule 2) và chấm điểm xếp hạng ASM | Xử lý tập dữ liệu gần 3 triệu dòng với độ chính xác số học tuyệt đối và kiểm soát transaction chặt chẽ |
| **Power BI Desktop** | DirectQuery, 100 Measure DAX, HTML Content | Xây dựng hệ thống **7 trang báo cáo quản trị** (xoay quanh **4 Dashboard đầu ra trọng tâm**, cùng trang Giới thiệu đề tài, Từ điển **68** chỉ tiêu và trang Phân tích chuyên sâu `INSIGHT`) | Giúp Ban Điều Hành và các phòng ban vừa tra cứu, đối soát số liệu chi tiết vừa phân tích tương tác bằng biểu đồ trực quan |

---

## 9. 📂 Cấu trúc thư mục dự án

Dự án được tổ chức thành các thư mục chính:

```text
.
├── sql/                # Mã nguồn SQL tạo bảng, bảng tạm, thủ tục lưu trữ và khung nhìn báo cáo
│   ├── dim/            # Khởi tạo bảng staging và bảng danh mục: init_staging_tables, dim_area, dim_month_headcount, dim_asm, dim_report_detail
│   ├── tmp/            # Bảng tạm và thủ tục tính trung gian cho P&L (step 1-3) và Xếp hạng ASM (step 1-3)
│   ├── fct/            # Bảng sự kiện chính và thủ tục điều phối: fct_pnl_allocation, fct_xephang_asm, sp_pipeline
│   └── rpt/            # 3 khung nhìn báo cáo sạch: rpt_pnl_view, rpt_xephang_view, rpt_pnl_excel_pivoted_view
├── images/             # Sơ đồ quy trình kỹ thuật 3 giai đoạn và kiến trúc kho dữ liệu Star Schema
├── docs/               # Bộ tài liệu vận hành chi tiết: HIEN_TRANG_HE_THONG, PIPELINE, NHAT_KY_CONG_VIEC, LOI_THUONG_GAP
├── output/             # Sản phẩm báo cáo quản trị đầu ra trên Power BI (.pbix)
├── README.md           # Tài liệu dự án bằng tiếng Việt (mặc định)
└── README_eng.md       # Tài liệu dự án bằng tiếng Anh
```

---

## 10. 📖 Tài liệu dự án

Tài liệu hướng dẫn và ghi chép dự án được lưu trong thư mục `docs/`:
- [`docs/HIEN_TRANG_HE_THONG.md`](docs/HIEN_TRANG_HE_THONG.md) — Chi tiết hiện trạng kho dữ liệu, số dòng của 19 bảng và 3 `view`, mô hình Power BI 100 measure DAX và các mốc đối soát chuẩn.
- [`docs/PIPELINE.md`](docs/PIPELINE.md) — Kiến trúc luồng xử lý kỹ thuật 3 giai đoạn và hướng dẫn chạy kiểm tra dữ liệu.
- [`docs/NHAT_KY_CONG_VIEC.md`](docs/NHAT_KY_CONG_VIEC.md) — Nhật ký chi tiết các hạng mục công việc đã thực hiện qua từng giai đoạn phát triển.
- [`docs/LOI_THUONG_GAP.md`](docs/LOI_THUONG_GAP.md) — Tổng hợp **58 tình huống lỗi thường gặp** trong quá trình xử lý dữ liệu nguồn, SQL, Python và DAX.

---

## 11. 👤 Tác giả

<div align="center">

**Trần Ngọc Đức** · [Email](mailto:tranduc22104@gmail.com) · [LinkedIn](https://www.linkedin.com/in/tr%E1%BA%A7n-ng%E1%BB%8Dc-%C4%91%E1%BB%A9c-48b3a7439/)

</div>
