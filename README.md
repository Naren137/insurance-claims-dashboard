# Insurance Claims Analysis Dashboard

## 📌 Background and Overview
This project focuses on analyzing insurance claims data to uncover trends in profitability, customer behavior, and operational efficiency. The goal was to build a professional-quality dashboard that answers key business questions using a full data workflow.

- **Domain**: Insurance
- **Tools Used**: Excel (Data Cleaning), SQL (Exploratory Analysis), Power BI (Dashboard Visualization)
- **Objective**: Identify profitability trends, customer segments, and key claim drivers to support data-driven decisions.

---

## 🧱 Data Structure Overview
The dataset contains structured data from an insurance company with the following key columns:

- `Policy_ID`, `Customer_ID`
- `Policy_Type`, `Claim_Status`, `Number_of_Claims`
- `Premium_Amount`, `Claim_Amount`, `Profit`, `Profit_Margin`
- `Last_Interaction_Date`, `Days_Since_Last_Interaction`, `Policy_Active`
- `City`, `Age Group Label`, `Year`

### Cleaning & Preparation
- Cleaned missing values and invalid entries in **Excel**
- Transformed and explored data using **SQL** for EDA
- Created SQL views for key metrics and imported into **Power BI**

---

## 🧾 Executive Summary
Key findings from the dashboard:

- **Total Premium Revenue**: 255.53M
- **Total Claims Paid**: 109.06M
- **Total Profit**: 146.47M
- **Total Claims Filed**: 51.48K

Despite a healthy overall profit, **Profit Margins** were negative in several segments, indicating inefficiencies and higher relative claim payouts.

---

## 🔍 Insights Deep Dive

### 1. **Financial Breakdown by Age Group**
- 35-44 age group has the **highest premium revenue and profit**
- Profit and claims are proportional across all groups

### 2. **Claims Trend Over Time**
- Approved claims remain dominant
- Rejected claims stay consistent; claim payouts are **highest in 2023**

### 3. **Profitability by City**
- **Chicago, LA, and Phoenix** lead in total profit
- Cities with lower profits need investigation for performance improvement

### 4. **Claims Distribution by Policy Type & Status**
- Auto policies have the highest claim volume across all statuses
- Home and Travel policies have **higher rejection rates**

---

## ✅ Recommendations

1. **Investigate cities with low profit margins** (e.g., Houston)
2. **Improve claim processing efficiency** for Auto policies
3. **Review approval rates** by policy type to reduce unnecessary payouts
4. Consider **targeted marketing** to the 35-44 age segment to boost revenue

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
- **Excel** for cleaning nulls, removing outliers
- **SQL** for aggregations, joins, filtering
- **Power BI** for visuals, DAX KPIs, slicers & interactions

---

## 🚀 Outcome
This project demonstrates the ability to clean, analyze, and communicate real-world business data using industry tools. It showcases technical skills in SQL and Power BI while addressing stakeholder needs through clear insights and recommendations.

---
