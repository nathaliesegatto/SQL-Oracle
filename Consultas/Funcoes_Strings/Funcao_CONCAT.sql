-- RETORNA ENDERE�O E BAIRRO JUNTOS;
SELECT CONCAT(ENDERECO_1, BAIRRO) FROM TABELA_DE_CLIENTES;

-- RETORNA ENDERE�O COMPLETO CONCATENADO;
SELECT NOME, (' ' || ENDERECO_1 || ', ' || BAIRRO || ' - '  || CIDADE || '/ '  || ESTADO || ', '  || 'CEP: ' || CEP)
AS ENDERECO FROM TABELA_DE_CLIENTES 