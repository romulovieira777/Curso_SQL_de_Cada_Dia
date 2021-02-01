### :computer: Funções em SQL que foram usados nos Arquivos acima: :rocket:
**O que faz a função as:**

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

**O que faz a função distinct:**

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

**O que faz a função from:**

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

**O que faz o comando inser into:**

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

**O que faz o comando null:**

Adiciona valores nulos.

**Sintaxe**

~~~sql
null;
~~~

**Exemplo**

~~~sql
INSERT INTO ALUNO
VALUES(
    'UC12013217'
  , 'Claudio Manuel'
  , 'M'
  , '13071759029'
  , 955871329
  , '05/07/1987'
  , NULL
  , NULL
  , NULL
  , NULL
)
GO
~~~

**O que faz a função select:**

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

**O que faz a função sp_help:**

É utilizado para descrever a tabela(nome, tipo de dado de cada atributo e restrições

**Sintaxe**

~~~sql
describe nome_tabelaSELECT colunas;
~~~

**Exemplo**

~~~sql
SP_HELP [ALUNO]
GO
~~~

