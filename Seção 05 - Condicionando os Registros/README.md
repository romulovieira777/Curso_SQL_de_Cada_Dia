### :computer: Comandos em SQL que foram usados nos Arquivos acima: :rocket:
**O que faz a função AND:**

É usada para filtrar um registro se ambos forem verdadeiros em uma consulta.

**Sintaxe**

~~~sql
AND <nome>;
~~~

**Exemplo**

~~~sql
SELECT
  , BAIRRO			AS [ONDE MORA]
  , CEP
  , ENDERECO
FROM
	[SQL_DE_CADA_DIA].[DBO].[ALUNO]
WHERE
	SEXO = 'M' AND BAIRRO = 'Asa Norte'
GO
~~~

**O que faz a função BETWEEN:**

É usada para seleção de intervalo em registros.

**Sintaxe**

~~~sql
BETWEEN <nome>;
~~~

**Exemplo**

~~~sql
SELECT
	*
FROM
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]
WHERE
	NOTA BETWEEN 8 AND 9 AND FALTA >= 2
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

**O que faz a função IN:**

Determina se um determinado valor corresponde a qualquer valor em uma subconsulta ou lista.

**Sintaxe**

~~~sql
IN <expressão>;
~~~

**Exemplo**

~~~sql
SELECT
	*
FROM
	[SQL_DE_CADA_DIA].[DBO].[PROFESSOR]
WHERE
	ESPECIALIDADE IN ('Matematica', 'Literatura')
~~~

**O que faz a função IS NOT NULL:**

É usada para selecionar valores não nulos.

**Sintaxe**

~~~sql
IS NOT NULL
~~~

**Exemplo**

~~~sql
SELECT
	*
FROM
	[SQL_DE_CADA_DIA].[DBO].[ALUNO]
WHERE
	NOME LIKE 'C%' AND CIDADE IS NOT NULL
~~~

**O que faz a função IS NULL:**

É usada para selecionar valores nulos.

**Sintaxe**

~~~sql
IS NULL
~~~

**Exemplo**

~~~sql
SELECT
	*
FROM
	[SQL_DE_CADA_DIA].[DBO].[ALUNO]
WHERE
	CIDADE IS NULL
GO
~~~

**O que faz a função LIKE:**

É usada para determinaR se uma cadeia de caracteres são correspondente.

**Sintaxe**

~~~sql
LIKE <expressão>;
~~~

**Exemplo**

~~~sql
SELECT
	*
FROM
	[SQL_DE_CADA_DIA].[DBO].[ALUNO]
WHERE
	NOME LIKE 'C%'
GO
~~~

**O que faz a função OR:**

É usada para filtrar um registro se um for verdadeiro em uma consulta.

**Sintaxe**

~~~sql
OR <nome>;
~~~

**Exemplo**

~~~sql
SELECT
	*
FROM
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]
WHERE
	NOTA < 7 OR FALTA >= 4
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
~~~

**O que faz a função >:**

Verifica se do dado é maior.

**Sintaxe**

~~~sql
> <expressão>;
~~~

**Exemplo**

~~~sql
SELECT
	*
FROM
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]
WHERE
	NOTA > 8.0
GO

**O que faz a função >=:**

Verifica se do dado é igual ou maior.

**Sintaxe**

~~~sql
>= <expressão>;
~~~

**Exemplo**

~~~sql
SELECT
	*
FROM
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]
WHERE
	NOTA >= 8.0
GO

**O que faz a função <:**

Verifica se do dado é menor.

**Sintaxe**

~~~sql
< <expressão>;
~~~

**Exemplo**

~~~sql
SELECT
	*
FROM
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]
WHERE
	NOTA < 8.0
GO

**O que faz a função <=:**

Verifica se do dado é menor ou igual.

**Sintaxe**

~~~sql
<= <expressão>;
~~~

**Exemplo**

~~~sql
SELECT
	*
FROM
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]
WHERE
	NOTA <= 8.0
GO

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

**O que faz a função !=:**

Verifica se do dado é diferente.

**Sintaxe**

~~~sql
!= <expressão>;
~~~

**Exemplo**

~~~sql
SELECT
	*
FROM
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]
WHERE
	NOTA != 8.0
GO

**O que faz a função %:**

É um caracter coringa usado para encontrar palavras.

**Sintaxe**

~~~sql
% <expressão>;
~~~

**Exemplo**

~~~sql
SELECT
	*
FROM
	[SQL_DE_CADA_DIA].[DBO].[ALUNO]
WHERE
	NOME LIKE 'C%'
~~~
