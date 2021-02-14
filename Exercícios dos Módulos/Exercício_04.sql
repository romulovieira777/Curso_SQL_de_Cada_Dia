/* Exercícios Capítulo 06 */


/* 1 - Traga numa consulta:

1. A nota máxima

2. A nota mínima

3. A quantidade de faltas de todos os alunos

4. A média aritmética das notas

5. O somatório das notas */
SELECT
	MAX(NOTA)				AS [NOTA MÁXIMA]
  , MIN(NOTA)				AS [NOTA MÍNIMA]
  , COUNT(FALTA)			AS [CONTAGEM DE FALTAS]
  , AVG(NOTA)				AS [MÉDIA DAS NOTAS]
  , SUM(NOTA)				AS [TOTAL DAS NOTAS]
FROM
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]
GO


/* 2 - Há um problema nesse comando abaixo. Encontre o erro e corrija.

SELECT falta, COUNT(falta) FROM FREQUENTA*/
SELECT
	COUNT(FALTA)			AS[CONTAGEM DE FALTAS]
FROM
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]
GO


/* 3 - Descubra o professor mais velho e mais novo da universidade.

Use a tabela PROFESSOR.*/
SELECT
	MIN(DATANASCIMENTO)		AS [MAIS VELHO]
  , MAX(DATANASCIMENTO)		AS [MAIS NOVO]
FROM
	[SQL_DE_CADA_DIA].[DBO].[PROFESSOR]
GO