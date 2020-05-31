/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Criando Uma Regra */
CREATE RULE
	rl_preco
AS
	@VALOR > 10.00
GO

/* Vinculando Uma Regra */
EXECUTE
	SP_BINDRULE rl_preco,
	'tbl_Livro.Preco_Livro'
GO

/* Atualizando Valores de Uma Tabela */
UPDATE
	tbl_Livro
SET
	Preco_Livro = 50.00
WHERE
	ID_Livro = 105
GO

/* Selecionando Uma Tabela */
SELECT
	*
FROM
	tbl_Livro
GO

/* Atualizando Valores de Uma Tabela */
UPDATE
	tbl_Livro
SET
	Preco_Livro = 10.90
WHERE
	ID_Livro = 101
GO