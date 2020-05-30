/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Selecionando Dados de Uma Tabela com o IN */
SELECT
	*
FROM
	tbl_Livro
WHERE
	ID_Autor IN (1, 2)
GO

/* Excluindo Dados de Uma Consulta com o IN */
SELECT
	*
FROM
	tbl_Livro
WHERE
	ID_Autor NOT IN (1, 2)
GO