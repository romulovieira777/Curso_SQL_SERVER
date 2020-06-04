/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Criando Funções Definidas */
CREATE FUNCTION
	retorna_itens (
	@valor REAL)
RETURNS TABLE
AS
RETURN (
	SELECT
		L.Nome_Livro,
		A.Nome_Autor,
		E.Nome_Editora
	FROM
		tbl_Livro AS L
	INNER JOIN
		tbl_Autores AS A
	ON
		L.ID_Autor = A.ID_Autor
	INNER JOIN
		tbl_Editoras AS E
	ON
		L.ID_editora = E.ID_Editora
	WHERE
		L.Preco_Livro > @valor)
GO

/* Selecionando uma Função */
SELECT
	Nome_Livro,
	Nome_Autor
FROM
	retorna_itens (
	60.00)
GO