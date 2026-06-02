SELECT c.region,
	sum(o.profit) AS total_profit
FROM "order" o
JOIN customer c
ON o.customer_id = c.customer_id
GROUP BY c.region
HAVING total_profit < 100000;