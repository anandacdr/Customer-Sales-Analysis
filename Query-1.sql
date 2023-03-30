SELECT invoice_no, SUM(quantity * price) AS total_revenue
FROM customer
GROUP BY invoice_no;