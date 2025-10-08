USE DB_03358b_RodolfoReis;

select * FROM PRODUTOS;
select * FROM FORNECEDORES;
select * FROM VENDAS;

#Listar todas as vendas de pão de queijo
select * FROM VENDAS WHERE PRODUTOS = 'Pão de queijo';

#Listar todas as vendas de pão Francês
select * FROM VENDAS WHERE PRODUTOS = 'Pão Francês';

#Listar todas as vendas feitas no dia 2025-10-25
select * FROM VENDAS WHERE DATA_VENDA = '2025-10-25';

#Criar tabela produtos
CREATE TABLE PRODUTOS(
ID INT auto_increment PRIMARY KEY,
Nome VARCHAR(100),
Preco DECIMAL(8,2),
Categoria VARCHAR(20)
);

#Criar tabela Fornecedores com relacionamento com produtos
CREATE TABLE FORNECEDORES(
ID INT auto_increment PRIMARY KEY,
Nome VARCHAR(100),
EMPRESA VARCHAR(100),
PRODUTOS INT,
foreign key (PRODUTOS) references PRODUTOS(ID)
);

#Criar tabela Vendas
CREATE TABLE VENDAS(
ID INT auto_increment PRIMARY KEY,
DATA_VENDA datetime,
PRODUTOS VARCHAR(100)
);

INSERT INTO PRODUTOS(Nome, Preco, Categoria)
VALUES ('Pão de queijo','5.50','Padaria');

INSERT INTO PRODUTOS(Nome, Preco, Categoria) 
VALUES ('Leite', '2.50', 'Laticinios');

INSERT INTO FORNECEDORES(Nome, EMPRESA, PRODUTOS)
VALUES ('Rodrigo','Panco','1'),('Alex','Panco','2'),('Laura','Qualita','3'),('Paula','Qualita','4');

INSERT INTO FORNECEDORES(Nome, EMPRESA)
VALUES ('Marcos','Panco'),('Alex','Qualita'),('Laura','Qualita');

insert into VENDAS(DATA_VENDA, PRODUTOS)
VALUES ('2025-10-25','Pão de queijo'),('2025-10-25','Pão de queijo'),('2025-10-25','Pão Francês'),('2025-10-25','Pão Francês');

insert into VENDAS(DATA_VENDA, PRODUTOS)
VALUES ('2025-06-03','Café'),('2025-06-03','Café'),('2025-06-03','Leite'),('2025-06-03','Pão Francês');

