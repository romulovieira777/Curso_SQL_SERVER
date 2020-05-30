/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Selecionando Dados de uma Tabela que Inicem com a Letra S */
SELECT
	Nome_Livro
FROM
	tbl_Livro
WHERE
	Nome_Livro LIKE 'S%'
GO

/* Selecionando Dados de uma Tabela que Terminem com a Letra G */
SELECT
	Nome_Livro
FROM
	tbl_Livro
WHERE
	Nome_Livro LIKE '%G'
GO

/* Selecionando Dados de uma Tabela Cuja Segunda Letra Seja I */
SELECT
	Nome_Livro
FROM
	tbl_Livro
WHERE
	Nome_Livro LIKE '_i%'
GO

/* Selecionando Dados de uma Tabela que Comecem com a Letra S ou Terminem com a Letra L */
SELECT
	Nome_Livro
FROM
	tbl_Livro
WHERE
	Nome_Livro LIKE '[SL]%'
GO

/* Selecionando Livros que Terminem com a Letra J ou L */
SELECT
	Nome_Livro
FROM
	tbl_Livro
WHERE
	Nome_Livro LIKE '%[GL]'
GO

/* Selecionando Livros que a Segunda Letra é I ou S */
SELECT
	Nome_Livro
FROM
	tbl_Livro
WHERE
	Nome_Livro Like '_[IS]%'
GO

/* Selecionando Todos Livros Cuja Primeira Letra Seja I e a Quinta Letra Seja O */
SELECT
	Nome_Livro
FROM
	tbl_Livro
WHERE
	Nome_Livro LIKE '_I__O%'
GO

/* Selecionando Livros que Não Comecem com a Letra M */
SELECT
	Nome_Livro
FROM
	tbl_Livro
WHERE
	Nome_Livro NOT LIKE 'M%'
GO