CREATE DATABASE IF NOT EXISTS `crud_db`;

USE `crud_db`;

CREATE TABLE IF NOT EXISTS `categorias` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `produtos` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(255) NOT NULL,
    `descricao` TEXT,
    `preco` DECIMAL(10, 2) NOT NULL,
    `categoria_id` INT(11) NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`categoria_id`) REFERENCES `categorias`(`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Inserir dados de exemplo na tabela categorias
INSERT INTO `categorias` (`nome`) VALUES
('Eletrônicos'),
('Livros'),
('Vestuário');

-- Inserir dados de exemplo na tabela produtos
INSERT INTO `produtos` (`nome`, `descricao`, `preco`, `categoria_id`) VALUES
('iPhone 17', 'Um smartphone de última geração com câmera de alta resolução.', 12000.00, 1),
('Fone de ouvido sem fio', 'Um acessório de tecnologia usado para ouvir música, podcasts ou chamadas telefônicas.', 300.00, 1),
('Tênis', 'Tênis azul e branco', 1500.00, 3),
('PlayStation 5', 'Console de jogos', 4500.00, 1),
('Batman: The Killing Joke', 'Uma obra literária que narra uma história imaginária, podendo ser de diversos gêneros', 29.99, 2);

