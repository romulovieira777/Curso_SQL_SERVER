/* Escolhendo um Banco de Dados */
USE
db_Biblioteca
GO

/* Alterando uma Procedure */
ALTER PROCEDURE
	p_LivroValor
	(@ID SMALLINT,
	@Preco MONEY)
AS
	SELECT
		ID_Livro,
		Nome_Livro AS Livro,
		Preco_Livro AS Preço
	FROM
		tbl_Livro
	WHERE
		ID_Livro > @ID
	AND
		Preco_Livro > @Preco
GO

/* Chamando uma Procedure */
EXEC
	p_LivroValor
	@ID = 103,
	@Preco = 60
GO

/* Alterando uma Procedure */
ALTER PROCEDURE
	p_LivroValor (
	@Quantidade SMALLINT,
	@ID SMALLINT)
AS
	SELECT
		ID_Livro AS ID,
		Nome_Livro AS Livro,
		Preco_Livro * @Quantidade AS Preço
	FROM
		tbl_Livro
	WHERE
		ID_Livro = @ID
GO

/* Chamando uma Procedure */
EXEC
	p_LivroValor
	@ID = 103,
	@Quantidade = 10
GO

/* Inserindo Dados Usando uma Procedure */
CREATE PROCEDURE p_insere_editora (
	@nome VARCHAR(50)	
)
AS
	INSERT INTO tbl_Editoras (
		Nome_Editora)
	VALUES (
		@nome)
GO

/* Executando uma Procedure */
EXEC
	p_insere_editora
	@nome = 'Ediouro'
GO

/* Selecionando Dados de uma Tabela */
SELECT
	*
FROM
	tbl_Editoras
GO