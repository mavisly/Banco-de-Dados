CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id bigint auto_increment, 
categoria varchar (255),
massa varchar (255),
PRIMARY KEY (id)
);

INSERT INTO tb_categorias(categoria,massa)
VALUES ("Doce","Fina");
INSERT INTO tb_categorias(categoria,massa)
VALUES ("Carne","Grossa");
INSERT INTO tb_categorias(categoria,massa)
VALUES ("Vegetariana","Fina");
INSERT INTO tb_categorias(categoria,massa)
VALUES ("Vegetariana","Grossa");
INSERT INTO tb_categorias(categoria,massa)
VALUES ("Doce","Grossa");

CREATE TABLE tb_pizzas (
id bigint auto_increment,
carne varchar (255),
queijo varchar (255),
nome varchar (255),
valor decimal (6,2),
PRIMARY KEY (id),
categoria_id bigint,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

INSERT INTO tb_pizzas (nome,carne,queijo,valor,categoria_id)
VALUES ("Romeu e Julieta","Nenhuma","Coalho",55.00,1);
INSERT INTO tb_pizzas (nome,carne,queijo,valor,categoria_id)
VALUES ("Calabresa","Suina","Mussarela",40.00,2);
INSERT INTO tb_pizzas (nome,carne,queijo,valor,categoria_id)
VALUES ("Portuguesa","Nenhuma","Mussarela",72.00,3);
INSERT INTO tb_pizzas (nome,carne,queijo,valor,categoria_id)
VALUES ("Manjericão","Nenhuma","Provolone",62.00,4);
INSERT INTO tb_pizzas (nome,carne,queijo,valor,categoria_id)
VALUES ("Morango com Nutella","Nenhuma","Mussarela",37.50,5);
INSERT INTO tb_pizzas (nome,carne,queijo,valor,categoria_id)
VALUES ("Doce de leite","Nenhuma","Reino",27.00,1);
INSERT INTO tb_pizzas (nome,carne,queijo,valor,categoria_id)
VALUES ("Frango com Catupiry","Frango","Catupiry",52.00,2);
INSERT INTO tb_pizzas (nome,carne,queijo,valor,categoria_id)
VALUES ("Bem casado","Nenhuma","Nenhum",63.00,1);

SELECT * FROM tb_pizzas WHERE valor > 45.00;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias ON  tb_categorias . id  =  tb_pizzas . categoria_id;

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias ON  tb_categorias . id  =  tb_pizzas . categoria_id  WHERE  tb_categorias . categoria  =  "Doce";
