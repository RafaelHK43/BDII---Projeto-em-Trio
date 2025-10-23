-- ================================================
-- 2. (Script02)ALTER TABLE
-- ================================================

USE db_editora_simples;


ALTER TABLE Livros ADD COLUMN num_paginas INT;


ALTER TABLE Livros ADD COLUMN data_cadastro DATE DEFAULT (CURRENT_DATE);


ALTER TABLE Livros MODIFY genero VARCHAR(100);


ALTER TABLE Clientes MODIFY telefone VARCHAR(30);


ALTER TABLE Pedidos ADD COLUMN observacoes TEXT;


ALTER TABLE Funcionarios ADD COLUMN salario DECIMAL(10,2);


ALTER TABLE Clientes ADD COLUMN data_ultimo_pedido DATE DEFAULT NULL;


ALTER TABLE Funcionarios ADD COLUMN data_contratacao DATE;


ALTER TABLE Autores ADD COLUMN email_contato VARCHAR(100);


CREATE INDEX idx_titulo_livro ON Livros(titulo);