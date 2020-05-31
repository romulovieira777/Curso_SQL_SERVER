/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Ver as Opções de Agrupamento Disponíveis */
SElECT
	*
FROM
	fn_helpcollations()
GO

/* Ver o Esquema de Colação Usado Atualmente pelo Servidor */
SELECT
	SERVERPROPERTY (
	'Collation')
AS
	Colação_Usada
GO

/* Alterar o Esquema de Agrupamento de um Banco de Dados */
ALTER DATABASE
	db_Biblioteca
COLLATE
	Greek_CI_AI
GO

/* Verificar o Esquema de Agrupamento de um Banco de Dados */
SELECT DATABASEPROPERTYEX (
	'db_Biblioteca',
	'Collation')
AS
Coleção
GO

/* Alterar o Tipo de Agrupamento em uma Coluna */
SELECT
	*
FROM
	tbl_Livro
ORDER BY
	Nome_Livro
COLLATE
	Icelandic_CI_AI
GO