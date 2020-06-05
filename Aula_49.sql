/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Criando uma Trigger */
CREATE TRIGGER
	trigger_after_autores
ON
 tbl_Autores
AFTER INSERT, UPDATE
AS
IF UPDATE (
	nome_autor)
BEGIN
	PRINT
		'O nome do autor foi alterado'
END
ELSE
	BEGIN
		PRINT
			'Nome não foi modificado'
	END
GO

/* Atualizando Valores em uma Tabela */
UPDATE
	tbl_Autores
SET
	Nome_Autor = 'João'
WHERE
	ID_Autor = 10
GO