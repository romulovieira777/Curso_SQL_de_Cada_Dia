/* Selecionando Dados */
SELECT
	SUBSTRING('Meu nome � R�mulo!', 12, 7)				AS [PEGANDO UMA PARTE DO TEXTO]
  , CONCAT('Meu nome �: ', 'R�mulo')					AS [CONCATENANDO TEXTOS]
  , TRIM('  Testando a Fun��o      ')					AS [REMOVER ESPA�OS]
  , CHARINDEX('Felicty', 'Meu nome � Felicty Smoke!')	AS [ENCONTRANDO A POSI��O]
  , REPLACE('Meu nome � Felicty Smoke!', 'e', '*')		AS [SUBSTITUINDO]