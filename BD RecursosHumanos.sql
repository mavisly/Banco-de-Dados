CREATE DATABASE db_recursosHumanos;
USE db_recursosHumanos;

CREATE TABLE tb_colaboradores(
id bigint auto_increment PRIMARY KEY,
nome varchar (255),
idade int,
salario int,
cargo varchar (255)
);

INSERT INTO tb_colaboradores (nome,idade,salario,cargo)
VALUES ("Claudio",23,2500,"serviços gerais");
INSERT INTO tb_colaboradores (nome,idade,salario,cargo)
VALUES ("Marcos",26,1500,"operador");
INSERT INTO tb_colaboradores (nome,idade,salario,cargo)
VALUES ("Maria",45,5000,"diretora");
INSERT INTO tb_colaboradores (nome,idade,salario,cargo)
VALUES ("Alice",28,1800,"supervisora");
INSERT INTO tb_colaboradores (nome,idade,salario,cargo)
VALUES ("Carla",53,2000,"gerente");

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET idade = 32 WHERE id = 2;

SELECT * FROM tb_colaboradores;



