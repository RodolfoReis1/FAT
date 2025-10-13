USE DB_03358b_RodolfoReis;

CREATE TABLE IF NOT EXISTS E10_CONTATO(
id INT auto_increment PRIMARY KEY,
nome VARCHAR(100),
email VARCHAR(100)
);

CREATE TABLE E10_GRUPOCONTATO(
id INT auto_increment PRIMARY KEY,
Familia VARCHAR(100),
Trabalho VARCHAR(100),
Amigos VARCHAR(100)
);

CREATE TABLE E10_TELEFONE(
id INT auto_increment PRIMARY KEY,
Telefone VARCHAR(100),
E10_CONTATO INT,
foreign key (E10_CONTATO) references E10_CONTATO(id)
);

INSERT INTO E10_CONTATO(nome, email)
VALUES('rodolfo','rodolfo@gmail.com'),('Vanessa','vanessa@gmail.com');

INSERT INTO E10_GRUPOCONTATO(Familia,Trabalho,Amigos)
VALUES('Santos','Tecnologia','Trabalho'),('Mizete','Psicologia','Trabalho');

INSERT INTO E10_TELEFONE(Telefone, E10_CONTATO)
VALUES('(11) 9 6058-1527', 2),('(11) 9 5038-1521', 1);

#Para listar as tabelas
select * from E10_CONTATO;
select * from E10_GRUPOCONTATO;
select * from E10_TELEFONE;
