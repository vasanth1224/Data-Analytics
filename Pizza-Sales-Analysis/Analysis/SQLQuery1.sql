SELECT SUM(total_price) AS Total_Revenue FROM pizza_sales

SELECT SUM(total_price) / COUNT(DISTINCT order_id) AS Avg_Order_Value FROM pizza_sales

SELECT SUM(quantity) AS Tot_Pizza_Sold FROM pizza_sales

SELECT COUNT(DISTINCT order_id) AS Total_Orders FROM pizza_sales

SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2)) / CAST(COUNT(DISTINCT order_id)
AS DECIMAL(10,2)) AS DECIMAL(10,2)) as Avg_Pizza_per_Order FROM pizza_sales


SELECT DATENAME(DW, order_date) AS order_day, COUNT(DISTINCT order_id) AS Total_orders FROM pizza_sales GROUP BY DATENAME(DW, order_date)

SELECT DATENAME(MONTH, order_date) AS Month_Name, COUNT(DISTINCT order_id) AS Total_Order FROM pizza_sales GROUP BY DATENAME(MONTH, order_date)

SELECT pizza_category AS Category,
CAST(SUM(total_price) AS DECIMAL(10,2)) AS Total_sales,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizza_sales) AS DECIMAL(10,2)) AS perc_sales_by_category
FROM pizza_sales
GROUP BY pizza_category

SELECT pizza_size AS Size,
CAST(SUM(total_price) AS DECIMAL(10,2)) AS Total_sales,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizza_sales) AS DECIMAL(10,2)) AS perc_sales_by_size
FROM pizza_sales
GROUP BY pizza_size

SELECT TOP 5 pizza_name, SUM(total_price) AS Total_Revenue FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue DESC

SELECT TOP 5 pizza_name, SUM(total_price) AS Total_Revenue FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue ASC

SELECT TOP 5 pizza_name, SUM(quantity) AS Total_Quantity FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Quantity DESC

SELECT TOP 5 pizza_name, SUM(quantity) AS Total_Quantity FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Quantity ASC

SELECT TOP 5 pizza_name, COUNT(distinct order_id) AS Total_Order FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Order DESC

SELECT TOP 5 pizza_name, COUNT(distinct order_id) AS Total_Order FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Order ASC