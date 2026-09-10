-- Active: 1788435085055@@127.0.0.1@3306@sesi_cr_tb
CREATE DATABASE sesi_cr_tb;
use sesi_cr_tb;

-- CRIAÇÂO DE TABELAS
CREATE TABLE CLIENTE (
    ID_Cliente int AUTO_INCREMENT PRIMARY key,
    Nome_Cliente varchar(60) not null
);

CREATE TABLE pedido (
    ID_Pedido INT AUTO_INCREMENT PRIMARY key,
    Data_Pedido DATETIME NOT NULL,
    ID_Cliente int not null,
    FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE (ID_CLIENTE)
);

CREATE TABLE fornecedor (
    ID_Fornecedor INT AUTO_INCREMENT PRIMARY KEY,
    Razao_Social VARCHAR(60) NOT NULL
);

CREATE TABLE produto (
    ID_Produto INT AUTO_INCREMENT PRIMARY KEY,
    Nome_Produto VARCHAR(60) NOT NULL,
    ID_Fornecedor INT NOT NULL,
    Foreign Key (ID_Fornecedor) REFERENCES FORNECEDOR (ID_FORNECEDOR)
);

-- Desafios
-- 1 - QUESTÃO
-- CATEGORIA --- POSSUI --- PRODUTOS
-- Uma categoria pode possuir vários produtos. Cada produto pertence a apenas uma categoria.
-- 1,N e 1,1

-- 2 - QUESTÃO
-- Um funcionário pode registrar vários pedidos. Cada pedido é registrado por um funcionário.
-- 1,n e 1,1

-- 3 - QUESTÃO
-- Um fornecedor comercializa vários produtos, e o mesmo produto pode ser comprado de vários fornecedores.
-- 1,n e 1,n

-- 4 - QUESTÃO
-- Uma mesa pode existir sem nenhuma reserva futura. Uma reserva deve estar vinculada a uma mesa.
-- 0,n e 1,1

-- 5 - QUESTÃO
-- Um pedido possui vários itens. Um item de pedido pertence a um único pedido.
-- 1,n e 1,1

-- CONSULTA DE TABELAS
SELECT * FROM cliente;
SELECT * FROM pedido;

-- INSERINDO DADOS NA TABELA
INSERT INTO cliente (NOME_CLIENTE) VALUES
('RAFAEL'),
('ISABELA'),
('ELEIR');