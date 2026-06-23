-- funções de agregação
-- tabela usada: sales.customers


-- total de clientes
SELECT COUNT(*) AS total_clientes
FROM sales.customers;


-- média de renda dos clientes
SELECT AVG(income) AS renda_media
FROM sales.customers;


-- maior e menor renda
SELECT 
    MAX(income) AS maior_renda,
    MIN(income) AS menor_renda
FROM sales.customers;


-- soma total das rendas
SELECT SUM(income) AS soma_rendas
FROM sales.customers;


-- quantidade de clientes por estado
SELECT state, COUNT(*) AS qtd_clientes
FROM sales.customers
GROUP BY state
ORDER BY qtd_clientes DESC;


-- renda média por estado
SELECT state, AVG(income) AS renda_media
FROM sales.customers
GROUP BY state
ORDER BY renda_media DESC;


-- renda média por estado arredondada
SELECT state, ROUND(AVG(income)::numeric, 2) AS renda_media
FROM sales.customers
GROUP BY state
ORDER BY renda_media DESC;


-- maior renda por estado
SELECT state, MAX(income) AS maior_renda
FROM sales.customers
GROUP BY state
ORDER BY maior_renda DESC;


-- menor renda por estado
SELECT state, MIN(income) AS menor_renda
FROM sales.customers
GROUP BY state
ORDER BY menor_renda ASC;


-- resumo por estado
SELECT 
    state,
    COUNT(*) AS qtd_clientes,
    ROUND(AVG(income)::numeric, 2) AS renda_media,
    MAX(income) AS maior_renda,
    MIN(income) AS menor_renda
FROM sales.customers
GROUP BY state
ORDER BY qtd_clientes DESC;
```
