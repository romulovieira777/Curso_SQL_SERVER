/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Selecionando Dados de uma Tabela */
SELECT
	*
FROM
	tbl_Livro
ORDER BY
	Nome_Livro
GO

SELECT
	*
FROM
	tbl_Livro
ORDER BY
	Nome_Livro
GO

SELECT
	Nome_Autor
FROM
	tbl_Autores
ORDER BY
	Nome_Autor DESC
GO