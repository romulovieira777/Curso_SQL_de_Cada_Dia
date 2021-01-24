/* Selecionando Dados da Tabela Aluno e Concatenando */
SELECT
	NOME
  , CIDADE
  + ' ' 
  + BAIRRO
  + ' ' 
  + CEP
  + ENDERECO			AS [ENDERECO COMPLETO]
FROM
	[SQL_DE_CADA_DIA].[DBO].[ALUNO]
GO