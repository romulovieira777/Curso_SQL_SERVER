/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Alterando uma Procedure */
ALTER PROCEDURE
	Teste
	(@par1 AS INT)
AS
	SELECT
		@par1
GO

/* Chamando uma Procedure */
EXEC
	Teste 25
GO

/* Alterando uma Procedure */
ALTER PROCEDURE
	p_LivroValor
	(@ID SMALLINT)
AS
	SELECT
		Nome_Livro AS Livro,
		Preco_Livro AS Preço
	FROM
		tbl_Livro
	WHERE
		ID_Livro = @ID
GO

/* Chamando uma Procedure */
EXEC
	p_livroValor 104
GO

/* Múltiplos Parâmetros de Entrada em uma Procedure */
ALTER PROCEDURE
	Teste
	(@par1 AS INT,
	@par2 AS VARCHAR(20))
AS
	SELECT
		@par1
	SELECT
		@par2
GO

/* Chamando uma Procedure por Posição */
EXEC
	Teste
	26,
	'Laranja'
GO

/* Chamando uma Procedure por Nome dos Parâmetros */
EXEC
	Teste
	@par2 = 'Abacate',
	@par1 = 30
GO