/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Selecionando Dados de uma Tabela */
SELECT
	Nome_Autor
FROM
	tbl_Autores
GO

SELECT
	*
FROM
	tbl_Autores
GO

SELECT
	Nome_Livro
FROM
	tbl_Livro
GO

SELECT
	Nome_Livro,
	Id_Autor
FROM
	tbl_Livro
GO

SELECT
	Nome_Livro,
	ISBN
FROM
	tbl_Livro
ORDER BY
	Nome_Livro
GO