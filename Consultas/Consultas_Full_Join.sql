
-- INNER JOIN --
-- Retorna clientes e vendedores que tem sede no mesmo bairro
SELECT A.NOME AS NOME_VENDEDOR, A.BAIRRO AS BAIRRO_VENDEDOR, B.NOME AS NOME_CLIENTE, B.BAIRRO AS BAIRRO_CLIENTE
FROM TABELA_DE_VENDEDORES A INNER JOIN TABELA_DE_CLIENTES B
ON A.BAIRRO = B.BAIRRO;

-- LEFT JOIN --
-- Retorna vendedores que n�o tem nenhum cliente no bairro onde tem sede
SELECT A.NOME AS NOME_VENDEDOR, A.BAIRRO AS BAIRRO_VENDEDOR, B.NOME AS NOME_CLIENTE, B.BAIRRO AS BAIRRO_CLIENTE
FROM TABELA_DE_VENDEDORES A LEFT JOIN TABELA_DE_CLIENTES B
ON A.BAIRRO = B.BAIRRO
WHERE B.BAIRRO IS NULL;

-- RIGHT JOIN --
-- Retorna clientes que n�o tem nenhum vendedor no bairro onde mora
SELECT A.NOME AS NOME_VENDEDOR, A.BAIRRO AS BAIRRO_VENDEDOR, B.NOME AS NOME_CLIENTE, B.BAIRRO AS BAIRRO_CLIENTE
FROM TABELA_DE_VENDEDORES A RIGHT JOIN TABELA_DE_CLIENTES B
ON A.BAIRRO = B.BAIRRO
WHERE A.BAIRRO IS NULL;

-- FULL JOIN --
-- Retorna cada cliente que o vendedor tem no seu bairro, todos os vendedores que n�o tem clientes no bairro e todos os bairros que n�o tem vendedor.
SELECT A.NOME AS NOME_VENDEDOR, A.BAIRRO AS BAIRRO_VENDEDOR, B.NOME AS NOME_CLIENTE, B.BAIRRO AS BAIRRO_CLIENTE
FROM TABELA_DE_VENDEDORES A FULL JOIN TABELA_DE_CLIENTES B
ON A.BAIRRO = B.BAIRRO
ORDER BY A.NOME ASC;

-- CROSS JOIN (N�O PRECISA DECLARAR O ON)--
-- Retorna cada cliente que o vendedor tem no seu bairro, todos os vendedores que n�o tem clientes no bairro e todos os bairros que n�o tem vendedor.
SELECT A.NOME AS NOME_VENDEDOR, A.BAIRRO AS BAIRRO_VENDEDOR, B.NOME AS NOME_CLIENTE, B.BAIRRO AS BAIRRO_CLIENTE
FROM TABELA_DE_VENDEDORES A CROSS JOIN TABELA_DE_CLIENTES B;