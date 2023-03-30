SELECT invoice_no, AVG(quantity) AS avg_quantity, AVG(price) AS avg_price
FROM customer
GROUP BY invoice_no;


