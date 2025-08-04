# 🔎 SQL Exploratory Data Analysis Project
#### A collection of SQL scripts for exploratory data analysis on sales data, showcasing various analytical techniques.

---

#### Project Repository URL: [charlespughtech/sql_exploratory_data_analysis_project](https://github.com/charlespughtech/sql_exploratory_data_analysis_project)

---

**Author:** Charles Pugh - Google-certified Data Analyst  
**Website:** [https://charlespughtech.github.io/](https://charlespughtech.github.io/)  
**Email:** [charlespughtech@gmail.com](mailto:charlespughtech@gmail.com)  
**LinkedIn:** [https://www.linkedin.com/in/charlespughtech/](https://www.linkedin.com/in/charlespughtech/)  
**Date:** 2025-08-04

---

Welcome to my **SQL Exploratory Data Analysis Project** repository!

## 📖 Project Overview

**This project involves:**
- **Analytical Techniques:** Demonstrating magnitude, ranking, change over time, cumulative, performance, data segmentation, and part-to-whole analyses.
- **SQL Scripts:** A collection of scripts for exploratory data analysis (EDA) on sales data.
- **Reports:** Generating comprehensive customer and product reports with key metrics and KPIs.

---

## 🛢 Data Architecture

This project leverages the gold layer created during the data warehouse from the [SQL Server Data Warehouse Project](https://github.com/charlespughtech/sql-data-warehouse-project), which contains business-ready data optimized for analytics.
- **Gold Layer:** Includes tables like `gold.fact_sales`, `gold.dim_products`, and `gold.dim_customers`, as well as views such as `gold.report_customers` and `gold.report_products`.
- If you are unable to perform the prior project, please use the datasets included within this repository either the gold CSV files (run the 00_init_database.sql to initialise the database) or the BAK file to restore the data.

---

## 🛠️ Important Links & Tools (Free)

- [**Datasets**](https://github.com/charlespughtech/sql_exploratory_data_analysis_project/tree/main/datasets): Project datasets (CSV files).
- [**SQL Server Express**](https://www.microsoft.com/en-us/sql-server/sql-server-downloads): Database server.
- [**SQL Server Management Studio (SSMS)**](https://learn.microsoft.com/en-us/ssms/install/install?view=sql-server-ver16): Database management tool.
- [**Git Repository**](https://github.com/charlespughtech/sql_exploratory_data_analysis_project): Project source code.
- [**DrawIO**](https://www.drawio.com/): Optional for diagrams.

---

## 📋 Project Requirements

### Exploratory Data Analysis (EDA)
#### Objective
Conduct EDA on sales data to uncover insights into customer behavior, product performance, and sales trends using SQL scripts.

Specifications:
- **Techniques:** Apply magnitude, ranking, change over time, cumulative, performance, segmentation, and part-to-whole analyses.
- **Reports:** Generate customer and product reports with detailed metrics and KPIs.
- **Documentation:** Ensure clear documentation for stakeholders and analysts.

---


## 🔎 SQL Techniques Used (Basic to Advanced)
- **`SELECT` Statements:** Used to retrieve specific columns and rows from the database, focusing on key metrics such as sales amounts, product categories, and customer demographics.
- **Filtering:** `WHERE` clauses applied to filter data based on specific conditions, such as date ranges or product categories, ensuring relevant data is analyzed.
- **Grouping:** `GROUP BY` clauses used to aggregate data by dimensions like product category or customer segment, enabling insights into sales performance across different groups.
- **Window Functions:** Utilized for advanced analytics, including `LAG()` for previous period comparisons and `AVG() OVER()` for moving averages, enhancing year-over-year comparisons and segmented metrics.
- **Conditional Logic:** Employed `CASE` statements for dynamic categorization of performance metrics, allowing for flexible and context-sensitive analysis.
- **Joins and Aggregations:** Used `LEFT JOIN` to integrate data across multiple dimensions, ensuring comprehensive analysis of sales data. `GROUP BY` clauses were applied to aggregate data effectively, enabling insights into sales performance across different categories.
- **Date Functions:** Applied `DATEDIFF()` and `YEAR()` for precise time-based analysis, facilitating trend identification and seasonal analysis.
- **Aggregation Functions:** `SUM()`, `COUNT()`, and `AVG()` were used to derive actionable insights from raw data, providing a clear view of sales performance and customer behavior.
- **Common Table Expressions (CTEs):** Structured queries with `CTEs` to enhance readability and manage complex logic efficiently, making the SQL scripts easier to understand and maintain.

---

## 🗃️ Repository Structure

```bash
sql_exploratory_data_analysis_project/
│
├── datasets/                               # Datasets used for the project (CSV files and a BAK file that can be used tio restore the database)
│
├── docs/                                   # Project documentation
│
├── scripts/                                # SQL scripts for analyses and reports
│   ├── 00_init_database.sql                # Database initialization
│   ├── 01_database_exploration.sql         # Initial database exploration
│   ├── 02_dimensions_exploration.sql       # Dimension table exploration
│   ├── 03_date_range_exploration.sql       # Date range exploration
│   ├── 04_measures_exploration.sql         # Measures exploration
│   ├── 05_magnitude_analysis.sql           # Magnitude analysis
│   ├── 06_ranking_analysis.sql             # Ranking analysis
│   ├── 07_change_over_time_analysis.sql    # Change over time analysis
│   ├── 08_cumulative_analysis.sql          # Cumulative analysis
│   ├── 09_performance_analysis.sql         # Performance analysis (year-over-year)
│   ├── 10_data_segmentation.sql            # Data segmentation
│   ├── 11_part_to_whole_analysis.sql       # Part-to-whole analysis
│   ├── 12_report_customers.sql             # Customer report generation
│   └── 13_report_products.sql              # Product report generation
│
├── README.md                               # Project overview and instructions
└── LICENSE                                 # License information
```

---

## © Licence

This project is licensed under the [MIT License](https://github.com/charlespughtech/sql_exploratory_data_analysis_project/blob/main/LICENSE). You are free to use, modify, and share this project with proper attribution.

---

🤝🏻 Credit to [DataWithBaraa](https://github.com/DataWithBaraa) for inspiration and guidance.

---

## 📩 Contact

**For any enquiries or further information, please contact**:

**Charles Pugh** - Google-certified Data Analyst  
**Website:** [https://charlespughtech.github.io/](https://charlespughtech.github.io/)  
**Email:** [charlespughtech@gmail.com](mailto:charlespughtech@gmail.com)  
**LinkedIn:** [https://www.linkedin.com/in/charlespughtech/](https://www.linkedin.com/in/charlespughtech/)

---
