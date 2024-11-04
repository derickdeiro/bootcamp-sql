-- Quais são os valores mínimo, máximo e médio de frete pago por cada cliente? (tabela orders)

SELECT DISTINCT customer_id, 
	   MAX(freight) OVER (PARTITION BY customer_id) AS max_freight,
	   AVG(freight) OVER (PARTITION BY customer_id) AS avg_freight,
	   MIN(freight) OVER (PARTITION BY customer_id) AS max_freight
FROM ORDERS
ORDER BY customer_id