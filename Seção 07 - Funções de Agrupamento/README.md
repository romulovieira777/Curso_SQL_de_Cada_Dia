### :computer: Comandos em SQL que foram usados nos Arquivos acima: :rocket:
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
