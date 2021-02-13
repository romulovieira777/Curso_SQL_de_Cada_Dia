/* Slecionando Dados Utilizando as Cláusulas Where e In */
SELECT
	*
FROM
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]
WHERE
	NOTA IN (7, 8)
GO