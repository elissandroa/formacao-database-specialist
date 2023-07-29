-- Criação do Banco de dados workshop
-- drop database workshop;
create database workshop;
use  workshop;

-- Criação da Tabela workshop

create table workshop(
	idWorkshop int auto_increment primary key,
    WorkshopName varchar(200),
    LocalWorkshop enum('Matriz','Filial'),
    Address varchar(255),
    Phone varchar(13),
    CNPJ char(18) not null,
    constraint unique_workshop_cnpj unique(CNPJ)
);

alter table workshop auto_increment=1;

-- Criação da Tabela clients

create table clients(
	idClient int auto_increment primary key,
    Fname varchar(14),
    Minit char(3),
    Lname varchar(20),
    cpf char(11) not null,
    Address varchar(255),
    Phone varchar(13),
    idCliWorkshop int default 1,
    constraint unique_clients_cpf unique(cpf),
    constraint fk_clients_workshop foreign key (idCliWorkshop) references workshop(idWorkshop)
);

alter table clients auto_increment=1;

-- Criação da Tabela Vehicle

create table vehicle(
	idVehicle int auto_increment primary key,
    Manufacturer varchar(30) not null,
    Model varchar(20) not null,
    VEngine varchar(10) not null,
    Ident_Plate varchar(14),
    Manuf_year int,
    Chassis_number varchar(45),
    color varchar(10),
    Observations varchar(255) default 'Nada consta',
    idVeClients int,
	constraint fk_vehicle_clients foreign key (idVeClients) references clients(idClient)	
);   
alter table vehicle auto_increment=1;

-- Criação da Tabela Supplier

create table supplier(
	idSupplier int auto_increment primary key,
    SocialName varchar(100),
    Address varchar(255),
    Contact varchar(45),
    Phone varchar(13),
    Active_supplier bool default 1
);

alter table supplier auto_increment=1;

-- Criação da Tabela Peças

create table parts(
	idParts int auto_increment primary key,
    PartNumber varchar(45),
    Description_part varchar(255) not null,
    Quantity int not null default 0,
    PValue float,
    PaIdSupplier int,
    constraint fk_parts_supplier foreign key (PaIdSupplier) references supplier(idSupplier)
);

alter table parts auto_increment=1;

-- Criando a classe de Cargo - (Função)


-- Criação da tabela Employee

create table employee(
	idEmployee int auto_increment primary key,
    Fname varchar(60) not null,
    Address varchar(255) not null,
    Phone varchar(13) not null,
    Admission_date Date not null,
    Demission_date Date,
    Salary float not null,
    Active_employee  bool default 1,
    employeeRole enum('Gerente','Mecânico','Auxiliar mecânico') not null
);

alter table employee auto_increment=1;


-- Criação da tabela Ordem de Serviço
create table orderService(
	idOrderService int auto_increment primary key,
    EntryDate Date,
    Departure Date,
    Solution varchar(255),
    Reported_defect varchar(255),
    labor float not null,
    OidEmployee int,
    OidClient int,
    OidVehicle int,
    constraint fk_OrderService_employee foreign key(OidEmployee) references employee(idEmployee),
    constraint fk_OrderService_clients foreign key(OidClient) references clients(idClient),
    constraint fk_OrderService_vehicle foreign key(OidVehicle) references vehicle(idVehicle)
);

alter table orderService auto_increment=1;

-- Criação da Tabela de Pagamentos

create table payment(
	idPayment int auto_increment primary key,
    PayStatus enum('Paid','Pending') not null,
    PayType enum('Cartão de Crédito','Cartão de Débito','Dinheiro','PIX') default 'PIX',
    PValue float,
    PidOrderService int,
    constraint fk_payment_orderservice foreign key(PidOrderService) references orderService(idOrderService)
);

alter table clients auto_increment=1;

-- Criação da tabela de peças da Ordem de Serviço

create table OrderParts(
	idParts int,
    idOrderService int,
    Quantity int,
    primary key (idParts,idOrderService),
    constraint fk_orderParts_parts foreign key(idParts) references parts(idParts),
    constraint fk_orderParts_orderService foreign key(idOrderService) references OrderService(idOrderService)
);

show tables;
