/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Ativando as Triggers Recursivas */
ALTER DATABASE
	db_Biblioteca
SET
	RECURSIVE_TRIGGERS ON
GO

/* Criando uma Tabela */
CREATE TABLE tbl_trigger (
	Codigo INT PRIMARY KEY	
)
GO

/* Trigger Recursiva */
CREATE TRIGGER
	trigger_rec
ON
	tbl_trigger
AFTER INSERT
AS
DECLARE
	@cod INT
SELECT
	@cod = MAX (codigo)
FROM
	tbl_trigger
IF
	@cod < 10
	BEGIN
		INSERT INTO
			tbl_trigger
		SELECT
			MAX(codigo) + 1
		FROM
			tbl_trigger
	END
ELSE
	BEGIN
		PRINT 'Trigger Recursivo Finalizado'
	END
GO

/* Inserindo Dados em uma Tabela */
INSERT INTO
	tbl_trigger
VALUES (
	1
)
GO

/* Selecionando Dados em uma Tabela */
SELECT
	*
FROM
	tbl_trigger
GO