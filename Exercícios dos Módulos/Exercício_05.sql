/* Exercício Capítulo 07 */


/* 1 - Traga numa consulta:

1. A quantidade de professores que estuda em cada faculdade - através de agrupamento.

2. Nomeie as colunas de resultado usando 'ALIAS' para: 'Faculdade de Formação' e 'Qtde professores'

3. Ordene em ORDEM CRESCENTE pelo nome da faculdade

Ex:

Faculdade de Formação       | Quantidade

Universidade de Brasilia      2 */
SELECT
    NOME_FACULDA_DE_FORMACAO			AS [FACULDADE DE FORMAÇÃO]	
  , COUNT(NOME)					AS [QUANTIDADE DE PROFESSORES]
FROM
	[SQL_DE_CADA_DIA].[DBO].[PROFESSOR]
GROUP BY
	NOME_FACULDA_DE_FORMACAO
ORDER BY
	NOME_FACULDA_DE_FORMACAO
GO


/* 2 - Usando o exercício 1 como exemplo, agrupe também pelo sexo.

Ex:

Faculdade de Formação       | Sexo | Quantidade

Universidade de Brasilia      M       2 */
SELECT
    NOME_FACULDA_DE_FORMACAO			AS [FACULDADE DE FORMAÇÃO]
  , SEXO
  , COUNT(NOME)					AS [QUANTIDADE DE PROFESSORES]
FROM
	[SQL_DE_CADA_DIA].[DBO].[PROFESSOR]
GROUP BY
	NOME_FACULDA_DE_FORMACAO
  , SEXO
ORDER BY
    NOME_FACULDA_DE_FORMACAO
  , SEXO
GO


/* 3 - Descubra o erro no comando abaixo

SELECT especialidade,nomefaculdadeformacao

FROM PROFESSOR

GROUP BY especialidade */
SELECT
    ESPECIALIDADE
  , NOME_FACULDA_DE_FORMACAO
FROM
	[SQL_DE_CADA_DIA].[DBO].[PROFESSOR]
GROUP BY
    ESPECIALIDADE
  , NOME_FACULDA_DE_FORMACAO
GO
