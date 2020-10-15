create database harbor;
use harbor;

create table transportadora (
idtransportadora int primary key auto_increment,
nomecliente varchar(45),
cnpj char (14),
telefonefixo char (12),
telefonecelular char (12),
rua varchar(70),
bairro varchar(50),
numero int,
complemento varchar(45),
cep char(8)
);


insert into transportadora (nomecliente, cnpj, telefonefixo, telefonecelular, 
rua, bairro, numero, complemento, cep) values 
('Americanas','89874652784765','119390282000','119403246742','Rua tupiniquins','Jardim Esmeralda',
230,'Galpão C', '02678989'),

('Golden','89874652789241','119390288798','119403200902','Rua Borges Lagoa','Brooklin',
30,'Galpão A', '09872989'),

('SeaTravel','89874652780011','119390297500','119408786742','Rua Emanuel Nobrega','Coronel Gomes',
98,'Galpão B', '02670009');

create table container (
idcontainer int primary key auto_increment,
tipodecarga varchar(45),
modelocontainer varchar (60),
fktransportadora int,
foreign key (fktransportadora) references transportadora(idtransportadora)
) auto_increment = 100;

insert into container (tipodecarga, modelocontainer, fktransportadora) values

('Alimenticio','refrigerador',1),
('Alimenticio','refrigerador',2),
('Alimenticio','refrigerador',3);


create table sensor (
idsensor int primary key auto_increment,
fkcontainer int,
foreign key (fkcontainer) references container(idcontainer)
) auto_increment = 1000;

insert into sensor (fkcontainer) values 
(100),
(101),
(102);

create table dadosensor (
iddados int primary key auto_increment,
temperatura varchar(5),
datahora datetime,
fksensor int,
foreign key (fksensor) references sensor(idsensor)
)auto_increment = 2000;

insert into dadosensor (temperatura, datahora,fksensor) values 

('2.0','2020-10-10 13:20:45',1000),
('1.0','2020-10-05 05:30:15',1001),
('5.0','2020-10-08 23:12:52',1002);