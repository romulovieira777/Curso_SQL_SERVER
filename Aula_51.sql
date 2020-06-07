/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Selecionando o Nome das Tabelas no Banco de Dados */
SELECT
	*
FROM
	sys.tables
GO

/* Renomeando uma Coluna da Tabela */
sp_rename
	'tbl_livro.Nome_Livro',
	'Livro',
	'COLUMN'
GO

/* Selecionando Dados de uma Tabela */
SELECT
	*
FROM
	tbl_Livro
GO

/* Renomeando uma Coluna da Tabela */
sp_rename
	'tbl_livro.Livro',
	'Nome_Livro',
	'COLUMN'
GO

/* Renomeando uma Tabela */
sp_rename
	'tbl_Livro',
	'Livros'
GO

/* Selecionando Nome das Colunas em uma Tabela */
SELECT
	*
FROM
	sys.tables
GO

/* Renomeando uma Tabela */
sp_rename
	'Livros',
	'tbl_Livros'
GO