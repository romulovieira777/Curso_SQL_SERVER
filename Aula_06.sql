/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Criando uma Tabela */
CREATE TABLE tbl_teste_identidade (
	ID_Teste Smallint primary key identity,
	valor smallint not null
)
GO

/* Inserindo Dados em uma Tabela */
INSERT INTO tbl_teste_identidade (
	valor
)
VALUES (
	10
)

INSERT INTO tbl_teste_identidade (
	valor
)
VALUES (
	20
)

INSERT INTO tbl_teste_identidade (
	valor
)
VALUES (
	30
)

INSERT INTO tbl_teste_identidade (
	valor
) 
VALUES (
	40
)

/* Selecionando uma Tabela */
SELECT
	*
FROM
	tbl_teste_identidade
