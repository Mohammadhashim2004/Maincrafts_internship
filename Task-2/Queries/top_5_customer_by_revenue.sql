SELECT c.name,
	sum(o.sales) AS total_revenue
FROM "order" o
JOIN customer c
ON o.customer_id = c.customer_id
GROUP BY c.name
ORDER BY total_revenue DESC
LIMIT 5;