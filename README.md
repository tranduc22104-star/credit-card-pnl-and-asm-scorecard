<div align="center">

# Báo cáo quản trị lãi lỗ thẻ tín dụng và xếp hạng Quản lý vùng (ASM)

**Ngôn ngữ / Language**: **Tiếng Việt** · [English](README_eng.md)

<p>
  <img src="https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white">
  <img src="https://img.shields.io/badge/DBeaver-382923?style=for-the-badge&logo=dbeaver&logoColor=white">
  <img src="https://img.shields.io/badge/Power%20BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black">
  <img src="https://img.shields.io/badge/Excel-217346?style=for-the-badge&logo=microsoftexcel&logoColor=white">
</p>

</div>

## 📑 Mục lục

1. [🏢 Bài toán đặt ra từ Ban Điều Hành](#1--bài-toán-đặt-ra-từ-ban-điều-hành)
2. [🎯 Từ yêu cầu ban đầu đến bộ báo cáo đầu ra](#2--từ-yêu-cầu-ban-đầu-đến-bộ-báo-cáo-đầu-ra)
3. [🔍 Nguồn dữ liệu và những chỗ vướng khi xử lý](#3--nguồn-dữ-liệu-và-những-chỗ-vướng-khi-xử-lý)
4. [🧮 Cách chia chi phí Hội sở và chấm điểm Quản lý vùng](#4--cách-chia-chi-phí-hội-sở-và-chấm-điểm-quản-lý-vùng)
5. [🔄 Quy trình xử lý dữ liệu và 7 trang báo cáo Power BI](#5--quy-trình-xử-lý-dữ-liệu-và-7-trang-báo-cáo-power-bi)
6. [📊 Những điểm đáng chú ý và đề xuất điều hành](#6--những-điểm-đáng-chú-ý-và-đề-xuất-điều-hành)
7. [📚 Bài học rút ra khi làm dự án](#7--bài-học-rút-ra-khi-làm-dự-án)
8. [🛠️ Công cụ và công nghệ sử dụng](#8--công-cụ-và-công-nghệ-sử-dụng)
9. [📂 Cấu trúc thư mục dự án](#9--cấu-trúc-thư-mục-dự-án)
10. [📖 Tài liệu chi tiết kèm theo](#10--tài-liệu-chi-tiết-kèm-theo)
11. [👤 Tác giả](#11--tác-giả)

---

## 1. 🏢 Bài toán đặt ra từ Ban Điều Hành

### Hoạt động mảng thẻ tín dụng hiện tại
Mảng thẻ tín dụng của ngân hàng được chia về **7 vùng kinh doanh** trên cả nước. Mỗi vùng có đội ngũ Quản lý vùng (Area Sales Manager - ASM) phụ trách bán hàng và giữ chất lượng khách hàng. Tùy từng tháng, toàn hàng có từ **74 đến 84 ASM** đang hoạt động.

### Đề bài từ Ban Điều Hành
Dự án bắt đầu từ một yêu cầu khá rộng:
> *"**Ban Điều Hành** cần một **hệ thống báo cáo quản trị** để theo dõi kết quả kinh doanh thẻ tín dụng ở từng vùng và **đánh giá công bằng hiệu quả làm việc** của đội ngũ **Quản lý vùng (ASM)**."*

Đề bài ban đầu chỉ nêu mong muốn chung như vậy, chưa có công thức tính sẵn, chưa có bảng điểm mẫu hay mẫu báo cáo. Khi bắt tay vào làm, nhóm phải tự giải quyết năm việc còn trống:
- Chưa có cách tính xem từng vùng thực sự lãi hay lỗ bao nhiêu.
- Chưa có nguyên tắc chia các khoản chi phí chung đang hạch toán tập trung ở Hội sở về cho 7 vùng.
- Chưa chốt được bộ chỉ tiêu vừa đo sức bán hàng vừa đo rủi ro nợ xấu.
- Chưa có thước đo công bằng để đánh giá Quản lý vùng.
- Chưa có cách chấm điểm, xếp hạng và mẫu biểu trình bày rõ ràng.

### Ba bất cập trên báo cáo sổ sách cũ
Khi đọc lại số liệu kế toán trước đây, có ba điểm vướng lớn dễ khiến người quản lý hiểu nhầm:

1. **Vùng nào nhìn trên sổ cũng tưởng có lãi:**
   Khoản thu từ lãi thẻ và phí mở thẻ thì ghi thẳng về từng chi nhánh, nhưng nhiều khoản chi lớn như chi phí vốn, tiếp thị, công nghệ hay lương khối hỗ trợ lại dồn hết lên Hội sở. Nếu không chia phần chi phí chung này về lại cho 7 vùng, báo cáo sẽ đẹp một cách giả tạo: cả 7 vùng đều lãi, không thấy vùng nào đang lỗ ngầm.

2. **Chấm điểm theo doanh số dễ khiến nhân viên chạy ẩu:**
   Nếu chỉ nhìn số tiền giải ngân mới hay số thẻ mở thêm để khen thưởng, người bán sẽ dễ nới lỏng khâu duyệt hồ sơ để chạy chỉ tiêu. Tháng đầu doanh số vọt lên rất đẹp, nhưng vài tháng sau nợ xấu phình ra và tiền dự phòng sẽ ăn sạch phần lãi đó.

3. **Số kế toán gộp lũy kế nên khó nhìn ra biến động từng tháng:**
   Sổ sách cũ thường cộng dồn từ đầu năm đến thời điểm xem báo cáo, không tách riêng con số phát sinh của từng tháng. Vì vậy, rất khó biết tháng này lãi tăng lên là nhờ bán thẻ tốt hơn thật, hay chỉ nhờ chi phí dự phòng giảm đi bất thường.

Để giải quyết trọn vẹn ba điểm vướng trên, hệ thống báo cáo tập trung trả lời 5 câu hỏi sát sườn với việc điều hành:

| Khía cạnh | Câu hỏi cần trả lời rõ | Đầu ra của báo cáo |
|---|---|---|
| **Lãi lỗ thật của từng vùng** | Sau khi gánh đủ phần chi phí Hội sở, vùng nào lãi thật và vùng nào đang lỗ? | Lập bảng lãi lỗ đầy đủ của 7 vùng và Hội sở |
| **Lý do lãi tăng hay giảm** | Tháng này lãi đổi chiều là do thu nhập tăng, chi phí giảm hay do dự phòng? | Tách riêng số từng tháng và dựng biểu đồ từng bước hình thành lợi nhuận |
| **An toàn nợ xấu** | Vùng nào đang có dấu hiệu nợ xấu tăng nhanh cần siết lại ngay? | Theo dõi 5 nhóm nợ, nợ đã xóa ngoại bảng và tỷ lệ nợ xấu từng vùng |
| **Năng lực Quản lý vùng** | Ai vừa bán khỏe vừa giữ được nợ xấu thấp, ai chỉ chạy doanh số? | Bảng điểm xếp hạng từ 74 đến 84 người theo cả bán hàng và tài chính vùng |
| **Cách tra cứu và đối soát** | Làm sao để xem nhanh, đối chiếu khớp từng đồng với sổ cái và quyết định kịp thời? | Bộ 7 trang báo cáo trên Power BI đồng bộ số liệu với PostgreSQL |

---

## 2. 🎯 Từ yêu cầu ban đầu đến bộ báo cáo đầu ra

Thay vì nhảy thẳng vào vẽ biểu đồ, mình chia đề bài của Ban Điều Hành thành hai luồng song song để xử lý cho rành mạch: một luồng tính đúng lãi lỗ từng vùng, một luồng chấm điểm công bằng đội ngũ Quản lý vùng.

| Giai đoạn | Luồng 1: Tính lãi lỗ 7 vùng (P&L) | Luồng 2: Chấm điểm Quản lý vùng (ASM) |
|---|---|---|
| **Bước 1: Nắm rõ đề bài** | Cần nhìn ra lãi lỗ thực chất của mảng thẻ tín dụng tại 7 vùng sau khi chia hết chi phí chung | Cần xếp hạng công bằng từ **74 – 84** Quản lý vùng (ASM) để khen đúng người và hỗ trợ đúng chỗ |
| **Bước 2: Chọn chỉ tiêu cốt lõi** | • Tách rõ tiền thu từ thẻ, chi phí vốn, chi phí vận hành và chi phí dự phòng nợ xấu.<br>• Chia phần chi phí chung đang treo ở Hội sở về 7 vùng theo tỷ lệ sát thực tế như dư nợ, số lượng thẻ và quân số.<br>• Theo dõi thêm các tỷ lệ gọn: tỷ lệ chi phí trên thu nhập (`CIR`), biên lãi (`Margin`), mức sinh lời trên đồng vốn và năng suất mỗi quản lý. | • **Kết quả bán hàng cá nhân**: Doanh số mở thẻ mới (`LTN`), số khách hàng phát sinh dư nợ (`PSDN`), tỷ lệ duyệt hồ sơ.<br>• **Trách nhiệm với tài chính và nợ xấu của vùng**: Tỷ lệ nợ xấu mở rộng (`NPL`), tỷ lệ chi phí (`CIR`), biên lãi, hiệu suất vốn và lợi nhuận bình quân mỗi quản lý, tránh tình trạng mở thẻ ồ ạt mặc kệ nợ xấu. |
| **Bước 3: Đưa lên báo cáo Power BI** | • **Trang 2 – Từ điển dữ liệu**: Giải thích sẵn **68** chỉ tiêu thuộc 5 nhóm để mọi người hiểu thống nhất một cách gọi.<br>• **Trang 3 – Bảng lãi lỗ lũy kế vùng**: Bảng đối soát **32** chỉ tiêu của `HỘI SỞ (Phân Bổ)`, 7 vùng và `Tổng`, tích hợp **21** công thức tự tô màu nổi dòng lãi/lỗ.<br>• **Trang 4 – Đánh giá hiệu quả kinh doanh vùng**: Gồm **5** thẻ KPI tách rõ số trong tháng và số lũy kế, biểu đồ thác nước **8** bước trong tháng, biểu đồ bong bóng và xu hướng theo tháng. | • **Trang 5 – Báo cáo xếp hạng ASM**: Bảng tổng hợp đủ **26** cột đối chiếu cho **74 – 84** Quản lý vùng theo điểm quy mô (`diem_qm`) và điểm tài chính vùng (`diem_fin`).<br>• **Trang 6 – Đánh giá năng lực ASM**: Biểu đồ mạng nhện xem riêng Top 3 đứng đầu, Top 3 cuối bảng, mặt bằng **7** vùng và chia sẵn 4 nhóm (*Bán tốt - Nợ thấp*, *Bán tốt - Nợ cao*, *Bán chậm - Nợ thấp*, *Bán kém - Nợ cao*).<br>• **Trang 7 – Kết quả toàn doanh nghiệp & Đề xuất**: Tổng hợp **4** thẻ KPI lớn, thác nước lợi nhuận toàn hàng, giải thích vì sao Đông Nam Bộ lỗ **−48,8 tỷ** kéo **84%** quản lý vùng rớt xuống cuối bảng (phạt **+26 điểm**) và bảng hành động 5 vùng. |

### Giá trị thực tế khi ghép hai luồng lại với nhau
- **Nhìn rõ lãi thật – lỗ thật của từng vùng (32 dòng lãi lỗ, tỷ lệ chi phí, biên lãi, sinh lời trên vốn):** Ban Điều Hành không còn bị đánh lừa bởi số trước khi chia chi phí Hội sở, từ đó giao chỉ tiêu và phân bổ ngân sách sát thực tế hơn.
- **Thưởng phạt quản lý đi đôi với an toàn nợ xấu (8 chỉ tiêu xếp hạng ASM):** Người bán thẻ giỏi nhưng làm vùng ngập trong nợ xấu vẫn bị trừ điểm rõ ràng, còn người vừa bán tốt vừa giữ nợ sạch sẽ đứng đầu bảng.

---

## 3. 🔍 Nguồn dữ liệu và những chỗ vướng khi xử lý

### Ba tệp dữ liệu đầu vào
Trong ngân hàng không có sẵn một bảng ghép chung cho cả báo cáo lãi lỗ lẫn bảng điểm nhân sự, nên dự án lấy dữ liệu từ **3 tệp Excel** của các bộ phận nghiệp vụ:

| STT | Tên nguồn dữ liệu | Bảng trong kho & Số dòng | **CHỨA GÌ?** (Nội dung bên trong) | **DÙNG LÀM GÌ?** (Vai trò trong báo cáo) |
|:---:|---|---|---|---|
| **1** | **Dữ liệu hạch toán mỗi tháng (GL)** | `fact_txn_month`<br>(**63.134** dòng / 63 nghìn dòng) | **Sổ ghi thu – chi thực tế tại 7 vùng và Hội sở**, gồm **62.953** dòng gắn sẵn mã tỉnh thành và **181** dòng chi chung tại Hội sở mang mã `'00'`. Khóa ghép: `city_code`, `account_code`. | **Lập bảng lãi lỗ (P&L) của 7 vùng**: Cộng thẳng các dòng có mã tỉnh và chia phần chi Hội sở về từng vùng. |
| **2** | **Dữ liệu sao kê thẻ mỗi tháng** | `fact_kpi_month`<br>(**2.932.922** dòng / 2,9 triệu dòng, **117,2 MB**) | **Chi tiết từng hợp đồng thẻ suốt 5 tháng**: dư nợ còn lại, nhóm nợ từ nhóm 1 đến nhóm 5, nợ đã xóa ngoại bảng (*write-off*) và trạng thái có phát sinh dư nợ. Khóa ghép: `branch_code`, `month_key`. | **Tính tỷ lệ chia chi phí Hội sở và đo nợ xấu**: Lấy tỷ trọng dư nợ, số thẻ đang hoạt động để chia chi phí chung và tính tỷ lệ nợ xấu mở rộng cho 7 vùng. |
| **3** | **Dữ liệu kết quả sale của ASM mỗi tháng** | `kpi_asm_data`<br>(**420** dòng cho **84** quản lý trong 5 tháng) | **Thành tích bán hàng hàng tháng của 74 đến 84 ASM**: doanh số giải ngân mới, số khách hàng có dư nợ bình quân và tỷ lệ duyệt hồ sơ. Khóa ghép: `asm_id`, `month_key`. | **Chấm điểm phần bán hàng của ASM**: Tính điểm quy mô kinh doanh (`diem_qm`) rồi ghép với điểm tài chính vùng (`diem_fin`) ra xếp hạng chung cuộc. |

*(Đi kèm 3 nguồn số liệu chính trên còn có bảng tham số ghép **64** tỉnh thành vào **8** khu vực quản lý gồm Hội sở `'A'` và 7 vùng `'B'..'H'`, danh mục **55** dòng chỉ tiêu trong `dim_report_detail` và từ điển **68** chỉ tiêu giải thích chi tiết).*

### Dữ liệu có đủ dùng để làm trọn vẹn 7 trang báo cáo không?

| Trang báo cáo cần dựng | Cần những số liệu nào? | Lấy từ đâu? | Cách xử lý để ghép khớp |
|---|---|---|---|
| **01. Bảng lãi lỗ vùng** & **03. Đánh giá hiệu quả vùng** | Khoản thu, khoản chi, mã tỉnh, mã tài khoản kế toán, tỷ lệ chia chi phí Hội sở | `1. Dữ liệu hạch toán mỗi tháng (GL)` & `2. Dữ liệu sao kê thẻ mỗi tháng` | Gán thẳng 62.953 dòng có mã tỉnh về 7 vùng; lấy dư nợ và số thẻ từ 2.932.922 dòng sao kê để chia 181 dòng chi chung ở Hội sở (mã `'00'`) |
| **Đo nợ xấu (NPL) của 7 vùng** | Dư nợ 5 nhóm nợ và nợ đã xóa ngoại bảng theo chi nhánh | `2. Dữ liệu sao kê thẻ mỗi tháng` (`fact_kpi_month`) | Nhờ mỗi hợp đồng thẻ đều có mã chi nhánh nên cộng lên đúng từng vùng qua suốt 5 tháng |
| **02. Bảng xếp hạng ASM** & **04. Đánh giá năng lực ASM** (phần bán hàng) | Doanh số mở mới, số khách có dư nợ, tỷ lệ duyệt thẻ của từng quản lý | `3. Dữ liệu kết quả sale của ASM mỗi tháng` (`kpi_asm_data`) | Có đủ số từng tháng của 74 đến 84 người nên chấm điểm cá nhân trực tiếp được ngay |
| **Phần tài chính & nợ xấu trong bảng điểm ASM** | Tỷ lệ nợ xấu mở rộng, tỷ lệ chi phí `CIR`, biên lãi, sinh lời trên vốn, lợi nhuận bình quân mỗi quản lý | Ghép kết quả vùng từ `fact_txn_month` và `fact_kpi_month` | Vì hợp đồng thẻ chỉ ghi mã chi nhánh chứ không ghi tên nhân viên ASM, phần tài chính và nợ xấu phải tính chung theo cả vùng rồi áp cho các ASM đang phụ trách vùng đó |

### Ba điểm vướng của dữ liệu thô khi mới nhận về:
1. **Tệp sao kê thẻ quá nặng, mở Excel là treo:** Tệp có gần 3 triệu dòng (**2.932.922 dòng**, nặng **117,2 MB**), không thể xoay bảng hay nối dữ liệu trên bảng tính thông thường mà phải đưa vào PostgreSQL xử lý.
2. **Tệp kết quả bán hàng của ASM bị trải ngang (Wide):** Số liệu từ tháng 1 đến tháng 5 nằm dàn sang nhiều cột cạnh nhau nên trước khi đưa vào kho dữ liệu phải xoay dọc lại thành từng dòng theo tháng.
3. **Tên tỉnh thành giữa hai tệp viết không giống nhau:** Sao kê thẻ ghi `"Bà Rịa - Vũng Tàu"` trong khi bảng danh mục lại ghi `"Vũng Tàu"`. Nếu ghép trực tiếp mà không làm sạch tên tỉnh trước (`pos_city_norm`), hơn **36.000 hợp đồng thẻ** sẽ bị rơi mất khỏi vùng Đông Nam Bộ, làm sai hoàn toàn tỷ lệ nợ xấu của cả vùng.

---

## 4. 🧮 Cách chia chi phí Hội sở và chấm điểm Quản lý vùng

**Xuất phát điểm:** Ban Điều Hành không đưa sẵn công thức chia chi phí hay thang điểm mẫu. Nhóm làm dự án phải tự ngồi phân tích bản chất từng khoản tiền thu – chi và cách đánh giá nhân sự tín dụng sao cho công bằng, hợp lý nhất.

### 4.1. Cách lập bảng lãi lỗ cho 7 vùng (xử lý phần chi phí Hội sở)

Khó nhất khi tính lãi lỗ từng vùng là xử lý đống chi phí lớn đang nằm tập trung tại Hội sở. Mình giải quyết qua 9 bước gọn gàng:
1. Rà toàn bộ 63.134 bút toán trong **Dữ liệu hạch toán mỗi tháng (GL)**.
2. Nhặt riêng những dòng đã có mã tỉnh hoặc mã chi nhánh cụ thể để cộng thẳng vào vùng tương ứng.
3. Tách riêng các dòng đang treo ở Hội sở (mã tỉnh `'00'`, khu vực `'A'`).
4. Xem bản chất từng khoản: tiền đó chi cho việc gì (chi phí vốn, vận hành thẻ, bảo hiểm hay lương nhân sự hỗ trợ).
5. Chọn tiêu chí chia chi phí hợp lý dựa trên mức sử dụng thực tế của từng vùng.
6. Kiểm tra xem các tiêu chí đó có tính được trực tiếp từ **Dữ liệu sao kê thẻ mỗi tháng** và bảng định biên nhân sự hay không.
7. Chốt công thức tính tỷ lệ phần trăm cho từng vùng theo từng tháng.
8. Viết công thức thành thủ tục tự động chạy trong PostgreSQL.
9. Cộng ngược kết quả của 7 vùng lại, bảo đảm khớp đúng 100% với tổng tiền trên sổ cái ban đầu, không lệch một đồng.

**Hai nguyên tắc chia số liệu cốt lõi:**
- **Quy tắc 1 – Gán trực tiếp (Rule 1):** **62.953** dòng thu – chi nào có sẵn mã tỉnh thì đưa thẳng về vùng quản lý tỉnh đó (lãi trong hạn, lãi quá hạn, phí bảo hiểm, phí tăng hạn mức, phí trả chậm và chi phí trực tiếp tại địa bàn).
- **Quy tắc 2 – Chia phần Hội sở theo tỷ trọng (Rule 2):** **181** dòng chi chung ở Hội sở sẽ được chia về 7 vùng theo tỷ lệ của tiêu chí đi kèm:

$$\text{Tỷ lệ chia cho vùng } i = \frac{\text{Giá trị tiêu chí của vùng } i}{\sum_{k=1}^7 \text{Giá trị tiêu chí của vùng } k}$$

$$\text{Tiền Hội sở chia về vùng } i = \text{Khoản tiền ở Hội sở} \times \text{Tỷ lệ chia cho vùng } i$$

*Chọn tiêu chí nào cho khoản nào (tất cả được ghi chi tiết ở cột `Công Thức / Cách Tính` trong Từ điển dữ liệu):*
- **Chi phí vốn, lãi trong hạn và phí tăng hạn mức từ Hội sở:** Chi phí chuyển vốn nội bộ để cho vay thẻ nhiều hay ít phụ thuộc vào phần dư nợ tốt đang sinh lời $\rightarrow$ Chia theo **Dư nợ bình quân nhóm 1 (nợ đủ tiêu chuẩn sau xóa nợ)**. Vùng nào cho vay tốt nhiều thì gánh chi phí vốn tương ứng.
- **Lãi quá hạn từ Hội sở:** Sinh ra từ những thẻ mới bắt đầu chậm trả $\rightarrow$ Chia theo **Dư nợ bình quân nhóm 2**.
- **Chi phí dự phòng rủi ro, phí chậm trả và thu hồi nợ ngoại bảng:** Khoản dự phòng đặt ra để bù cho các khoản có nguy cơ mất vốn $\rightarrow$ Chia theo **Dư nợ bình quân từ nhóm 2 đến nhóm 5 cộng với nợ đã xóa ngoại bảng** (`d25_sau` hoặc `dtruoc`). Nhìn vào đây biết ngay vùng nào có nhiều nợ xấu tiềm ẩn sẽ phải gánh dự phòng nhiều hơn.
- **Phí bảo hiểm thẻ, chi phí công nghệ và vận hành hệ thống thẻ:** Chi phí chạy máy chủ, phần mềm lõi thẻ và hoa hồng bán kèm thẻ gắn với số lượng thẻ đang xài $\rightarrow$ Chia theo **Số lượng thẻ phát sinh dư nợ bình quân** (`psdn`) ở mỗi vùng.
- **Chi phí lương, quản lý và tài sản của khối hỗ trợ ở Hội sở:** Lương thưởng bộ phận văn phòng Hội sở hỗ trợ mạng lưới $\rightarrow$ Chia theo **Số lượng quản lý bán hàng (`Sale Manager Headcount`)** đang làm việc tại mỗi vùng.
- *Lưu ý thực tế:* Cách chia này tạm giả định chi phí chia đều theo tỷ lệ trung bình giữa các vùng, chưa tách riêng được các khoản chi tiếp thị nhỏ lẻ riêng của từng tỉnh.

*Cách tách số riêng từng tháng từ số cộng dồn đầu năm:*
Vì sổ cái cộng dồn từ tháng 1 đến tháng hiện tại, muốn xem tháng này làm ăn riêng thế nào thì chỉ cần lấy số lũy kế tháng này trừ đi lũy kế tháng trước:
$$V_{\text{tháng } M} = V_{\text{lũy kế } M} - V_{\text{lũy kế } (M-1)}$$

### 4.2. Cách chấm điểm và xếp hạng Quản lý vùng (ASM)

Để tránh chuyện người chỉ biết chạy doanh số, mở thẻ cho khách yếu rồi để nợ xấu bùng phát vẫn được khen thưởng, bảng điểm được thiết kế cân bằng giữa **năng lực bán hàng cá nhân** và **sức khỏe tài chính, nợ xấu của vùng mình phụ trách**.

**Ghép 8 chỉ tiêu chia đều vào 2 nhóm (mỗi nhóm 4 chỉ tiêu):**
Mỗi chỉ tiêu đều được đem đi xếp hạng riêng từ `1` đến hết toàn hàng (chỉ tiêu nào "càng cao càng tốt" thì người cao nhất được 1 điểm; chỉ tiêu nào "càng thấp càng tốt" như nợ xấu, chi phí thì người thấp nhất được 1 điểm):
- **Nhóm 1: Bán hàng và giữ chất lượng (`diem_qm` – Điểm Quy mô kinh doanh):** Gồm **3** chỉ tiêu riêng của từng ASM (`Doanh số giải ngân mới bình quân`, `Số khách có dư nợ bình quân – PSDN`, `Tỷ lệ duyệt hồ sơ`) ghép với **1** chỉ tiêu giữ an toàn của vùng (`Tỷ lệ nợ xấu mở rộng – NPL vùng`). **Lưu ý: Tỷ lệ duyệt hồ sơ cao chưa hẳn đã hay!** Duyệt nhiều có thể vì chọn được khách tốt, nhưng cũng có thể do dễ dãi cho qua hồ sơ yếu — nên phải đặt cạnh tỷ lệ nợ xấu để soi chéo.
- **Nhóm 2: Hiệu quả tài chính địa bàn (`diem_fin` – Điểm Tài chính):** Gồm **4** chỉ tiêu lấy từ báo cáo lãi lỗ vùng sau khi đã chia chi phí Hội sở (`Tỷ lệ chi phí/thu nhập – CIR`, `Biên lợi nhuận – Margin`, `Mức sinh lời trên vốn`, `Lợi nhuận bình quân mỗi quản lý`). Do dữ liệu sao kê thẻ không gắn mã nhân viên bán thẻ, 4 chỉ tiêu này tính theo cả vùng rồi dùng chung cho mọi ASM trong vùng, giúp ai cũng có trách nhiệm chung với kết quả lãi lỗ nơi mình quản lý.

**Cách tính tỷ lệ nợ xấu mở rộng (tính cả nợ đã xóa khỏi sổ):**
Trong thủ tục SQL (`report_id = 204`), tỷ lệ nợ xấu không chỉ đếm nợ trên sổ mà cộng ngược cả khoản nợ xấu đã đem đi xử lý ngoại bảng (*write-off*) từ đầu năm:

$$\text{Tỷ lệ nợ xấu mở rộng (NPL)} = \frac{\text{Dư nợ nhóm 3–5} + \text{Nợ đã xóa ngoại bảng lũy kế}}{\text{Tổng dư nợ} + \text{Nợ đã xóa ngoại bảng lũy kế}} \times 100$$

Tại sao phải làm vậy? Vì nếu chỉ nhìn nợ trên sổ, cứ hễ xóa bớt nợ xấu ra ngoại bảng là tỷ lệ nợ xấu nhìn lại đẹp ngay một cách giả tạo. Cộng ngược phần đã xóa ngoại bảng giúp thấy đúng thực chất rủi ro của vùng. *(Điểm cần lưu ý: những vùng mở thẻ lâu năm sẽ tích lũy số nợ đã xóa từ các tháng trước nhiều hơn vùng mới mở.)*

| Nhóm 1: Bán hàng & Giữ chất lượng (`diem_qm`) | Nhóm 2: Hiệu quả tài chính địa bàn (`diem_fin`) |
|---|---|
| • **Doanh số mở mới bình quân (`ltn_avg`)** *(Càng cao càng tốt)*<br>• **Số thẻ có dư nợ bình quân (`psdn_avg`)** *(Càng cao càng tốt)*<br>• **Tỷ lệ duyệt hồ sơ bình quân (`approval_rate_avg`)** *(Phải xem cùng nợ xấu)*<br>• **Tỷ lệ nợ xấu mở rộng (`npl_truoc_wo_luy_ke`)** *(Càng thấp càng tốt — gồm cả nợ xóa ngoại bảng)* | • **Tỷ lệ chi phí trên thu nhập (`CIR`)** *(Càng thấp càng tốt)*<br>• **Biên lợi nhuận (`Margin`)** *(Càng cao càng tốt)*<br>• **Mức sinh lời trên vốn (`hs_von`)** *(Càng cao càng tốt)*<br>• **Lợi nhuận bình quân/SM (`hs_nhan_su`)** *(Càng cao càng tốt — gắn trách nhiệm vùng)* |

**Bảng tóm tắt 8 chỉ tiêu chấm điểm ASM:**

| Chỉ tiêu | Đo điều gì? | Ý nghĩa thực tế | Nguồn lấy số | Tốt hơn khi | Mức tính | Điểm cần lưu ý |
|---|---|---|---|---|---|---|
| **Doanh số cho vay mới** | Sức bán hàng trực tiếp | Thấy rõ mỗi tháng mang về bao nhiêu dư nợ mới | `3. Dữ liệu kết quả sale ASM` | Càng cao càng tốt | Từng ASM | Chưa trừ các thẻ mở xong rồi khách hủy |
| **Số thẻ có dư nợ (`PSDN`)** | Thẻ khách có xài thật | Đo lượng khách đang dùng thẻ chứ không phải thẻ chết | `3. Dữ liệu kết quả sale ASM` | Càng cao càng tốt | Từng ASM | Cần tính thêm chi phí làm và duy trì thẻ |
| **Tỷ lệ duyệt hồ sơ** | Độ chặt khi lọc khách | Cho biết cứ 100 hồ sơ nộp vào thì duyệt bao nhiêu | `3. Dữ liệu kết quả sale ASM` | Xem kèm tỷ lệ nợ xấu | Từng ASM | Quá cao dễ kéo theo rủi ro nới lỏng duyệt |
| **Tỷ lệ nợ xấu mở rộng (`NPL`)** | Chất lượng khách hàng | Đo tỷ lệ nợ quá hạn nặng và nợ đã xóa ngoại bảng | `2. Dữ liệu sao kê thẻ` | Càng thấp càng tốt | Cả vùng | Hợp đồng thẻ không ghi tên ASM nên tính theo vùng |
| **Tỷ lệ chi phí/thu nhập (`CIR`)** | Tiết kiệm chi phí vận hành | Chi ra bao nhiêu đồng chi phí để thu về 100 đồng thu nhập | `1. Sổ cái kế toán GL` | Càng thấp càng tốt | Cả vùng | Chịu ảnh hưởng một phần từ tỷ lệ chia Hội sở |
| **Biên lợi nhuận (`Margin`)** | Độ dày lợi nhuận | Trên tổng doanh thu thẻ, giữ lại được bao nhiêu phần trăm lãi | `1. Sổ cái kế toán GL` | Càng cao càng tốt | Cả vùng | Nhạy cảm khi giá vốn nội bộ thay đổi |
| **Mức sinh lời trên vốn** | Hiệu quả đồng vốn | Cứ bỏ 1 đồng chi phí vốn thì thu về được bao nhiêu đồng lãi | `1. GL` & `2. Sao kê thẻ` | Càng cao càng tốt | Cả vùng | Phản ánh hiệu quả dùng vốn chung toàn vùng |
| **Lợi nhuận bình quân/SM** | Năng suất theo đầu người | Bình quân mỗi quản lý bán hàng mang lại bao nhiêu triệu lãi | `1. GL` & Định biên nhân sự | Càng cao càng tốt | Cả vùng | Chia theo số định biên quản lý của vùng |

*Cách cộng tổng điểm khi các chỉ tiêu khác đơn vị:*
Vì một bên tính bằng triệu đồng, một bên đếm số thẻ, một bên tính phần trăm nên không cộng trực tiếp số thô được. Mỗi chỉ tiêu được xếp hạng từ `1` đến `N` trong toàn hàng (Hạng `1` là tốt nhất, Hạng `N` là kém nhất), sau đó cộng hết thứ hạng lại:
$$\text{Tổng Điểm} = \text{Điểm Quy Mô } (diem\_qm) + \text{Điểm Tài Chính } (diem\_fin)$$
Người nào có **Tổng Điểm càng nhỏ thì Thứ Hạng chung cuộc càng cao** (`#1` là người có Tổng Điểm thấp nhất).

---

## 5. 🔄 Quy trình xử lý dữ liệu và 7 trang báo cáo Power BI

Toàn bộ dữ liệu đi qua 3 bước khép kín từ file Excel thô cho tới 7 trang báo cáo trên Power BI như sơ đồ dưới đây:

<div align="center">

![Sơ đồ quy trình xử lý dữ liệu 3 giai đoạn](images/quy-trinh.png)

</div>

### Chi tiết 3 bước xử lý:

- **Bước 1 – Thu thập 3 nguồn Excel thô (`Excel – 3 File Số Liệu`):**
  1. **Dữ liệu hạch toán mỗi tháng (GL)** (`fact_txn_month` • **63.134** dòng / 63 nghìn dòng): Chứa toàn bộ bút toán thu – chi tại 7 vùng và Hội sở để lập báo cáo lãi lỗ.
  2. **Dữ liệu sao kê thẻ mỗi tháng** (`fact_kpi_month` • **2.932.922** dòng / 2,9 triệu dòng, nặng **117,2 MB**): Chứa dư nợ, nhóm nợ, nợ xóa ngoại bảng và số thẻ đang hoạt động để chia chi phí Hội sở và đo nợ xấu.
  3. **Dữ liệu kết quả sale của ASM mỗi tháng** (`kpi_asm_data` • **420** dòng của **84** ASM qua 5 tháng): Chứa kết quả bán hàng cá nhân để tính điểm quy mô.

- **Bước 2 – Lưu trữ và tính toán tự động trong PostgreSQL (`PostgreSQL + DBeaver`):**
  Kho dữ liệu nằm gọn trong schema `banking_project`, được tổ chức theo mô hình Star Schema gồm **19 bảng, 3 `view` và 11 `stored procedure`**:
  - **Nạp liệu thô (`DBeaver Import`):** Đưa 3 file Excel vào 3 bảng staging (`stg_fact_txn_month` **63.134** dòng, `stg_fact_kpi_month` **2.932.922** dòng, `stg_asm_target` **420** dòng) và chuẩn hóa tên tỉnh thành (`pos_city_norm`), giữ lại đầy đủ hơn **36.000** hợp đồng thẻ ở Bà Rịa - Vũng Tàu.
  - **Tính toán bằng SQL & Stored Procedure:**
    1. *7 bảng danh mục (`dim_`)*: `dim_area` (8 khu vực), `dim_param_area` (64 tỉnh thành), `dim_month` (5 tháng), `dim_date` (151 ngày), `dim_asm` (84 ASM), `dim_report_detail` (55 chỉ tiêu báo cáo), `dim_sm_headcount` (35 dòng quân số SM).
    2. *6 bảng tạm chia 3 bước (`tmp_`)*: Lưu kết quả tính trung gian dạng dọc (`month_key`, `area_code`, `report_id`, `value`) cho luồng lãi lỗ (`tmp_pnl_step1..3`) và luồng xếp hạng ASM (`tmp_xh_step1..3`).
    3. *2 bảng sự kiện (`fct_`)*: `fct_pnl_value` (**1.115** dòng) lưu kết quả lãi lỗ sau phân bổ của Hội sở và 7 vùng; `fct_asm_value` (**8.536** dòng) lưu chi tiết giá trị, điểm số và thứ hạng của từng ASM suốt 5 tháng.
    4. *1 bảng nhật ký chạy tự động (`log_`)*: `log_proc_run` ghi lại lịch sử chạy của 11 thủ tục (**208** bản ghi `START` và `OK`, **0** dòng lỗi `FAIL`), kèm **9** khóa ngoại ảo kiểm tra quan hệ trên DBeaver.
  - **Xuất 3 bảng View sạch (`Schema rpt`) cho Power BI đọc:** `v_baocao_tonghop` (**35** dòng), `v_xephang_asm` (**388** dòng) và `v_baocao_pnl_excel_pivoted` (**160** dòng).

<div align="center">

![Sơ đồ thiết kế kho dữ liệu Star Schema](images/thiet-ke-schema.png)

</div>

- **Bước 3 – Dựng 7 trang báo cáo trên Power BI (`DirectQuery`):**
  Power BI kết nối thẳng vào kho dữ liệu PostgreSQL qua `DirectQuery`, chạy **90 measure DAX** (gồm **89** measure trong `'LAI LO (Visuals & DAX)'` và **1** measure trong `'Data Glossary'`, trong đó có **21** measure tự tô màu nền `PnlTable_BgColor_*` và màu chữ `PnlTable_FontColor_*` cho bảng lãi lỗ). Toàn bộ 7 trang được đồng bộ theo bộ màu **Pure Yellow** (nền kem dịu mắt, nhấn vàng sáng, chữ xanh đậm, số lãi/tốt màu xanh lá, số lỗ/chi phí cao màu đỏ). Cụ thể từng trang:

  1. **Trang 1 – `GIỚI THIỆU ĐỀ TÀI`**: Tóm tắt đề bài của Ban Điều Hành, giới thiệu 4 nhóm báo cáo đầu ra, 3 nguồn dữ liệu đầu vào và gắn sơ đồ quy trình 3 bước từ Excel → PostgreSQL → Power BI.
  2. **Trang 2 – `TỪ ĐIỂN DỮ LIỆU`**: Giải thích **68** chỉ tiêu và biến số thuộc 5 nhóm (`0. Định danh & Phân cấp`, `1. Báo cáo Lãi Lỗ (P&L)`, `2. Chỉ số Tài chính & Nhân sự`, `3. Tiêu thức Phân bổ Hội sở`, `4. Đánh giá & Xếp hạng ASM`) kèm đơn vị tính, ý nghĩa và cách tính để mọi phòng ban đọc chung một chuẩn.
  3. **Trang 3 – `BÁO CÁO KẾT QUẢ KINH DOANH LUỸ KẾ VÙNG` *(Dashboard 01)***: Bảng đối soát **32** chỉ tiêu lũy kế từ đầu năm cho `HỘI SỞ (Phân Bổ)`, **7** vùng kinh doanh (`Đông Bắc Bộ`, `Tây Bắc Bộ`, `Đồng Bằng Sông Hồng`, `Bắc Trung Bộ`, `Nam Trung Bộ`, `Tây Nam Bộ`, `Đông Nam Bộ`) và cột `Tổng`. Dòng `1. Lợi nhuận trước thuế` được tô vàng rực dễ thấy nhất, các dòng tổng cấp 1 tô nền vàng ô-liu đậm chữ trắng/vàng, dòng chi tiết nền kem/trắng, số âm tô chữ đỏ tươi, số `0` tô nhạt mắt.
  4. **Trang 4 – `ĐÁNH GIÁ HIỆU QUẢ KINH DOANH VÙNG` *(Dashboard 03)***: Bóc tách chi tiết thu – chi – dự phòng – lợi nhuận của 7 vùng qua 5 khối trực quan, tách rạch ròi số phát sinh trong tháng và số lũy kế từ đầu năm:
     - *Hàng 5 thẻ KPI lớn:* Dòng số to hiển thị **số phát sinh riêng của tháng đang chọn** (tô xanh lá khi dương/tốt, tô đỏ khi âm hoặc là chi phí) kèm `%` tăng/giảm so với tháng trước, còn dòng phụ ngay bên dưới ghi **số lũy kế từ đầu năm** để khớp thẳng với Trang 3. Tại tháng 5: `Thu nhập hoạt động` đạt **+288.146 triệu** (+1,8% so với tháng 4, lũy kế **1.353.898 triệu**); `Lợi nhuận trước thuế` đạt **+56.798 triệu** (+8,4%, lũy kế **250.450 triệu**); `Chi phí hoạt động` là **-48.577 triệu** (+1,1%, lũy kế **-235.122 triệu**); `Chi phí dự phòng` là **-182.771 triệu** (+0,0%, lũy kế **-868.327 triệu**); `Năng suất bình quân` đạt **+915,7 triệu/người** (+6,0%, lũy kế **4.099,5 triệu/người**).
     - *Biểu đồ thác nước (Waterfall):* Bóc tách số phát sinh **riêng trong tháng 5** qua 4 khoản thu cộng vào (`Thu lãi trong hạn` **355.009** triệu, `Phí bảo hiểm` **6.596** triệu, `Thu dịch vụ thẻ` **21.192** triệu, `Thu lãi quá hạn` **323** triệu) trừ đi 3 khoản chi (`Chi phí vốn & HĐ khác` **-94.975** triệu, `Chi phí hoạt động` **-48.577** triệu, `Chi phí dự phòng` **-182.771** triệu) ra đúng **56.798** triệu Lợi nhuận trước thuế.
     - *Biểu đồ bong bóng:* Đặt Lợi nhuận trước thuế (trục dọc) cạnh Tỷ lệ Chi phí/Thu nhập (`CIR`, trục ngang), độ to bong bóng biểu thị số lượng quản lý bán hàng (`SM`) từng vùng.
     - *Biểu đồ Cột & Đường (Xu hướng lợi nhuận & hiệu quả sử dụng vốn):* Cho thấy đà lợi nhuận từng tháng từ tháng 1 đến tháng 5 (**40.173**, **52.053**, **49.019**, **52.407**, **56.798** triệu) cùng đường Hệ số sinh lời trên vốn (**57,9%**, **82,9%**, **70,2%**, **76,9%**, **80,7%**).
     - *Khung Đánh giá hiệu quả & Điểm cần lưu ý:* Tự động đổi nội dung khi lọc theo Tháng và Khu Vực — khi xem toàn hàng chỉ rõ Tây Nam Bộ dẫn đầu lãi trong tháng với **+37,07 tỷ** (lũy kế **+167,88 tỷ**, gấp **2,9 lần** Đồng Bằng Sông Hồng), Nam Trung Bộ dẫn đầu sinh lời vốn (**233,7%** trong tháng, `CIR` **13,4%**), Đông Nam Bộ lỗ **-8,79 tỷ** trong tháng (lũy kế **-48,76 tỷ**, kéo giảm **15,5%** lãi toàn hàng trong tháng và **19,5%** lũy kế), và nhắc cơ hội bán chéo khi lãi trong hạn chiếm **92,7%** nguồn thu gộp còn dự phòng ngốn **63,4%** thu nhập tháng (**64,1%** lũy kế). Khi bấm lọc 1 vùng bất kỳ, khung tự động chấm hạng `1..7` và viết nhận xét riêng cho vùng đó.
  5. **Trang 5 – `BÁO CÁO XẾP HẠNG ASM` *(Dashboard 02)***: Bảng điểm chi tiết gồm **26** chỉ tiêu đối chiếu của toàn bộ **74 – 84** ASM (quán quân tháng 2 là Hoàng Văn Nam đạt **34 điểm**; tháng 5 cũng là Hoàng Văn Nam đạt **36 điểm**). Người quản lý chỉ cần chọn tháng hoặc vùng là tra được ngay `Tổng Điểm`, `Tổng Hạng` và từng chỉ tiêu nhỏ để khen người xuất sắc, nhắc nhở người tụt lại.
  6. **Trang 6 – `ĐÁNH GIÁ NĂNG LỰC ASM` *(Dashboard 04)***: Dùng biểu đồ mạng nhện (Radar) 4 trục (`Doanh số mở thẻ`, `Khách có dư nợ`, `Tỷ lệ duyệt thẻ`, `Kiểm soát nợ xấu`) chia 4 khối:
     - *Khối 1 – Top 3 dẫn đầu* & *Khối 2 – 3 người cuối bảng*: Tích hợp sẵn 3 nút tab ngay trên góc card để bấm xem chi tiết từng người so với bình quân chung. Trong tháng 5, Quán quân **Hoàng Văn Nam** (Đồng Bằng Sông Hồng) đạt doanh số mở thẻ **5.326 triệu**, **208** khách có dư nợ, tỷ lệ duyệt **53,6%**, nợ xấu **13,9%** (so với bình quân toàn hàng **2.141 triệu**, **101** khách, **42,8%**, **17,3%**); còn ở tháng 2 anh đạt **2.901 triệu**, **176** khách, **47,2%**, **12,8%** (bình quân **986 triệu**, **72** khách, **41,8%**, **15,5%**).
     - *Khối 3 – Năng lực toàn hàng / Theo vùng*: Đặt cạnh 4 thẻ chỉ số bình quân (**179,8 tỷ** tổng doanh số mở thẻ và **8.459** khách có dư nợ trong tháng 5; Bắc Trung Bộ dẫn đầu doanh số bình quân **3.089 triệu/người**, Nam Trung Bộ có nợ xấu thấp nhất **11,2%**).
     - *Khối 4 – Phân nhóm năng lực bán hàng & kiểm soát nợ*: Phân loại **84** quản lý vùng tháng 5 vào 4 nhóm dễ đọc kèm số lượng và ô *Việc cần làm*: **Bán tốt - Nợ thấp (Toàn diện)** (**22** người, **26,2%**), **Bán tốt - Nợ cao (Rủi ro)** (**12** người, **14,3%**), **Bán chậm - Nợ thấp (An toàn)** (**18** người, **21,4%**), **Bán kém - Nợ cao (Nguy cơ)** (**32** người, **38,1%**).
  7. **Trang 7 – `KẾT QUẢ KINH DOANH CỦA DOANH NGHIỆP VÀ ĐỀ XUẤT`**: Tổng hợp bức tranh **lũy kế 5 tháng** trên một màn hình lớn cho cấp lãnh đạo, gồm 3 khối:
     - *4 thẻ KPI toàn hàng*: Tổng thu nhập hoạt động **+1.353,9 tỷ** (+1,8% so với tháng 4), Chi phí vận hành **-235,1 tỷ** (+1,1%, chiếm 17,4% thu nhập), Dự phòng nợ xấu **-868,3 tỷ** (+0,05%, chiếm 64,1% thu nhập), Lợi nhuận trước thuế **+250,5 tỷ** (+8,4%, 6/7 vùng có lãi).
     - *Biểu đồ thác nước cấu trúc lợi nhuận*: Đi từ Thu nhập thẻ **+1.810,5 tỷ** (lãi thẻ chiếm 92,6%) trừ Chi phí vốn **-340,5 tỷ** và Chi phí bán thẻ **-116,0 tỷ** còn Tổng thu nhập **+1.353,9 tỷ**, trừ tiếp Chi phí vận hành **-235,1 tỷ** và Dự phòng nợ xấu **-868,3 tỷ** còn Lợi nhuận **+250,5 tỷ** (biên lãi 13,8%), kèm 3 thẻ tóm tắt nổi bật (Tây Nam Bộ **+167,9 tỷ**, Nam Trung Bộ & ĐBSH **+104,3 tỷ**, Đông Nam Bộ lỗ **-48,8 tỷ** làm giảm **16,3%** lãi từ các vùng có lãi).
     - *Bảng Kế hoạch hành động trọng tâm theo vùng kinh doanh*: Dùng câu chữ đời thường dễ hiểu với 5 cột (**Mức độ · Khu vực · Thực trạng hiện tại · Giải pháp cần làm · Mục tiêu hướng tới**) cho 5 vùng nổi bật (trình bày chi tiết ở Mục 6 – Phần C).

---

## 6. 📊 Những điểm đáng chú ý và đề xuất điều hành

### Phần A – Đáp ứng 5 yêu cầu ban đầu của Ban Điều Hành

| Mong muốn của Ban Điều Hành | Trang báo cáo giải quyết | Kết quả đạt được |
|---|---|---|
| **Xem và đối soát lãi lỗ thực tế của 7 vùng** | **Trang 3 · BÁO CÁO KẾT QUẢ KINH DOANH LUỸ KẾ VÙNG** | **Đạt:** Có đủ 32 chỉ tiêu của 7 vùng và Hội sở sau phân bổ, cộng khớp 100% với sổ kế toán ban đầu. |
| **Xếp hạng công bằng để khen thưởng và kèm cặp ASM** | **Trang 5 · BÁO CÁO XẾP HẠNG ASM** | **Đạt:** Bảng điểm **26** cột xếp hạng đủ **74 - 84** ASM theo cả bán hàng lẫn tài chính vùng. |
| **So sánh thu – chi – dự phòng và mức sinh lời** | **Trang 4 · ĐÁNH GIÁ HIỆU QUẢ KINH DOANH VÙNG** | **Đạt:** Tách rõ số tháng và số lũy kế, bóc tách 8 bước hình thành lợi nhuận, so sánh chi phí `CIR` và hiệu quả vốn của 7 vùng. |
| **Phát hiện người bán nhanh nhưng để nợ xấu cao** | **Trang 6 · ĐÁNH GIÁ NĂNG LỰC ASM** | **Đạt tốt:** Đặt doanh số mở thẻ cạnh tỷ lệ nợ xấu trên biểu đồ Radar, bấm tab xem từng người và chia sẵn 4 nhóm hành động. |
| **Thống nhất cách hiểu và ra kế hoạch hành động** | **Trang 2 · TỪ ĐIỂN DỮ LIỆU & Trang 7 · KẾT QUẢ DOANH NGHIỆP** | **Đạt:** Chuẩn hóa 68 chỉ tiêu, chỉ rõ vùng lãi/lỗ trọng tâm và đưa bảng việc cần làm cụ thể cho từng vùng. |

### Phần B – Bốn điểm nổi bật nhìn từ số liệu tháng 5/2023

1. **Tây Nam Bộ – Đóng góp lãi nhiều nhất nhưng nợ xấu cũng cao nhất:**
   - *Số liệu:* Lợi nhuận trước thuế tháng 5 tăng thêm **+4.267,8 triệu đồng**, chiếm **97,2%** mức tăng lợi nhuận toàn hàng trong tháng. Tuy nhiên, thu nhập thuần từ thẻ gần như đứng yên (chỉ tăng **16,3 triệu đồng**), chi phí hoạt động giảm lợi nhuận đi **−195,9 triệu đồng**, còn lợi nhuận vọt lên chủ yếu nhờ **chi phí dự phòng ròng giảm +4.447,3 triệu đồng**. Đáng lo nhất là tỷ lệ nợ xấu mở rộng của vùng đang cao nhất cả nước (**21,99%**) và không có ASM nào của vùng lọt Top 25 toàn hàng. (Lũy kế 5 tháng vùng đạt lãi **+167.883 triệu đồng**, nhưng hiệu suất sinh lời trên vốn là **131,7%**).
   - *Nhìn nhận thực tế:* Lãi trong tháng tăng nhờ giảm trích lập dự phòng chứ chưa phải nhờ bán hàng hay thu nhập thẻ bứt phá.
   - *Việc nên kiểm tra tiếp:* Cần kiểm tra kỹ xem dự phòng giảm là do thu được tiền thật từ khách hàng, hay do gia hạn, cơ cấu lại nợ; nên cử đoàn xuống kiểm tra trực tiếp hồ sơ và việc thu hồi nợ trong tháng 7.

2. **Đông Nam Bộ – Bán hàng vẫn tăng nhưng bị nợ xấu ăn hết lãi:**
   - *Số liệu:* Riêng tháng 5 vùng lỗ **−8.787,4 triệu đồng**, đẩy lỗ lũy kế 5 tháng lên **−48.763 triệu đồng** (tức **−48,8 tỷ đồng**). Hoạt động kinh doanh vẫn kéo thu nhập thuần tăng khá (**+3.210,7 triệu đồng**), nhưng chi phí dự phòng lại tăng vọt thêm **−3.234,2 triệu đồng**. Vì cả vùng bị lỗ nặng, **16 trong số 19 quản lý vùng** (84%) dù bán hàng ổn vẫn bị kéo xuống nhóm cuối bảng xếp hạng.
   - *Nhìn nhận thực tế:* Tiền dự phòng nợ xấu mới phát sinh lớn hơn phần thu nhập làm thêm, khiến vùng trở thành nơi duy nhất báo lỗ.
   - *Việc nên kiểm tra tiếp:* Cần rà lại các hợp đồng mở mới trong mấy tháng gần đây xem có phải vì duyệt nhanh quá nên bắt đầu chuyển sang nợ quá hạn, đồng thời chốt rà soát toàn bộ danh sách khách đang quá hạn tại Đông Nam Bộ trong 30 ngày tới.

3. **Đồng Bằng Sông Hồng – Bán thẻ số 1 cả nước, giữ nợ xấu an toàn:**
   - *Số liệu:* Lũy kế đến tháng 5, vùng dẫn đầu tuyệt đối về doanh số giải ngân mới (**55.010 triệu đồng**, gấp **1,5 lần** vùng đứng thứ hai là Tây Nam Bộ). Tỷ lệ nợ xấu mở rộng chỉ ở mức **13,9%** (thấp hơn khá nhiều so với mức chung **17,3%**). Riêng trong tháng 5, lợi nhuận trước thuế của vùng tăng **+1.310,9 triệu đồng**, bù lại việc thu nhập thuần giảm nhẹ **−232,2 triệu đồng** nhờ chi phí dự phòng ròng giảm **+1.455,8 triệu đồng**.
   - *Nhìn nhận thực tế:* Đây vẫn là vùng trụ cột giữ nhịp tăng trưởng an toàn nhất toàn hàng, nhưng việc thu nhập thuần nhích xuống nhẹ là dấu hiệu cần để mắt.
   - *Việc nên kiểm tra tiếp:* Vì sổ kế toán mới ghi một con số dự phòng gộp chung, cần tách bạch phần trích lập mới và phần hoàn nhập để xem rủi ro nợ có thực sự giảm bền vững hay không.

4. **Nam Trung Bộ – Giữ nợ sạch nhất và đồng vốn sinh lời cao nhất:**
   - *Số liệu:* Chỉ có 5 quản lý vùng nhưng Nam Trung Bộ giữ tỷ lệ nợ xấu mở rộng thấp nhất toàn hàng (**11,24%**), mang về **50.036 triệu đồng** lợi nhuận lũy kế với hiệu suất sinh lời trên vốn đạt **203,5%** (cứ 1 đồng vốn thu về hơn **2,0 đồng** lãi), và có tới **4 trong 5 quản lý vùng** nằm trong nhóm 25 người đứng đầu cả nước.
   - *Nhìn nhận thực tế:* Đây là hình mẫu vận hành gọn, kiểm soát đầu vào chặt chẽ và rất hiệu quả.
   - *Việc nên kiểm tra tiếp:* Nên khảo sát thực tế trong 60 ngày (khoảng 2 tháng) cách vùng này lọc khách hàng và nhắc nợ, sau đó áp dụng thử cho các vùng đang có nợ xấu cao.

### Phần C – Bức tranh lũy kế toàn doanh nghiệp và việc cần làm ngay

Trên Trang 7 (`KẾT QUẢ KINH DOANH CỦA DOANH NGHIỆP VÀ ĐỀ XUẤT`), toàn bộ số liệu lũy kế 5 tháng của 7 vùng và bảng điểm ASM được tóm lại thành **4 ý chính**:

1. **4 con số cần nhớ nhất:**
   - **Lãi lớn nhất – `67,0%` tổng lãi:** Tây Nam Bộ mang về **+167,9 tỷ đồng** trên tổng **+250,5 tỷ đồng** lợi nhuận toàn hàng.
   - **Nợ xấu cao nhất – `22,0%`:** Tây Nam Bộ cũng là nơi có tỷ lệ nợ xấu vượt xa mức chung (**17,3%**).
   - **Vùng duy nhất bị lỗ – `-48,8 tỷ`:** Đông Nam Bộ lỗ lũy kế suốt 5 tháng.
   - **Vùng an toàn nhất – `11,2%` nợ xấu:** Nam Trung Bộ ít nợ xấu nhất và vẫn đóng góp **20%** lợi nhuận toàn hàng (**+50,0 tỷ đồng**).

2. **Thác nước lợi nhuận 7 vùng (Cộng và trừ ra sao để ra +250,5 tỷ?):**
   - *6 vùng làm ăn có lãi:* Tây Nam Bộ (**+167,9 tỷ đồng**), Đồng Bằng Sông Hồng (**+54,3 tỷ đồng**), Nam Trung Bộ (**+50,0 tỷ đồng**) và 3 vùng còn lại (**+27,0 tỷ đồng**) cộng lại tạo ra **+299,2 tỷ đồng** lợi nhuận.
   - *Đông Nam Bộ kéo lùi:* Khoản lỗ **−48,8 tỷ đồng** tại Đông Nam Bộ làm hụt mất **16,3%** (khoảng 16%) tổng số lãi mà 6 vùng kia mang về.
   - *Chốt sổ toàn hàng:* Lợi nhuận trước thuế chung của cả ngân hàng còn **+250,5 tỷ đồng**.

3. **Nghịch lý tại Đông Nam Bộ: Bán giỏi vẫn rớt hạng vì nợ xấu chung của vùng:**
   - *Bị phạt kịch trần (`26 điểm`):* Do vùng Đông Nam Bộ lỗ −48,8 tỷ đồng và đứng thứ 7/7 ở cả 4 chỉ tiêu tài chính vùng, toàn bộ 19 ASM trong vùng đều chịu mức phạt tối đa **26 điểm**, bất kể cá nhân đó bán thẻ tốt tới đâu.
   - *Ví dụ nhìn thấy rõ trên bảng điểm:*
     * Tại Đông Nam Bộ: Nguyễn T. Loan (bán hàng **Tốt – Top sale**, **16 điểm**) vẫn chỉ xếp **Hạng 18**; Trần V. Hùng (bán hàng **Khá**, **14 điểm**) xếp **Hạng 21**; Lê T. Mai (bán hàng **Trung bình**, **11 điểm**) xếp **Hạng 24**.
     * Trên bảng xếp hạng toàn quốc: Lê Văn Bình đang đứng #24 phần bán hàng tụt xuống hạng chung cuộc #31 (rớt 7 bậc); Trần Văn Hải tụt từ #28 xuống #33 (rớt 5 bậc); Trần Văn Anh tụt từ #36 xuống #41 (rớt 5 bậc).
   - *Hướng xử lý hợp lý:* Không nên gộp kết quả bán hàng cá nhân chung với khoản lỗ của cả vùng khiến **16/19 quản lý (84%)** rơi xuống nhóm cuối. Cần **tính riêng điểm bán thẻ cá nhân** để giữ tinh thần cho người bán tốt, còn phần lỗ **48,8 tỷ đồng** và thu hồi nợ xấu phải giao rõ trách nhiệm về cấp điều hành vùng.

4. **Kế hoạch hành động trọng tâm cho 5 vùng nổi bật (hiển thị ngay trên Trang 7):**

| Mức độ | Khu vực | Thực trạng hiện tại | Giải pháp cần làm | Mục tiêu hướng tới |
|:---:|---|---|---|---|
| **Khẩn cấp** | **Tây Nam Bộ** *(Lãi +167,9 tỷ)* | Mang về nhiều lãi nhất (**+67,0%** tổng lãi toàn hàng), nhưng tỷ lệ nợ xấu đang cao nhất (**22,0%**). | Kiểm tra kỹ hồ sơ trước khi mở thẻ mới và tập trung thu hồi các khoản nợ quá hạn. | Hạ nợ xấu **22,0% → 17,3%**; không để phí dự phòng (**290,4 tỷ** / **290.377 triệu đồng**) tăng thêm. |
| **Khẩn cấp** | **Đông Nam Bộ** *(Lỗ −48,8 tỷ)* | Vùng duy nhất lỗ (**−48,8 tỷ**) do nợ xấu cao, kéo **16/19** quản lý (**84%**) rơi xuống nhóm cuối. | Tập trung thu hồi nợ xấu để giảm lỗ; tính riêng kết quả bán thẻ cá nhân để không làm thiệt quản lý bán tốt. | Thu hồi nợ xóa lỗ **48,8 tỷ**; đánh giá công bằng cho **19** quản lý (dự phòng hiện ăn mòn **223,7 tỷ**). |
| **Ưu tiên** | **Bắc Trung Bộ** *(Lãi +10,5 tỷ)* | Chi phí vận hành chiếm tới **26,5%** thu nhập — cao nhất toàn hàng (mức chung chỉ **17,4%**). | Cắt giảm các khoản chi chưa cần thiết tại chi nhánh và gắn mức chi tiêu theo doanh số thực tế. | Tiết kiệm **~3,5 tỷ** chi phí; đưa tỷ lệ chi phí về mức chung **17,4%**. |
| **Duy trì** | **ĐB Sông Hồng** *(Lãi +54,3 tỷ)* | Dẫn đầu toàn hàng về mở thẻ mới (đóng góp **30,6%** tổng doanh số mở thẻ toàn hàng). | Duy trì tốc độ mở thẻ mới và hướng dẫn thêm kỹ năng bán hàng cho nhóm quản lý đạt mức trung bình. | Đạt **+55,0 tỷ** mở mới; giữ vị trí số 1 toàn hàng (**30,6%**). |
| **Nhân rộng** | **Nam Trung Bộ** *(Lãi +50,0 tỷ)* | Kinh doanh an toàn và hiệu quả nhất: nợ xấu thấp nhất (**11,2%**), cứ 1 đồng vốn thu về **2,0 đồng lãi** (**203,5%**). | Lấy cách chọn lọc khách hàng và quản lý nợ của vùng này làm mẫu để áp dụng cho các vùng nợ xấu cao. | Giữ tỷ lệ nợ xấu dưới **12%**; duy trì mức sinh lời vốn **203,5%**. |

### Năm kiến nghị gửi Ban Điều Hành:

| # | Việc đề xuất làm | Căn cứ số liệu thực tế | Bộ phận làm · Thời hạn |
|:---:|:---|:---|:---|
| 01 | **Tách riêng khoản trích lập mới và khoản hoàn nhập dự phòng:** Để thấy lãi tăng do bán hàng hay do điều chỉnh dự phòng. | Báo cáo hiện mới có 1 dòng dự phòng ròng gộp chung cả hai | Quản lý rủi ro · Tháng 6 |
| 02 | **Kiểm tra gấp nợ quá hạn ở 3 vùng tăng dự phòng mạnh:** Đông Nam Bộ, Đông Bắc Bộ và Tây Bắc Bộ. | Tổng chi phí dự phòng ở 3 vùng này tăng thêm **6.035,1 triệu đồng** riêng trong tháng 5 | Quản lý vùng + Quản lý rủi ro · 30 ngày |
| 03 | **Kiểm tra thực tế hồ sơ và thu hồi nợ ở Tây Nam Bộ:** Soi lại xem vì sao dự phòng giảm mạnh khi nợ xấu còn rất cao. | Nợ xấu cao nhất (**21,99%**) nhưng vùng lại đóng góp **97,2%** mức tăng lợi nhuận tháng 5 | Khối Kinh doanh + Quản lý rủi ro · Tháng 7 |
| 04 | **Học hỏi cách làm của Nam Trung Bộ để áp dụng thử nghiệm:** Tìm hiểu quy trình duyệt hồ sơ và theo dõi nợ của họ. | Nợ xấu thấp nhất (**11,24%**) và 4/5 quản lý vùng lọt Top 25 cả nước | Khối Kinh doanh · Sau 2 tháng |
| 05 | **Sửa lại cách tính điểm thi đua của ASM:** Tách kết quả bán thẻ cá nhân khỏi lỗ dự phòng của cả vùng; chấm công bằng theo bán hàng, nợ xấu và thời gian quản lý. | Tránh tình trạng **84%** quản lý Đông Nam Bộ bị kéo xuống cuối bảng hoặc khen nhầm vùng lãi nhờ giảm dự phòng | Ban Điều Hành · Áp dụng ngay |

---

## 7. 📚 Bài học rút ra khi làm dự án

1. **Hiểu nghiệp vụ trước rồi mới viết câu lệnh SQL:**
   Nếu không nắm quy ước kế toán ngân hàng (chi phí vốn mang dấu âm, chi phí Hội sở ghi mã `'00'`), viết SQL hay tới đâu cũng sẽ chia sai hết lãi lỗ của 7 vùng.

2. **Khác một chữ tên tỉnh có thể làm lệch số cả vùng:**
   Chỉ vì sao kê ghi `"Bà Rịa - Vũng Tàu"` mà bảng danh mục ghi `"Vũng Tàu"`, nếu bỏ qua bước chuẩn hóa tên tỉnh sẽ đánh rơi hơn **36.000 hợp đồng thẻ**, làm sai hẳn tỷ lệ nợ xấu của vùng Đông Nam Bộ.

3. **Nhìn rõ dữ liệu ghi ở cấp nào để không chấm oan cho nhân viên:**
   Sao kê thẻ mới ghi tới mã chi nhánh chứ chưa có mã từng nhân viên ASM. Nếu lấy tỷ lệ nợ xấu chung của cả vùng để trừ điểm cá nhân quá nặng tay sẽ làm nản lòng những người bán hàng tốt nhất ở vùng khó khăn.

4. **Đọc lợi nhuận phải nhìn kèm chi phí dự phòng:**
   Lãi tháng này cao hơn tháng trước chưa hẳn do bán thẻ tốt hơn. Nếu không tách riêng khoản dự phòng rủi ro, lãnh đạo rất dễ thưởng nhầm cho những vùng nợ xấu cao đang tạm thời giảm trích lập.

---

## 8. 🛠️ Công cụ và công nghệ sử dụng

Mỗi bước trong quy trình 3 giai đoạn dùng đúng một nhóm công cụ phù hợp:

| Công cụ | Thành phần chính | Dùng để làm gì | Lý do chọn |
|---|---|---|---|
| **Microsoft Excel** | 3 File Số Liệu Đầu Vào (`.xlsx`) | Cung cấp 3 nguồn số gốc: `1. Dữ liệu hạch toán mỗi tháng (GL)`, `2. Dữ liệu sao kê thẻ mỗi tháng` và `3. Dữ liệu kết quả sale của ASM mỗi tháng` | Là định dạng chuẩn xuất ra từ các hệ thống vận hành trong ngân hàng |
| **DBeaver 24** | Data Import, ER Diagram | Đưa dữ liệu từ 3 file Excel (gồm tệp **117,2 MB**) vào 3 bảng `staging` trong PostgreSQL, kiểm tra 9 khóa ngoại ảo và chạy câu lệnh SQL | Dễ nhìn, hỗ trợ nạp file lớn nhanh và soi được ngay sơ đồ quan hệ bảng |
| **PostgreSQL 16** | PL/pgSQL, 11 Stored Procedure | Lưu trữ kho dữ liệu Star Schema (19 bảng, 3 `view`), tự động chạy logic chia chi phí Hội sở (Rule 1 & Rule 2) và tính bảng điểm xếp hạng ASM | Xử lý mượt gần 3 triệu dòng với độ chính xác từng đồng và kiểm soát giao dịch an toàn |
| **Power BI Desktop** | DirectQuery, 90 Measure DAX, HTML Content | Xây dựng **7 trang báo cáo trực quan** đồng bộ theo bảng màu **Pure Yellow** (từ Giới thiệu, Từ điển **68** chỉ tiêu, Bảng lãi lỗ **32** dòng, Xếp hạng ASM, Radar năng lực tới Kết quả toàn doanh nghiệp) | Giúp Ban Điều Hành vừa tra đối soát từng dòng số liệu giống Excel, vừa bấm lọc xem biểu đồ nhanh và trực tiếp |

---

## 9. 📂 Cấu trúc thư mục dự án

```text
.
├── sql/                # Mã SQL dựng bảng, bảng tạm, thủ tục tính toán và view báo cáo
│   ├── dim/            # Bảng staging và bảng danh mục: init_staging_tables, dim_area, dim_month_headcount, dim_asm, dim_report_detail
│   ├── tmp/            # Bảng tạm và 6 thủ tục tính trung gian cho Lãi lỗ và Xếp hạng ASM
│   ├── fct/            # Bảng kết quả chính và thủ tục chạy toàn luồng: fct_pnl_allocation, fct_xephang_asm, sp_pipeline
│   └── rpt/            # 3 view đầu ra sạch cho Power BI: rpt_pnl_view, rpt_xephang_view, rpt_pnl_excel_pivoted_view
├── images/             # Ảnh sơ đồ quy trình 3 giai đoạn và sơ đồ kho dữ liệu Star Schema
├── docs/               # Tài liệu vận hành chi tiết: HIEN_TRANG_HE_THONG, PIPELINE, NHAT_KY_CONG_VIEC, LOI_THUONG_GAP
├── output/             # Sản phẩm báo cáo quản trị đầu ra trên Power BI (.pbix)
├── README.md           # Tài liệu giới thiệu dự án bằng tiếng Việt
└── README_eng.md       # Tài liệu giới thiệu dự án bằng tiếng Anh
```

---

## 10. 📖 Tài liệu chi tiết kèm theo

Trong thư mục `docs/` có 4 tài liệu ghi lại đầy đủ quá trình làm và vận hành:
- [`docs/HIEN_TRANG_HE_THONG.md`](docs/HIEN_TRANG_HE_THONG.md) — Bảng thống kê số dòng của 19 bảng và 3 `view`, mô hình Power BI **90** measure DAX theo bảng màu Pure Yellow và các mốc đối soát chuẩn.
- [`docs/PIPELINE.md`](docs/PIPELINE.md) — Chi tiết luồng xử lý 3 giai đoạn và thứ tự chạy các tệp SQL trong DBeaver.
- [`docs/NHAT_KY_CONG_VIEC.md`](docs/NHAT_KY_CONG_VIEC.md) — Nhật ký ghi chép các đầu việc đã làm qua từng giai đoạn.
- [`docs/LOI_THUONG_GAP.md`](docs/LOI_THUONG_GAP.md) — Tổng hợp **62 tình huống lỗi thường gặp** khi nạp dữ liệu nguồn, viết SQL, Python và DAX kèm cách khắc phục.

---

## 11. 👤 Tác giả

<div align="center">

**Trần Ngọc Đức** · [Email](mailto:tranduc22104@gmail.com) · [LinkedIn](https://www.linkedin.com/in/tr%E1%BA%A7n-ng%E1%BB%8Dc-%C4%91%E1%BB%A9c-48b3a7439/)

</div>
