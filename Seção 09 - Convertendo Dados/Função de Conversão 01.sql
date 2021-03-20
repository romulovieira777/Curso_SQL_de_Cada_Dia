/* Selecionando Dados da Tabela*/
SELECT
	*
FROM
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]
WHERE
	COD_TURMA = 'T03'
GO


SELECT
	*
FROM
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]
WHERE
	COD_TURMA = T03
GO


SELECT
	*
FROM
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]
WHERE
	NOTA = 8
GO


SELECT
	*
FROM
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]
WHERE
	NOTA = '8'
GO


SELECT
	NOTA
  , NOTA + 0.4			AS [NOTA ADICONADA]
FROM
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]
GO