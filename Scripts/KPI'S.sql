
-- KPI's REQUIREMENT

-- 1. Total Revenue : the sum of the total price of all pizza orders
-- 2. Average Order Value : the average amount spent per order, calculated by dividing the total revenue by the totla number of orders
-- 3. Total Pizza Sold : the sum of the quantities of all the pizza sold
-- 4. Total orders : The total number of orders placed
-- 5. Average Pizzas Per order : The average number of pizza sold per oder, calculated by dividing the total number of pizzas sold by the total number of orders




-- 1. Total Revenue : the sum of the total price of all pizza orders
SELECT SUM(total_price) AS Total_Revenue
FROM pizza_sales ps 


-- 2. Average Order Value : the average amount spent per order, calculated by dividing the total revenue by the totla number of orders
SELECT 
	SUM(total_price) AS Total_Revenue, 
	SUM(total_price)/ COUNT(DISTINCT(order_id )) AS Average_order_Value
FROM pizza_sales

-- 3. Total Pizza Sold : the sum of the quantities of all the pizza sold
SELECT SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales 


-- 4. Total orders : The total number of orders placed
SELECT COUNT(DISTINCT(order_id)) AS Total_orders
FROM pizza_sales 

-- 5. Average Pizzas Per order : The average number of pizza sold per oder, calculated by dividing the total number of pizzas sold by the total number of orders
SELECT 
	SUM(quantity) AS Total_Pizza_sold,
	COUNT(DISTINCT(order_id)) AS Total_orders,
	CAST(SUM(quantity)  AS DECIMAL(10,2)) / CAST(COUNT(DISTINCT(order_id)) AS DECIMAL(10,2)) AS Average_Pizza_Order
FROM pizza_sales 