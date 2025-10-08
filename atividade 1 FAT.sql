USE DB_03358b_RodolfoReis

CREATE TABLE FORNECEDORES(
	Id INT auto_increment PRIMARY KEY,
    Nome VARCHAR(100),
    Empresa VARCHAR(100)
);

CREATE TABLE VENDAS(
	Id INT auto_increment PRIMARY KEY,
    Nome VARCHAR(100),
    DataDeVenda VARCHAR(100)
);

CREATE TABLE PRODUTOS(
	Id INT auto_increment PRIMARY KEY,
    Nome VARCHAR(100),
    Preco VARCHAR(100)
);

drop table PRODUTOS;

select * FROM PRODUTOS;

INSERT INTO FORNECEDORES(Nome, Empresa)
VALUES ('Manuela','FaberCastel');

DELETE FROM VENDAS WHERE Id = 3;

INSERT INTO PRODUTOS(Nome, Preco)
VALUES ('Caneta','7.00');




