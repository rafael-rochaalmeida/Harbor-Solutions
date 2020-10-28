create database harbor;
use harbor;

create table Cep(
idCep int primary key auto_increment,
lobradouro varchar(45),
bairro varchar (45),
cep char(8)
);

insert into Cep values
(null,'Rua tupiniquins','Jardim Esmeralda','02678989'),
(null,'Rua Borges Lagoa','Brooklin','09872989'),
(null,'Rua Emanuel Nobrega','Coronel Gomes','02670009');

create table transportadora (
idtransportadora int primary key auto_increment,
nomecliente varchar(45),
cnpj char (14),
telefonefixo char (10),
telefonecelular char (11),
numero int,
complemento varchar(45),
fkcep int,
foreign key(fkCep) references Cep(idCep)
)auto_increment = 10;

select * from transportadora;

insert into transportadora (nomecliente, cnpj, telefonefixo, telefonecelular, numero, complemento, fkcep) values 
('Americanas','89874652784765','1193902820','11940324672',230,'Galpão C', 1),

('Golden','89874652789241','1193902887','11940320090',30,'Galpão A', 2),

('SeaTravel','89874652780011','1193902975','11940878674',98,'Galpão B', 3);


select *from Cep,transportadora where idCep = fkcep;

create table container (
idcontainer int primary key auto_increment,
tipodePeixe varchar(6),
check (tipodepeixe = 'polaca' or tipodepeixe = 'panga'),
modelocontainer varchar (60),
tiposensor varchar(45),
fktransportadora int,
foreign key (fktransportadora) references transportadora(idtransportadora)
) auto_increment = 30;

insert into container (tipodePeixe, modelocontainer,tiposensor, fktransportadora) values

('polaca','Reefer','Temperatura',10),
('panga','Reefer','Temperatura',12),
('polaca','Reefer','Temperatura',11);


create table dadosensor (
iddadosensor int primary key auto_increment,
fkcontainer int,
foreign key (fkcontainer) references container(idcontainer),
temperatura float,
datahora datetime
) auto_increment = 40;

insert into dadosensor (fkcontainer,temperatura,datahora) values 
(30,17.8, '2020-07-12 12:04:02'),
(31,18.2,'2020-07-13 10:00:22'),
(32,17.6,'2020-07-14 09:27:31');

create table usuario (
idusuario int primary key auto_increment,
loginUsuario varchar(45),
senhaUsuario varchar(45),
nomeUsuario varchar(45),
fktransportadora int,
foreign key (fktransportadora) references transportadora(idtransportadora)
);

insert into usuario (loginusuario,senhausuario,nomeusuario,fktransportadora) values 
('nicholas.forte@gmail.com','nicholas123','Nicholas',10),
('bruna.brito@gmail.com','bruna123','Bruna',12),
('pedro.gimenez@gmail.com','pedro123','Pedro',11);