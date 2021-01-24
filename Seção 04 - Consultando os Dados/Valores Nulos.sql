/* Inserindo Dados na Tabela Aluno */
INSERT INTO ALUNO
VALUES(
	'UC12005210'
  , 'Carla Moraes'
  , 'F'
  , '74990185048'
  , 429434321
  , '22/10/1991'
  , NULL
  , NULL
  , NULL
  , NULL
)

INSERT INTO ALUNO
VALUES(
	'UC12013217'
  , 'Claudio Manuel'
  , 'M'
  , '13071759029'
  , 955871329
  , '05/07/1987'
  , NULL
  , NULL
  , NULL
  , NULL
)
GO


/* Selecionando Dados da Tabela Aluno */
SELECT
	NOME
  , CIDADE
  + ' '
  + 'Cidade'
FROM
	[SQL_DE_CADA_DIA].[DBO].[ALUNO]
GO


/* Inserindado Dados na Tabela Frequenta */
INSERT INTO FREQUENTA
VALUES (
	'UC12005210'
  , 'T01'
  , 7.0
  , 0
  , 1
  , 2012
)
GO


/* Selecionando Dados da Tabela Frequenta e Utilizando Operações Aritméticas */
SELECT
	MATRICULA
  , NOTA
  , NOTA + NULL
FROM
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]