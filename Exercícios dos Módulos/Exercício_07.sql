/* Exercício Capítulo 09 */


/* 1 - Traga numa consulta:

1. Quantidade de pessoas em cada bairro.

2. Os nomes dos bairros devem estar com todas letras MAIÚSCULAS.

3. Valores NULOS no bairro devem ser DESCONSIDERADOS.

4. Ordene (de forma CRESCENTE) pelo bairro. */
SELECT
	UPPER(BAIRRO)				AS [BAIRRO]
  , COUNT(NOME)					AS [QUANTIDADE DE PESSOAS] 
FROM
	[SQL_DE_CADA_DIA].[DBO].[ALUNO]
WHERE
	BAIRRO IS NOT NULL
GROUP BY
	BAIRRO
ORDER BY
	BAIRRO ASC
GO


/* 2 - Calcule e traga a idade de todos os professores.

- No resultado deve ser tragos: nome, sexo e por idade do professor calculada.

- Use um ALIAS para a coluna idade calculada: 'idade'

- Substitua os espaços entre os nomes por *. */
SELECT
	REPLACE(NOME, ' ', '*')
  , SEXO
  , DATEDIFF(YEAR, DATANASCIMENTO, GETDATE())					AS [IDADE]
FROM
	[SQL_DE_CADA_DIA].[DBO].[PROFESSOR]
GO