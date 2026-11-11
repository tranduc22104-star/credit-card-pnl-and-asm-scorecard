<div align="center">

# Credit Card Business Performance Management Reporting and Area Sales Manager (ASM) Performance Evaluation

**Ngôn ngữ / Language**: [Tiếng Việt](README.md) · **English**

<p>
  <img src="https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white">
  <img src="https://img.shields.io/badge/DBeaver-382923?style=for-the-badge&logo=dbeaver&logoColor=white">
  <img src="https://img.shields.io/badge/Power%20BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black">
  <img src="https://img.shields.io/badge/Excel-217346?style=for-the-badge&logo=microsoftexcel&logoColor=white">
</p>

</div>

## 📑 Table of Contents

1. [🏢 Business Context And Management Requirements](#1--business-context-and-management-requirements)
2. [🎯 Requirement Analysis And Report Output Design](#2--requirement-analysis-and-report-output-design)
3. [🔍 Data Discovery And Assessment](#3--data-discovery-and-assessment)
4. [🧮 Business Logic And Metric Design](#4--business-logic-and-metric-design)
5. [🔄 Data Engineering And Warehouse Architecture](#5--data-engineering-and-warehouse-architecture)
6. [📊 Business Insights And Management Recommendations](#6--business-insights-and-management-recommendations)
7. [📚 Key Takeaways](#7--key-takeaways)
8. [🛠️ Tools Used](#8--tools-used)
9. [📂 Project Repository Structure](#9--project-repository-structure)
10. [📖 Project Documentation](#10--project-documentation)
11. [👤 Author](#11--author)

---

## 1. 🏢 Business Context And Management Requirements

### Business Context of Credit Card Operations
Credit card operations are organized across **7 regions** nationwide. Each region is overseen by Area Sales Managers (ASMs). The total number of ASMs ranges from **74 to 84 personnel**, depending on the operating period.

### Initial Mandate From Executive Management
The project began with a directive from the Executive Committee:
> *"The **Executive Committee** requests building a **management reporting system** to monitor credit card business results across regions and **evaluate operational performance** of the **Area Sales Manager (ASM)** team"*

The initial request only stated broad goals, lacking calculation formulas, KPI scorecards, or sample data. Therefore, the project needed to clarify the following areas:
- No existing methodology to determine actual profitability of each region.
- No established principles to allocate centralized costs booked at Head Office.
- Undefined metrics for measuring business performance and credit risk.
- No objective evaluation criteria for regional sales managers.
- No scoring formulas, ranking mechanics, or reporting templates.

### Key Issues Requiring Resolution
Reviewing current financial reports revealed three major challenges:

1. **Incomplete reflection of financial performance:**
   On the general ledger, interest income and card issuance fees are booked at branches, while major expenses such as cost of funds, marketing, technology, and support divisions are booked centrally at Head Office. Without allocating these overhead expenses to regions, reports may show all 7 regions being profitable, masking underperforming territories.

2. **Manager evaluations carrying latent credit risk:**
   Evaluating ASMs solely on loan disbursement volume or new card counts incentivizes chasing short-term targets by relaxing underwriting standards. Disbursement volume may rise initially, but bad debt and credit provisioning will surge in subsequent periods.

3. **Limitations of existing accounting reports:**
   Existing accounting statements primarily reflect year-to-date (YTD) cumulative figures without isolating monthly results. Consequently, it is difficult to determine whether profit growth stems from core sales improvement or provision fluctuations.

From these issues, the project focused on answering 5 core governance questions:

| Management Domain | Key Question To Solve | Target Governance Objective |
|---|---|---|
| **Business Performance** | Which regions are genuinely profitable after absorbing shared costs? | Accurately determine 7-region P&L after Head Office cost allocation |
| **Profit Fluctuation** | What causes monthly profit fluctuations? | Decompose revenues and expenses driving profitability |
| **Credit Quality** | Which regions exhibit elevated bad debt risks threatening capital safety? | Monitor balances across 5 debt buckets and regional NPL ratios |
| **ASM Effectiveness** | Which regional managers balance strong sales with effective risk control? | Construct a multi-dimensional ranking scorecard for 74 to 84 personnel |
| **Executive Governance** | How should information be tracked for lookup, reconciliation, and timely decision-making? | Build an intuitive management reporting system for lookup, reconciliation, and timely decision-making |

---

## 2. 🎯 Requirement Analysis And Report Output Design

### Clarifying Business Requirements and Defining Outputs
From the initial mandate, the project clarified the specific information Executive Leadership required regarding regional business results and ASM performance. First, the target reports were defined, followed by assessing data availability to design suitable calculations and ETL flows. The system must support both detailed lookup/reconciliation and visual chart analysis.

### Four Core Output Dashboards

The project constructed **4 Core Dashboards**, each addressing a specific governance need:

| Code | Dashboard Name | Contained Content & Purpose of Use |
|:---:|---|---|
| **01** | **BÁO CÁO KẾT QUẢ KINH DOANH** *(Business Results Report)* | **Summarizes 32 financial metrics** on business results across **7 regions** (alongside Head Office and bank-wide Total columns) for detailed lookup and reconciliation. |
| **02** | **BÁO CÁO XẾP HẠNG ASM** *(ASM Ranking Report)* | **Summarizes scores and rankings** of **74 to 84 ASM personnel** to support rewarding top performers and coaching underperforming managers. |
| **03** | **HIỆU QUẢ KINH DOANH THEO VÙNG** *(Regional Business Performance)* | **Compares business efficiency and contribution** across **7 regions** (revenue – cost – provision, CIR, capital efficiency) to identify highly profitable regions. |
| **04** | **ĐÁNH GIÁ HIỆU SUẤT ASM** *(ASM Performance Evaluation)* | **Compares sales volume against non-performing loans (NPL)** of each ASM to identify cases chasing volume while escalating credit risk. |

### From Initial Requests to Reporting Modules:

Beyond the 4 dashboards, the project includes an overview, a data dictionary, and deep-dive analytical sections to help stakeholders understand context, review calculation formulas, and track operational issues:

| Initial Request | Content To Clarify | Business Analysis Finding | Proposed Reporting Module |
|---|---|---|---|
| **Frame the problem & standardize terminology** | Readers need to quickly grasp business context, source data, processing pipeline, and metric formulas | Requires a project overview section and a data dictionary explaining definitions and calculation formulas | • **Executive Overview**: Summarizes Business Context, 4 Output Dashboards, 3 Source Datasets, and Technical Pipeline<br>• **Data Dictionary**: Standardizes **68 indicators** across 5 domain groups with formulas |
| **Look up & reconcile regional business results** | Does regional P&L include Head Office costs? How to look up and reconcile itemized revenues and expenses? | Must fully allocate indirect costs (funding, OPEX, provisions) across 7 regions and present a hierarchical matrix | • **Regional Business Results Report (Dashboard 01)**: Matrix table of **32 financial indicators** across `HỘI SỞ`, 7 regions, and `Total`, powered by **21 automated background & font color formatting measures** |
| **Look up scorecards & rank ASM personnel** | Which indicators evaluate ASMs to encourage sales growth while controlling territorial credit risk? | Combine 4 Commercial Scale indicators (`diem_qm`) and 4 Territorial Financial Efficiency indicators (`diem_fin`) | • **ASM Ranking Report (Dashboard 02)**: Detailed scorecard for **74 – 84 ASMs** (Total Score, Total Rank, actual values, and component ranks) for rewarding and coaching |
| **Visually analyze profitability across 7 regions** | How is profit formed? Which regions generate high returns, and which incur high costs or operating losses? | Decompose revenue – cost – provision steps, comparing profit against CIR and return on capital across 7 regions | • **Regional Business Performance (Dashboard 03)**: Features **5 KPI cards**, an **8-step** PBT Waterfall chart, a **Profit vs CIR** bubble chart, a **Profit & Capital Efficiency** combo chart, and an **Evaluation summary** |
| **Monitor ASM performance and risks** | Which regions and ASMs grow sales sustainably while controlling bad debt? | Highlight the overall Champion while plotting new loan disbursement volume against NPL ratios across regions | • **ASM Performance Evaluation (Dashboard 04)**: **Rank #1 Champion** profile card, nationwide **Leaderboard**, **New Loans (Column) & NPL Ratio (Line)** combo chart across 7 regions, and **Team Governance Commentary** |
| **Synthesize results and executive proposals** | What causes regional losses or ASM demotions? What actions should be taken and what are the expected financial impacts? | Connect macro 7-region profit flows with micro ASM scoring mechanics to propose prioritized quantitative actions | • **Deep-Dive Diagnostic & Executive Proposals**: Synthesizes **4 critical KPI cards**, regional PBT contribution waterfall, analysis of the **−48.8 billion** loss and **+26-point** penalty in the Southeast (pushing **84% of ASMs** to the bottom group), and **Action Matrix** |

### Logical Transformation From Management Requirements to Reporting System:

| Transformation Stage | Track 1: Regional Business Performance (P&L) | Track 2: Area Sales Management Evaluation (ASM) |
|---|---|---|
| **1. Initial Broad Executive Mandate** | Monitor credit card business performance across 7 regions | Evaluate operational effectiveness of the Area Sales Management (ASM) team |
| **2. Information Groups Required In Reports** *(Domain analysis & requirement refinement)* | • Card operating income, net treasury funding cost, operating expense, provision expense<br>• Head Office cost allocation by economic drivers<br>• CIR ratio, profit margin (Margin), return on capital, and average productivity/SM | • **Individual sales scale metrics**: New loan disbursement, active cards with balance (PSDN), application approval rate<br>• **Territorial financial & risk responsibility metrics**: Extended NPL ratio, regional CIR, Margin, Capital Efficiency, average PBT/SM |
| **3. Output Management Reporting System** | • **Standardization & Dictionary**: Overview of context, outputs, inputs & pipeline and standardized 68 business indicators<br>• **Regional Business Results Report**: Lookup & reconciliation matrix of 32 P&L metrics<br>• **Regional Business Performance**: Visualizes revenue – cost – provision across 7 regions | • **ASM Ranking Report**: Comprehensive score & rank table for 84 ASMs<br>• **ASM Performance Evaluation**: Visualizes sales volume vs NPL correlation, Top 1 Champion & Leaderboard<br>• **Deep-Dive Diagnostic**: Deep-dive analysis of profit flows, regional penalty mechanics, and executive action matrix |

### What Are The Two Metric Groups Used For?
- **Regional Business Performance Metrics (32 P&L metrics, Regional NPL, CIR, Margin, Capital Efficiency):** Reveal genuine regional financial performance after absorbing Head Office cost allocations, providing Executive Leadership with concrete foundations for capital budgeting, target setting, and expense cap control.
- **Area Sales Management Evaluation Metrics (8 ASM ranking metrics across Scale & Financial pillars):** Combine individual customer acquisition performance with territorial credit quality and financial health, discouraging unchecked volume expansion that sacrifices portfolio quality.

---

## 3. 🔍 Data Discovery And Assessment

### Required Input Data To Collect
The bank lacked a single consolidated data table to build all 4 dashboards. Consequently, the project gathered **3 Excel files** from operational divisions, documenting data contents and analytical purposes:

| No. | Required Data Name | Target Table & Volume | **CHỨA / CONTAINS** (Stored Data Content) | **DÙNG ĐỂ / USED TO** (Analytical Purpose In Model) |
|:---:|---|---|---|---|
| **1** | **Dữ liệu hạch toán mỗi tháng (GL)** *(Monthly General Ledger)* | `fact_txn_month`<br>(**63,134** entries / 63 thousand rows) | **Revenue and expense entries incurred across 7 regions & Head Office** (comprising **62,953** province-tagged rows assigned directly to regions and **181** shared overhead rows booked at Head Office under province code `'00'`). Join keys: `city_code`, `account_code`. | **Calculate revenues, expenses, and compile the 7-region P&L report** (direct aggregation via Rule 1 and indirect Head Office allocation via Rule 2). |
| **2** | **Dữ liệu sao kê thẻ mỗi tháng** *(Monthly Card Statements)* | `fact_kpi_month`<br>(**2,932,922** rows / 2.9 million rows, **117.2 MB**) | **Card statements of balances, debt buckets, and card statuses** (recording balances across 5 debt buckets, written-off accounts, and active balance statuses for each card contract across 5 months). Join keys: `branch_code`, `month_key`. | **Calculate Head Office allocation ratios and measure non-performing loans (NPL)** (construct economic cost drivers to allocate Head Office expenses and compute extended NPL across 7 regions). |
| **3** | **Dữ liệu kết quả sale của ASM mỗi tháng** *(Monthly ASM Sales Results)* | `kpi_asm_data`<br>(**420** rows for **84** ASM personnel across 5 months) | **Sales performance figures of 84 ASMs** (new loan disbursement volume, average active cards with balance PSDN, and application approval rates for 74 to 84 active regional managers per month). Join keys: `asm_id`, `month_key`. | **Calculate scale scores used for ASM ranking** (score and rank the Commercial Scale pillar `diem_qm`, combined with the Financial pillar `diem_fin` for final ranking). |

*(In addition to the 3 transactional Excel files above, the system utilizes a parameter table mapping **64** provinces into **8** management zones comprising Head Office `'A'` and 7 commercial regions `'B'..'H'`, alongside a catalog of **55** reporting metrics in `dim_report_detail` and a **68**-metric dictionary in `Data Glossary`).*

### How Well Does Data Fulfill Requirements?

| Target Dashboard | Required Information | Fulfilling Source Dataset | Feasibility And Granularity Assessment |
|---|---|---|---|
| **01. Business Results Report** & **03. Regional Business Performance Evaluation** | Itemized revenue/expense, province codes, GL accounts, Head Office allocation drivers | `1. Dữ liệu hạch toán mỗi tháng (GL)` & `2. Dữ liệu sao kê thẻ mỗi tháng` | **Fully Feasible**: 62,953 GL rows contain province codes for direct assignment; 181 Head Office rows (code `'00'`) are accurately allocated across 7 regions using balance and active card drivers derived from 2,932,922 statement rows |
| **Regional NPL Measurement & Credit Risk Control** | Credit balances across 5 debt buckets, cumulative write-offs by branch and region | `2. Dữ liệu sao kê thẻ mỗi tháng` (`fact_kpi_month`) | **Feasible at regional level**: Branch-tagged contract records aggregate accurately into debt buckets 1..5 and write-offs across 7 regions over 5 months |
| **02. ASM Ranking Report** & **04. ASM Competency Radar** (Scale Pillar) | New loan disbursement, active PSDN cards, application approval rate per ASM | `3. Dữ liệu kết quả sale của ASM mỗi tháng` (`kpi_asm_data`) | **Feasible at individual level**: Complete monthly records for 74 to 84 regional managers enable direct individual ranking |
| **NPL & Financial Efficiency in ASM Scorecard** (Financial & Risk Pillar) | Extended NPL ratio, CIR, Margin, Capital Efficiency, average PBT per ASM | Combined regional outputs from `fact_txn_month` and `fact_kpi_month` | **Applied at regional level to ASMs in the same territory**: Because card contracts do not carry ASM employee IDs, delinquency and financial metrics are calculated regionally and assigned uniformly to ASMs within that region to enforce territorial stewardship |

### Three Key Issues in Input Data:
1. **Card statement data volume is large, unsuitable for standard spreadsheets:** Comprising **2,932,922 rows** and weighing **117.2 MB**, the file cannot be reliably processed in conventional spreadsheets and requires ingestion into PostgreSQL.
2. **Monthly ASM sales figures were stored in wide format (Wide):** Monthly metrics from January to May were spread across columns, requiring unpivoting into vertical relational rows (Tall format).
3. **Inconsistent province naming across sources:** Province names differed between card statements and master parameter tables (e.g., statements recorded `"Bà Rịa - Vũng Tàu"` while parameter tables recorded `"Vũng Tàu"`). Joining directly without string normalization (`pos_city_norm`) would drop over **36,000 card contracts**, distorting Southeast regional NPL metrics.

---

## 4. 🧮 Business Logic And Metric Design

**Context:** The Executive Committee provided broad goals without calculation formulas, KPI templates, or sample data. The project constructed the P&L allocation logic and ASM scoring framework grounded in financial cash-flow analysis and banking managerial accounting principles.

### 4.1. Structuring Revenue and Expense Allocation (Compiling 7-Region P&L)

The key question was: *How can regional business results be determined when substantial revenues and expenses are booked centrally at Head Office?*

The allocation framework was developed through a 9-step process:
1. Analyze all 63,134 entries in **Monthly General Ledger (GL)** data.
2. Identify revenues and expenses tagged with specific province or branch codes for direct booking.
3. Categorize centralized overhead expenses booked at Head Office (province `'00'`, zone `'A'`).
4. Determine the economic nature and root drivers of each cost item.
5. Identify allocation drivers (*Cost Drivers*) reflecting actual resource consumption across regions.
6. Verify driver calculability from **Monthly Card Statements** and staffing tables.
7. Select monthly indirect allocation ratios.
8. Formulate mathematical expressions and deploy automated Stored Procedures in PostgreSQL.
9. Verify economic validity and ensure 100% GL cash-flow conservation post-allocation.

**Two Core Allocation Rules:**
- **Rule 1 – Direct Assignment (Rule 1):** 62,953 branch entries are mapped directly to corresponding commercial regions, encompassing revenue streams (in-term interest, overdue interest, insurance fees, credit limit increase fees, late payment charges) and direct regional operating expenses.
- **Rule 2 – Driver-Based Indirect Allocation (Rule 2):** 181 centralized Head Office entries are allocated across 7 commercial regions based on respective economic driver weights:

$$	ext{Allocation Ratio of Region } i = rac{	ext{Driver Value of Region } i}{\sum_{k=1}^7 	ext{Driver Value of Region } k}$$

$$	ext{Allocated Expense to Region } i = 	ext{Head Office Expense} 	imes 	ext{Allocation Ratio of Region } i$$

*Cost drivers are selected based on the underlying nature of each item. Exact formulas are documented in the `Công Thức / Cách Tính` column of the Data Dictionary:*
- **Cost of funds & In-term interest / Limit increase fees allocated from Head Office:** Internal funds transfer pricing (FTP) allocated to branches to fund card lending scales with performing credit $
ightarrow$ Allocated via **Average ending credit balance post-write-off in Bucket 1**. Regions with higher Bucket 1 balances receive proportionately higher allocations.
- **Overdue interest allocated from Head Office:** Arises from early-stage delinquent credit $
ightarrow$ Allocated via **Average ending credit balance post-write-off in Bucket 2**.
- **Credit risk provisioning & Late fees / Off-balance recoveries:** Provisioning set aside to absorb expected credit losses $
ightarrow$ Allocated via **Average credit balance in Buckets 2 to 5 plus written-off debt** (`d25_sau` or `dtruoc`). This driver reflects regional credit risk exposure when GL entries are centralized at Head Office.
- **Bancassurance fees, Technology and card operations costs:** Insurance commissions and Core banking/switch infrastructure maintenance $
ightarrow$ Allocated via **Average count of active cards with balance** (`psdn`), representing active card portfolio scale in each region.
- **Staff, management, and administrative costs of Head Office support divisions:** Salaries and overhead of central divisions serving branch networks $
ightarrow$ Allocated via **Sales Manager Headcount** across regions.
- *Assumptions and limitations:* The model assumes linear cost relationships and uniform average cost per driver unit across regions, without isolating local localized marketing campaign expenses.

*Isolating Monthly Movements from Cumulative (YTD) Figures:*
Cumulative year-to-date accounting balances are separated into distinct monthly movements to enable trend analysis:
$$V_{	ext{Month } M} = V_{	ext{YTD } M} - V_{	ext{YTD } (M-1)}$$

### 4.2. Structuring Area Sales Manager (ASM) Performance Scorecard

The core question was: *Is looking merely at disbursement volume or new card counts sufficient to evaluate ASM performance? Does it capture profitability and credit quality?*

**Combining Sales Performance with Territorial Financial and Risk Stewardship:**
The project merged **Monthly ASM Sales Results** with regional P&L and delinquency metrics to build an evaluation framework of **8 indicators** structured into **2 pillars**, each comprising 4 metrics. Every metric is ranked independently from 1 to $N$:
- **Pillar 1: Commercial Scale & Quality-Controlled Growth (`diem_qm` – Scale / Business Development Score):** Comprises **3 individual sales metrics** (`Average new loan disbursement`, `Average active cards with balance – PSDN`, `Application approval rate`) sourced from *Monthly ASM Sales Results*, paired with **1 territorial credit quality control metric** (`Extended credit risk ratio – Regional NPL`) sourced from *Monthly Card Statements*. **A high approval rate is not necessarily good.** It may reflect quality applicants or compromised underwriting. Evaluating approval rates alongside NPL balances growth with prudent screening.
- **Pillar 2: Territorial Financial Health (`diem_fin` – Financial Score):** Comprises **4 regional metrics** derived from post-allocation P&L (`Cost-to-Income Ratio – CIR`, `Profit Margin`, `Return on Capital`, `Average PBT per SM`). Because card statements record branch codes rather than ASM IDs, regional financial metrics are shared across ASMs within the territory, tying individual recognition to regional profitability.

**Calculating Extended Credit Risk Ratio (Including Off-Balance Written-Off Debt):**
In PostgreSQL Stored Procedures (`report_id = 204`), the extended NPL ratio is calculated as:

$$	ext{Extended Credit Risk Ratio} = rac{	ext{Bucket 3–5 Balances} + 	ext{Cumulative Write-offs}}{	ext{Total Balance} + 	ext{Cumulative Write-offs}} 	imes 100$$

Unlike standard on-balance NPL ratios, this **project-defined metric** adds back cumulative written-off debt removed from the balance sheet. This prevents artificial reductions in delinquency ratios following off-balance write-off entries. *Consideration:* The metric accumulates past losses; regions with mature portfolios may carry higher historical write-offs than newly expanded territories.

| Pillar 1: Commercial Scale & Growth Quality (`diem_qm`) | Pillar 2: Territorial Financial Efficiency (`diem_fin`) |
|---|---|
| • **Average new loan disbursement (`ltn_avg`)** *(Higher is better)*<br>• **Average active cards with balance (`psdn_avg`)** *(Higher is better)*<br>• **Average application approval rate (`approval_rate_avg`)** *(Evaluated with risk)*<br>• **Extended credit risk ratio (`npl_truoc_wo_luy_ke`)** *(Lower is better — includes off-balance write-offs)* | • **Cost-to-Income Ratio – `CIR`** *(Lower is better)*<br>• **Profit Margin – `Margin`** *(Higher is better)*<br>• **Capital Efficiency Ratio (`hs_von`)** *(Higher is better)*<br>• **Average Profit / Manager (`hs_nhan_su`)** *(Higher is better — ties stewardship to territory)* |

**Detailed Overview of 8 ASM Performance Metrics:**

| Metric Name | Dimension Measured | Business Meaning | Input Source | Preferred Direction | Granularity | Key Consideration |
|---|---|---|---|---|---|---|
| **New Loan Disbursement** | Direct sales productivity | Measures newly disbursed borrowing volume | `3. Monthly ASM Sales Results` | Higher is better | Individual ASM | Does not reflect card cancellations post-issuance |
| **Active Cards with Balance (PSDN)** | Actual card portfolio usage | Tracks cards generating outstanding balances | `3. Monthly ASM Sales Results` | Higher is better | Individual ASM | Requires weighing card activation and maintenance costs |
| **Application Approval Rate** | Credit screening selectivity | Proportion of submitted applications approved | `3. Monthly ASM Sales Results` | Evaluated alongside NPL | Individual ASM | Very high rates may signal relaxed screening standards |
| **Extended NPL Ratio** | Credit risk control | Reflects underlying credit portfolio quality | `2. Monthly Card Statements` | Lower is better | Regional level | Statements lack ASM IDs; computed territory-wide |
| **Regional CIR Ratio** | Cost efficiency control | Ratio of operating costs to operating income | `1. Monthly General Ledger (GL)` | Lower is better | Regional level | Dependent on Head Office allocation drivers |
| **Profit Margin (Margin)** | Income profitability | Net profit yield on total card revenue | `1. Monthly General Ledger (GL)` | Higher is better | Regional level | Sensitive to internal funds transfer pricing changes |
| **Capital Efficiency Ratio** | Return generated on capital | Profit produced relative to net funding costs | `1. GL` & `2. Card Statements` | Higher is better | Regional level | Reflects overall territory capital productivity |
| **Average PBT per SM** | Financial productivity per manager | Pre-tax profit per authorized Sales Manager | `1. GL` & Staffing Headcount | Higher is better | Regional level | Averaged over authorized SM headcount in region |

*Score Aggregation Across Heterogeneous Metrics:*
Because the 8 metrics employ diverse units (million VND, card counts, percentages), individual percentile ranking is applied:
- Each metric is ranked from 1 to $N$ bank-wide (Rank 1 represents top performance).
- For "lower is better" metrics (NPL, CIR), sort order is reversed so lowest values achieve Rank 1.
- Total score equals the sum of ranks across both pillars:
$$	ext{Total Score} = 	ext{Scale Score } (diem\_qm) + 	ext{Financial Score } (diem\_fin)$$
- Managers with **lower Total Scores achieve higher National Overall Ranks** (Rank #1 belongs to the lowest Total Score).

---

## 5. 🔄 Data Engineering And Warehouse Architecture

Data moves through 3 processing stages from input Excel files to Power BI dashboards, as outlined in the diagram below:

<div align="center">

![Technical Processing Pipeline — 3 Stages](images/quy-trinh.png)

</div>

### Three Data Processing Stages:

- **Stage 1 – Input Data (`Excel – 3 File Số Liệu` / 3 Data Files):**
  Collect 3 source data files from operational units:
  1. **Dữ liệu hạch toán mỗi tháng (GL)** (`fact_txn_month` • **63,134** rows / 63 thousand rows): Contains revenue and expense entries across 7 regions & Head Office, used to compute revenues, costs, and regional P&L.
  2. **Dữ liệu sao kê thẻ mỗi tháng** (`fact_kpi_month` • **2,932,922** rows / 2.9 million rows, **117.2 MB**): Contains balances, debt buckets, and card statuses, used to calculate Head Office allocation drivers and measure NPL.
  3. **Dữ liệu kết quả sale của ASM mỗi tháng** (`kpi_asm_data` • **420** rows for **84** ASM personnel across 5 months): Contains sales metrics of 84 ASMs, used to compute scale scores for ranking.

- **Stage 2 – Automated Storage and Processing (`PostgreSQL + DBeaver`):**
  The warehouse uses a Kimball Star Schema inside schema `banking_project`, featuring **19 tables, 3 `views`, and 11 `stored procedures`**, structured in 3 steps:
  - **Step 1 – Ingestion (`Raw Staging Tables` via `DBeaver Import`):** Uses **DBeaver `Import`** to load 3 Excel files into staging tables (`stg_fact_txn_month` **63,134** rows, `stg_fact_kpi_month` **2,932,922** rows, `stg_asm_target` **420** rows) and normalizes province names (`pos_city_norm`), retaining over **36,000** card contracts in Ba Ria - Vung Tau.
  - **Step 2 – Calculation (`SQL & Stored Procedure`):**
    1. *Dimension Tables (`7 dim_ tables`)*: `dim_area` (8 zones), `dim_param_area` (64 provinces), `dim_month` (5 months), `dim_date` (151 days), `dim_asm` (84 personnel), `dim_report_detail` (55 indicators), `dim_sm_headcount` (35 headcount rows).
    2. *3-Step Temporary Tables (`6 tmp_ tables`)*: Share a unified vertical schema (`month_key`, `area_code`, `report_id`, `value`) storing intermediate 3-step results for P&L (`tmp_pnl_step1..3`) and ASM Ranking (`tmp_xh_step1..3`).
    3. *Fact Tables (`2 fct_ tables`)*: `fct_pnl_value` (**1,115** rows) stores post-allocation regional P&L; `fct_asm_value` (**8,536** rows) stores monthly metric values, scores, and ranks for all ASMs.
    4. *Execution Audit Log (`1 log_ table`)*: `log_proc_run` tracks execution across 11 stored procedures (**208** `START` and `OK` records, **0** `FAIL` records), accompanied by **9** virtual foreign keys in DBeaver.
  - **Step 3 – View Output (`Schema rpt`):** Constructs 3 reporting views (`v_baocao_tonghop` **35** rows, `v_xephang_asm` **388** rows, `v_baocao_pnl_excel_pivoted` **160** rows) for consumption.

<div align="center">

![Star Schema Data Warehouse Architecture](images/thiet-ke-schema.png)

</div>

- **Stage 3 – Dashboard Construction in Power BI (`DirectQuery`):**
  Power BI connects directly to the warehouse via DirectQuery. The solution utilizes **82 DAX measures**, including KPI calculations, **21** conditional formatting background `PnlTable_BgColor_*` and font color `PnlTable_FontColor_*` measures for the P&L table, alongside large-font HTML Content visuals and a **68**-metric Data Dictionary styled in **Executive Orange / Orange Tree**. Core modules include:

  1. **Standardization & Data Dictionary**: Standardizes **68** indicators and variables across 5 domain groups (`0. Identification & Hierarchy`, `1. Profit & Loss (P&L)`, `2. Financial & Headcount Ratios`, `3. Head Office Allocation Drivers`, `4. ASM Evaluation & Ranking`), documenting definitions, units, business meanings, and formulas.
  2. **Regional Business Results Report *(Dashboard 01)***: Matrix table with **32** financial, staffing, and efficiency indicators across `HỘI SỞ`, **7** business regions (`Nam Trung Bộ`, `Tây Bắc Bộ`, `Tây Nam Bộ`, `Đồng Bằng Sông Hồng`, `Đông Nam Bộ`, `Đông Bắc Bộ`, `Bắc Trung Bộ`), and `Total`. Conditional formatting highlights `1. Profit before tax` (deep orange background, white/gold text), group headers (dark backgrounds, high-contrast light text, rose-pink negative values), and detail rows (light backgrounds, crimson negatives, gray zeros).

  3. **ASM Ranking Report *(Dashboard 02)***: Detailed scorecard and ranking table for the ASM cohort (**74 – 84** personnel monthly) to reward top performers and coach underperforming managers. Includes filtering by month and region to examine `Total Score`, `Total Rank` alongside component values and ranks (`New Loans`, `New Loans Rank`, `PSDN`, `PSDN Rank`, `Approval Rate`, `Approval Rate Rank`, `NPL Ratio`...).

  4. **Regional Business Performance *(Dashboard 03)***: Deploys charts of revenue – cost – provision structures to compare profitability across **7** regions through 5 visual blocks:
     - *5 Executive KPI Cards*: `THU NHẬP` (**1,353,898 million VND**, +1.8%), `LỢI NHUẬN` (**250,450 million VND**, +8.4%), `CHI PHÍ HOẠT ĐỘNG` (**-235,122 million VND**, +1.1%), `CHI PHÍ DỰ PHÒNG` (**-868,327 million VND**, +0.0%), `NĂNG SUẤT BÌNH QUÂN` (**4,100 million VND**, +6.0%).
     - *Waterfall Chart – Decomposing Pre-Tax Profit Formation*: Displays 4 positive revenue steps (`1. In-term interest income` **1,676,835** million, `2. Bancassurance fees` **30,653** million, `3. Card service income` **101,481** million, `4. Overdue interest income` **1,497** million) and 3 negative cost deductions (`5. Funding & other net costs` **-456,568** million, `6. Operating expenses` **-235,122** million, `7. Provision expenses` **-868,327** million) yielding `8. Profit before tax` (**250,450** million).
     - *Bubble Chart – Regional Profitability & Cost Efficiency Benchmark*: Y-axis shows Profit Before Tax, X-axis shows Cost-to-Income Ratio (CIR), bubble size reflects regional Sale Manager headcount.
     - *Combo Column & Line Chart – Profit Trend & Capital Efficiency*: Benchmarks Profit Before Tax (Column) against Capital Efficiency (Line) across 7 regions (led in volume by Southwest at **167,883** million with **131.7%** capital efficiency; led in capital efficiency by South Central at **203.5%** with **50,036** million; Southeast is the sole loss-making region at **-48,763** million with **-78.0%** capital efficiency).
     - *Performance Evaluation & Key Takeaways Panel*: Summarizes 3 insight groups covering leading territories, loss warnings, and cross-selling potential in Bancassurance (only **1.69%** TOI) and card services (**5.6%** TOI) when in-term interest dominates **92.6%** and provision costs absorb **64.1%** of total operating income.

  5. **ASM Competency Radar *(Dashboard 04)***: Uses a 4-axis radar chart to benchmark Area Sales Managers (ASMs) across 4 core operational pillars: New Lending Volume (LTN), Active Card Customers (PSDN), Approval Rate, and NPL Safety. The page is organized into 4 clear blocks:
     - *Block 1 – Top 3 Leaders (Champion, Runner-up, Top 3)*: Built with clickable tabs directly inside the visual so viewers can switch instantly between Top 1, Top 2, and Top 3. Each tab presents a 4-axis radar polygon against the benchmark average, alongside 4 large KPI cards (LTN, PSDN, Approval, NPL) and tailored insights. For instance in February, Champion Hoang Van Nam (Red River Delta) ranked #1 with New Lending of **2,901 million VND**, onboarding **176 new customers**, an Approval Rate of **47.2%**, and keeping bad debt secure at **12.8%** NPL (well outperforming the bank-wide averages of **986 million VND**, **72 customers**, **41.8%**, and **15.5%** respectively).
     - *Block 2 – Top 3 At-Risk Managers (Bottom 1, Bottom 2, Bottom 3)*: Uses the same interactive tabs to spotlight the 3 lowest performers or highest bad debt ratios, enabling leaders to identify operational bottlenecks for coaching or intervention.
     - *Block 3 – 7-Region Benchmark*: Side-by-side radar plots displaying all 7 regions, clarifying balance and disparities between business volume and risk control across territories.
     - *Block 4 – Actionable Team Governance Matrix*: Classifies ASM personnel into 4 distinct performance tiers (Star Leaders, High Potential, Needs Improvement, and High Risk), offering practical recommendations for Executive Leadership.

  6. **Deep-Dive Diagnostic & Executive Proposals**: Multi-dimensional strategic findings and actionable recommendations for Executive Leadership (detailed in Section 6 – Part C).

---

## 6. 📊 Business Insights And Management Recommendations

### Part A – Fulfillment of Executive Leadership Requirements:

| Executive Leadership Mandate | Dashboard / Reporting Module | Verification Result |
|---|---|---|
| **Look up & reconcile actual P&L across 7 regions** | **01. BÁO CÁO KẾT QUẢ KINH DOANH** | **Satisfied**: Features all 32 financial metrics for 7 regions and Head Office post-allocation, matching 100% of GL for direct audit. |
| **Fairly rank ASMs for rewarding & coaching** | **02. BÁO CÁO XẾP HẠNG ASM** | **Satisfied**: Summarizes the 2-pillar scorecard for 74 - 84 ASM personnel, clearly identifying top performers to reward and underperformers to coach. |
| **Compare revenue – cost – provision & profitability** | **03. HIỆU QUẢ KINH DOANH THEO VÙNG** | **Satisfied**: Visualizes 8 profit formation steps, Profit vs CIR correlation, and Capital Efficiency across 7 regions. |
| **Identify ASMs trading credit risk for scale** | **04. ĐÁNH GIÁ NĂNG LỰC ASM** | **Well Satisfied**: Uses a 4-axis radar chart to benchmark sales and credit risk between top performers and at-risk managers, with clickable tabs to inspect each person directly on the dashboard. |
| **Standardize definitions & propose executive actions** | **DATA DICTIONARY & DEEP-DIVE DIAGNOSTIC** | **Satisfied**: Standardizes 68 business metrics and delivers an in-depth diagnostic report with a quantitative action matrix for leadership. |

### Part B – Notable Findings from May 2023 Figures:

1. **Southwest Region – Profit increased mainly due to reduced net provision expenses:**
   - *Observed Facts:* Regional pre-tax profit increased by **+4,267.8 million VND**, accounting for **97.2%** of system-wide profit growth in May. However, net card income increased by only 16.3 million VND and operating expenses reduced profit by −195.9 million VND, whereas **net provision expenses decreased by +4,447.3 million VND**. The region recorded the **highest extended NPL ratio in the system (21.99%)** with zero Area Sales Managers (ASMs) reaching the top 25 nationwide.
   - *Business Assessment:* May profit growth stemmed primarily from lower net provision charges. Net income from card operations grew by just 16.3 million VND compared to the prior month, remaining nearly flat and showing no significant improvement in core business revenue during the period.
   - *Points Requiring Further Inspection:* Verify whether the provision decrease came from actual debt recovery or technical debt restructuring adjustments; propose on-site collection quality audits in July.

2. **Southeast Region – Net income grew but profit remained negative under provision expense pressure:**
   - *Observed Facts:* The region recorded a pre-tax loss of **−8,787.4 million VND** incurred in May alone (5-month cumulative loss of **−48,763 million VND**, or **−48.8 billion VND**). Sales activity expanded strongly as **net income rose by +3,210.7 million VND**, but this was offset by **provision expenses increasing by −3,234.2 million VND**, pushing **16 out of 19 Area Sales Managers** into the bottom group of the ranking despite high sales volume.
   - *Business Assessment:* The region recorded negative profit because credit risk provision expenses incurred during the period exceeded the incremental net income generated from business operations.
   - *Points Requiring Further Inspection:* Conduct vintage/cohort analysis to verify whether rapid loan originations from prior periods are migrating into overdue debt buckets; review delinquent contracts in the Southeast within 30 days to assess migration speed and tighten approval criteria.

3. **Red River Delta – Profit increased due to lower net provisions while maintaining safe scale leadership:**
   - *Observed Facts:* Regional pre-tax profit increased by **+1,310.9 million VND** compared to the prior month, while actual net card income declined by **−232.2 million VND** and net provision expenses decreased by **+1,455.8 million VND**. Cumulatively through May, the region led nationwide new loan disbursement (**55,010 million VND**, 1.5 times the second-ranked region) while keeping its NPL ratio at **13.9%** (below the **17.3%** bank-wide average).
   - *Business Assessment:* Although the region serves as the safest scale pillar in the system, the slight dip in net card income in May warrants continued monitoring in upcoming periods.
   - *Points Requiring Further Inspection:* Because accounting ledgers do not separate new provision charges from write-back recoveries, internal audit should inspect detailed provision entries to distinguish natural risk reduction from technical accounting adjustments before concluding long-term trends.

4. **South Central Coast – Strong ranking results paired with the lowest NPL ratio and leading capital efficiency:**
   - *Observed Facts:* Operating with 5 Area Sales Managers, the territory maintained the lowest extended NPL ratio bank-wide (**11.24%**), achieved the highest return on capital in the system (**203.5%** on the cumulative May chart), and placed **4 out of 5 Area Sales Managers** in the top 25 nationwide.
   - *Business Assessment:* These results position the South Central Coast as a benchmark model for capital safety optimization and credit quality control worthy of further study for replication.
   - *Points Requiring Further Inspection:* Given the small territory scale (5 Area Sales Managers), survey actual underwriting and customer screening procedures in the South Central Coast and evaluate controlled pilot testing before scaling to other regions.

### Part C – Deep-Dive Diagnostic Report and Executive Decision Support:

P&L findings from 7 regions and ASM scorecard results are synthesized into **4 governance tiers**:

1. **4 Core Indicators:**
   - **Highest Profit Contribution – `67.0%`:** Southwest leads the bank, contributing +167.9 billion VND to total system profit.
   - **Peak NPL Ratio – `22.0%`:** Southwest far exceeds the safe bank-wide average benchmark.
   - **Negative Pre-Tax Profit – `-48.8 billion`:** Southeast is the sole region recording a cumulative 5-month loss.
   - **Optimal Quality Governance – `11.2% NPL`:** South Central Coast maintains the lowest NPL ratio while contributing 20% of profit (+50.0 billion VND).

2. **Profit Analysis – Pre-Tax Profit Contribution Across 7 Regions (Waterfall Chart):**
   - *Positive cumulative contributions:* Red River Delta (**+54.3 billion VND**), South Central Coast (**+50.0 billion VND**), Southwest (**+167.9 billion VND**), and 3 Other Regions (**+27.0 billion VND**) build cumulative profit from these territories to **+299.2 billion VND**.
   - *Downward drag:* The **−48.8 billion VND** loss in the Southeast reduces cumulative profit from profitable regions by **16%**.
   - *System-wide finish line:* Consolidated bank-wide pre-tax profit closes at **+250.5 billion VND**.

3. **Impact of Southeast Financial Results on ASM Rankings:**
   - *Maximum financial penalty score (`26 points` – Maximum Penalty):* Because the region incurred a −48.8 billion VND loss (ranking 7/7 bank-wide across financial indicators), all Area Sales Managers in the Southeast received the maximum penalty of **26 points**, regardless of personal sales success.
   - *Impact on ASM Rankings:*
     * Actual figures in Southeast illustrate: Nguyen T. Loan (sales **Good – Top sale**, **16** points) only reaches **Rank 18**; Tran V. Hung (sales **Fair**, **14** points) reaches **Rank 21**; Le T. Mai (sales **Average**, **11** points) reaches **Rank 24**.
     * On the full nationwide leaderboard: Le Van Binh dropped from sales rank #24 to final rank #31 (down 7 places); Tran Van Hai dropped from sales rank #28 to #33 (down 5 places); Tran Van Anh dropped from sales rank #36 to #41 (down 5 places).
   - *Recommendation:* **16/19 ASMs (84%)** in the Southeast fall into the bottom ranking tier. Individual sales performance should be decoupled from regional loss results to retain talent, while assigning regional profit and bad debt recovery accountability to territory directors to address the cumulative **48.8 billion VND** loss.

4. **Proposed Action Matrix by Territory and Quantitative Impact:**

| Priority Level | Territory | Core Issue | Primary Action | Quantitative Impact |
|:---:|---|---|---|---|
| **Urgent** | **Southwest** | Peak NPL at **22.0%** – Profit reliant on provision decrease | Audit loan portfolio; separate new provision charges from write-back recoveries | **290,377 million VND** *(Provision transparency)* |
| **Urgent** | **Southeast** | Loss of **−48.8 billion** – **84%** of managers pulled to bottom | Recover bad debt & **Decouple individual Scorecard** from regional profit targets | **+55 billion VND** *(Eliminate loss when NPL reaches **14%**)* |
| **Priority** | **North Central Coast** | Operating expenses exceeding the **24%** revenue cap | Review branch expenses; lock spending caps to actual sales turnover | **~1.5 billion VND/month** *(Bring CIR to safe **21%** level)* |
| **Long-term** | **South Central Coast** | High capital efficiency – Low NPL (**11.2%**) | Standardize underwriting & cost management procedures for replication | **Keep NPL below 12%** *(Capital efficiency above **200%**)* |
| **Sustain** | **Red River Delta** | Scale leader (accounting for **30.6%** of new lending) | Maintain lending growth pace; coach managers to evenly lift team productivity | **Disbursement above 55 billion VND/month** *(Hold **30.6%** share)* |

### Five Proposals Submitted to Executive Leadership:

| # | Management Proposal | Empirical Data Basis | Responsible Unit · Timeline |
|:---:|:---|:---|:---|
| 01 | **Add a profit metric excluding provision fluctuations:** Separate new provision charges from write-back recoveries to reflect core business profitability accurately. | Current reporting shows only a single net provision line without separating new charges and recoveries | Risk Management Division · June |
| 02 | **Audit delinquent loan portfolios across 3 focal regions:** Inspect overdue contracts in the Southeast, Northeast, and Northwest. | Total provision expenses across these 3 regions increased by **6,035.1 million VND** in May | Regional ASMs + Risk Management · 30 Days |
| 03 | **Conduct field audits of underwriting and debt collection in the Southwest:** Re-examine application quality and debt recovery effectiveness. | NPL reached **21.99%** (highest in the system) while accounting for **97.2%** of profit growth | Commercial Division + Risk Management · July |
| 04 | **Study and pilot-test practices from the South Central Coast:** Survey underwriting and customer screening workflows before considering broader rollout. | Lowest NPL ratio (**11.24%**) with 4/5 regional managers in the top 25 | Commercial Division · Review after 2 Months |
| 05 | **Review evaluation criteria and incentive mechanisms:** Decouple individual ASM sales evaluation from regional provision swings; combine sales results, credit quality, financial efficiency, and tenure. | Prevents unfair evaluation pushing 84% of Southeast ASMs to the bottom or misrewarding regions where profit rose due to provision drops | Executive Board · Apply Immediately |

---

## 7. 📚 Key Takeaways

1. **Understand banking domain fundamentals before writing code:**
   When working with banking data, understanding the business meaning of metrics is essential before writing SQL queries. For instance, knowing why funding costs carry negative signs and why Head Office expenses use province code `'00'` and zone `'A'` is vital for correct allocation logic. Approaching the problem purely from a technical angle makes it difficult to design valid allocations.

2. **Cleaning dimensional master data is critical:**
   Detecting the two naming conventions `"Bà Rịa - Vũng Tàu"` and `"Vũng Tàu"` enabled proper normalization, preserving over **36,000 card contracts** and preventing severe distortion in Southeast NPL figures.

3. **Enforce data integrity and transaction control in ETL pipelines:**
   Six intermediate tables utilize a shared vertical schema. Stored procedures strictly control transactions and record execution history in `log_proc_run`, pinpointing errors and facilitating rollbacks.

4. **Design reporting systems serving both reconciliation and executive analysis:**
   Detailed reconciliation tables enable users to audit exact figures, while visual dashboards and analytical sections highlight trends and issues requiring intervention. Combining both approaches satisfies operational teams and Executive Leadership alike.

5. **Recognize data boundaries to avoid premature conclusions:**
   When delinquency data on card statements is tagged only to branch codes at the regional level rather than individual ASM contracts, reports must state this limitation clearly (and transparently analyze the impact of regional penalties in executive proposals) so leadership can make fair, grounded personnel decisions.

---

## 8. 🛠️ Tools Used

Tools were selected to align with the 3 stages in the data processing pipeline:

| Technology | Component | Technical Role In Project | Selection Justification |
|---|---|---|---|
| **Microsoft Excel** | 3 Input Data Files (`.xlsx`) | Supplies the 3 raw input datasets: `1. Dữ liệu hạch toán mỗi tháng (GL)`, `2. Dữ liệu sao kê thẻ mỗi tháng`, and `3. Dữ liệu kết quả sale của ASM mỗi tháng` | Native file format exported from core operational systems across banking divisions |
| **DBeaver 24** | Data Import, ER Diagram | Performs direct **`Import`** of data from the 3 input Excel files (117.2 MB) into 3 PostgreSQL `staging` tables, manages 9 virtual foreign keys, and executes SQL scripts | Visual database administration tool supporting fast large-file imports and relational diagram inspection |
| **PostgreSQL 16** | PL/pgSQL, 11 Stored Procedures | Hosts the Star Schema data warehouse (19 tables, 3 `views`), automatically executing Head Office cost allocation logic (Rule 1 & Rule 2) and ASM ranking calculations | Processes nearly 3 million rows with exact numeric precision and strict transaction control |
| **Power BI Desktop** | DirectQuery, 82 DAX Measures, HTML Content | Builds the **intuitive management reporting system** (centered on **4 Core Output Dashboards**, Data Dictionary of **68** metrics, and Deep-Dive diagnostic reports `INSIGHT`) | Enables Executive Leadership and operational divisions to both look up/reconcile detailed figures and perform interactive visual analysis |

---

## 9. 📂 Project Repository Structure

The project is organized into core directories:

```text
.
├── sql/                # SQL scripts for staging, dimensional tables, stored procedures, and reporting views
│   ├── dim/            # Staging table setup and dimension catalogs: init_staging_tables, dim_area, dim_month_headcount, dim_asm, dim_report_detail
│   ├── tmp/            # Temporary tables and 3-step calculation procedures for P&L and ASM Ranking
│   ├── fct/            # Primary fact tables and pipeline orchestrators: fct_pnl_allocation, fct_xephang_asm, sp_pipeline
│   └── rpt/            # 3 clean reporting views: rpt_pnl_view, rpt_xephang_view, rpt_pnl_excel_pivoted_view
├── images/             # Technical processing pipeline diagram and Star Schema architecture diagram
├── docs/               # Detailed operations documentation: HIEN_TRANG_HE_THONG, PIPELINE, NHAT_KY_CONG_VIEC, LOI_THUONG_GAP
├── output/             # Output management reporting deliverable in Power BI (.pbix)
├── README.md           # Project documentation in Vietnamese (default)
└── README_eng.md       # Project documentation in English
```

---

## 10. 📖 Project Documentation

Operations and architecture guides are maintained in the `docs/` directory:
- [`docs/HIEN_TRANG_HE_THONG.md`](docs/HIEN_TRANG_HE_THONG.md) — Details on warehouse status, row counts across 19 tables and 3 `views`, Power BI 82 DAX measures model, and verification benchmarks.
- [`docs/PIPELINE.md`](docs/PIPELINE.md) — 3-stage technical pipeline architecture and audit instructions.
- [`docs/NHAT_KY_CONG_VIEC.md`](docs/NHAT_KY_CONG_VIEC.md) — Detailed operational log of tasks completed across all development phases.
- [`docs/LOI_THUONG_GAP.md`](docs/LOI_THUONG_GAP.md) — Compendium of **58 common operational issues** across source data, SQL, Python, and DAX.

---

## 11. 👤 Author

<div align="center">

**Trần Ngọc Đức** · [Email](mailto:tranduc22104@gmail.com) · [LinkedIn](https://www.linkedin.com/in/tr%E1%BA%A7n-ng%E1%BB%8Dc-%C4%91%E1%BB%A9c-48b3a7439/)

</div>
