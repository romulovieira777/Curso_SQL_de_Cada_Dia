/* Exercícios Capítulo 05 */


/* 1 - Consulte todos os professores que trabalham na universidade em que a especialidade seja 'Matematica',

'Literatura'. Ordene (na forma CRESCENTE) pelo nome do professor.

Use a tabela PROFESSOR */
SELECT
	*
FROM
	[SQL_DE_CADA_DIA].[DBO].[PROFESSOR]
WHERE
	ESPECIALIDADE IN ('Matematica', 'Literatura')
ORDER BY
	NOME ASC
GO


/* 2 - Consulta todas as notas dos alunos

Ordene o resultado pela nota na forma DECRESCENTE */
SELECT
	NOTA
FROM
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]
ORDER BY
	NOTA DESC
GO


/* 3 - Traga todas as especialidades dos professores (não repita os resultados)

Dica: use o operador DISTINCT e a tabela PROFESSOR */
SELECT DISTINCT
	ESPECIALIDADE	
FROM
	[SQL_DE_CADA_DIA].[DBO].[PROFESSOR]
GO