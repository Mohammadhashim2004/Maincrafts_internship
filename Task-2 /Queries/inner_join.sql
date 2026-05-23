SELECT
o.order_id,
o.order_date,
c.name,
c.region,
c.segment,
o.product_category,
o.sales,
o.quantity,
o.profit,
o.discount
FROM "order" o
INNER JOIN customer c
ON o.customer_id = c.customer_id;