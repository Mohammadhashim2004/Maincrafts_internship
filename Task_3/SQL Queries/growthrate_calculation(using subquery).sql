SELECT
	t1.month,
	t1. monthly_sales,
	ROUND((t1.monthly_sales - t2.monthly_sales) *100 / t2.monthly_sales, 2) AS growth_percentage
FROM 
	(SELECT CAST(substr(order_date, 6, 2)AS INTEGER) AS month,
			sum(sales) AS monthly_sales
	FROM "order"
	GROUP BY month) t1

JOIN
	(SELECT CAST(substr(order_date, 6, 2)AS INTEGER) AS month,
			sum(sales) AS monthly_sales
	FROM "order"
	GROUP BY month) t2
	
ON t1.month = t2.month + 1;