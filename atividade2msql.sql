/*Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
informações dos produtos deste ecommerce.
Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
Popule esta tabela com até 8 dados;
Faça um select que retorne os produtos com o valor maior do que 500.
Faça um select que retorne os produtos com o valor menor do que 500.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

create database comercios;
show databases;
use comercios;
create table comercios(
	id bigint auto_increment,
		alimento varchar(40),
		valor varchar(30),
        data_validade varchar(30),
        quantidade varchar (45),
        primary key(id)
 );

 show tables;
select * from comercios;
 insert into comercios(alimento, valor, data_validade, quantidade) values("arroz","12R$", "5/05/2021", "3-unidades");
 insert into comercios(alimento, valor, data_validade, quantidade) values("xbox","500R$", "5/05/2025", "2-unidades");
 insert into comercios(alimento, valor, data_validade, quantidade) values("tv","670R$", "5/05/2021", "3-unidades");
 insert into comercios(alimento, valor, data_validade, quantidade) values("ração","600$", "5/05/2021", "3-unidades");
 insert into comercios(alimento, valor, data_validade, quantidade) values("ps4","100R$", "5/05/2025", "7-unidades");
 insert into comercios(alimento, valor, data_validade, quantidade) values("agua","50R$", "5/05/2024", "5-unidades");
 insert into comercios(alimento, valor, data_validade, quantidade) values("banana","12R$", "5/05/2021", "10-unidades");
 insert into comercios(alimento, valor, data_validade, quantidade) values("leite","100R$", "5/05/2023", "1-unidades");
 
select* from comercios where valor> 500;
select* from comercios where valor< 500;
 
 