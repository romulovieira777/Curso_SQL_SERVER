/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Criando uma View */
CREATE VIEW
	vw_LivrosAutores
AS
	SELECT
		tbl_Livro.Nome_Livro AS Livro,
		tbl_Autores.Nome_Autor AS Autor
	FROM
		tbl_Livro
	INNER JOIN
		tbl_Autores
	ON
		tbl_Livro.ID_Autor = tbl_Autores.ID_Autor
GO

/* Selecionando uma View */
SELECT
	Livro,
	Autor
FROM
	vw_LivrosAutores
WHERE
	Livro LIKE 'S%'
GO

/* Alterando uma View */
ALTER VIEW
	vw_LivrosAutores
AS
	SELECT
		tbl_Livro.Nome_Livro AS Livro,
		tbl_Autores.Nome_Autor AS Autor,
		Preco_Livro AS Valor
	FROM
		tbl_Livro
	INNER JOIN
		tbl_Autores
	ON
		tbl_Livro.ID_Autor = tbl_Autores.ID_Autor
GO

/* Selecionando uma View */
SELECT
	*
FROM
	vw_LivrosAutores
GO

/* Excluindo uma View */
DROP VIEW
	vw_LivrosAutores
GO