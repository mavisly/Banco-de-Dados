CREATE DATABASE db_quitanda; -- comando para criar bd

USE db_quitanda; -- comando para especificar em qual bd os comandos serão executados

CREATE TABLE tb_produtos( -- criação de uma tabela
    id bigint auto_increment, -- atributo da tablela (auto_increment serve para o sistema contar +1
	nome varchar(255) not null, -- not null força o usuário a inserir um valor / varchar é o tipo do dado a ser inserido / nome é o nome do atributo
	quantidade int,
	preco decimal not null,
    PRIMARY KEY (id) -- identifica qual a chave primária da tabela
);

INSERT INTO tb_produtos(nome, quantidade, preco) -- comando para inserir valor nos atributos
values ("tomate",100, 8.00); -- valor a serem inseridos 
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("maçã",20, 5.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("laranja",50, 10.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("banana",200, 12.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("uva",1200, 30.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("pêra",500, 2.99);

SELECT * FROM tb_produtos; -- usado para visualizar todos os dados da tabela

SELECT nome FROM tb_produtos; -- usado para visualizar determinado atributo da tabela

SELECT nome, preco FROM tb_produtos; -- se for mostrar dois atributos, usar virgula para separar

SELECT * FROM tb_produtos WHERE id = 1; -- busca com criterio (nesse caso, o criterio é mostrar o registro cujo id seja 1)

SELECT * FROM tb_produtos WHERE preco > 5.00; -- busca com criterio (nesse caso, todos os produtos cujo preço for maior que 5)

SELECT * FROM tb_produtos WHERE preco > 5.00 AND quantidade < 100; -- busca com mais de um criterio (AND)

UPDATE tb_produtos SET preco = 5.00 WHERE id = 1; -- comando para atualizar, nesse caso, atualiza o preco do dado com id 1 SEMPRE USAR WHERE NO UPDATE

DELETE FROM tb_produtos WHERE id = 2; -- comando para deletar determinado dado SEMPRE USAR WHERE NO DELE

ALTER TABLE tb_produtos MODIFY preco decimal(6,2); -- altera dado na tabela, nesse caso, diz que são 2 numeros depois da virgula no preco

ALTER TABLE tb_produtos ADD descricao varchar(255); -- adiciona atributo (ADD)

ALTER TABLE tb_produtos DROP descricao; -- deleta atributo (DROP)

ALTER TABLE tb_produtos CHANGE nome nomeproduto VARCHAR(255);  -- altera o atributo da tabela (CHANGE)

