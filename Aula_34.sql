/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Fazendo uma Subconsulta */
SELECT
	Resultado.Cliente,
	SUM(Resultado.Total) AS Total
FROM
	(SELECT
		CL.Nome_Cliente AS Cliente,
		PR.Nome_Produto,
		PR.Preco_Produto,
		PR.Preco_Produto * CO.Quantidade AS Total
	FROM
		Clientes AS CL
	INNER JOIN
		Compras AS CO
	ON
		CL.ID_Cliente = CO.ID_Cliente
	INNER JOIN
		CO.ID_Produto = PR.ID_Produto) AS Resultado
GROUP BY
	Resultado.Cliente
ORDER BY
	Total
GO