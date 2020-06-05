/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Criando uma Trigger */
CREATE TRIGGER
	teste_trigger_after
ON
	tbl_Editoras
AFTER INSERT
AS
	PRINT
		'Olá Mundo!'
GO

/* Inserindo Dados em uma Tabela */
INSERT INTO
	tbl_Editoras
VALUES (
	'Editora10'
)
GO

/* Selecionando Dados de uma Tabela */
SELECT
	*
FROM
	tbl_Editoras
GO

/* Criando uma Trigger */
CREATE TRIGGER
	trigger_after
ON
	tbl_Editoras
AFTER INSERT
AS
INSERT INTO
	tbl_Autores
VALUES (
	25, 
	'José',
	'da Silva'
)

INSERT INTO
	tbl_Livro
VALUES (
	'Livro1',
	'123456000',
	'20001010',
	77,
	25,
	2
)
GO

/* Excluindo uma Trigger */
DROP TRIGGER
	teste_trigger_after
GO

/* Inserindo Dados em uma Tabela */
INSERT INTO
	tbl_Editoras
VALUES (
	'Editora11'
)
GO

/* Selecionando Dados de uma Tabela */
SELECT
	*
FROM
	tbl_Editoras
GO

/* Selecionando Dados de uma Tabela */
SELECT
	*
FROM
	tbl_Autores
GO

/* Selecionando Dados de uma Tabela */
SELECT
	*
FROM
	tbl_Livro
GO

/* Criando uma Trigger */
CREATE TRIGGER
	teste_trigger_insteadof
ON
	tbl_Autores
INSTEAD OF INSERT
AS
PRINT
	'Olá de novo! Não inseri o registro desta vez!'
GO