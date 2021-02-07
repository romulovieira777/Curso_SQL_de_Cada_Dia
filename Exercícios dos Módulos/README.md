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

**O que faz a função DISTINCT:**

Consultas com valores distintos, sem repetição.

**Sintaxe**

~~~sql
SELECT DISTINCT 
  <Coluna>  
FROM
  <nome_da_tabela>;
~~~

**Exemplo**

~~~sql
SELECT DISTINCT
  BAIRRO
FROM
  [SQL_DE_CADA_DIA].[DBO].[ALUNO]
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



