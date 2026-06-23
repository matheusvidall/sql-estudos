```sql
-- operadores e filtros
-- tabela usada: sales.customers


-- clientes de SP com renda acima de 5000
SELECT first_name, state, income
FROM sales.customers
WHERE state = 'SP'
  AND income > 5000
ORDER BY income DESC;


-- clientes de SP ou RJ
SELECT first_name, state, income
FROM sales.customers
WHERE state = 'SP'
   OR state = 'RJ'
ORDER BY state, income DESC;


-- mesma consulta usando IN
SELECT first_name, state, income
FROM sales.customers
WHERE state IN ('SP', 'RJ')
ORDER BY state, income DESC;


-- clientes com renda entre 3000 e 7000
SELECT email, income
FROM sales.customers
WHERE income BETWEEN 3000 AND 7000
ORDER BY income DESC;


-- clientes fora de SP, RJ e MG
SELECT first_name, state, income
FROM sales.customers
WHERE state NOT IN ('SP', 'RJ', 'MG')
ORDER BY state;


-- cidades que começam com a letra S
SELECT first_name, city, state
FROM sales.customers
WHERE city LIKE 'S%'
ORDER BY city;


-- cidades que não começam com a letra S
SELECT first_name, city, state
FROM sales.customers
WHERE city NOT LIKE 'S%'
ORDER BY city;


-- clientes de SP com renda entre 5000 e 9000
SELECT first_name, state, income
FROM sales.customers
WHERE state = 'SP'
  AND income BETWEEN 5000 AND 9000
ORDER BY income DESC;


-- clientes de estados do sul com renda acima de 6000
SELECT first_name, state, income
FROM sales.customers
WHERE state IN ('PR', 'SC', 'RS')
  AND income > 6000
ORDER BY state, income DESC;
```
