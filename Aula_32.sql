/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Selecionando Dados de uma Tabela */
SELECT TOP (3)
WITH TIES
	Nome_Time,
	Pontos
FROM
	tbl_times
ORDER BY
	Pontos DESC