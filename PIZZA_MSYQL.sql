/*Atividade 2
Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco
deverá ter o seguinte nome db_pizzaria_legal, onde o sistema trabalhará com as
informações dos produtos desta empresa.
O sistema trabalhará com 2 tabelas tb_pizza e tb_categoria.
siga exatamente esse passo a passo:
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.
Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria(não esqueça de
criar a foreign key de tb_categoria nesta tabela).
Popule esta tabela Categoria com até 5 dados.
Popule esta tabela pizza com até 8 dados.
Faça um select que retorne os Produtos com o valor maior do que 45 reais.
Faça um select trazendo os Produtos com valor entre 29 e 60 reais.
Faça um select utilizando LIKE buscando os Produtos com a letra C.
Faça um um select com Inner join entre tabela categoria e pizza.
Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são pizza doce).
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

CREATE DATABASE db_pizzaria_legal;
use db_pizzaria_legal;
#DROP DATABASE db_pizzaria_legal; 
CREATE TABLE if NOT EXISTS tb_pizza(
ID BIGINT AUTO_INCREMENT NOT NULL,
nome VARCHAR(255) NOT NULL,
tamanho VARCHAR(255) NOT NULL,
descricao VARCHAR (200) NOT NULL,
sabor VARCHAR (100) NOT NULL,
quantidade INT (15) NOT NULL,
valor float (10.2) NOT NULL,
PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS  tb_categoria(
ID BIGINT AUTO_INCREMENT,
tipo ENUM('SALGADA','DOCE','VEGANA') NOT NULL,
pizza_ID bigint NOT NULL,
PRIMARY KEY (ID),
FOREIGN KEY(pizza_ID) REFERENCES tb_pizza (ID)
);

INSERT INTO tb_pizza (nome,tamanho,descricao,sabor,quantidade,valor)
VALUES 
('FRANCO COM CATUPIRY','GRANDE','COM CEBOLA','SALGADA',2,60.0),
('CALABRESA CATUPIRY','PEQUENA','SEM CEBOLA','SALGADA',1,30.0),
('ATUM','BROTO','COM CEBOLA','SALGADA',1,25.0),
('ROMEU JULIETA','PEQUENA','COM BORDA','DOCE',1,28.0),
('CARNE','MEDIA','SEM BORDA','VEGANA',1,35.0),
('PORTUGUESA','GRANDE','COM CEBOLA','SALGADA',3,90.0),
('QUATRO QUEIJO','MEDIA',' BORDA DE CHEDDER','SALGADA',4,120),
('TOSCANA ','PEQUENA','NORMAL','SALGADA',1,19.0);
 
INSERT INTO tb_categoria (tipo, pizza_ID)
VALUES
('SALGADA',1),
('SALGADA',2),
('SALGADA',3),
('DOCE',4),
('VEGANA',5),
('SALGADA',6),
('SALGADA',7),
('SALGADA',8);
 
 SELECT * FROM tb_pizza WHERE VALOR>45;
 SELECT * FROM tb_pizza WHERE VALOR BETWEEN 29 AND 60;
 SELECT * FROM tb_pizza WHERE nome LIKE 'C%';
 SELECT nome, tipo FROM tb_pizza INNER JOIN tb_categoria ON tb_categoria.pizza_ID = tb_pizza.ID;
 SELECT nome, tipo FROM tb_pizza INNER JOIN tb_categoria ON tb_categoria.pizza_ID = tb_pizza.ID WHERE tipo LIKE 'SALGADA';
 
 