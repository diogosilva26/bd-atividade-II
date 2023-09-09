CREATE DATABASE sistema_de_gerenciamento;

use sistema_de_gerenciamento;

CREATE TABLE Clientes(
ClienteID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL UNIQUE,
    Telefone VARCHAR(23) NOT NULL
   
);

CREATE TABLE Pedidos(
PedidoID INT PRIMARY KEY AUTO_INCREMENT,
    ClienteID INT,
    FOREIGN KEY(ClienteID) REFERENCES Clientes(ClienteID),
    DataPedido VARCHAR(10) NOT NULL,
    ValorTotal DOUBLE NOT NULL
);

INSERT INTO Clientes(Nome, Email, Telefone)
VALUES('Cliente1', 'cliente1@gmail.com', '12344567865'),
('Cliente2', 'cliente2@gmail.com', '32344567865'),
('Cliente3', 'cliente3@gmail.com', '42344567865'),
('Cliente4', 'cliente4@gmail.com', '52344567865'),
('Cliente5', 'cliente5@gmail.com', '72344567865');

INSERT INTO Pedidos(DataPedido, ValorTotal)
VALUES('04/05/2023', '600'),
('05/0/2023', '2900'),
('04/04/2023', '13000'),
('05/05/2023', '14100'),
('06/06/2023', '15200');

SELECT * FROM Clientes;

SELECT * FROM Pedidos;