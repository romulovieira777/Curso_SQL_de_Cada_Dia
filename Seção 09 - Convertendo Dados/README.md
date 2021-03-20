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

**O que faz a função COALESCE:**

É utilizada quando um conjunto de campos for passado e deve ser retornado o primeiro não nulo.

**Sintaxe**

~~~sql
COALESCE <expressão>;
~~~

**Exemplo**

~~~sql
SELECT
	  MATRICULA
  , NOTA
  , COALESCE(NOTA + 1, 0)			AS [NOVA NOTA]
FROM
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]
GO
~~~

**O que faz a função CONVERT:**

Converte uma expressão de um tipo de dados em outro.

**Sintaxe**

~~~sql
CONVERT( <expressão> );
~~~

**Exemplo**

~~~sql
SELECT
  CONVERT(DATANASCIMENTO AS VARCHAR(4)) = '1990'
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
GO
~~~

**O que faz a função NULL:**

Permite a entrada de valores nulos.

**Sintaxe**

~~~sql
NULL
~~~

**Exemplo**

~~~sql
SELECT 
  LastName
, FirstName
, Address
FROM
  Persons
WHERE
  Address NULL
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

**O que faz a função VARCHAR:**

Tipos de dados de caractere que sejam de tamanho variável.

**Sintaxe**

~~~sql
VARCHAR();
~~~

**Exemplo**

~~~sql
CREATE TABLE TB_USUARIOS(
  Id_Usuario INT PRIMARY KEY AUTO_INCREMENT,
  Nome VARCHAR(240) NOT NULL,
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
~~~

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
