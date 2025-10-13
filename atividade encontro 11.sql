USE DB_03358b_RodolfoReis;

CREATE TABLE clientes(
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
saldo DECIMAL(10,2) DEFAULT 0.00
);

CREATE TABLE transacoes (
id INT PRIMARY KEY AUTO_INCREMENT,
tipo VARCHAR(50),
valor DECIMAL(10,2),
data_transacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO clientes (nome, saldo) 
VALUES ('João Silva', 1000.00),
('Maria Santos', 500.00);

SELECT * FROM clientes;
SELECT * FROM transacoes;

BEGIN;
UPDATE clientes
SET saldo = 800.00
WHERE id = 1;

UPDATE clientes
SET saldo = 700.00
WHERE id = 2;
INSERT INTO transacoes (tipo, valor) 
VALUES('debito', 200.00);
ROLLBACK;

BEGIN;
UPDATE clientes
SET saldo = 980.00
WHERE id = 1;

UPDATE clientes
SET saldo = 520.00
WHERE id = 2;

INSERT INTO transacoes (tipo, valor) 
VALUES('debito', 20.00);
COMMIT;


