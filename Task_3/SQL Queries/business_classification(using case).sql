SELECT
	order_id,
	Sales,
	CASE
		WHEN Sales > 1000 THEN 'high value'
		WHEN Sales BETWEEN 500 AND 1000 THEN 'medium value'
		ELSE 'low value'
		
	END AS order_type
FROM "order";