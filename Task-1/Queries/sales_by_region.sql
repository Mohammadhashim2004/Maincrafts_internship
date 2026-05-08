SELECT Region, SUM(Sales) AS total_sales
FROM sales_data
GROUP BY Region;