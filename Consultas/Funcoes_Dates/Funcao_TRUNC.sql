
-- RETORNA O O PRIMEIRO DIA DO ANO DA DATA INFORMADA

SELECT TRUNC(SYSDATE, 'YEAR') FROM DUAL;

SELECT TRUNC(TO_DATE('01/07/2019', 'DD-MM-YYYY'), 'YEAR') FROM DUAL;