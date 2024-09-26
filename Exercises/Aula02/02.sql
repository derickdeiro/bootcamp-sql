-- 2. Obter todos os clientes em ordem alfabética por país e nome

SELECT company_name, country FROM customers
ORDER BY country ASC, company_name ASC