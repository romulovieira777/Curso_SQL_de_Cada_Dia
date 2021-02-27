/* Exercícios Capítulo 10 */


/* 1 - Traga numa consulta:

1. A turma em que cada professor ensina. Para TURMA use: codTurma, nomeTurma, turno.

2. A disciplina de cada turma vinculada. Para DISCIPLINA use: codDisciplina, nomeDisciplina.

3. Para professor traga as seguintes informações: matrícula, nome, especialidade. */
SELECT
	P.MATRICULA
  , P.NOME
  , P.ESPECIALIDADE
  , T.COD_TURMA
  , T.NOME_TURMA
  , T.TURNO
  , D.COD_DISCIPLINA
  , D.NOME_DISCIPLINA
FROM
	[SQL_DE_CADA_DIA].[DBO].[PROFESSOR] P
INNER JOIN [SQL_DE_CADA_DIA].[DBO].[ENSINA] E ON P.MATRICULA = E.MATRICULA
INNER JOIN [SQL_DE_CADA_DIA].[DBO].[TURMA] T ON E.COD_TURMA = T.COD_TURMA
INNER JOIN [SQL_DE_CADA_DIA].[DBO].[DISCIPLINA] D ON T.COD_DISCIPLINA = D.COD_DISCIPLINA
GO


/* 2 - Conte a quantidade de turmas em que cada professor leciona.

- Ex: professor x - total: 10 turmas

1. Para professor traga: nome

2. Para turma traga: quantidade.

3. Adicione o critério: a quantidade de turma na consulta deve ser maior que 1.

4. Ordene de forma CRESCENTE pela quantidade.

5. Use um ALIAS: Quantidade de Turmas */
SELECT
	P.NOME
  , COUNT(T.COD_TURMA)			AS [QUANTIDADE DE TURMAS]
FROM
	[SQL_DE_CADA_DIA].[DBO].[PROFESSOR] P
INNER JOIN [SQL_DE_CADA_DIA].[DBO].[ENSINA] E ON P.MATRICULA = E.MATRICULA
INNER JOIN [SQL_DE_CADA_DIA].[DBO].[TURMA] T ON E.COD_TURMA = T.COD_TURMA
GROUP BY
	P.NOME
HAVING
	COUNT(T.COD_TURMA) > 1
ORDER BY
	[QUANTIDADE DE TURMAS]
GO


/* 3 - Monte um relatório que mostre:

1. Matricula do aluno, nome do aluno.

2. Todas as turmas que ele está matriculado. Para turma use: codTurma, nomeTurma.

3. O nome e a matrícula dos professores que lecionam essas turmas. */
SELECT
	A.MATRICULA
  , A.NOME
  , F.COD_TURMA
  , T.NOME_TURMA
  , P.NOME						AS [NOME DO PROFESSOR]
  , P.MATRICULA					AS [MATRÍCULA DO PROFESSOR]
FROM
	[SQL_DE_CADA_DIA].[DBO].[ALUNO] A
INNER JOIN [SQL_DE_CADA_DIA].[DBO].[FREQUENTA] F ON A.MATRICULA = F.MATRICULA
INNER JOIN [SQL_DE_CADA_DIA].[DBO].[TURMA] T ON F.COD_TURMA = T.COD_TURMA
INNER JOIN [SQL_DE_CADA_DIA].[DBO].[ENSINA] E ON T.COD_TURMA = E.COD_TURMA
INNER JOIN [SQL_DE_CADA_DIA].[DBO].[PROFESSOR] P ON E.MATRICULA = P.MATRICULA
GO


/* 4 - Qual erro do comando abaixo?

SELECT matricula, nome, codTurma, matricula

FROM ALUNO, FREQUENTA

WHERE matricula = matricula */
SELECT
	A.MATRICULA
  , A.NOME
  , F.COD_TURMA
  , F.MATRICULA
FROM
	[SQL_DE_CADA_DIA].[DBO].[ALUNO] A
  , [SQL_DE_CADA_DIA].[DBO].[FREQUENTA] F
WHERE
	A.MATRICULA = F.MATRICULA
GO


/* 5 - Através de uma consulta responda: existe algum PROFESSOR que também é ALUNO?

Use o identificador 'matricula' para saber. */
SELECT
	P.MATRICULA
  , P.NOME
FROM
	[SQL_DE_CADA_DIA].[DBO].[PROFESSOR] P
INNER JOIN [SQL_DE_CADA_DIA].[DBO].[ALUNO] A ON P.MATRICULA = A.MATRICULA
GO


/* 6 - Encontre a média aritmética da turma T04 de matematica discreta.

Veja a TABELA 'DISCIPLINA'. */
SELECT
	AVG(F.NOTA)					AS [MÉDIA DAS NOTAS]
FROM
	[SQL_DE_CADA_DIA].[DBO].[ALUNO] A
INNER JOIN [SQL_DE_CADA_DIA].[DBO].[FREQUENTA] F ON A.MATRICULA = F.MATRICULA
INNER JOIN [SQL_DE_CADA_DIA].[DBO].[TURMA] T ON F.COD_TURMA = T.COD_TURMA
INNER JOIN [SQL_DE_CADA_DIA].[DBO].[DISCIPLINA] D ON T.COD_DISCIPLINA = D.COD_DISCIPLINA
WHERE
	T.COD_TURMA = 'T04'
AND
	D.NOME_DISCIPLINA = 'Matematica Discreta'
GO


/* 7 - Encontre quantos alunos cursam a matéria de 'logica matematica' */
SELECT
	COUNT(*)
FROM
	[SQL_DE_CADA_DIA].[DBO].[ALUNO] A
INNER JOIN [SQL_DE_CADA_DIA].[DBO].[FREQUENTA] F ON A.MATRICULA = F.MATRICULA
INNER JOIN [SQL_DE_CADA_DIA].[DBO].[TURMA] T ON F.COD_TURMA = T.COD_TURMA
INNER JOIN [SQL_DE_CADA_DIA].[DBO].[DISCIPLINA] D ON T.COD_DISCIPLINA = D.COD_DISCIPLINA
WHERE
	D.NOME_DISCIPLINA = 'Logica Matematica'
GO