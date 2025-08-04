 /*
===============================================================================
Cumulative Analysis
===============================================================================
Purpose:
    - To calculate running totals or moving averages for key metrics.
    - To track performance over time cumulatively.
    - Useful for growth analysis or identifying long-term trends.

SQL Functions Used:
    - Window Functions: SUM() OVER(), AVG() OVER()
===============================================================================
*/

-- Calculate:
-- The total sales per month 
-- The running total of sales over time 
-- The average sales price over time
SELECT
    order_year_month,                                                                 -- Year-month for sales data
    total_sales,                                                                      -- Aggregated sales for the month
    SUM(total_sales) OVER (ORDER BY order_year_month) AS running_total_sales,         -- Running total of sales over time
    AVG(avg_price) OVER (ORDER BY order_year_month) AS moving_average_price           -- Running average of monthly avg prices
FROM
(
    SELECT
        DATETRUNC(MONTH, order_date) AS order_year_month,                             -- Truncate date to month
        SUM(sales_amount) AS total_sales,                                             -- Sum sales for each month
        AVG(price) AS avg_price                                                       -- Avg price
    FROM gold.fact_sales
    WHERE order_date IS NOT NULL                                                      -- Filter out null order dates
    GROUP BY DATETRUNC(MONTH, order_date)                                             -- Group by month
) t;


-- Calculate:
-- The total sales per year 
-- The running total of sales over time 
-- The average sales price over time
SELECT
    order_year,                                                                 -- Year for sales data
    total_sales,                                                                -- Aggregated sales for the year
    SUM(total_sales) OVER (ORDER BY order_year) AS running_total_sales,         -- Running total of sales over time
    AVG(avg_price) OVER (ORDER BY order_year) AS moving_average_price           -- Running average of yearly avg prices
FROM
(
    SELECT
        DATETRUNC(YEAR, order_date) AS order_year,                              -- Truncate date to year
        SUM(sales_amount) AS total_sales,                                       -- Sum sales for each year
        AVG(price) AS avg_price                                                 -- Avg price
    FROM gold.fact_sales
    WHERE order_date IS NOT NULL                                                -- Filter out null order dates
    GROUP BY DATETRUNC(YEAR, order_date)                                        -- Group by year
) t;