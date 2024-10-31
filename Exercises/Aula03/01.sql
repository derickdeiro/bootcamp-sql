-- JOIN

SELECT * FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
WHERE EXTRACT(YEAR from o.order_date) = 1996
-- WHERE DATE_PART('YEAR', o.order_date) = 1996
