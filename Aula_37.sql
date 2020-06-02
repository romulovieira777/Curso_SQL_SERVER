/* Utilizando um Banco de Dados */
USE
	db_Biblioteca
GO

/* Conversão de Tipos de Dados com a Função CAST */
SELECT
	'O preço do Livro ' + 
	Nome_Livro +
	' é de R$ ' +
CAST (
	Preco_Livro AS VARCHAR(6)) AS Item
FROM
	tbl_Livro
WHERE
	ID_Autor = 2
GO

/* Conversão de Tipos de Dados com a Função CONVERT */
SELECT
	'O preço do Livro ' +
	Nome_Livro +
	' é de R$ '+
CONVERT (
	VARCHAR(6),
	Preco_Livro)
FROM
	tbl_Livro
GO

/* Sem Alterar o Estilo da Data */
SELECT
	'A data de publicação ' +
CONVERT (
	VARCHAR(19),
	Data_Pub)
FROM
	tbl_Livro
WHERE
	ID_Livro = 102
GO

/* Convertendo Data com a Função CONVERT */
SELECT
	'A data de publicação ' +
CONVERT (
	VARCHAR(19),
	Data_Pub,
	103)
FROM
	tbl_Livro
WHERE
	ID_Livro = 102
GO