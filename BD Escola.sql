CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes (
id bigint auto_increment PRIMARY KEY,
nome varchar (255),
idade int,
nota decimal (6,2),
serie int
);

INSERT INTO tb_estudantes(nome,idade,nota,serie)
VALUES ("Adriano",13,7.5,8);
INSERT INTO tb_estudantes(nome,idade,nota,serie)
VALUES ("Carlos",8,3.3,4);
INSERT INTO tb_estudantes(nome,idade,nota,serie)
VALUES ("Bia",14,9.2, 9);
INSERT INTO tb_estudantes(nome,idade,nota,serie)
VALUES ("Karol",11,6.7, 5);
INSERT INTO tb_estudantes(nome,idade,nota,serie)
VALUES ("Pedro",10,7.4, 6);
INSERT INTO tb_estudantes(nome,idade,nota,serie)
VALUES ("Maria",5,8.7, 3);
INSERT INTO tb_estudantes(nome,idade,nota,serie)
VALUES ("Camile",12,8.4, 7);
INSERT INTO tb_estudantes(nome,idade,nota,serie)
VALUES ("Bruno",9,2.8, 5);

SELECT * FROM tb_estudantes WHERE nota > 7.0;
SELECT * FROM tb_estudantes WHERE nota < 7.0;

SELECT * FROM tb_estudantes;
