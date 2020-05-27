/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Criando uma Tabela */
CREATE TABLE tbl_Livro (
	ID_Livro smallint primary key identity (100, 1),
	Nome_Livro varchar(50) not null,
	ISBN varchar(30) not null unique,
	ID_Autor smallint not null,
	Data_Pub datetime not null,
	Preco_Livro money not null
)
GO

CREATE TABLE tbl_Autores (
	ID_Autor smallint primary key,
	Nome_Autor varchar(50),
	SobreNome_Autor varchar(60)
)
GO

CREATE TABLE tbl_Editoras (
	ID_Editora smallint primary key identity,
	Nome_Editora varchar(50) not null
)
GO

/* Verificando a Estrutura da Tabela */
SP_HELP
	tbl_Autores
GO

SP_HELP
	tbl_Editoras
GO

SP_HELP
	tbl_Livro
GO