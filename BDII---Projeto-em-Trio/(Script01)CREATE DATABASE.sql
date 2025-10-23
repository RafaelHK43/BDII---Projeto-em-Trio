-- ================================================
-- 1. (Script01)CREATE DATABASE
-- ================================================


CREATE DATABASE IF NOT EXISTS db_editora_simples;
USE db_editora_simples;


CREATE TABLE Departamentos (
    id_departamento INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);


CREATE TABLE Autores (
    id_autor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    nacionalidade VARCHAR(100)
);


CREATE TABLE Clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100),
    cpf CHAR(11) UNIQUE
);


CREATE TABLE Livros (
    isbn VARCHAR(13) PRIMARY KEY,       
    titulo VARCHAR(100) NOT NULL,     
    detalhes TEXT,
    preco DECIMAL(10,2) NOT NULL,
    genero VARCHAR(50),                 
    status VARCHAR(20) DEFAULT 'ativo'
    -- Removemos id_categoria e id_promocao
);



CREATE TABLE Funcionarios (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50),
    telefone VARCHAR(30),
    data_nascimento DATE,
    id_departamento INT,                
    FOREIGN KEY (id_departamento) REFERENCES Departamentos(id_departamento)
);


CREATE TABLE Pedidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,  
    id_cliente INT,
    data_pedido DATE,                         
    valor_total DECIMAL(10,2),              
    status_pedido VARCHAR(50) DEFAULT 'Pendente', 
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);


CREATE TABLE Itens_Pedido (
    id_item_pedido INT AUTO_INCREMENT PRIMARY KEY, 
    id_pedido INT,                                 
    isbn_livro VARCHAR(13),                        
    quantidade INT,
    preco_unitario DECIMAL(10,2),
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido),
    FOREIGN KEY (isbn_livro) REFERENCES Livros(isbn)
);


CREATE TABLE Livro_Autor (
    id_livro_autor INT AUTO_INCREMENT PRIMARY KEY,
    isbn_livro VARCHAR(13),
    id_autor INT,
    FOREIGN KEY (isbn_livro) REFERENCES Livros(isbn),
    FOREIGN KEY (id_autor) REFERENCES Autores(id_autor)
);