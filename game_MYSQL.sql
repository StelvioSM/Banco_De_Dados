#Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter
#o seguinte nome db_generation_game_online, onde, o sistema trabalhará com as
#informações dos personagens desse game.
/*O sistema trabalhará com 2 tabelas tb_personagem e tb_classe.
siga exatamente esse passo a passo:
Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos
relevantes da classe para se trabalhar com o serviço desse game Online.
Crie uma tabela tb_personagem e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionários para se trabalhar com o serviço desse game Online
(não esqueça de criar a foreign key de tb_classe nesta tabela).
Popule esta tabela classe com até 5 dados.
Popule esta tabela personagem com até 8 dados.
Faça um select que retorne os personagens com o poder de ataque maior do que 2000.
Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000.
Faça um select utilizando LIKE buscando os personagens com a letra C.
Faça um um select com Inner join entre tabela classe e personagem.
Faça um select onde traga todos os personagem de uma classe específica (exemplo todos
os personagens que são arqueiros).
salve as querys para cada uma dos requisitos do exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade*/

create database db_generetion_game_online;
show databases;
use db_generetion_game_online;
#DROP DATABASE db_generetion_game_online; 
CREATE TABLE tb_classe(
	id_classe INT AUTO_INCREMENT,
    nome_classe VARCHAR(20),
    arma VARCHAR(20),
    armadura VARCHAR(20),
    PRIMARY KEY(id_classe)
);

create table tb_personagem(
id_personagem INT AUTO_INCREMENT,
nome varchar(50),
cor_cabelo varchar(50),
poder_ataque FLOAT,
poder_defesa FLOAT,
fk_classe INT,
PRIMARY KEY(id_personagem),
FOREIGN KEY(fk_classe) REFERENCES tb_classe(id_classe)
);

INSERT INTO tb_classe (nome_classe, arma, armadura)
VALUES
('Mago', 'Livro','Armadura bronze'),
('Arqueiro', 'Arco e Flexa','Armadura ferro'),
('Gatuno', 'Faca','Armadura cobre'),
('Guerreiro','Espada','Diamante'),
('sacerdote','cajado','Prata');

INSERT INTO tb_personagem (nome, cor_cabelo, poder_ataque, poder_defesa, fk_classe)
VALUES
('Boaz', 'Preto', 2000, 8000, 3),
('Camis', 'Preto', 5000, 2000, 2),
('Stelvio', 'Preto', 9000, 2000, 1),
('Samuel', 'Preto', 8000, 2500, 2),
('joao', 'branco', 2000, 8000, 3),
('matheus', 'Preto', 6000, 8000,1),
('felipe', 'Preto', 7000, 8000, 2),
('jose', 'Preto', 2000, 8000, 1);

SELECT * FROM tb_personagem WHERE poder_ataque>2000;
SELECT * FROM tb_personagem WHERE poder_defesa<2000 && poder_defesa >1000;
SELECT * FROM tb_personagem;
SELECT * FROM tb_personagem WHERE nome LIKE 'C';
SELECT * FROM tb_personagem WHERE nome LIKE 'S%';
SELECT * FROM tb_personagem INNER JOIN tb_classe;
SELECT * FROM tb_personagem INNER JOIN tb_classe WHERE nome_classe LIKE 'Mago';





