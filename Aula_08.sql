/* Escolhendo um Banco de Dados */
USE
	db_Biblioteca
GO

/* Inserindo Dados em uma Tabela */
INSERT INTO	tbl_Autores (
	ID_Autor,
	Nome_Autor,
	SobreNome_Autor
)
VALUES (
	1,
	'Daniel',
	'Barret'
)

INSERT INTO tbl_Autores (
	ID_Autor,
	Nome_Autor,
	SobreNome_Autor
)
VALUES (
	2,
	'Gerald',
	'Carter'
)

INSERT INTO tbl_Autores (
	ID_Autor,
	Nome_Autor,
	SobreNome_Autor
)
VALUES (
	3, 
	'Mark',
	'Sobeli'
)

INSERT INTO tbl_Autores (
	ID_Autor,
	Nome_Autor,
	SobreNome_Autor
)
VALUES (
	4,
	'William',
	'Stanek'
)

INSERT INTO tbl_Autores (
	ID_Autor,
	Nome_Autor,
	SobreNome_Autor
)
VALUES (
	5,
	'Richard',
	'Blum'
)
GO

INSERT INTO tbl_Editoras (
	Nome_Editora
)
VALUES (
	'Prentice Hall'
)

INSERT INTO tbl_Editoras (
	Nome_Editora
)
VALUES (
	'O´Reilly'
)

INSERT INTO tbl_Editoras (
	Nome_Editora
)
VALUES (
	'Microsoft Press'
)

INSERT INTO tbl_Editoras (
	Nome_Editora
)
VALUES (
	'Wiley'
)
GO

INSERT INTO tbl_Livro (
	Nome_Livro,
	ISBN,
	Data_Pub,
	Preco_Livro,
	ID_Autor,
	ID_editora
)
VALUES (
	'SSH, The Secure Shell',
	127658789,
	'20091221',
	58.30,
	1,
	2
)

INSERT INTO tbl_Livro (
	Nome_Livro,
	ISBN,
	Data_Pub,
	Preco_Livro,
	ID_Autor,
	ID_editora
)
VALUES (
	'Using Samba',
	123856789,
	'20001221',
	61.45,
	2,
	2
)

INSERT INTO tbl_Livro (
	Nome_Livro,
	ISBN,
	Data_Pub,
	Preco_Livro,
	ID_Autor,
	ID_editora
)
VALUES (
	'Linux Command Line and Shell Scripting',
	143856969,
	'20091221',
	68.35,
	5,
	4
)

INSERT INTO tbl_Livro (
	Nome_Livro,
	ISBN,
	Data_Pub,
	Preco_Livro,
	ID_Autor,
	ID_editora
)
VALUES (
	'Fedora and Red Hat Linux',
	123346789,
	'20101101',
	62.24,
	3,
	1
)

INSERT INTO tbl_Livro (
	Nome_Livro,
	ISBN,
	Data_Pub,
	Preco_Livro,
	ID_Autor,
	ID_editora
)
VALUES (
	'Windows Server 2012 Inside Out',
	123356789,
	'20040517',
	66.80,
	4,
	3
)

INSERT INTO tbl_Livro (
	Nome_Livro,
	ISBN,
	Data_Pub,
	Preco_Livro,
	ID_Autor,
	ID_editora
) VALUES (
	'Microsoft Exchange Server 2010',
	123366789,
	'20001221',
	45.30,
	4,
	3
)
GO

/* Selecionando uma Tabela */
SELECT
	*
FROM
	tbl_Autores

SELECT
	*
FROM
	tbl_Editoras

SELECT
	*
FROM
	tbl_Livro