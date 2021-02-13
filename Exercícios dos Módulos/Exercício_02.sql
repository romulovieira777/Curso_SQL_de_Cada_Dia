/* Exercícios Capítulo 04 */


/* 1 - Consulte todos os alunos que sejam do sexo masculino e que moram na Asa Norte

- Na tabela como resultado nomeie o atributo 'nome' para 'Nome Completo' e 'bairro' para 'Onde Mora' */
SELECT
	MATRICULA
  , NOME			AS [NOME COMPLETO]
  , SEXO
  , CPF
  , RG
  , DATANASCIMENTO
  , CIDADE
  , BAIRRO			AS [ONDE MORA]
  , CEP
  , ENDERECO
FROM
	[SQL_DE_CADA_DIA].[DBO].[ALUNO]
WHERE
	SEXO = 'M' AND BAIRRO = 'Asa Norte'
GO


/* 2 - Usando a tabela FREQUENTA traga todas as notas no intervalo de 8 e 9 

e que o número de faltas seja superior ou igual a 2 */
SELECT
	*
FROM
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]
WHERE
	NOTA BETWEEN 8 AND 9 AND FALTA >= 2
GO


/* 3 - Traga todos os alunos que a primeira letra do nome começa com a letra 'C' 

e que a cidade seja existente (diferente do valor NULL).

Ordene o resultado em ordem crescente. Dica: pesquise o comando ORDER BY */
SELECT
	*
FROM
	[SQL_DE_CADA_DIA].[DBO].[ALUNO]
WHERE
	NOME LIKE 'C%' AND CIDADE IS NOT NULL
ORDER BY
	NOME ASC
GO


/* 4 - Traga todos os alunos que não estão reprovados (nota >= 7, E faltas não superior ou igual a 4)

Use a tabela FREQUENTA */
SELECT
	*
FROM
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]
WHERE
	NOTA >= 7 AND FALTA < 4
GO


/* 5 - Traga todos os alunos que estão reprovados (nota < 7 ou faltas superior ou igual a 4)

Use a tabela FREQUENTA */
SELECT
	*
FROM
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]
WHERE
	NOTA < 7 OR FALTA >= 4
GO