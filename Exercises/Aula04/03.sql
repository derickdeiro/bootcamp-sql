-- Quais são os valores mínimo, máximo e médio de frete pago por cada cliente? (tabela orders)

SELECT customer_id, 
	   MIN(freight) AS max_freight
	   AVG(freight) AS avg_freight,
	   MAX(freight) AS max_freight,
FROM ORDERS
GROUP BY customer_id
ORDER BY customer_id

