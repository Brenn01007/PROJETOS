CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE editora(
  id_livro INT PRIMARY KEY AUTO_INCREMENT,
    id_autor INT,
    FOREIGN KEY (id_autor) REFERENCES autores(id_autor)
);

INSERT INTO editora (titulo, id_autor, ano_publicacao)
VALUES
('Livro A1', '1', '2020'),
('Livro A2', '1', '2022'),  
('Livro B1', '2', '2018'); 

CREATE TABLE autores(
id_autor INTEGER PRIMARY KEY,
ano_publicacao INTEGER,
nome VARCHAR(100) NOT NULL,
titulo_livro VARCHAR (100) NOT NULL
);

INSERT INTO autores (id_autor, nome, titulo_livro, ano_publicacao) 
VALUES
('1', 'Werneck', 'Livro A1', '2020'),
('1', 'Werneck', 'Livro A2', '2022'),
('2', 'Mattiola', 'Livro B1', '2018');


SELECT * FROM autores;

