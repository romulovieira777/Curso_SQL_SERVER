/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Selecionando Dados de Duas Tabela Usando Inner Join */
SELECT
	*
FROM
	tbl_Livro
INNER JOIN
	tbl_Autores
ON
	tbl_Livro.ID_Autor = tbl_Autores.ID_Autor
GO

/* Selecionando Dados de Duas Tabelas Usando Left Join */
SELECT
	*
FROM
	tbl_Livro
LEFT JOIN
	tbl_Autores
ON
	tbl_Livro.ID_Autor = tbl_Autores.ID_Autor
GO

/* Selecionando Dados de Duas Tabelas Excluindo a Intersecção */
SELECT
	*
FROM
	tbl_Livro
LEFT JOIN
	tbl_Autores
ON
	tbl_Livro.ID_Autor = tbl_Autores.ID_Autor
WHERE
	tbl_Autores.ID_Autor IS NULL
GO

/* Selecionando Dados de Duas Tabelas Usando Right Join */
SELECT
	*
FROM
	tbl_Autores
RIGHT JOIN
	tbl_Livro
ON
	tbl_Livro.ID_Autor = tbl_Autores.ID_Autor
GO