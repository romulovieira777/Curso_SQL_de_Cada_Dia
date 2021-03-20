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

**O que faz a função CAST:**

Converte uma expressão de um tipo de dados em outro.

**Sintaxe**

~~~sql
CAST( <expressão> );
~~~

**Exemplo**

~~~sql
SELECT
	CAST(DATANASCIMENTO AS VARCHAR(4)) = '1990'
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

**O que faz a função DATADIFF:**

Usa um componente de deslocamento de fuso horário de startdate ou enddate para calcular o valor retornado.

**Sintaxe**

~~~sql
DATADIFF()
~~~

**Exemplo**

~~~sql
SELECT
  , DATEDIFF(YEAR, DATANASCIMENTO, GETDATE())					AS [IDADE]
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

**O que faz a função HAVING:**

Determina uma condição de busca para um grupo ou um conjunto de registros, definindo critérios para limitar os resultados obtidos a partir do agrupamento de registros.

**Sintaxe**

~~~sql
HAVING <expressão>;
~~~

**Exemplo**

~~~sql
SELECT
    P.NOME
  , COUNT(T.COD_TURMA)			AS [QUANTIDADE DE TURMAS]
FROM
	[SQL_DE_CADA_DIA].[DBO].[PROFESSOR] P
INNER JOIN [SQL_DE_CADA_DIA].[DBO].[ENSINA] E ON P.MATRICULA = E.MATRICULA
INNER JOIN [SQL_DE_CADA_DIA].[DBO].[TURMA] T ON E.COD_TURMA = T.COD_TURMA
GROUP BY
	P.NOME
HAVING
	COUNT(T.COD_TURMA) > 1
ORDER BY
	[QUANTIDADE DE TURMAS]
GO
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

**O que faz a função INTO:**

Cria uma tabela no grupo de arquivos padrão e insere nela as linhas resultantes da consulta.

**Sintaxe**

~~~sql
INTO <expressão>;
~~~

**Exemplo**

~~~sql
ELECT
    F.MATRICULA
  , A.NOME
  , A.SEXO
INTO
	[SQL_DE_CADA_DIA].[DBO].[ALUNOS APROVADOS]
FROM
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA] F
INNER JOIN [SQL_DE_CADA_DIA].[DBO].[ALUNO] A ON F.MATRICULA = A.MATRICULA
WHERE
	NOTA >= 7 AND FALTA < 4
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
~~~

**O que faz a função INNER JOIN:**

Permite usar um operador de comparação para comparar os valores de colunas provenientes de tabelas associadas

**Sintaxe**

~~~sql
INNER JOIN <expressão>;
~~~

**Exemplo**

~~~sql
SELECT
    P.MATRICULA
  , P.NOME
  , P.ESPECIALIDADE
FROM
	[SQL_DE_CADA_DIA].[DBO].[PROFESSOR] P
INNER JOIN [SQL_DE_CADA_DIA].[DBO].[ENSINA] E ON P.MATRICULA = E.MATRICULA
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

**O que faz a função GETDATE:**

Retorna o carimbo de data/hora do sistema do banco de dados atual como um valor de datetime sem o deslocamento de fuso horário do banco de dados.

**Sintaxe**

~~~sql
GETDATE();
~~~

**Exemplo**

~~~sql
SELECT
  , DATEDIFF(YEAR, DATANASCIMENTO, GETDATE())
GO
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
  , COUNT(NOME)					AS [QUANTIDADE DE PROFESSORES]
FROM
	[SQL_DE_CADA_DIA].[DBO].[PROFESSOR]
GROUP BY
	NOME_FACULDA_DE_FORMACAO
ORDER BY
	NOME_FACULDA_DE_FORMACAO
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

**O que faz a função YEAR:**

Especifica o ano de uma data.

**Sintaxe**

~~~sql
YEAR condição;
~~~

**Exemplo**

~~~sql
SELECT
	DATEDIFF(YEAR, DATANASCIMENTO, GETDATE())
GO
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
~~~

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
