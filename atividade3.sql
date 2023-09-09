CREATE DATABASE RH;

USE RH;

CREATE TABLE Departamentos(
DepartamentoID INT PRIMARY KEY AUTO_INCREMENT,
    NomeDepartamento VARCHAR(50)
);

CREATE TABLE Funcionarios(
FuncionarioID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255),
    Cargo VARCHAR(50),
    Salario DOUBLE,
    DepartamentoID INT,
    FOREIGN KEY (DepartamentoID) REFERENCES Departamentos(DepartamentoID)
);

INSERT INTO Departamentos(NomeDepartamento)
VALUES('departamento1'),
('departamento2'),
('departamento3'),
('departamento4'),
('departamento5');

INSERT INTO Funcionarios(Nome, Cargo, Salario)
VALUES('nome1', 'cargo1', '44000'),
('nome2', 'cargo2', '5000'),
('nome3', 'cargo3', '45000'),
('nome4', 'cargo4', '6000'),
('nome5', 'cargo5', '7000');

SELECT * FROM Departamentos;

SELECT * FROM Funcionarios;
