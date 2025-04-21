# Insurance Claims Analysis Dashboard

## 📌 Background and Overview
This project focuses on analyzing insurance claims data to uncover trends in profitability, customer behavior, and operational efficiency. The goal was to build a professional-quality dashboard that answers key business questions using a full data workflow.

- **Domain**: Insurance
- **Tools Used**: Excel (Data Cleaning), SQL (Exploratory Analysis), Power BI (Dashboard Visualization)
- **Objective**: Identify profitability trends, customer segments, and key claim drivers to support data-driven decisions.

---

## 🧱 Data Preparation Workflow

### 1. **Excel – Data Cleaning**
- Removed blanks and placeholder values (e.g., -1, 'NA')
- Standardized column formats (dates, numerical values)
- Filled missing values using logical replacements (e.g., NULLs in `Policy_End_Date`, invalid dates in `Last_Interaction_Date`)

### 2. **SQL – Exploratory Data Analysis (EDA)**
- Imported cleaned data into SQL
- Created views for segmentation:
  - Profitability by age group
  - Claim amount trends by status and year
  - Geographic claim distribution
- Calculated and verified metrics like total profit, average claim amount, and active policy distribution

### 3. **Power BI – Dashboard Creation**
- Connected SQL views directly to Power BI
- Built custom DAX measures:
  - Total Profit, Premium Revenue, Profit Margin (%)
  - Claim Approval Rate, Claim Count by Policy
- Created visual hierarchy for executive summaries, detailed trends, and drill-downs

---

## 🧾 Executive Summary
Key findings from the dashboard:

- **Total Premium Revenue**: 255.53M
- **Total Claims Paid**: 109.06M
- **Total Profit**: 146.47M
- **Total Claims Filed**: 51.48K
- **Avg. Profit Margin**: –10.3% (highlighting inefficiencies across some segments)

These insights allow insurers to monitor profitability across customer groups and policy types, evaluate high-risk geographies, and improve retention and claim processing.

---

## 🔍 Insights & Business Impact

### 1. Financial Breakdown by Age Group
- **Insight**: The 35–44 age group generated the highest premium revenue and total profit.
- **Impact**: Marketing campaigns should target this demographic; loyalty rewards or policy upgrades can help retain this high-value group.

### 2. Claims Trend Over Time
- **Insight**: Approved claims remained stable; pending claims increased slightly.
- **Impact**: A growing volume of pending claims may signal process bottlenecks. Operational teams should review turnaround times and documentation workflows.

### 3. Profitability by City
- **Insight**: Chicago, Los Angeles, and Phoenix led in profit. Houston and Denver underperformed.
- **Impact**: Pricing models should be re-evaluated in underperforming regions. Consider revising risk models or offering reduced coverage in low-profit areas.

### 4. Claims Distribution by Policy Type & Status
- **Insight**: Auto policies contributed the largest share of claims and profit. Travel policies had high rejection rates.
- **Impact**: Evaluate underwriting and pricing strategy for Auto policies (profitable but high claim volume). Travel policy terms may need revision to reduce rejections.

### 5. Engagement & Policy Activity
- **Insight**: Customers with more recent interactions tend to have higher active policy rates.
- **Impact**: Invest in CRM outreach and re-engagement strategies for customers inactive for 180+ days to reduce churn.

---

## ✅ Recommendations

1. **Refocus acquisition campaigns** on 25–44 age groups in top-profit cities
2. **Optimize claim processing** and streamline the pending-to-approved pipeline
3. **Re-evaluate risk models** for underperforming regions
4. **Enhance product mix** by bundling profitable policy types and retiring loss-makers
5. **Leverage engagement data** to proactively retain customers with personalized messaging

---

## 📎 File Structure
```
├── Excel_Cleaned_Data.xlsx
├── SQL_Queries/
│   ├── exploratory_analysis.sql
│   ├── views_creation.sql
├── PowerBI_Dashboard.pbix
├── screenshots/
│   └── dashboard_final.png
└── README.md
```

---

## 📊 Tools Used
- **Excel**: Data cleaning, standardization, and formatting
- **SQL**: EDA, joins, aggregations, custom metric views
- **Power BI**: Visualization, KPI cards, DAX, interactive drilldowns, slicers

---

## 🚀 Outcome
This project demonstrates:
- Strong end-to-end workflow across Excel, SQL, and Power BI
- Advanced dashboarding with stakeholder-facing storytelling
- Ability to translate raw data into actionable business strategies

---

**Author:** *[Your Name]*  
**Portfolio:** [GitHub Profile](https://github.com/yourusername)  
**LinkedIn:** [linkedin.com/in/yourprofile](https://linkedin.com/in/yourprofile)
