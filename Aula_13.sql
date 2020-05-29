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
	ID_Autor = 1
GO

SELECT
	ID_Autor
FROM
	tbl_Autores
WHERE
	SobreNome_Autor = 'Stanek'
GO