/* Exerccíos Capítulo 08 */


/* 1 - Traga numa consulta:

1. Todos alunos que nasceram exatamente no ano de 1990.

2. Conte a quantidade de alunos: o sexo MASCULINO e do sexo FEMININO. */
SELECT
	SEXO
  , COUNT(SEXO)			AS [TOTAL]
FROM
	[SQL_DE_CADA_DIA].[DBO].[ALUNO]
WHERE
	CAST(DATANASCIMENTO AS VARCHAR(4)) = '1990'
GROUP BY
	SEXO
GO


/* 2 - Traga todos os professores que estudam na Universidade Catolica de Brasilia ou Universidade Caxias.

-  Ordene o resultado em ordem DECRESCENTE pelo nome do professor. */
SELECT
	*
FROM
	[SQL_DE_CADA_DIA].[DBO].[PROFESSOR]
WHERE
	NOME_FACULDA_DE_FORMACAO IN('Universidade Catolica de Brasilia', 'Universidade Caxias do Sul')
ORDER BY
	NOME DESC
GO