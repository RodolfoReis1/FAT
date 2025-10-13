USE DB_03358b_RodolfoReis;

CREATE TABLE IF NOT EXISTS E011_ALUNOS(
AlunoID INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(100) NOT NULL,
Sobrenome VARCHAR(100) NOT NULL,
Email VARCHAR(150) UNIQUE,
DataNascimento DATE,
Ativo BOOLEAN DEFAULT TRUE
);

CREATE TABLE E11_CURSOS(
CursoID INT PRIMARY KEY AUTO_INCREMENT,
Titulo VARCHAR(200) NOT NULL,
Descricao TEXT,
CargaHoraria INT,
Preco DECIMAL(10, 2)
);

INSERT INTO E011_ALUNOS (Nome, Sobrenome, Email, DataNascimento)
VALUES ('Ana', 'Costa', 'ana.costa@email.com', '2000-01-10');

INSERT INTO E011_ALUNOS (Nome, Sobrenome, Email, DataNascimento, Ativo)
VALUES ('Pedro', 'Lima', 'pedro. lima@email.com', '1998-03-22', FALSE); -- Pedro será inativo

INSERT INTO E011_ALUNOS (Nome, Sobrenome, Email) -- DataNascimento sera nula
VALUES ('Mariana', 'Souza', 'mariana. s@email.com');

INSERT INTO E011_ALUNOS (Nome, Sobrenome, Email, DataNascimento)
VALUES ('Carlos', 'Gomes', 'carlos.g@email.com', '2001-11-05');

INSERT INTO E11_CURSOS (Titulo, Descricao, CargaHoraria, Preco)
VALUES ('Introdução ao SQL', 'Curso básico de SQL para iniciantes.', 40, 299.90);

INSERT INTO E11_CURSOS (Titulo, Descricao, CargaHoraria, Preco)
VALUES ('Desenvolvimento Web com Python', 'Aprenda a criar aplicações web com Python e Django.', 80, 599.90);

INSERT INTO E11_CURSOS (Titulo, Descricao, CargaHoraria, Preco)
VALUES ('Banco de Dados Avancado', 'Topicos avancados em otimizacao e modelagem.', 60, 450.00);

UPDATE E011_ALUNOS
SET Email = 'pedro. novo. email@email.com'
WHERE AlunoID = 2; -- Use o AlunoID do Pedro

BEGIN; -- desativar mariana
UPDATE E011_ALUNOS  
SET Ativo = FALSE
WHERE AlunoID = 3;
ROLLBACK;

BEGIN;  #alteração de carga e preço do curso id 1
UPDATE E11_CURSOS
SET CargaHoraria = 45, Preco = 320.00
WHERE CursoID = 1;
COMMIT;


SELECT * FROM E011_ALUNOS;
SELECT * FROM E11_CURSOS;

