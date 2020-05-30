/* Selecionado um Banco de Dados */
USE
	db_Biblioteca
GO

/* Criando Uma Tabela com Campo Calculado */
CREATE TABLE Produtos (
	codProduto smallint,
	NomeProduto varchar(20),
	Preco money,
	Quant smallint,
	Total AS (Preco * Quant)
)
GO

/* Inserindo Dados na Tabela */
INSERT INTO Produtos (
	codProduto,
	NomeProduto,
	Preco,
	Quant
)
VALUES (
	1,
	'Mouse',
	15.00,
	2
)

INSERT INTO Produtos (
	codProduto,
	NomeProduto,
	Preco,
	Quant
)
VALUES (
	2,
	'Teclado',
	18.00,
	1
)

INSERT INTO Produtos (
	codProduto,
	NomeProduto,
	Preco, 
	Quant
)
VALUES (
	3, 
	'Fones',
	25.00,
	1
)

INSERT INTO Produtos (
	codProduto,
	NomeProduto,
	Preco,
	Quant
)
VALUES (
	4,
	'Pendrive',
	25.00,
	3
)

INSERT INTO Produtos (
	codProduto,
	NomeProduto,
	Preco,
	Quant
)
VALUES (
	5,
	'SD Card',
	29.00,
	2
)

INSERT INTO Produtos (
	codProduto,
	NomeProduto,
	Preco,
	Quant
)
VALUES (
	6,
	'DVD-R',
	1.30,
	12
)
GO

/* Selecionando Dados de Uma Tabela */
SELECT
	*
FROM
	Produtos
GO