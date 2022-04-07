-- Retorna os bairros da tabela de clientes juntamente com os bairros da tabela de vendedores, sem repeti��o
SELECT DISTINCT BAIRRO FROM TABELA_DE_CLIENTES
UNION
SELECT DISTINCT BAIRRO FROM TABELA_DE_VENDEDORES

-- Retorna todos os bairros da tabela de clientes juntamente com os bairros da tabela de vendedores, inclusive os repetidos
SELECT DISTINCT BAIRRO FROM TABELA_DE_CLIENTES
UNION ALL
SELECT DISTINCT BAIRRO FROM TABELA_DE_VENDEDORES

-- ADICIONADA CONSTANTE (NOVA COLUNA) PARA "TIPIFICAR" OS DADOS --
SELECT DISTINCT BAIRRO AS BAIRRO, 'CLIENTE' AS TIPO FROM TABELA_DE_CLIENTES
UNION ALL
SELECT DISTINCT BAIRRO AS BAIRRO, 'VENDEDOR' AS TIPO FROM TABELA_DE_VENDEDORES;

-- MESMO QUE USE O UNION SIMPLES, O "TIPO" N�O PERMITE JUNTAR OS DADOS --
SELECT DISTINCT BAIRRO AS BAIRRO, 'CLIENTE' AS TIPO FROM TABELA_DE_CLIENTES
UNION
SELECT DISTINCT BAIRRO AS BAIRRO, 'VENDEDOR' AS TIPO FROM TABELA_DE_VENDEDORES;