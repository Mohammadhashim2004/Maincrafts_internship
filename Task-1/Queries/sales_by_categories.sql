SELECT Category, SUM(Sales) AS total_sales
FROM sales_data
GROUP BY Category;