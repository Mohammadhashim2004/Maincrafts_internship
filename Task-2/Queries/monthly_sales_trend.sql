SELECT 
	strftime("%m", order_date) AS Month,
	sum(sales) as Monthly_sale
FROM "order"
GROUP BY Month
ORDER BY Month;