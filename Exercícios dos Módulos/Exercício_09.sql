/* Exercício Capítulo 11 */


/* 1 - Insira 2 novos alunos na TABELA ALUNO. Fique a vontade para inventar os valores respeitando

os atributos que são obrigatórios.

- Após a inserção desses dois novos registros, traga TODOS OS ALUNOS que sejam do sexo FEMININO. */
INSERT INTO
	[SQL_DE_CADA_DIA].[DBO].[ALUNO]
VALUES(
	'UC12456712'
  , 'Felicty Smoke'
  , 'F'
  , NULL
  , NULL
  , NULL
  , NULL
  , NULL
  , NULL
  , NULL
),
(
	'UC1245613'
  , 'Oliver Queen'
  , 'M'
  , NULL
  , NULL
  , NULL
  , NULL
  , NULL
  , NULL
  , NULL
)
GO


SELECT 
	* 
FROM 
	[SQL_DE_CADA_DIA].[DBO].[ALUNO]
WHERE
	SEXO = 'F'
GO


/* 2 - Qual o erro do comando abaixo? Corrija!

INSERT INTO ALUNO (matricula,nome,sexo) VALUES ('UC12005258','Claudio Manuel',null) */
INSERT INTO
	[SQL_DE_CADA_DIA].[DBO].[ALUNO](MATRICULA, NOME, SEXO)
VALUES(
	'UC12005260'
	, 'Claudio Manuel'
	, NULL
)
GO


/* 3 - Altere o endereço completo do ALUNO de matrícula: 'UC12006429'.

O endereço novo é: bairro: Águas Claras, CEP: 71901-212, endereço: Rua das Paineiras LOTE 8, APT 200 */
UPDATE
	[SQL_DE_CADA_DIA].[DBO].[ALUNO]
SET 
	BAIRRO = 'Águas Claras'
  , CEP = '71901212'
  , ENDERECO = 'Rua das Paineiras LOTE 8, APT 200'
WHERE
	MATRICULA = 'UC12006429'
GO


/* 4 - Altera a situação do ALUNO REPROVADO para APROVADO: Matricula: UC12005258; nota: 7.5 */
UPDATE
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]
SET
	NOTA = 7.50
WHERE 
	MATRICULA = 'UC12005258'
GO


/* 5 - Crie uma nova TABELA com todos os alunos APROVADOS, isto é: nota >= 7 E faltas < 4.

- A nova tabela deve TER apenas: matricula, nome do aluno, sexo. */
SELECT
	F.MATRICULA
  , A.NOME
  , A.SEXO
INTO
	[SQL_DE_CADA_DIA].[DBO].[ALUNOS APROVADOS]
FROM
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA] F
INNER JOIN [SQL_DE_CADA_DIA].[DBO].[ALUNO] A ON F.MATRICULA = A.MATRICULA
WHERE
	NOTA >= 7 AND FALTA < 4
GO