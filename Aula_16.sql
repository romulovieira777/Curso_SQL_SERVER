/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Selecionando Dados de uma Tabela */
SELECT
	Nome_Livro AS Livro,
	ID_Autor AS Autor
FROM
	tbl_Livro
GO