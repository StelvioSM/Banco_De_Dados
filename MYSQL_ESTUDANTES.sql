/*Atividade 3
Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as
informações dos estudantes deste registro dessa escola.
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos estudantes para se trabalhar com o serviço dessa escola.
Popule esta tabela com até 8 dados;
Faça um select que retorne o/as estudantes com a nota maior do que 7.
Faça um select que retorne o/as estudantes com a nota menor do que 7.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

CREATE DATABASE escola;
USE escola;
CREATE TABLE estudantes (
ID_estudantes INT AUTO_INCREMENT,
nome VARCHAR (89),
nota INT,
RA INT,
CPF CHAR(11),
COMPORTAMENTO VARCHAR(90),
PRIMARY KEY (ID_estudantes)
);
	INSERT INTO estudantes (nome,nota,RA,CPF,COMPORTAMENTO) 
	VALUES 
('Samuel',7,01973567,12345678901,'Calmo'),
('Stelvio',9,0182562,12345678908,'destraido'),
('ANA',10,0182562,12345678908,'atenta'),
('felipe',9,0111462,46895678908,'esperto'),
('joao',8,0118262,06095678908,'inteligente'),
('Maria',10,01111272,4689567877,'calma'),
('Leticia',7,2341462,00995678908,'feliz'),
('antonio',5,0111462,46895678908,'barulhento');

SELECT * FROM estudantes WHERE nota<7;
SELECT * FROM estudantes WhERE nota>7;
UPDATE estudantes SET nome = 'FELIPE' WHERE nome = 'felipe';