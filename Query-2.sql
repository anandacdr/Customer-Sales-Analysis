SELECT category, SUM(quantity * price) AS total_revenue
FROM customer
GROUP BY category;