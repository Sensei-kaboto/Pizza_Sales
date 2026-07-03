# 🍕 Pizza Sales Analysis Using SQL

## 📌 Project Overview

This project analyzes a pizza sales dataset using **SQL Server** to extract meaningful business insights. The objective is to answer key business questions by calculating important KPIs, identifying sales trends, and analyzing product performance.

This project is the first phase of a complete data analytics workflow. The next phase will involve building an interactive **Excel dashboard** based on the SQL analysis.

---
<img width="1511" height="874" alt="Pizza" src="https://github.com/user-attachments/assets/fdcaefe0-3cb3-4ca8-90d0-fdbf04a1142f" />



---

## 🔄 Project Workflow

```text
CSV Dataset
      │
      ▼
Import into SQL Server
      │
      ▼
Data Cleaning & Validation
      │
      ▼
Business KPI Calculation
      │
      ▼
Sales Trend Analysis
      │
      ▼
Product Performance Analysis
      │
      ▼
Power BI Dashboard (Coming Next)
```
---
## 📂 Dataset

The dataset contains historical pizza sales transactions, including:

- Order ID
- Order Date
- Order Time
- Pizza Name
- Pizza Category
- Pizza Size
- Quantity Sold
- Unit Price
- Total Price

---

## 🎯 Business Objectives

The analysis aims to answer the following business questions:

* What is the total revenue generated?
* What is the average order value?
* How many pizzas were sold?
* How many orders were placed?
* What is the average number of pizzas per order?
* Which days and hours generate the most orders?
* Which pizza categories and sizes contribute the most to sales?
* What are the best-selling and worst-selling pizzas?

---

## 🧹 Data Cleaning

Before performing the analysis, the dataset was cleaned and validated.

The following steps were completed:

- Imported the CSV dataset into SQL Server.
- Optimized column data types to improve storage efficiency.
- Converted text-based dates into SQL `DATE` format.
- Validated date conversions using `TRY_CONVERT()`.
- Checked for invalid and missing values.
- Ensured numeric columns used appropriate data types.

---

## 🛠️ Tools Used

- SQL Server
- DBeaver
- Git
- GitHub
- Microsoft Excel (Dataset)

---

## 💼 Skills Demonstrated

Throughout this project, the following SQL and analytical skills were applied:

- Data Cleaning
- Data Validation
- Data Type Optimization
- SQL Query Writing
- Business KPI Calculation
- Sales Trend Analysis
- Product Performance Analysis
- Data Aggregation
- Business Insight Generation
- Documentation

---


## 📊 Key Performance Indicators (KPIs)

The following KPIs were calculated using SQL:

* Total Revenue
* Average Order Value
* Total Pizzas Sold
* Total Orders
* Average Pizzas per Order

---

## 📈 Sales Analysis

The project includes several business analyses:

### Daily Sales Trend

* Total orders by day of the week.

### Hourly Sales Trend

* Total orders by hour of the day.

### Sales by Pizza Category

* Total sales for each pizza category.
* Percentage contribution of each category to total sales.
* Monthly and quarterly category analysis.

### Sales by Pizza Size

* Total sales by pizza size.
* Percentage contribution of each size.
* Monthly and quarterly size analysis.

### Product Performance

* Total pizzas sold by category.
* Top 5 best-selling pizzas.
* Bottom 5 worst-selling pizzas.

---

## 📂 Repository Structure

```
pizza-sales-sql-analysis/
│
├── README.md
├── sql/
│   ├── 01_kpis.sql
│   ├── 02_sales_trends.sql
│   ├── 03_sales_analysis.sql
│   └── 04_best_worst_sellers.sql
│
├── images/
│   └── Query result screenshots
│
└── dashboard/
    └── (Coming Soon)
```

---

## 📚 SQL Concepts Demonstrated

This project demonstrates practical use of:

* SELECT
* Aggregate Functions (`SUM`, `COUNT`)
* `GROUP BY`
* `ORDER BY`
* `DISTINCT`
* Date Functions (`DATENAME`, `DATEPART`, `MONTH`)
* Subqueries
* Data Type Conversion using `CAST`

---

## 🚀 Next Steps

The next phase of this project will include:

* Building an interactive Power BI dashboard.
* Creating KPI cards.
* Designing trend and comparison charts.
* Adding interactive filters and slicers.
* Publishing the completed dashboard.

---

## 📸 Project Preview

Screenshots of SQL queries and their outputs are included in the **images/** folder.

---

## 👨‍💻 Author

**Daniel  Kaboto**

Aspiring Data Analyst | AI Developer | Full-Stack Developer

I am currently building a portfolio of end-to-end data analytics projects to strengthen my SQL, Power BI, Excel, and Python skills while preparing for a career as a Data Analyst.

---

## ⭐ If you found this project useful

If you like this project, consider giving it a ⭐ on GitHub. Feedback and suggestions are always welcome.
