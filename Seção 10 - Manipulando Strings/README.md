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

**O que faz a função CHARINDEX:**

Pesquisa uma expressão de caractere dentro de uma segunda expressão de caractere, retornando a posição inicial da primeira expressão, se localizada.

**Sintaxe**

~~~sql
CHARINDEX( <nome>);
~~~

**Exemplo**

~~~sql
SELECT
  CHARINDEX('Felicty', 'Meu nome é Felicty Smoke!')	   AS [ENCONTRANDO A POSIÇÃO]
GO
~~~

**O que faz a função CONCAT:**

Concatenas expressões.

**Sintaxe**

~~~sql
CONCAT( <nome>);
~~~

**Exemplo**

~~~sql
SELECT
  CONCAT('Meu nome é: ', 'Rômulo')					AS [CONCATENANDO TEXTOS]
GO
~~~

**O que faz a função LEN:**

Retornar o número de caracteres codificados em determinada expressão de cadeia de caracteres.

**Sintaxe**

~~~sql
LEN( <nome>);
~~~

**Exemplo**

~~~sql
SELECT
 LEN('Meu nome é Rômulo!')			AS [CONTAGEM]
GO
~~~

**O que faz a função LOWER:**

Retornar uma expressão de caractere depois de converter os dados de caracteres maiúsculos em minúsculos.

**Sintaxe**

~~~sql
LEN( <nome>);
~~~

**Exemplo**

~~~sql
SELECT
 LOWER('Meu nome é Rômulo!')			AS [MINÚSCULA]
GO
~~~

**O que faz a função REPLACE:**

Substitui todas as ocorrências de um valor da cadeia de caracteres especificado por outro valor de cadeia de caracteres.

**Sintaxe**

~~~sql
REPLACE ( string_expression , string_pattern , string_replacement );
~~~

**Exemplo**

~~~sql
SELECT
	REPLACE(NOME, ' ', '*')
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

**O que faz a função SUBSTRING:**

Retorna caracteres do tipo texto, binário ou imagem, de acordo com a posição inicial e tamanho passado como argumento.

**Sintaxe**

~~~sql
SUBSTRING colunas;
~~~

**Exemplo**

~~~sql
SELECT
	SUBSTRING('Meu nome é Rômulo!', 12, 7)				AS [PEGANDO UMA PARTE DO TEXTO]
GO
~~~

**O que faz a função TRIM:**

Remove o caractere de espaço das extremidades inicial e final da cadeia de caracteres.

**Sintaxe**

~~~sql
RTRIM ( character_expression )
~~~

**Exemplo**

~~~sql
SELECT
   TRIM('  Testando a Função      ')					AS [REMOVER ESPAÇOS]
GO
~~~

**O que faz a função UPPER:**

Retorna uma expressão de caractere com dados de caractere em minúsculas convertidos em maiúsculas.

**Sintaxe**

~~~sql
UPPER( <expressão> );
~~~

**Exemplo**

~~~sql
SELECT
	UPPER(BAIRRO)
GO
~~~
