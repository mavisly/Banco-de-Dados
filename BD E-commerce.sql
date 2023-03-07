CREATE DATABASE db_loja;
USE db_brinquedos;

CREATE TABLE tb_brinquedos(
id bigint auto_increment PRIMARY KEY,
marca varchar (255),
preco decimal,
tipo varchar (255),
faixa_etaria int
);

INSERT INTO tb_brinquedos(marca,preco,tipo,faixa_etaria)
VALUES ("Hasbro",85.98,"Monopoly",8);
INSERT INTO tb_brinquedos(marca,preco,tipo,faixa_etaria)
VALUES ("Estrela",273.15,"Torta na Cara",10);
INSERT INTO tb_brinquedos(marca,preco,tipo,faixa_etaria)
VALUES ("Estrela",523.75,"Banco Imobiliario",12);
INSERT INTO tb_brinquedos(marca,preco,tipo,faixa_etaria)
VALUES ("Rihappy",674.30,"Funko",5);
INSERT INTO tb_brinquedos(marca,preco,tipo,faixa_etaria)
VALUES ("Mattel",1532.75,"Casa da Barbie",6);
INSERT INTO tb_brinquedos(marca,preco,tipo,faixa_etaria)
VALUES ("Fischer Price",98.60,"Quebra-Cabeça",4);
INSERT INTO tb_brinquedos(marca,preco,tipo,faixa_etaria)
VALUES ("Lego",784.20,"Lego Hogwarts",5);
INSERT INTO tb_brinquedos(marca,preco,tipo,faixa_etaria)
VALUES ("Candide",840.90,"Boneco articulado do Homem Aranha",3);

SELECT * FROM tb_brinquedos WHERE preco > 500;
SELECT * FROM tb_brinquedos WHERE preco < 500;

ALTER TABLE tb_brinquedos MODIFY preco decimal(6,2);

UPDATE tb_brinquedos SET faixa_etaria = 7 WHERE id=7;

SELECT * FROM tb_brinquedos;

