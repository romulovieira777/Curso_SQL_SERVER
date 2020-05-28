/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Selecionando Dados de uma Tabela */
SELECT
	COUNT(*)
FROM
	tbl_Livro
GO

/* Apagando Dados de uma Tabela */
TRUNCATE TABLE
	tbl_Livro
GO