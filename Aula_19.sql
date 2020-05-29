/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Contando Dados de uma Tabela */
SELECT
	COUNT(*) AS Contagem
FROM
	tbl_Autores
GO

/* Selecionando o Valor Máximo em uma Tabela */
SELECT
	MAX(Preco_Livro) AS Preço_Máximo
FROM
	tbl_Livro
GO

/* Selecionando o Valor Mínimo em uma Tabela */
SELECT
	MIN(Preco_Livro) AS Preço_Mínimo
FROM
	tbl_Livro
GO

/* Calculando a Média dos Valores de uma Tabela */
SELECT
	AVG(Preco_Livro) AS Média
FROM
	tbl_Livro
GO

/* Somando Valores de uma Tabela */
SELECT
	SUM(Preco_Livro) AS Preço_Total
FROM
	tbl_Livro
GO