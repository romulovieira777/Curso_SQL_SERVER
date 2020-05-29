/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Criando uma Tabela */
SELECT
	ID_Livro,
	Nome_Livro,
	ISBN
INTO
	Livro_ISBN
FROM
	tbl_Livro
WHERE
	ID_Livro > 2
GO

SELECT
	*
INTO
	tbl_Livro_Backup
FROM
	tbl_Livro
GO

/* Selecionando Dados em uma Tabela */
SELECT
	*
FROM
	Livro_ISBN
GO

SELECT
	*
FROM
	tbl_Livro_Backup
GO

SELECT
	*
FROM
	tbl_Livro
GO

/* Excluindo uma Tabela */
DROP TABLE
	tbl_Livro_Backup
GO