-- Charts Requirement  will be done in EXCELL by first we will find the value here in SQL

-- 1. Daily Trend for total orders
-- 2. Hourly Trend for total order
-- 3. Perecentage of Sales by Pizza category
-- 4. Percentage of Sales by Pizza Size
-- 5. Total Pizza Sold by Pizza Category
-- 6. Top 5 Best Sellers by Total Pizza Sold
-- 7. Bottom 5 Worst sellers by Total Pizzas Sold






-- 1. Daily Trend for total orders
SELECT 
	DATENAME(DW,order_date) as order_day,
	COUNT(DISTINCT(order_id)) AS Total_orders
FROM pizza_sales
GROUP BY DATENAME(DW,order_date)


-- 2. Hourly Trend for total order

SELECT 
	DATEPART(HH,order_time) AS order_hour,
	COUNT(DISTINCT order_id) AS Total_orders
FROM pizza_sales 
GROUP BY DATEPART(HH,order_time) 
ORDER BY  Total_orders DESC

-- 3. Perecentage of Sales by Pizza category

SELECT
    ps.pizza_category,
    CAST(SUM(ps.total_price) AS DECIMAL(10,2)) AS total_sales,
    CAST(
        SUM(ps.total_price) * 100.0 /
        (SELECT SUM(total_price) FROM pizza_sales)
        AS DECIMAL(10,2)
    ) AS sales_percentage
FROM pizza_sales AS ps
GROUP BY ps.pizza_category
ORDER BY sales_percentage DESC;


-- by Month , 1= jan . 2=feb etc..
SELECT
    ps.pizza_category,
    CAST(SUM(ps.total_price) AS DECIMAL(10,2)) AS total_sales,
    CAST(
        SUM(ps.total_price) * 100.0 /
        (SELECT SUM(total_price) FROM pizza_sales WHERE MONTH(order_date)=1)
        AS DECIMAL(10,2)
    ) AS sales_percentage
FROM pizza_sales AS ps
WHERE MONTH(order_date)=1
GROUP BY ps.pizza_category
ORDER BY sales_percentage DESC;

-- by quater

SELECT
    ps.pizza_category,
    CAST(SUM(ps.total_price) AS DECIMAL(10,2)) AS total_sales,
    CAST(
        SUM(ps.total_price) * 100.0 /
        (SELECT SUM(total_price) FROM pizza_sales WHERE  DATEPART(QUARTER,order_date)=1)
        AS DECIMAL(10,2)
    ) AS sales_percentage
FROM pizza_sales AS ps
WHERE DATEPART(QUARTER,order_date)=1
GROUP BY ps.pizza_category
ORDER BY sales_percentage DESC;

-- 4. Percentage of Sales by Pizza Size
SELECT 
	pizza_size,
	CAST( SUM(total_price) AS  DECIMAL (10,2)) AS Total_sales,
	CAST(SUM(total_price)*100.0 /
	(SELECT SUM(total_price) FROM pizza_sales) AS DECIMAL(10,2))AS Sales_percentage
FROM pizza_sales
GROUP BY pizza_size
ORDER BY Sales_percentage

-- each Month
SELECT 
	pizza_size,
	CAST( SUM(total_price) AS  DECIMAL (10,2)) AS Total_sales,
	CAST(SUM(total_price)*100.0 /
	(SELECT SUM(total_price) FROM pizza_sales) AS DECIMAL(10,2))AS Sales_percentage
FROM pizza_sales
GROUP BY pizza_size
ORDER BY Sales_percentage

SELECT

	pizza_size,
	
	CAST( SUM(total_price) AS DECIMAL (10,2)) AS Total_sales,
	
	CAST(SUM(total_price)*100.0 /
	
	(SELECT SUM(total_price) FROM pizza_sales WHERE DATEPART(QUARTER,order_date)=1) AS DECIMAL(10,2))AS Sales_percentage

FROM pizza_sales

WHERE DATEPART(QUARTER,order_date)=1

GROUP BY pizza_size

ORDER BY Sales_percentage


-- 5. Total Pizza Sold by Pizza Category
SELECT

pizza_category,

SUM(quantity) AS Total_Pizza_sold

FROM pizza_sales

GROUP BY pizza_category



