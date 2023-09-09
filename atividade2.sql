CREATE DATABASE sistema_de_blog;

USE sistema_de_blog;

CREATE TABLE Artigos(
ArtigoID INT PRIMARY KEY AUTO_INCREMENT,
    Titulo VARCHAR(50),
    Conteudo VARCHAR(255),
    DataPublicacao DATE
);

CREATE TABLE Comentarios(
ComentarioID INT PRIMARY KEY AUTO_INCREMENT,
    ArtigoID INT,
    FOREIGN KEY(ArtigoID) REFERENCES Artigos(ArtigoID),
    Autor VARCHAR(30),
    Texto VARCHAR(255),
    DataComentario Date
);

INSERT INTO Artigos(Titulo, Conteudo, DataPublicacao)
VALUES('titulo1', 'conteudo1', '2021-12-05'),
('titulo2', 'conteudo2', '2021-12-05'),
('titulo3', 'conteudo3', '2021-12-05'),
('titulo4', 'conteudo4', '2021-12-05'),
('titulo5', 'conteudo5', '2021-12-05');

INSERT INTO Comentarios(Autor, Texto, DataComentario)
VALUES('autor1', 'texto1', '20200913'),
('autor2', 'texto2', '20200913'),
('autor3', 'texto3', '20200913'),
('autor4', 'texto4', '20200913'),
('autor5', 'texto5', '20200913');

SELECT * FROM Artigos;

SELECT * FROM Comentarios;