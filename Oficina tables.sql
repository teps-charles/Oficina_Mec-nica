-- Criar banco de dados para o cenario Ordem de serviço Oficina-Mecânica
create database oficina;
use oficina;

-- criar tabela client
create table clients(
     idClient int auto_increment primary key,
     Fname varchar(15),
     Lname varchar(15),
     CPF char(11),
     Address varchar(20),
     constraint unique_cpf unique(CPF)
);

-- criar tabela serviço
create table services(
     idService int auto_increment primary key,
     Descrição varchar(20),
     idClientService int not null,
     constraint fk_clientService foreign key (idClientService) references clients(idClient)
                on delete cascade
                on update cascade
);

-- criar tabela Peças
create table spareparts(
     idSparepart int auto_increment primary key,
     Sparepart_type varchar (20)
);

-- criar tabela ordem de serviço
create table orders(
     idOrder int auto_increment primary key,
     OrderDate date,
     Price decimal not null,
     OrderStatus enum('Cancelado','Confirmado','Em processamento') default 'Em processamento'
);

--  criar tabela mecânicos
create table mechanics(
     idMechanics int auto_increment primary key,
     Fname varchar(10),
     Mname varchar(10),
	 Spaciality varchar(20),
     Address varchar(20)
);

-- criar tabela responsável
create table ServResponsible(
     idServResponsible int,
     idMechanicSpaciality int,
     primary key (idServResponsible, idMechanicSpaciality),
     constraint fk_Serv_Responsible foreign key(idServResponsible) references services(idService),
     constraint fk_Mechanic_Spatiality foreign key(idMechanicSpaciality) references mechanic(idMechanic)
);

-- criar tabela serviço
