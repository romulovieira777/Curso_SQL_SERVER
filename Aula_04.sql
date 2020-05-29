/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Selecionando Dados em uma Tabela */
SELECT
	*
FROM
	tbl_Livro
GO

SELECT
	*
FROM
	tbl_Autores
GO

/* Atualizando Dados de uma Tabela */
UPDATE
	tbl_Livro
SET
	Preco_Livro = 65.45
WHERE
	ID_Livro = 101
GO

UPDATE
	tbl_Autores
SET
	SobreNome_Autor = 'Cartman'
WHERE
	ID_Autor = 2
GO

UPDATE
	tbl_Livro
SET
	Preco_Livro = 80.00,
	ISBN = '0202020'
WHERE
	ID_Livro = 101
GO