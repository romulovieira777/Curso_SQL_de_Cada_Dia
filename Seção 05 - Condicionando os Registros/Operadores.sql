/* Selecionando Dados da Tabela */
SELECT
	*
FROM
	[SQL_DE_CADA_DIA].[DBO].[ALUNO]
WHERE
	SEXO = 'M' AND BAIRRO = 'Aguas Claras'
GO


SELECT
 *
FROM
	[SQL_DE_CADA_DIA].[DBO].[ALUNO]
WHERE
	SEXO = 'F' AND BAIRRO != 'Aguas Claras'
GO


SELECT
	*
FROM
	[SQL_DE_CADA_DIA].[DBO].[ALUNO]
WHERE
	BAIRRO = 'Taguatinga Sul' OR BAIRRO = 'Asa Norte'
GO


SELECT
	*
FROM
	[SQL_DE_CADA_DIA].[DBO].[ALUNO]
WHERE
	NOT (BAIRRO = 'Taguatinga' OR BAIRRO = 'Asa Norte')
GO