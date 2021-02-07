/* Exercícios Capítulo 03 */

/* 1 - O gestor da universidade deseja ter uma visão geral de todos os alunos matriculados. */
SELECT
	*
FROM
	[SQL_DE_CADA_DIA].[DBO].[ALUNO]
GO


/* 2 - É necessário criar uma consulta que traga para cada aluno: matrícula, código da turma em que ele está matriculado, 

nota, quantidade de faltas e semestre. Para ficar mais clara a informação, no cabeçalho da tabela deve aparecer 'código da turma' 

para codTurma e 'Qtde de faltas' para faltas. */
SELECT
	MATRICULA
  , COD_TURMA				AS [CÓDIGO TURMA]
  , NOTA
  , FALTA
  , SEMESTRE
FROM
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]
GO


/* 3 - Crie um relatório na forma de consulta que traga os seguintes dados: nome, sexo, cidade, bairro, CEP e endereço de cada aluno. 

Os campos cidade, bairro, CEP e endereço devem ser exibidos como uma única coluna no resultado, separados 

por * e espaco para cada informação. */
SELECT
	NOME
  , SEXO
  , CIDADE
  + ' * '
  + BAIRRO
  + ' * '
  + CEP
  + ' * '
  + ENDERECO
FROM
	[SQL_DE_CADA_DIA].[DBO].[ALUNO]
GO


/* 4 - Exiba todos os registros da tabela turma excluindo a repetição do turno. */
SELECT DISTINCT
	  TURNO
FROM
	[SQL_DE_CADA_DIA].[DBO].[TURMA]
GO


/* 5 - Crie um consulta que traga uma nova nota para os alunos: isso é, subtraindo o valor de 1.0 ponto. */
SELECT
	MATRICULA
  , COD_TURMA
  , NOTA				AS [NOTA ANTIGA]
  , NOTA - 1			AS [NOTA NOVA]
  , FALTA
  , SEMESTRE
  , ANO
FROM
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]
GO