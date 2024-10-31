-- Crie um relatório que mostra o número de funcionários e clientes de cada cidade que tem funcionários

SELECT e.city AS cidade,
    COUNT(DISTINCT e.employee_id) AS numero_funcionarios,
    COUNT(DISTINCT c.customer_id) AS numero_clientes
FROM  employees e
LEFT JOIN customers c
ON e.city = c.city
GROUP BY e.city
ORDER BY cidade