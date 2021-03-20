### :computer: Comandos em SQL que foram usados nos Arquivos acima: :rocket:
**O que faz a função DELETE:**

Remove uma ou mais linhas de uma tabela ou exibição.

**Sintaxe**

~~~sql
DELETE <expressão>;
~~~

**Exemplo**

~~~sql
DELETE FROM 
	[SQL_DE_CADA_DIA].[DBO].[ALUNO]
WHERE
	MATRICULA = 'UC346768001'
GO
~~~

**O que faz a função DROP:**

Remove uma ou mais definições de tabela e todos os dados, índices, gatilhos, restrições e especificações de permissão dessas tabelas.

**Sintaxe**

~~~sql
DROP <expressão>;
~~~

**Exemplo**

~~~sql
DROP TABLE
	[SQL_DE_CADA_DIA].[DBO].[ALUNO]
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

**O que faz a função INT:**

Faz a conversão para um número de inteiro.

**Sintaxe**

~~~sql
INT
~~~

**Exemplo**

~~~sql
Id_Usuario INT;
~~~


**O que faz a função PRIMARY KEY:**

Restrição identifica exclusivamente cada registro em uma tabela de banco de dados.

**Sintaxe**

~~~sql
PRIMARY KEY
~~~

**Exemplo**

~~~sql
SCREATE TABLE TB_USUARIOS(
  Id_Usuario INT PRIMARY KEY AUTO_INCREMENT
);
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

**O que faz a função SET:**

É usada para atribuir variáveis.

**Sintaxe**

~~~sql
set colunas;
~~~

**Exemplo**

~~~sql
UPDATE
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]
SET
	NOTA = 7.50
WHERE 
	MATRICULA = 'UC12005258'
GO
~~~

**O que faz a função UPDATE:**

Permite atualizar dados em uma coluna de um registro em uma tabela, ou todas as colunas em todos os registros na tabela.

**Sintaxe**

~~~sql
UPDATE( <expressão> );
~~~

**Exemplo**

~~~sql
UPDATE
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]
SET
	NOTA = 7.50
WHERE 
	MATRICULA = 'UC12005258'
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
