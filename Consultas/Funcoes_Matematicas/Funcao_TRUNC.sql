-- MOSTRA A IDADE QUE A PESSOA TEM NA DATA ATUAL (ARREDONDADO)
SELECT NOME, TRUNC (MONTHS_BETWEEN (SYSDATE, DATA_DE_NASCIMENTO)/12) AS IDADE
FROM TABELA_DE_CLIENTES;

