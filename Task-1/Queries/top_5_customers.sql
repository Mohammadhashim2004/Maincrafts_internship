SELECT "Customer Name", SUM(Sales) AS total_sales
FROM sales_data
GROUP BY "Customer Name"
ORDER BY total_sales DESC
LIMIT 5;