### :computer: Comandos em SQL que foram usados nos Arquivos acima: :rocket:
**O que faz a função AS:**

É usada para dar nome alternativo para colunas ou tabelas.

**Sintaxe**

~~~sql
AS <nome>;
~~~

**Exemplo**

~~~sql
SELECT
    NOME                AS [NOME COMPLETO]
  , MATRICULA           AS [MAT]
  , DATANASCIMENTO      AS [NASCIMENTO]
  , SEXO
FROM
  [SQL_DE_CADA_DIA].[DBO].[ALUNO]
GO
~~~

**O que faz a função AVG:**

É usada para calcular a média aritmética.

**Sintaxe**

~~~sql
AVG <expressão>;
~~~

**Exemplo**

~~~sql
SELECT
   AVG(NOTA)				AS [MÉDIA DAS NOTAS]
FROM
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]
GO
~~~

**O que faz a função COUNT:**

É usada para contagem dos itens selecionados ou registros.

**Sintaxe**

~~~sql
COUNT <expressão>;
~~~

**Exemplo**

~~~sql
SELECT
   COUNT(FALTA)			AS [CONTAGEM DE FALTAS]
FROM
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]
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

**O que faz a função GROUP BY:**

É responsável por determinar em quais grupos devem ser colocadas as linhas de saída.

**Sintaxe**

~~~sql
GROUP BY <expressão>;
~~~

**Exemplo**

~~~sql
SELECT
    NOME_FACULDA_DE_FORMACAO			AS [FACULDADE DE FORMAÇÃO]	
  , COUNT(NOME)					          AS [QUANTIDADE DE PROFESSORES]
FROM
	[SQL_DE_CADA_DIA].[DBO].[PROFESSOR]
GROUP BY
	NOME_FACULDA_DE_FORMACAO
ORDER BY
	NOME_FACULDA_DE_FORMACAO
GO
~~~

**O que faz a função HAVING:**

Determina uma condição de busca para um grupo ou um conjunto de registros, definindo critérios para limitar os resultados obtidos a partir do agrupamento de registros.

**Sintaxe**
~~~sql
HAVING <expressão>;
~~~

**Exemplo**

~~~sql
SELECT
    CIDADE
  , BAIRRO
  , COUNT(*)			AS [CONTAGEM DE LINHAS]
FROM
	[SQL_DE_CADA_DIA].[DBO].[ALUNO]
WHERE
	CIDADE IS NOT NULL
GROUP BY
    CIDADE
  , BAIRRO
HAVING
	BAIRRO LIKE '%Sul'
ORDER BY
	BAIRRO DESC
GO
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

**O que faz a função MAX:**

É usada para determinar o valor máximo.

**Sintaxe**

~~~sql
MAX <expressão>;
~~~

**Exemplo**

~~~sql
SELECT
    MAX(NOTA)				AS [NOTA MÁXIMA]
FROM
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]
GO
~~~

**O que faz a função MIN:**

É usada para determinar o valor mínimo.

**Sintaxe**

~~~sql
MIN <expressão>;
~~~

**Exemplo**

~~~sql
SELECT
   MIN(NOTA)				AS [NOTA MÍNIMA]
FROM
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]
GO
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

**O que faz a função SUM:**

É usada para somar valores.

**Sintaxe**

~~~sql
SUM <expressão>;
~~~

**Exemplo**

~~~sql
SELECT
    SUM(NOTA)				AS [TOTAL DAS NOTAS]
FROM
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]
GO
~~~

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
GO
~~~
