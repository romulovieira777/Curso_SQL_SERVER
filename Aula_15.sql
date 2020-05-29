/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Selecionando Dados de uma Tabela */
SELECT TOP 10 PERCENT	
	Nome_Livro
FROM
	tbl_Livro
GO

SELECT TOP 3
	Nome_Livro
FROM
	tbl_Livro
GO