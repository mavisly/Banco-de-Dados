CREATE DATABASE db_generation_game_online2;
USE db_generation_game_online2;

CREATE TABLE tb_classes (
id bigint auto_increment,
classe varchar(255) NOT NULL,
idade int,
PRIMARY KEY (id)
);

INSERT INTO tb_classes (classe,idade)
VALUES ("Guerreiro",526);
INSERT INTO tb_classes (classe,idade)
VALUES ("Arqueiro",1058);
INSERT INTO tb_classes (classe,idade)
VALUES ("Pistoleiro",29);
INSERT INTO tb_classes (classe,idade)
VALUES ("Guerreiro",6794);
INSERT INTO tb_classes (classe,idade)
VALUES ("deus",9578);

CREATE TABLE tb_personagens (
id bigint auto_increment,
ataque int,
defesa int,
nome varchar (255),
teletransporte varchar (255),
PRIMARY KEY (id),
 classe_id bigint,
FOREIGN KEY (classe_id) REFERENCES tb_classes (id)
);


INSERT INTO tb_personagens (nome,ataque,defesa,teletransporte,classe_id)
VALUES ("Harry Potter",15000, 6780,"Sim",1);
INSERT INTO tb_personagens (nome,ataque,defesa,teletransporte,classe_id)
VALUES ("Voldemort",1200, 1600,"Sim",2);
INSERT INTO tb_personagens (nome,ataque,defesa,teletransporte,classe_id)
VALUES ("Capitão América",8400, 1500,"Não",3);
INSERT INTO tb_personagens (nome,ataque,defesa,teletransporte,classe_id)
VALUES ("SubZero",3000, 1950,"Não",4);
INSERT INTO tb_personagens (nome,ataque,defesa,teletransporte,classe_id)
VALUES ("Kattana",2000,1325,"Não",5);
INSERT INTO tb_personagens (nome,ataque,defesa,teletransporte,classe_id)
VALUES ("Dr. Estranho",600,3000,"Sim",2);
INSERT INTO tb_personagens (nome,ataque,defesa,teletransporte,classe_id)
VALUES ("Caique",2030,456,"Não",4);
INSERT INTO tb_personagens (nome,ataque,defesa,teletransporte,classe_id)
VALUES ("Spider Man",215,158,"Não",3);

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT * FROM tb_personagens 
INNER JOIN tb_classes ON  tb_classes . id  =  tb_personagens . classe_id;

SELECT * FROM tb_personagens
INNER JOIN tb_classes ON  tb_classes . id  =  tb_personagens . classe_id  WHERE  tb_classes . classe  =  "Guerreiro";