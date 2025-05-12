CREATE DATABASE mercado;
USE mercado;

CREATE TABLE produtos (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10, 2),
    categoria VARCHAR(50)
);

CREATE TABLE estoque (
    id INT PRIMARY KEY,
    produto_id INT,
    quantidade INT,
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

INSERT INTO produtos (id, nome, preco, categoria) 
VALUES
(1, 'Notebook', 3500.00, 'Eletrônicos'),
(2, 'Smartphone', 2500.00, 'Eletrônicos'),
(3, 'Cafeteira', 300.00, 'Eletrodomésticos');

INSERT INTO estoque (id, produto_id, quantidade) 
VALUES
(1, 1, 10),
(2, 3, 5);

SELECT * FROM produtos;
