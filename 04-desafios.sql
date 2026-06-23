-- desafios com filtros e agrupamentos
-- tabela usada: sales.customers


-- estados com mais de 100 clientes
SELECT state, COUNT(*) AS qtd_clientes
FROM sales.customers
GROUP BY state
HAVING COUNT(*) >= 100
ORDER BY qtd_clientes DESC;


-- estados com renda média acima de 8000
SELECT state, ROUND(AVG(income)::numeric, 2) AS renda_media
FROM sales.customers
GROUP BY state
HAVING AVG(income) > 8000
ORDER BY renda_media DESC;


-- estados com mais de 100 clientes e renda média acima de 8000
SELECT 
    state,
    COUNT(*) AS qtd_clientes,
    ROUND(AVG(income)::numeric, 2) AS renda_media
FROM sales.customers
GROUP BY state
HAVING COUNT(*) >= 100
   AND AVG(income) > 8000
ORDER BY qtd_clientes DESC;


-- clientes de SP, RJ e MG agrupados por estado
SELECT state, COUNT(*) AS qtd_clientes
FROM sales.customers
WHERE state IN ('SP', 'RJ', 'MG')
GROUP BY state
ORDER BY qtd_clientes DESC;


-- estados SP, RJ e MG com pelo menos 100 clientes
SELECT state, COUNT(*) AS qtd_clientes
FROM sales.customers
WHERE state IN ('SP', 'RJ', 'MG')
GROUP BY state
HAVING COUNT(*) >= 100
ORDER BY qtd_clientes DESC;


-- estados considerando apenas clientes com renda acima de 5000
SELECT state, COUNT(*) AS qtd_clientes
FROM sales.customers
WHERE income > 5000
GROUP BY state
ORDER BY qtd_clientes DESC;


-- estados com mais de 50 clientes que possuem renda acima de 5000
SELECT state, COUNT(*) AS qtd_clientes
FROM sales.customers
WHERE income > 5000
GROUP BY state
HAVING COUNT(*) >= 50
ORDER BY qtd_clientes DESC;


-- resumo por estado com média, maior e menor renda
SELECT 
    state,
    COUNT(*) AS qtd_clientes,
    ROUND(AVG(income)::numeric, 2) AS renda_media,
    MAX(income) AS maior_renda,
    MIN(income) AS menor_renda
FROM sales.customers
GROUP BY state
ORDER BY qtd_clientes DESC;


-- estados com média de renda acima de 7000
SELECT 
    state,
    COUNT(*) AS qtd_clientes,
    ROUND(AVG(income)::numeric, 2) AS renda_media,
    MAX(income) AS maior_renda
FROM sales.customers
GROUP BY state
HAVING AVG(income) > 7000
ORDER BY renda_media DESC;
```

