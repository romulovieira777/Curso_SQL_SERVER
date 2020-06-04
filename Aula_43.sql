/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Criando uma Procedure */
CREATE PROCEDURE
	p_teste_valor_padrão (
	@param1 INT,
	@param2 VARCHAR(20) = 'Valor Padrão!'
)
AS
	SELECT 'Valor do parâmetro 1: ' +
	CAST(
		@param1 AS VARCHAR)
	SELECT
		'Valor do parâmetro 2: ' + 
		@param2
GO

/* Chamando uma Procedure */
EXEC
	p_teste_valor_padrão 30
GO

/* Chamando uma Procedure */
EXEC
	p_teste_valor_padrão
	@param1 = 40,
	@param2 = 'Valor foi modificado'
GO

/* Alterando uma Procedure */
ALTER PROCEDURE
	teste (
	@par1 AS INT OUTPUT)
AS
	SELECT
		@par1 * 2
	RETURN
GO

/* Declarando uma Variável */
DECLARE
	@valor AS INT = 15

EXEC
	teste
	@valor OUTPUT
PRINT
	@valor
GO

/* Alterando uma Procedure */
ALTER PROCEDURE
	p_LivroValor (
	@Quantidade SMALLINT,
	@Cod SMALLINT = - 10,
	@ID SMALLINT
)
AS
IF
	@ID >= 100
		BEGIN
			SELECT
				Nome_Livro as Livro,
				Preco_Livro * @Quantidade AS Preço
			FROM
				tbl_Livro
			WHERE
				ID_Livro = @ID
			RETURN 1
		END
ELSE
	RETURN @Cod
GO

/* Declarando uma Variável e Chamando uma Procedure */
DECLARE
	@Codigo INT
EXEC
	@Codigo = p_LivroValor
	@ID = 102,
	@Quantidade = 5
PRINT
	@Codigo
GO