/* Selecionando Dados */
SELECT
	SUBSTRING('Meu nome é Rômulo!', 12, 7)				AS [PEGANDO UMA PARTE DO TEXTO]
  , CONCAT('Meu nome é: ', 'Rômulo')					AS [CONCATENANDO TEXTOS]
  , TRIM('  Testando a Função      ')					AS [REMOVER ESPAÇOS]
  , CHARINDEX('Felicty', 'Meu nome é Felicty Smoke!')	AS [ENCONTRANDO A POSIÇÃO]
  , REPLACE('Meu nome é Felicty Smoke!', 'e', '*')		AS [SUBSTITUINDO]