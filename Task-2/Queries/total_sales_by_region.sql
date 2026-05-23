SELECT c.region,
	(o.sales) AS total_sales
FROM "order" O
JOIN customer c
ON o.customer_id = c.customer_id
GROUP BY c.region;