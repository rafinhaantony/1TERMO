-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Cliente (
Nome_Cliente varchar(50) not null,
ID_Cliente int auto_increment primary key PRIMARY KEY
)

CREATE TABLE Pedido (
ID_Pedido int auto_increment primary key PRIMARY KEY,
Data_Pedido datetime not null,
ID_Cliente int auto_increment primary key,
FOREIGN KEY(ID_Cliente) REFERENCES Cliente (ID_Cliente)
)

CREATE TABLE Estoque (
ID_Produto int auto_increment primary key,
Nome_Produto varchar(100) not null,
ID_Estoque int auto_increment primary key,
Quantidade int not null,
PRIMARY KEY(ID_Produto,ID_Estoque)
)

CREATE TABLE Fornecedor (
ID_Fornecedor int auto_increment primary key PRIMARY KEY,
Razao_Social varchar(100)
)

CREATE TABLE Produto (
ID_Produto int auto_increment primary key PRIMARY KEY,
Nome_Produto varchar(100) not null
)

CREATE TABLE Item_Produto (
ID_Fornecedor int not null,
ID_Produto int not null,
ID_Item int auto_increment primary key PRIMARY KEY,
Valor decimal(10,2)
)

