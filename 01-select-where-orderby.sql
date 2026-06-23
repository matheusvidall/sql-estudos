-- consultas básicas do
-- tabela usada: sales.customers


-- clientes com renda acima de 5000
SELECT email, income
FROM sales.customers
WHERE income > 5000
ORDER BY income DESC;


-- clientes de SP com renda maior que 7000
SELECT first_name, state, income
FROM sales.customers
WHERE state = 'SP'
  AND income > 7000
ORDER BY income DESC;


-- renda entre 4000 e 8000
SELECT email, income
FROM sales.customers
WHERE income BETWEEN 4000 AND 8000
ORDER BY income DESC;


-- clientes de alguns estados específicos
SELECT first_name, state, income
FROM sales.customers
WHERE state IN ('SP', 'RJ', 'MG')
ORDER BY income DESC;


-- clientes fora de SP
SELECT first_name, city, state
FROM sales.customers
WHERE state <> 'SP'
ORDER BY state, first_name;


-- maiores rendas
SELECT email, state, income
FROM sales.customers
WHERE income >= 10000
ORDER BY income DESC;


-- clientes do sul
SELECT first_name, state, income
FROM sales.customers
WHERE state IN ('SC', 'PR')
ORDER BY state, income DESC;


-- top 10 rendas
SELECT email, income
FROM sales.customers
ORDER BY income DESC
LIMIT 10;
