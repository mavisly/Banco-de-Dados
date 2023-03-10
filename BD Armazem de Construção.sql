CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categorias(
id bigint auto_increment,
categoria varchar (255),
tipo_compra varchar (255),
PRIMARY KEY (tipo_compra)
);

INSERT INTO tb_categorias (categoria,tipo_compra)
VALUES ("Equipamento","Varejo");
INSERT INTO tb_categorias (categoria,tipo_compra)
VALUES ("Eletrico","Atacado");
INSERT INTO tb_categorias (categoria,tipo_compra)
VALUES ("Piso","Atacado");
INSERT INTO tb_categorias (categoria,tipo_compra)
VALUES ("Tinta","Varejo");
INSERT INTO tb_categorias (categoria,tipo_compra)
VALUES ("Ferramenta","Varejo");

CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar (255) ,
quantidade int ,
valor decimal (6,2) ,
cor varchar (255) ,
PRIMARY KEY (id),
categoria_id bigint NOT NULL,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

INSERT INTO tb_produtos (nome,quantidade,valor,cor,categoria_id)
VALUES ("Capacete",15,16.80,"Amarelo",1);
INSERT INTO tb_produtos (nome,quantidade,valor,cor,categoria_id)
VALUES ("Cabos para Internet",158,57.50,"Colorido",2);
INSERT INTO tb_produtos (nome,quantidade,valor,cor,categoria_id)
VALUES ("Porcelanato",72,127.30,"Branca",3);
INSERT INTO tb_produtos (nome,quantidade,valor,cor,categoria_id)
VALUES ("Óleo",26,163.00,"Preto",4);
INSERT INTO tb_produtos (nome,quantidade,valor,cor,categoria_id)
VALUES ("Chave de fenda",7,77.80,"Verde",5);
INSERT INTO tb_produtos (nome,quantidade,valor,cor,categoria_id)
VALUES ("Disjuntor",49,51.45,"Branco",2);
INSERT INTO tb_produtos (nome,quantidade,valor,cor,categoria_id)
VALUES ("Taco",73,96.80,"Marrom",3);
INSERT INTO tb_produtos (nome,quantidade,valor,cor,categoria_id)
VALUES ("Martelo",41,54.60,"Roxo",5);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor > 100.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos 
INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id WHERE tb_categorias.categoria = "Piso";

