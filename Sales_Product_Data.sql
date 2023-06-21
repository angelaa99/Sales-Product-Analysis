SELECT *
FROM dbo.sales_product_data

-- 1. Total number of sales
SELECT ROUND(SUM([Quantity Ordered]*[Price Each]),2) AS 'Total sales'
FROM dbo.sales_product_data

-- 2. Average sales per month
WITH Sales_CTE ([Order ID], Product, [Quantity Ordered], [Price Each], [Order Date], [Purchase Address], Sales, Month)
AS 
(
SELECT *, 
[Quantity Ordered]*[Price Each] AS Sales, 
MONTH([Order Date]) AS Month
FROM dbo.sales_product_data
)

SELECT Month, ROUND(AVG([Sales]),2) AS 'Average Sales'
FROM Sales_CTE
GROUP BY Month
ORDER BY Month;

-- 3. Sales Per Month
WITH Sales_CTE ([Order ID], Product, [Quantity Ordered], [Price Each], [Order Date], [Purchase Address], Sales, Month)
AS 
(
SELECT *, 
[Quantity Ordered]*[Price Each] AS Sales, 
MONTH([Order Date]) AS Month
FROM dbo.sales_product_data
)

SELECT Month, ROUND(SUM([Sales]),2) AS 'Sales Per Month'
FROM Sales_CTE
GROUP BY Month
ORDER BY Month;

-- 4. Which products sell best? 
WITH Sales_CTE ([Order ID], Product, [Quantity Ordered], [Price Each], [Order Date], [Purchase Address], Sales, Month)
AS 
(
SELECT *, 
[Quantity Ordered]*[Price Each] AS Sales, 
MONTH([Order Date]) AS Month
FROM dbo.sales_product_data
)
SELECT Product, ROUND(SUM(Sales),2) AS Sales
FROM Sales_CTE
GROUP BY Product
ORDER BY Sales DESC;

-- 5. Creating view to store data for visualization
CREATE VIEW Product_sales_analysis AS
WITH Sales_CTE ([Order ID], Product, [Quantity Ordered], [Price Each], [Order Date], [Purchase Address], Sales, Month)
AS 
(
SELECT *, 
[Quantity Ordered]*[Price Each] AS Sales, 
MONTH([Order Date]) AS Month
FROM dbo.sales_product_data
)
SELECT *
FROM Sales_CTE;