/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Criando Variáveis */
DECLARE
	@valor INT,
	@texto VARCHAR(40),
	@data_nasc DATE,
	@nada MONEY
GO

/* Atribuindo Valores nas Variáveis */
SET
	@valor = 50
SET
	@texto = 'Rômulo'
SET
	@data_nasc = GETDATE()
GO

/* Selecionado as Variáveis */
SELECT
	@valor AS Valor,
	@texto AS Texto,
	@data_nasc AS Data_de_Nascimento,
	@nada AS Salário
GO

/* Atribuindo Valores em uma Variável Utilizando o Select */
DECLARE
	@Livros VARCHAR (30)
SELECT
	@Livros = nome_livro
FROM
	tbl_Livro
WHERE
	ID_Livro = 101
SELECT
	@Livros AS Nome_do_Livro
GO

/* Atribuindo Valores em uma Variável Utilizando o Select */
DECLARE
	@preco MONEY,
	@quantidade INT,
	@nome VARCHAR(30)
SET
	@quantidade = 5

SELECT
	@preco = Preco_Livro,
	@nome = Nome_Livro
FROM
	tbl_Livro
WHERE
	ID_Livro = 101

SELECT
	@nome AS Nome_do_Livro,
	@preco * @quantidade AS Preço_dos_Livros
GO