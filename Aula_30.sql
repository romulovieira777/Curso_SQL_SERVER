/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Concatenação de Strings */
SELECT
	Nome_Autor 
	+ ' ' + 
	Sobrenome_autor
AS
	Nome_Completo
FROM
	tbl_Autores
GO

SELECT
	'Eu gosto de livro'
	 + 
	 Nome_Livro
AS
	'Meu Livro'
FROM
	tbl_Livro
WHERE
	ID_Autor = 2
GO