/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Selecionando Dados de uma Tabela */
SELECT
	ID_Autor
FROM
	tbl_Autores
UNION
SELECT
	ID_Autor
FROM
	tbl_Livro
GO

SELECT
	ID_Autor
FROM
tbl_Autores
UNION ALL
SELECT
	ID_Autor
FROM
	tbl_Livro
GO

SELECT
	Nome_Autor
FROM
	tbl_Autores
UNION
SELECT
	Nome_Livro
FROM
	tbl_Livro
GO