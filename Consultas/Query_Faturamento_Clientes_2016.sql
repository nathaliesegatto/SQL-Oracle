SELECT * FROM NOTAS_FISCAIS;
SELECT * FROM ITENS_NOTAS_FISCAIS;
SELECT * FROM TABELA_DE_CLIENTES;

-- RETORNA FATURAMENTO ARREDONDADO
SELECT 'O cliente ' || TC.NOME || 'Faturou '|| 
ROUND (SUM (IT.QUANTIDADE * IT.PRECO)) || ' no ano de ' || TO_CHAR (NF.DATA_VENDA, 'YYYY') || '.'    -- ROUND (NUMERO_A_ARREDONDAR, QTD-CASAS-DECIMAIS) 
FROM ITENS_NOTAS_FISCAIS IT
INNER JOIN NOTAS_FISCAIS NF ON IT.NUMERO = NF.NUMERO
INNER JOIN TABELA_DE_CLIENTES TC ON NF.CPF = TC.CPF
WHERE TO_CHAR (DATA_VENDA, 'YYYY') = 2016
GROUP BY TC.NOME, TO_CHAR (NF.DATA_VENDA, 'YYYY');

-- RETORNA FATURAMENTO COM DUAS CASAS DECIMAIS
SELECT 'O cliente ' || TC.NOME || 'Faturou '|| 
ROUND (SUM (IT.QUANTIDADE * IT.PRECO)) || ' no ano de ' || TO_CHAR (NF.DATA_VENDA, 'YYYY') || '.'    -- ROUND (NUMERO_A_ARREDONDAR, QTD-CASAS-DECIMAIS) 
FROM ITENS_NOTAS_FISCAIS IT
INNER JOIN NOTAS_FISCAIS NF ON IT.NUMERO = NF.NUMERO
INNER JOIN TABELA_DE_CLIENTES TC ON NF.CPF = TC.CPF
WHERE TO_CHAR (DATA_VENDA, 'YYYY') = 2016
GROUP BY TC.NOME, TO_CHAR (NF.DATA_VENDA, 'YYYY');

