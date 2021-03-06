--INNER JOIN (RETORNA DADOS EM COMUM DAS TABELAS)

--GROUP BY PARA CONTAR NOTAS POR VENDEDOR
SELECT MATRICULA, COUNT(*) AS QTD_NOTAS FROM NOTAS_FISCAIS
GROUP BY MATRICULA;

--GROUP BY + INNER JOIN PARA CONTAR NOTAS POR VENDEDOR MOSTRANDO COLUNA "NOME"
SELECT A.MATRICULA, B.NOME, COUNT(*) FROM NOTAS_FISCAIS A  --TABELA DE NOTAS RECEBE ALIAS "A"
INNER JOIN TABELA_DE_VENDEDORES B --TABELA DE VENDEDORES RECEBE ALIAS "B"
ON A.MATRICULA = B.MATRICULA --JUNTA OS CAMPOS DAS DUAS TABELAS
GROUP BY A.MATRICULA, B.NOME;



SELECT * FROM NOTAS_FISCAIS;
SELECT * FROM TABELA_DE_CLIENTES;

--CLIENTES QUE FIZERAM ACIMA DE 2000 COMPRAS EM 2016
SELECT CPF, COUNT(*) AS NOTAS FROM NOTAS_FISCAIS
WHERE TO_CHAR(DATA_VENDA, 'YY') = 16
GROUP BY CPF
HAVING COUNT(*) > 2000;

--CLIENTES QUE FIZERAM ACIMA DE 2000 COMPRAS EM 2016 (COM COLUNA NOME)
SELECT A.CPF, B.NOME, COUNT(*) AS NOTAS FROM NOTAS_FISCAIS A INNER JOIN TABELA_DE_CLIENTES B
ON A.CPF = B.CPF
WHERE TO_CHAR(A.DATA_VENDA, 'YY') = 16
GROUP BY A.CPF, B.NOME
HAVING COUNT(*) > 2000;





