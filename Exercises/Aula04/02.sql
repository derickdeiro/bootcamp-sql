-- Cálcular: 
-- Quais vendas eu tive?
-- Quantos produtos únicos dentro do mesmo pedido?
-- Quantidade de peças vendidas por pedido?
-- Qual é o valor total vendido por pedido?

-- Utilizando Windows Functions

SELECT order_id,
	   product_id,
	   unit_price,
	   COUNT(order_id) OVER (PARTITION BY order_id) AS unique_products,
	   SUM(quantity) OVER (PARTITION BY product_id) AS total_quantity,
	   SUM(unit_price * quantity) OVER (PARTITION BY unit_price) AS total_price
FROM ORDER_DETAILS
ORDER BY order_id
