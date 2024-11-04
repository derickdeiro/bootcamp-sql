-- Cálcular: 
-- Quais vendas eu tive?
-- Quantos produtos únicos dentro do mesmo pedido?
-- Quantidade de peças vendidas por pedido?
-- Qual é o valor total vendido por pedido?

SELECT order_id,
	   COUNT(order_id) AS unique_products,
	   SUM(quantity) AS total_quantity,
	   SUM(unit_price * quantity) AS total_price
FROM ORDER_DETAILS
GROUP BY order_id
ORDER BY order_id