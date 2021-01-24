### :computer: Comandos em SQL que foram usados nos Arquivos acima: :rocket:
**O que faz o comando char:**

Esse comando converte um código ASCII int em um valor de caractere.

**Sintaxe**

~~~sql
CHAR ( integer_expression );
~~~

**Exemplo**

~~~sql
SELECT CHAR(65);
~~~

**O que faz o comando constraint:**

Pode colocar restrições para limitar o tipo de dados a introduzir numa tabela

**Sintaxe**

~~~sql
CONSTRAINT <Nome>
~~~

**Exemplo**

~~~sql
CONSTRAINT "PK_ALUNO"
~~~

**O que faz o comando create database:**

Cria um novo banco de dados.

**Sintaxe**

~~~sql
CREATE DATABASE nome;
~~~

**Exemplo**

~~~sql
CREATE DATABASE usuarios;
~~~

**O que faz o comando create table:**

Cria uma nova tabela no Banco de Dados.

**Sintaxe**

~~~sql
CREATE TABLE nome();
~~~

**Exemplo**

~~~sql
CREATE TABLE TB_USUARIOS(
  Id_Usuario INT PRIMARY KEY AUTO_INCREMENT,
  Nome VARCHAR(240) NOT NULL,
  Salario FLOAT NOT NULL,
  Data_de_Admissao DATE NOT NULL
);
~~~

**O que faz o comando date:**

Define a coluna como data.

**Sintaxe**

~~~sql
DATE
~~~

**Exemplo**

~~~sql
Data_de_Admissao DATE;
~~~

**O que faz o comando int:**

Faz a conversão para um número de inteiro.

**Sintaxe**

~~~sql
INT
~~~

**Exemplo**

~~~sql
Id_Usuario INT;
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

**O que faz o comando not null:**

Não permite a entrada de valores nulos.

**Sintaxe**

~~~sql
NOT NULL
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
  Address NOT NULL
~~~

**O que faz o comando numeric:**

Convert automaticamente em um valor de dados numeric, usando a escala e a precisão mínimas necessárias.

**Sintaxe**

~~~sql
NUMERIC(0, 0)
~~~

**Exemplo**

~~~sql
NOTA NUMERIC(4,2)
~~~

**O que faz o comando primary key:**

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
~~~

**O que faz o comando references:**

Faz referência a um campo na hora da criação da chave estrangeira

**Sintaxe**

~~~sql
REFERENCES <nome_da_tabela> (campo_da_tabela)
~~~

**Exemplo**

~~~sql
CONSTRAINT "FK_ENSINA_CODTURMA" FOREIGN KEY (COD_TURMA) REFERENCES TURMA (COD_TURMA)
~~~

**O que faz o comando use:**

É utilizado para designar uma base externa como banco de dados atual.

**Sintaxe**

~~~sql
USE DATABASE nome;
~~~

**Exemplo**

~~~sql
USE DATABASE usuarios;
~~~

**O que faz o comando values:**

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

**O que faz o comando varchar:**

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
~~~
