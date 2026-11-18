-- Project 1: Superstore Sales Performance Analysis
-- Tool: DB Browser for SQLite | Table: orders (9,994 rows)

-- Setup: restore leading zeros in ZIP codes
ALTER TABLE orders ADD COLUMN zip TEXT;
UPDATE orders SET zip = printf('%05d', "Postal Code");

-- 1. Sanity check: row count (expect 9994)
SELECT COUNT(*) FROM orders;

-- 2. Total sales and profit
SELECT SUM(Sales) AS total_sales, SUM(Profit) AS total_profit FROM orders;

-- 3. Sales, profit, and margin by category
SELECT Category,
       ROUND(SUM(Sales)) AS total_sales,
       ROUND(SUM(Profit)) AS total_profit,
       ROUND(SUM(Profit) * 100.0 / SUM(Sales), 1) AS margin_pct
FROM orders
GROUP BY Category;

-- 4. Profit by sub-category (worst first)
SELECT "Sub-Category",
       ROUND(SUM(Sales)) AS total_sales,
       ROUND(SUM(Profit)) AS total_profit
FROM orders
GROUP BY "Sub-Category"
ORDER BY total_profit ASC;

-- 5. Average profit by discount level
SELECT Discount,
       COUNT(*) AS num_lines,
       ROUND(AVG(Profit), 2) AS avg_profit
FROM orders
GROUP BY Discount
ORDER BY Discount;

-- 6. Average discount by sub-category
SELECT "Sub-Category",
       ROUND(AVG(Discount) * 100, 1) AS avg_discount_pct,
       ROUND(SUM(Profit)) AS total_profit
FROM orders
GROUP BY "Sub-Category"
ORDER BY avg_discount_pct DESC;

-- 7. Tables by discount level
SELECT Discount,
       COUNT(*) AS num_lines,
       ROUND(SUM(Profit)) AS total_profit
FROM orders
WHERE "Sub-Category" = 'Tables'
GROUP BY Discount
ORDER BY Discount;

-- 8. Heavy discounts (30%+) vs. the rest
SELECT CASE WHEN Discount >= 0.3 THEN '30% or more' ELSE 'Under 30%' END AS discount_group,
       COUNT(*) AS num_lines,
       ROUND(SUM(Sales)) AS total_sales,
       ROUND(SUM(Profit)) AS total_profit
FROM orders
GROUP BY discount_group;

-- 9. Sales and profit by year
SELECT strftime('%Y', "Order Date") AS year,
       ROUND(SUM(Sales)) AS total_sales,
       ROUND(SUM(Profit)) AS total_profit
FROM orders
GROUP BY year
ORDER BY year;

-- 10. Heavy-discount lines and losses by year
SELECT strftime('%Y', "Order Date") AS year,
       COUNT(*) AS total_lines,
       SUM(CASE WHEN Discount >= 0.3 THEN 1 ELSE 0 END) AS heavy_discount_lines,
       ROUND(SUM(CASE WHEN Discount >= 0.3 THEN Profit ELSE 0 END)) AS heavy_discount_profit
FROM orders
GROUP BY year
ORDER BY year;

-- 11. Heavy-discount profit by sub-category, 2016 vs 2017
SELECT "Sub-Category",
       SUM(CASE WHEN strftime('%Y', "Order Date") = '2016' THEN 1 ELSE 0 END) AS lines_2016,
       SUM(CASE WHEN strftime('%Y', "Order Date") = '2017' THEN 1 ELSE 0 END) AS lines_2017,
       ROUND(SUM(CASE WHEN strftime('%Y', "Order Date") = '2016' THEN Profit ELSE 0 END)) AS profit_2016,
       ROUND(SUM(CASE WHEN strftime('%Y', "Order Date") = '2017' THEN Profit ELSE 0 END)) AS profit_2017
FROM orders
WHERE Discount >= 0.3
GROUP BY "Sub-Category"
ORDER BY profit_2017 ASC;

-- 12. Binders by discount level
SELECT Discount,
       COUNT(*) AS num_lines,
       ROUND(SUM(Sales)) AS total_sales,
       ROUND(SUM(Profit)) AS total_profit
FROM orders
WHERE "Sub-Category" = 'Binders'
GROUP BY Discount
ORDER BY Discount;
