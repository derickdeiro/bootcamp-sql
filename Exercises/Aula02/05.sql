-- 5. Obter os nomes de todas as pessoas de contato onde a pessoa é um gerente, em ordem alfabética

SELECT CONTACT_NAME, CONTACT_TITLE FROM CUSTOMERS
WHERE CONTACT_TITLE ILIKE '%MANAGER'
ORDER BY CONTACT_NAME