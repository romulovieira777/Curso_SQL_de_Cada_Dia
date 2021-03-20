/* Inserindo Dados na Tabela Frequenta */
INSERT INTO
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]
VALUES(
	'UC12004127'
  , 'T04'
  , NULL
  , NULL
  , 1
  , 2012
),
(
	'UC12004127'
  , 'T05'
  , NULL
  , NULL
  , 1
  , 2012
)
GO



/* Selecionando Dados da Tabela */
SELECT
	MATRICULA
  , NOTA
  , COALESCE(NOTA + 1, 0)			AS [NOVA NOTA]
FROM
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]
GO