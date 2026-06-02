SELECT
    substr(order_date, 6, 2) AS month,
    SUM(sales) AS monthly_sales
FROM "order"
GROUP BY substr(order_date, 6, 2)
ORDER BY substr(order_date, 6, 2);