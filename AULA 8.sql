USE DB_03358b_RodolfoReis;

CREATE TABLE ALUNO(
ID_ALUNO INT auto_increment PRIMARY KEY,
NOME VARCHAR(50),
SOBRENOME VARCHAR(50),
CURSO VARCHAR(100)
);

CREATE TABLE PROFESSOR(
ID_PROFESSOR INT auto_increment PRIMARY KEY,
NomeProfessor VARCHAR(50),
CURSO VARCHAR(100)
);

CREATE TABLE COMENTARIO(
ID_COMENTARIO INT auto_increment PRIMARY KEY,
ID_ALUNO INT,
foreign key (ID_ALUNO) REFERENCES ALUNO(ID_ALUNO),
ID_PROFESSOR INT,
foreign key (ID_PROFESSOR) REFERENCES PROFESSOR(ID_PROFESSOR),
COMENTARIO TEXT,
NOTADOPROFESSOR DECIMAL(3,1)
);

select * from PROFESSOR;
select * from ALUNO;
select * from COMENTARIO;


INSERT INTO ALUNO(NOME, SOBRENOME, CURSO)
VALUES ('Rodolfo','dos santos','Banco de dados'), ('Rodrigo','da silva','Banco de dados'), ('Laura','da silva','Adm'), ('Josefa','da silva','Adm'), ('Luiza','da silva','Logistica');

INSERT INTO PROFESSOR(NomeProfessor, CURSO)
VALUES ('Pedro','Banco de dados'), ('Luiz','Adm'), ('Fulano','Logistica');

INSERT INTO COMENTARIO(ID_ALUNO, ID_PROFESSOR, COMENTARIO, NOTADOPROFESSOR)
VALUES ('1','1', 'Espaço para o comentário livre feito pelo aluno', 4.5),('2','1', 'Espaço para o comentário livre feito pelo aluno', 7.5), 
('3','4', 'Espaço para o comentário livre feito pelo aluno', 7.5),
('4','5', 'Espaço para o comentário livre feito pelo aluno', 8.5);


