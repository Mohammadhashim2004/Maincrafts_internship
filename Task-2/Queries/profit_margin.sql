SELECT product_category,
	sum(profit)/sum(sales) AS profit_margin
FROM "order"
GROUP BY product_category;