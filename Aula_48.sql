/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Desabilitando uma Trigger */
ALTER TABLE
	tbl_Editoras
DISABLE TRIGGER
	trigger_after
GO

/* Verificar a Existência de Triggers em uma Tabela */
EXEC
	sp_helptrigger
	@tabname = tbl_Editoras
GO

/* Verificando a Existêcia de Triggers no Banco de Dados */
USE
	db_Biblioteca
SELECT
	*
FROM
	sys.triggers
WHERE
	is_disabled = 1
OR
	is_disabled = 0
GO

/* Habilitando uma Trigger */
ALTER TABLE
	tbl_Editoras
ENABLE TRIGGER
	trigger_after
GO