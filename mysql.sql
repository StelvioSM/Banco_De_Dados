create database RH;
show databases;
use RH;
/*Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
trabalhará com as informações dos funcionaries desta empresa.
Crie uma tabela de funcionaries e 
 utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
Popule esta tabela com até 5 dados;
Faça um select que retorne os funcionaries com o salário maior do que 2000.
Faça um select que retorne os funcionaries com o salário menor do que 2000.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/
 create table Funcionarios(
		nome varchar(50),
		cfp char(11),
        ano_nascimento int,
        cidade varchar(30),
        salario int
 );
 show tables;
select * from Funcionarios;
 insert into Funcionarios (nome, cfp,ano_nascimento, cidade, salario) values('Fernando','21467839083','1998','Sao paulo','2001'); 
 insert into Funcionarios (nome, cfp,ano_nascimento, cidade, salario) values('silvio','21467833923','1998','Sao paulo','2005'); 
 insert into Funcionarios (nome, cfp,ano_nascimento, cidade, salario) values('bozs','21467839083','1998','Sao paulo','2000'); 
insert into Funcionarios (nome, cfp,ano_nascimento, cidade, salario) values('thiago','21467839083','1998','Sao paulo','1950'); 
insert into Funcionarios (nome, cfp,ano_nascimento, cidade, salario) values('Felipe','21467839083','1998','Sao paulo','1870'); 

select* from Funcionarios where salario>"2000";
select* from Funcionarios where salario<"2000";

update Funcionarios set salario='2000' where salario=5;
update Funcionarios set salario='2001' where salario=2000;

