create database Projeto;


use projeto;


create table usuario (
	idusuario int primary key auto_increment,
	nome varchar(50),
	telefone varchar(15),
	email varchar(40),
	dataNasc date
);


create table sensores (
	idsensor int primary key auto_increment,
    temperatura int,
	Temporeal datetime
);
insert sensores (temperatura,Temporeal) values 
(-10,'2020-09-15 10:39:25'),
(-13,'2020-09-15 11:39:45'),
(-18,'2020-09-15 14:24:35'),
(-14,'2020-09-15 17:32:20'),
(-11,'2020-09-15 11:20:17');

insert into usuario (nome,telefone,email,dataNasc) values 
('Sergio Trindade', '40028922', 'sergio.trindade@bandtec.com.br','1997-08-27'),
('João Arnaut', '40028662', 'joao.silva@bandtec.com.br','1994-02-07'),
('Lucas Penalva', '89987070', 'lucas.pfranca@bandtec.com.br','2001-10-20'),
('Rafael Rocha', '940227749', 'rafael.rocha@bandtec.com.br','1998-02-19'),
('Marcus Vinicius','943434754','marcus.vinicius@bandtec.com.br','1998-01-07');
select * from usuario;

select * from sensores;
