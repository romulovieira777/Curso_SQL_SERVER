/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Selecionando Dados de Duas Tabelas Utilizando o Full Join */
SELECT
	Li.Nome_Livro,
	Li.ID_Autor,
	Au.Nome_Autor
FROM
	tbl_Livro AS Li
FULL JOIN
	tbl_Autores AS Au
ON
	Li.ID_Autor	= Au.ID_Autor
GO

/* Excluindo Correspondências entre Duas Tabelas da Seleção */
SELECT
	Li.Nome_Livro,
	Li.ID_autor,
	Au.Nome_autor
FROM
	tbl_Livro AS Li
FULL JOIN
	tbl_Autores AS Au
ON
	Li.ID_Autor = Au.ID_Autor
WHERE
	Li.ID_Autor IS NULL
OR
	Au.ID_Autor IS NULL
GO