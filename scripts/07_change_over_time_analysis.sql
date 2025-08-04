/*
===============================================================================
Change Over Time Analysis
===============================================================================
Purpose:
    - To track trends, growth, and changes in key metrics over time.
    - For time-series analysis and identifying seasonality.
    - To measure growth or decline over specific periods.

SQL Functions Used:
    - Date Functions: DATEPART(), DATETRUNC(), FORMAT()
    - Aggregate Functions: SUM(), COUNT(), AVG()
===============================================================================
*/

-- YEAR()
-- Analyse sales performance over time
-- Quick Date Functions
-- Analysing sales perfromance for each year
SELECT
    YEAR(order_date) AS order_year,
    SUM(sales_amount) AS total_sales,
    COUNT(DISTINCT customer_key) AS total_customers,
    SUM(quantity) AS total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY YEAR(order_date)
ORDER BY YEAR(order_date) ASC;

-- MONTH()
-- Analysing sales perfromance for each month
SELECT
    MONTH(order_date) AS order_month,
    SUM(sales_amount) AS total_sales,
    COUNT(DISTINCT customer_key) AS total_customers,
    SUM(quantity) AS total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY MONTH(order_date)
ORDER BY MONTH(order_date) ASC;

-- YEAR(), MONTH()
-- Analyse sales performance specifically to show both year and month
SELECT
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(sales_amount) AS total_sales,
    COUNT(DISTINCT customer_key) AS total_customers,
    SUM(quantity) AS total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY YEAR(order_date), MONTH(order_date) ASC;

-- DATETRUNC(MONTH,)
-- We can use the DATETRUNC() function to round to a specified date part
-- We can specify MONTH as the first DATETRUNC() argument to truncate the dates to the 1st day of each month
SELECT
    DATETRUNC(MONTH, order_date) AS order_date,
    SUM(sales_amount) AS total_sales,
    COUNT(DISTINCT customer_key) AS total_customers,
    SUM(quantity) AS total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY DATETRUNC(MONTH, order_date)
ORDER BY DATETRUNC(MONTH, order_date) ASC;

-- DATETRUNC(YEAR,)
-- We can specify YEAR as the first DATETRUNC() argument to truncate the dates to the 1st day of each year
SELECT
    DATETRUNC(YEAR, order_date) AS order_date,
    SUM(sales_amount) AS total_sales,
    COUNT(DISTINCT customer_key) AS total_customers,
    SUM(quantity) AS total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY DATETRUNC(YEAR, order_date)
ORDER BY DATETRUNC(YEAR, order_date) ASC;

-- FORMAT()
-- To change to a more specific date format for analaysis, we can use the FORMAT() function
-- NOTE: using FORMAT() will output a string and will make sorting the data an issue, as it will sort alphabeitcally - e.g. August first.
--       use 'yyyy-MM' for the month to output numbers for the month within the string (e.g.2011-08)...
--       ...as opposed to using 'yyyy-MMM' and returning a text abbreviation (e.g. 2011-Aug)

-- This will output the months as a three letter month abbreviation within the string
-- This  month format using FORMAT() cannot be ordered correctly
SELECT
    FORMAT(order_date, 'yyyy-MMM') AS order_date,
    SUM(sales_amount) AS total_sales,
    COUNT(DISTINCT customer_key) AS total_customers,
    SUM(quantity) AS total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY FORMAT(order_date, 'yyyy-MMM')
ORDER BY FORMAT(order_date, 'yyyy-MMM') ASC;

-- This will output the months as a two digit month within the string
-- This month format using FORMAT() can be ordered correctly
SELECT
    FORMAT(order_date, 'yyyy-MM') AS order_date,
    SUM(sales_amount) AS total_sales,
    COUNT(DISTINCT customer_key) AS total_customers,
    SUM(quantity) AS total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY FORMAT(order_date, 'yyyy-MM')
ORDER BY FORMAT(order_date, 'yyyy-MM') ASC;


-- How many new customers were added each year?
SELECT
    DATETRUNC(YEAR, create_date) AS create_year,
    COUNT(customer_key) AS total_customer
FROM gold.dim_customers
GROUP BY DATETRUNC(YEAR, create_date)
ORDER BY DATETRUNC(YEAR, create_date);