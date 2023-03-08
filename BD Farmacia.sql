CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id bigint auto_increment,
tipo varchar (255),
ano_validade int,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias(tipo,ano_validade)
VALUES ("Analgésico",2026);
INSERT INTO tb_categorias(tipo,ano_validade)
VALUES ("Acessório",2038);
INSERT INTO tb_categorias(tipo,ano_validade)
VALUES ("Anti-alergico",2030);
INSERT INTO tb_categorias(tipo,ano_validade)
VALUES ("Anti-histaminico",2046);
INSERT INTO tb_categorias(tipo,ano_validade)
VALUES ("Analgésico",2048);

CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar (255),
tipo varchar (255),
quantidade int,
valor decimal (6,2),
categoria_id bigint,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id),
PRIMARY KEY (id)
);


INSERT INTO tb_produtos(nome,tipo,quantidade,valor,categoria_id)
VALUES ("Dipirona","Comprimido",52,13.00,1);
INSERT INTO tb_produtos(nome,tipo,quantidade,valor,categoria_id)
VALUES ("Tala de Compressão","Luva",13,58.00,2);
INSERT INTO tb_produtos(nome,tipo,quantidade,valor,categoria_id)
VALUES ("Histamin","Liquido",27,17.00,3);
INSERT INTO tb_produtos(nome,tipo,quantidade,valor,categoria_id)
VALUES ("Descongex","Xarope",81,66.00,4);
INSERT INTO tb_produtos(nome,tipo,quantidade,valor,categoria_id)
VALUES ("Paracetamol","Comprimido",14,8.00,5);
INSERT INTO tb_produtos(nome,tipo,quantidade,valor,categoria_id)
VALUES ("Dorflex","Comprimido",69,23.00,1);
INSERT INTO tb_produtos(nome,tipo,quantidade,valor,categoria_id)
VALUES ("Loratadina","Liquido",12,26.00,3);
INSERT INTO tb_produtos(nome,tipo,quantidade,valor,categoria_id)
VALUES ("Allegra","Adesivo",37,84.00,4);

SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_categorias . id = tb_produtos . categoria_id;

SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_categorias . id = tb_produtos . categoria_id WHERE tb_categorias . tipo = "Anti-histaminico";


