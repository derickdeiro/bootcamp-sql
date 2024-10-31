


-- Crie um relatório que mostra o número de funcionários e clientes de cada cidade que tem clientes

SELECT c.city AS cidade,
    COUNT(DISTINCT e.employee_id) AS numero_funcionarios,
    COUNT(DISTINCT c.customer_id) AS numero_clientes
FROM  employees e
RIGHT JOIN customers c
ON e.city = c.city
GROUP BY c.city
ORDER BY cidade