/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Selecionando Dados de Duas Tabelas */
SELECT
	*
FROM
	tbl_Livro
INNER JOIN
	tbl_Autores
ON
	tbl_Livro.ID_Autor = tbl_Autores.ID_Autor
GO

/* Selecionando Dados de Duas Tabelas */
SELECT
	tbl_Livro.Nome_Livro,
	tbl_Livro.ISBN,
	tbl_Autores.Nome_Autor
FROM
	tbl_Livro
INNER JOIN
	tbl_Autores
ON
	tbl_Livro.ID_Autor = tbl_Autores.ID_Autor
GO

/* Selecionando Dados de Duas Tabelas com Aliases */
SELECT
	L.Nome_Livro,
	E.Nome_Editora
FROM
	tbl_Livro AS L
INNER JOIN
	tbl_editoras AS E
ON
	L.ID_editora = E.ID_editora
GO