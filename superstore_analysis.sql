-- SUPERSTORE SALES ANALYSIS
-- postgreSQL Portfolio Project
-- Dataset: Sample Superstore
-- Cleaned Table: public.orders_clean

--1. Verify cleaned dataset
 SELECT COUNT(*) AS total_rows
FROM public.orders_clean;

 --2. Calculate total sales and profit
 SELECT 
 	ROUND(SUM(sales)::numeric, 2) AS total_sales,
	ROUND(SUM(profit)::numeric, 2) AS total_profit
 FROM public.orders_clean;

 --3.Calculate overall profit margin
 SELECT
 	ROUND(
		(SUM(profit) / NULLIF(SUM(sales), 0) * 100)::numeric, 2
	) AS profit_margin_percentage
FROM public.orders_clean;

--4. Sales and profit by region
SELECT 
	region,
	ROUND(SUM(sales)::numeric, 2) AS total_sales,
	ROUND(SUM(profit)::numeric, 2) AS total_profit
FROM public.orders_clean
GROUP BY region
ORDER BY total_sales DESC;

--5. Sales and profit by category
SELECT
	catagory,
	ROUND(SUM(sales)::numeric, 2) AS total_sales,
	ROUND(SUM(profit)::numeric, 2) AS total_profit
FROM public.orders_clean
GROUP BY catagory
ORDER BY total_sales desc;

--6. Sales and profit by sub_category
SELECT
	sub_catagory,
	ROUND(SUM(sales)::numeric, 2) AS total_sales,
	ROUND(SUM(profit)::numeric, 2) AS total_profit
FROM public.orders_clean
GROUP BY sub_catagory
ORDER BY total_sales DESC;

--7. Sales and profit by customer segment
SELECT
	segment,
	ROUND(SUM(sales)::numeric, 2) AS total_sales,
	ROUND(SUM(profit)::numeric, 2) AS total_profit
FROM orders_clean
GROUP BY segment
ORDER BY total_sales DESC;

--8. Top 10 products by sales
SELECT 
	product_name,
	ROUND(SUM(sales)::numeric, 2) AS total_sales,
	ROUND(SUM(profit)::numeric, 2) AS total_profit
FROM public.orders_clean
GROUP BY product_name
ORDER BY total_sales
LIMIT 10;

--9. Top 10 customers by sales
SELECT 
	customer_name,
	ROUND(SUM(sales)::numeric, 2) AS total_sales,
	ROUND(SUM(profit)::numeric, 2) AS total_profit
FROM public.orders_clean
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;


-- 10. Sales and Profit by year
SELECT 
	EXTRACT(YEAR FROM order_date) AS order_year,
	ROUND(SUM(sales)::numeric, 2) AS total_sales,
	ROUND(SUM(profit)::numeric, 2) AS total_profit
FROM public.orders_clean
GROUP BY order_year
ORDER BY order_year;

-- 11. Monthly sales and Profit trends
SElECT
	DATE_TRUNC('month', order_date)::date AS order_month,
	ROUND(SUM(sales)::numeric, 2) AS total_sales,
	ROUND(SUM(profit)::numeric, 2) AS total_profit
FROM public.orders_clean
GROUP BY order_month
ORDER BY order_month;

-- 12. Shipping performance by ship mode
SELECT
	ship_mode,
	COUNT(DISTINCT order_id) AS total_orders,
	ROUND(AVG(ship_date - order_date), 2) AS avg_shipping_days
FROM public.orders_clean
GROUP BY ship_mode
ORDER BY total_orders DESC;

-- 13. Top 10 loss making product
SELECT
	product_name,
	ROUND(SUM(sales)::numeric, 2) AS total_sales,
	ROUND(SUM(profit)::numeric, 2) AS total_profit
FROM public.orders_clean
GROUP BY product_name
HAVING SUM(profit) < 0
ORDER BY total_profit
LIMIT 10;

-- 14. Average discount by category
SELECT
	catagory,
	ROUND(AVG(discount) * 100, 2) AS avg_discount_percentage
FROM public.orders_clean
GROUP BY catagory
ORDER BY avg_discount_percentage DESC;

-- 15. Profit matgin by subcategory
SELECT
	sub_catagory,
	ROUND(SUM(sales)::numeric, 2) AS total_sales,
	ROUND(SUM(profit)::numeric, 2) AS total_profit,
	ROUND(
		(SUM(profit) / NULLIF(SUM(sales), 0) * 100)::numeric, 2
	) AS profit_margin_percentage
FROM public.orders_clean
GROUP BY sub_catagory
ORDER BY profit_margin_percentage DESC;

-- 16. Sales and profit by state
SELECT
	state,
	ROUND(SUM(sales)::numeric, 2) AS total_sales,
	ROUND(SUM(profit)::numeric, 2) AS total_profit
FROM public.orders_clean
GROUP BY state
ORDER BY total_sales DESC;

-- 17. Bottom 10 states by profit
SELECT
	state,
	ROUND(SUM(sales)::numeric, 2) AS total_sales,
	ROUND(SUM(profit)::numeric, 2) AS total_profit
FROM public.orders_clean
GROUP BY state
ORDER BY total_profit
LIMIT 10;

-- 18. Bottom 10 states by profit margin
SELECT
	state,
	ROUND(
		(SUM(profit) / NULLIF(SUM(sales), 0) * 100)::numeric, 2
	) AS profit_margin_percentage
FROM public.orders_clean
GROUP BY state
ORDER BY profit_margin_percentage
LIMIT 10;

-- 19. Profit margin by region
SELECT 
	region,
	ROUND(SUM(sales)::numeric, 2) AS total_sales,
	ROUND(SUM(profit)::numeric, 2) AS total_profit,
	ROUND(
		(SUM(profit) / NULLIF(SUM(sales), 0) * 100)::numeric, 2
	) AS profit_margin_percentage
FROM public.orders_clean
GROUP BY region
ORDER BY profit_margin_percentage DESC;

-- 20. Profit margin by region and customer segment
SELECT
	region,
	segment,
	ROUND(SUM(sales)::numeric, 2) AS total_sales,
	ROUND(SUM(profit)::numeric, 2) AS total_profit,
	ROUND(
		(SUM(profit) / NULLIF(SUM(sales), 0) * 100)::numeric, 2
	) AS profit_margin_percentage
FROM public.orders_clean
GROUP BY region, segment
ORDER BY region, profit_margin_percentage DESC;


