/*
===============================================================================
Part-to-Whole Analysis
===============================================================================
Purpose:
    - To compare performance or metrics across dimensions or time periods.
    - To evaluate differences between categories.
    - Useful for A/B testing or regional comparisons.

SQL Functions Used:
    - SUM(), AVG(): Aggregates values for comparison.
    - Window Functions: SUM() OVER() for total calculations.
===============================================================================
*/
-- ([Measure]/Total[Measure]) * 100 By [Dimension]

-- Examples:
--     E.g. (Sales / Total Sales) * 100 By Category
--     E.g. (Quantity / Total Quantity) * 100 By Country


-- Task:
-- Which categories contribute the most to overall sales?

-- Measure: sales_amount
-- Dimension: category

WITH category_sales AS (
    SELECT
        p.category,
        SUM(s.sales_amount) AS total_sales
    FROM gold.fact_sales s
    LEFT JOIN gold.dim_products p
        ON p.product_key = s.product_key
    GROUP BY p.category
)
SELECT
    category,
    total_sales,
    SUM(total_sales) OVER () overall_sales,
    CONCAT(ROUND((CAST(total_sales AS FLOAT) / SUM(total_sales) OVER () ) * 100, 2), '%') AS percentage_of_total
FROM category_sales
ORDER BY total_sales DESC