/*
Data Cleaning

Imported the raw CSV dataset into SQL Server.
Optimized column data types to improve storage efficiency and ensure data integrity.
Assigned appropriate numeric, text, and date data types based on the contents of each column.
Prepared the dataset for further cleaning and exploratory data analysis.*/


-- change the Data type of the order_id INT - SMALLINT
ALTER  TABLE pizza_sales 
ALTER COLUMN order_id SMALLINT;

---- change the Data type oF pizza_name (VARCHAR(MAX)-VARCHAR(50))
ALTER  TABLE pizza_sales 
ALTER  COLUMN pizza_name VARCHAR(50);


---- change the Data type oF pizza_size (VARCHAR(MAX)-VARCHAR(50))
ALTER  TABLE pizza_sales 
ALTER  COLUMN pizza_size VARCHAR(50);

---- change the Data type oF pizza_category (VARCHAR(MAX)-VARCHAR(50))
ALTER  TABLE pizza_sales 
ALTER  COLUMN pizza_category VARCHAR(50);

---- change the Data type oF pizza_ingredients (VARCHAR(MAX)-VARCHAR(250))
ALTER  TABLE pizza_sales 
ALTER  COLUMN pizza_ingredients VARCHAR(250);

---- change the Data type oF quantity (INT - TINYINT)
ALTER  TABLE pizza_sales 
ALTER  COLUMN quantity TINYINT;



/*
 * 
Optimized data types.
Converted text-based dates into proper DATE values using TRY_CONVERT.
Validated the conversion before replacing the original column.

 * */

-- 1. Add a new column
ALTER TABLE pizza_sales 
ADD order_date_new DATE;

-- 2. Convert the values
UPDATE pizza_sales 
SET order_date_new = TRY_CONVERT(DATE, order_date, 105);

-- 3. Verify
SELECT order_date, order_date_new
FROM pizza_sales ps ;

-- 4. Remove the old column
ALTER TABLE pizza_sales 
DROP COLUMN order_date;

-- 5. Rename the new column
EXEC sp_rename 'pizza_sales.order_date_new', 'order_date', 'COLUMN';


---- change the Data type oF order_time (NVARCHAR(MAX)-TIME))
ALTER  TABLE pizza_sales 
ALTER  COLUMN order_time TIME;

---- change the Data type oF unit_price (REAL - FLOAT)
ALTER  TABLE pizza_sales 
ALTER  COLUMN unit_price FLOAT;


---- change the Data type oF total_price (REAL - FLOAT)
ALTER  TABLE pizza_sales 
ALTER  COLUMN total_price FLOAT;


-- SEE ALL THE DATA
SELECT *
FROM pizza_sales ps  

-- chech if all the row has been imported
SELECT COUNT (*) AS Total_row
FROM pizza_sales 



