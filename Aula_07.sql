/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Excluindo uma Coluna da Tabela */
ALTER TABLE
	tbl_Livro
DROP COLUMN
	ID_Autor
GO

/* Adicionando uma Coluna na Tabela */
ALTER TABLE
	tbl_Livro
ADD
	ID_Autor smallint not null
CONSTRAINT
	fk_ID_Autor
FOREIGN KEY
	(ID_Autor)
REFERENCES
	TBL_Autores
GO

/* Adicionando uma Coluna na Tabela */
ALTER TABLE
	tbl_Livro
ADD
	ID_editora smallint not null
CONSTRAINT
	fk_id_editora
FOREIGN KEY
	(ID_editora)
REFERENCES
	tbl_editoras
GO

/* Excluindo uma Tabela */
DROP TABLE
	tbl_teste_identidade
GO