### :computer: Comandos em SQL que foram usados nos Arquivos acima: :rocket:
**O que faz a função ASC:**

É usada para classificar em ordem ascendente.

**Sintaxe**

~~~sql
ASC
~~~

**Exemplo**

~~~sql
SELECT
	*
FROM
	[SQL_DE_CADA_DIA].[DBO].[ALUNO]
WHERE
	NOME LIKE 'C%' AND CIDADE IS NOT NULL
ORDER BY
	NOME ASC
GO
~~~

**O que faz a função DESC:**

É usada para classificar em ordem descendente.

**Sintaxe**

~~~sql
DESC
~~~

**Exemplo**

~~~sql
SELECT
	NOTA
FROM
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]
ORDER BY
	NOTA DESC
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
~~~

**O que faz a função INSERT INTO:**

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

**O que faz a função ORDER BY:**

Permite que a ordenação seja feita por uma ou mais de uma coluna.

**Sintaxe**

~~~sql
ORDER BY <expressâo>;
~~~

**Exemplo**

~~~sql
SELECT
	*
FROM
	[SQL_DE_CADA_DIA].[DBO].[ALUNO]
WHERE
	NOME LIKE 'C%' AND CIDADE IS NOT NULL
ORDER BY
	NOME ASC
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
~~~

**O que faz a função VALUES:**

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
~~~
