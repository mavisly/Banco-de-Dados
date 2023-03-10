CREATE DATABASE db_cidade_dos_vegetais;
USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias(
id bigint auto_increment,
categoria varchar (255),
cor varchar (255),
PRIMARY KEY (id)
);

INSERT INTO tb_categorias(categoria,cor)
VALUES ("Hortaliça","Amarelo");
INSERT INTO tb_categorias(categoria,cor)
VALUES ("Hortaliça","Vermelho");
INSERT INTO tb_categorias(categoria,cor)
VALUES ("Folha","Verde");
INSERT INTO tb_categorias(categoria,cor)
VALUES ("Tuberculo","Branco");
INSERT INTO tb_categorias(categoria,cor)
VALUES ("Raizes","Roxo");

CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar (255),
quantidade int,
valor decimal (6,2),
peso_g int,
categoria_id bigint,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id),
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome,quantidade,valor,peso_g,categoria_id)
VALUES("Mandioquinha Salsa",52,15.00,100,1);
INSERT INTO tb_produtos(nome,quantidade,valor,peso_g,categoria_id)
VALUES("Pimentão",74,53.00,250,2);
INSERT INTO tb_produtos(nome,quantidade,valor,peso_g,categoria_id)
VALUES("Rucula",26,53.00,780,3);
INSERT INTO tb_produtos(nome,quantidade,valor,peso_g,categoria_id)
VALUES("Inhame",84,64.00,850,4);
INSERT INTO tb_produtos(nome,quantidade,valor,peso_g,categoria_id)
VALUES("Beterraba",14,78.00,632,5);
INSERT INTO tb_produtos(nome,quantidade,valor,peso_g,categoria_id)
VALUES("Agrião",59,41.00,148,3);
INSERT INTO tb_produtos(nome,quantidade,valor,peso_g,categoria_id)
VALUES("Mandioca",46,23.00,520,4);
INSERT INTO tb_produtos(nome,quantidade,valor,peso_g,categoria_id)
VALUES("Alface",18,67.00,400,3);

SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id WHERE categoria = "Folha";
