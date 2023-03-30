CREATE VIEW customer_total_spending
AS
    SELECT c.customer_id, c.gender, SUM(i.quantity * i.price) AS total_spending, i.category
    FROM customer c
        JOIN invoice inv ON c.customer_id = inv.customer_id
        JOIN invoice_items i ON inv.invoice_no = i.invoice_no
    GROUP BY c.customer_id, c.gender, i.category;

SELECT c.customer_id, c.gender, c.age, c.shopping_mall,
    SUM(cts.total_spending) AS total_spending,
    cts.category
FROM customer c
    JOIN customer_total_spending cts ON c.customer_id = cts.customer_id AND c.gender = cts.gender
GROUP BY c.customer_id, c.gender, c.age, c.shopping_mall, cts.category
ORDER BY SUM(cts.total_spending) DESC
LIMIT 10;
