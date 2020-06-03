/* Selecionando um Banco de Dados */
USE
	db_Biblioteca
GO

/* Criando uma Procedure */
CREATE PROCEDURE
	Teste
AS
	SELECT
		'Rômulo S. Vieira' AS Nome
GO

/* Chamando uma Procedure */
EXECUTE 
	Teste
GO

/* Criando uma Procedure */

CREATE PROCEDURE
	p_LivroValor
AS
	SELECT
		Nome_Livro,
		Preco_Livro
	FROM
		tbl_Livro
GO

/* Chamando uma Procedure */
EXECUTE
	p_LivroValor
GO

/* Visualizar o Conteúdo de uma Procedure */
EXEC
	sp_helptext
	p_LivroValor
GO

/* Criptografando uma Procedure */
CREATE PROCEDURE
	p_LivroISBN
WITH ENCRYPTION
AS
	SELECT
		Nome_Livro,
		ISBN
	FROM
		tbl_Livro
GO