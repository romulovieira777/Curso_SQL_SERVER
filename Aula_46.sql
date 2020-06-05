/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Criando uma Função */
CREATE FUNCTION
	multi_tabela()
RETURNS
	@valores 
TABLE (
	Nome_Livro VARCHAR(50),
	Data_Pub DATETIME,
	Nome_Editora VARCHAR(50),
	Preco_Livro MONEY)
AS
	BEGIN
	INSERT
		@valores (
			Nome_Livro,
			Data_Pub,
			Nome_Editora,
			Preco_Livro)
		SELECT
			L.Nome_Livro,
			L.Data_Pub,
			E.Nome_Editora,
			L.Preco_Livro
		FROM
			tbl_Livro AS L
		INNER JOIN
			tbl_Editoras AS E
		ON
			L.ID_editora = E.ID_Editora
		RETURN
	END
GO

/* Chamando uma Função */
Select
	*
FROM
	multi_tabela()
GO