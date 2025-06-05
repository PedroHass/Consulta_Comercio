##Pedro Petrallas Hassan 

## Criação do banco de dados
CREATE DATABASE IF NOT EXISTS comercio;
USE comercio;

## Tabela de produtos
CREATE TABLE produtos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  preco DECIMAL(8,2)
);

## Tabela de pedidos
CREATE TABLE pedidos (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  produto_id INT UNSIGNED,
  quantidade INT,
  FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

## Inserção de produtos
INSERT INTO produtos (nome, preco, estoque) VALUES
('Livro para crianças', 39.90, 10),
('Leite quente Expresso', 7.50, 30),
('Pão na chapa', 25.00, 15);

## Inserção de pedidos
INSERT INTO pedidos (produto_id, quantidade) VALUES
(1, 2),
(2, 1),
(3, 3);
