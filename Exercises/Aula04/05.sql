-- Classificação dos produtos mais vendidos

SELECT p.product_id,
	   p.product_name,
	   SUM(o.quantity) AS total_qtd
FROM products p
JOIN order_details o
ON p.product_id = o.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_qtd DESC