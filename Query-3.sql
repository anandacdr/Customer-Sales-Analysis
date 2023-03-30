SELECT shopping_mall, payment_method, SUM(quantity * price) AS total_revenue
FROM customer
GROUP BY shopping_mall, payment_method;