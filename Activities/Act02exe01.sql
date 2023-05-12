CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(20) NOT NULL,
    hp BIGINT
);

CREATE TABLE tb_personagens(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(50) NOT NULL,
    ataque INT,
    defesa INT,
    id_classe INT,
	FOREIGN KEY (id_classe) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome, hp)
VALUES
('Bárbaro', 2000),
('Monge', 1350),
('Mago', 1000),
('Paladino', 1850),
('Feiticeiro', 1500);

SELECT *
FROM tb_classes;

INSERT INTO tb_personagens(nome, ataque, defesa, id_classe)
VALUES
('Ragnar', 2500, 1800, 1),
('Floki', 3500, 2100, 1),
('Dalai Lama', 3500, 1500, 2),
('Koen', 2200, 1200, 2),
('Ronaldinho', 1400, 1200, 3),
('Negro', 2800, 2500, 3),
('Estopofontes', 2400, 1900, 4),
('R10', 2100, 1800, 5);

SELECT *
FROM tb_personagens;

-- SELECT para retornar todos os personagens com poder de ataque maior que 2000

SELECT *
FROM tb_personagens
WHERE ataque > 2000;

-- SELECT para retornar todos os personagens com poder de defesa entre 1000 e 2000

SELECT *
FROM tb_personagens
WHERE defesa BETWEEN 1000 AND 2000;

-- SELECT utilizando o operador LIKE para buscar personagens com a letra 'R' no nome

SELECT *
FROM tb_personagens
WHERE nome LIKE '%R%';

-- SELECT utilizando INNER JOIN para unir os dados das tabelas tb_personagens e tb_classes

SELECT p.*, c.nome AS classe_nome
FROM tb_personagens p
INNER JOIN tb_classes c ON p.id_classe = c.id; 

-- SELECT utilizando INNER JOIN para unir os dados das tabelas tb_personagens e tb_classes,
-- filtrando apenas os personagens da classe especificada (no exemplo, Mago)

SELECT p.*, c.nome AS classe_nome
FROM tb_personagens p
INNER JOIN tb_classes c ON p.id_classe = c.id
WHERE c.nome = 'Mago';