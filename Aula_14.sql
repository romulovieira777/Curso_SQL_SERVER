/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Selecionando Dados de uma Tabela */
SELECT
	*
FROM
	tbl_Livro
WHERE
	ID_Livro > 2
AND
	ID_Autor <3
GO

SELECT
	*
FROM
	tbl_Livro
WHERE
	ID_Livro > 101
OR
	ID_Autor < 3
GO