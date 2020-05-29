/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Selecionando um Intervalo de Dados */
SELECT
	*
FROM
	tbl_Livro
WHERE
	Data_Pub BETWEEN '20040517' AND '20100517'
GO

SELECT
	Nome_Livro AS Livro,
	Preco_Livro AS Preço
FROM
	tbl_Livro
WHERE
	Preco_Livro BETWEEN 40.00 AND 60.00
GO