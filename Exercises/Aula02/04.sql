SELECT order_date, count(order_date) as "quantidade de pedidos" FROM ORDERS
WHERE ORDER_DATE BETWEEN '1997-01-01' AND '1997-12-31'
GROUP BY order_date
ORDER BY order_date