### :computer: Comandos em SQL que foram usados nos Arquivos acima: :rocket:
**O que faz a função CROSS JOIN:**

Retorna todas as linhas das tabelas por cruzamento, ou seja, para cada linha da tabela esquerda queremos todos os linhas da tabelas direita ou vice-versa.

**Sintaxe**

~~~sql
CROSS JOIN tabela;
~~~

**Exemplo**

~~~sql
SELECT
	  A.MATRICULA
  , A.NOME
  , F.COD_TURMA
FROM
	[SQL_DE_CADA_DIA].[DBO].[ALUNO] A
CROSS JOIN [SQL_DE_CADA_DIA].[DBO].[FREQUENTA] F
GO
~~~

**O que faz a função FROM:**

É usada para direcionar uma tabela no banco de dados.

**Sintaxe**

~~~sql
FROM tabela;
~~~

**Exemplo**

~~~sql
SELECT
  Nome
, Salario
FROM
  TB_USUARIOS;
GO
~~~

**O que faz a função INNER JOIN:**

Permite usar um operador de comparação para comparar os valores de colunas provenientes de tabelas associadas.

**Sintaxe**

~~~sql
INNER JOIN <expressão>;
~~~

**Exemplo**

~~~sql
SELECT
    P.MATRICULA
  , P.NOME
  , P.ESPECIALIDADE
FROM
	[SQL_DE_CADA_DIA].[DBO].[PROFESSOR] P
INNER JOIN [SQL_DE_CADA_DIA].[DBO].[ENSINA] E ON P.MATRICULA = E.MATRICULA
GO
~~~

**O que faz o comando INSERT INTO:**

Adiciona uma ou mais linhas a uma tabela ou exibição.

**Sintaxe**

~~~sql
INSERT INTO nome_tabela (lista-de-campos)
VALUES (lista_dados);
~~~

**Exemplo**

~~~sql
INSERT INTO TB_USUSARIOS(
  Id_Usuario
, Nome
, Salario
, Data_de_Admissao
) VALUES (
  ''
, 'Felicty Smoak'
, 6.500
, 20120725
);
~~~

**O que faz a função LEFT JOIN:**

Retorna todos os registros da tabela esquerda e os registros correspondentes da tabela direita.

**Sintaxe**

~~~sql
LEFT JOIN <expressão>;
~~~

**Exemplo**

~~~sql
SELECT
	  A.MATRICULA
  , A.NOME
  , F.COD_TURMA
FROM
	[SQL_DE_CADA_DIA].[DBO].[ALUNO] A
LEFT JOIN [SQL_DE_CADA_DIA].[DBO].[FREQUENTA] F ON A.MATRICULA = F.MATRICULA
GO
~~~

**O que faz a função RIGHT JOIN:**

Retorna todos os dados encontrados na tabela à direita.

**Sintaxe**

~~~sql
RIHT JOIN <expressão>;
~~~

**Exemplo**

~~~sql
SELECT
	  A.MATRICULA
  , A.NOME
  , F.COD_TURMA
FROM
	[SQL_DE_CADA_DIA].[DBO].[ALUNO] A
RIGHT JOIN [SQL_DE_CADA_DIA].[DBO].[FREQUENTA] F ON A.MATRICULA = F.MATRICULA
GO
~~~

**O que faz a função SELECT:**

É usada para recuperar linhas e colunas de uma tabela no banco de dados.

**Sintaxe**

~~~sql
SELECT colunas;
~~~

**Exemplo**

~~~sql
SELECT
  Nome
, Salario
FROM
  TB_USUARIOS;
GO
~~~

**O que faz o função VALUES:**

Identifica o valor a ser inserido em uma tabela de banco de dados.

**Sintaxe**

~~~sql
VALUES();
~~~

**Exemplo**

~~~sql
INSERT INTO TB_USUSARIOS(
	Id_Usuario
  , Nome
  , Salario
  , Data_de_Admissao
) VALUES (
	''
  , 'Felicty Smoak'
  , 6.500
  , 20120725
);
GO
~~~

**O que faz a função WHERE:**

Especifica o critério de pesquisa para as linhas retornadas pela consulta.

**Sintaxe**

~~~sql
WHERE condição;
~~~

**Exemplo**

~~~sql
SELECT
  *
FROM
  TB_USUARIOS
WHERE
  Salario > 6.000;
GO
~~~

**O que faz a função =:**

Verifica se do dado é igual.

**Sintaxe**

~~~sql
= <expressão>;
~~~

**Exemplo**

~~~sql
SELECT
	*
FROM
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]
WHERE
	NOTA = 8.0
GO
~~~

