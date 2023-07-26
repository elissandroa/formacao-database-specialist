-- Criação do banco de dados para o cenário de E-commerce
-- drop database ecommerce;
create database if not exists ecommerce;

use ecommerce;

-- criar tabela cliente
create table clients(
	idClient int primary key auto_increment,
    Fname varchar(15),
    Minit char(3),
    Lname varchar(20),
    CPF char(11) not null,
    Address varchar(255) not null,
    Phone varchar(20)not null,
    constraint unique_cpf_client unique (CPF)
);

alter table clients auto_increment=1;

-- criar tabela produto

-- size = dimensão do produto
create table product(
	idProduct int primary key auto_increment,
    Pname varchar(255) not null,
    classification_kids bool default false,
    category enum('Eletrônico', 'Vestuário','Brinquedos','Alimentos','Móveis') not null ,
    Avaliation float default 0,
    size varchar(10)
);

alter table product auto_increment=1;

-- criar tabela pedido

create table orders (
	idOrder int auto_increment primary key,
    idOrderClient int,
    orderStatus enum('Cancelado','Confirmado','Em processamento') default 'Em processamento',
	orderDescription varchar(255),
    sendValue float default 10,
    paymentCash bool default false,
    constraint fk_orders_client foreign key (idOrderClient) references clients (idClient)
		on update cascade
);
alter table orders auto_increment=1;

-- criar tabela estoque

create table productStorage(
	idProductStorage int auto_increment primary key,
    storageLocation varchar(255),
    quantity int default 0
);
alter table productStorage auto_increment=1;

-- criar tabela fornecedor

create table supplier(
	idSupplier int auto_increment primary key,
    SocialName varchar(255) not null,
    CNPJ char(15) not null,
    contact char(11) not null,
    constraint unique_supplier_cnpj unique (CNPJ)
);
alter table supplier auto_increment=1;
-- criar tabela vendedor

create table seller(
	idSeller int auto_increment primary key,
    SocialName varchar(255) not null,
    AbstName varchar(255),
    CNPJ char(15),
    CPF char(9),
    location varchar(255),
    contact char(11) not null,
    constraint unique_cnpj_seller unique(CNPJ),
    constraint unique_cpf_seller unique(CPF)
);
alter table seller auto_increment=1;

-- criar tabela  produtos / vendedor

create table productSeller(
	idPseller int,
    idPproduct int,
    ProdQuantity int default 1,
    primary key (idPseller,  idPproduct),
    constraint fk_product_seller foreign key (idPseller) references seller(idSeller),
    constraint fk_product_product foreign key (idPproduct) references product(idProduct)
);

-- criar tabela produtos / pedido

create table productOrder(
	idPOproduct int,
    idPOorder int,
    poQuantity int default 1,
    poStatus enum('Disponível','Sem estoque') default 'Disponível',
    Pvalue float default 0,
    primary key (idPOproduct, idPOorder),
    constraint fk_productOrder_product foreign key (idPOproduct) references product(idProduct),
    constraint fk_productOrder_order foreign key (idPOorder) references orders(idOrder)
);


create table storageLocation(
	idSLproduct int,
    idSLstorage int,
    location varchar(255) not null,
    primary key (idSLproduct,idSLstorage),
    constraint fk_storage_location_product foreign key (idSLproduct) references product(idProduct),
    constraint fk_storage_location_storage foreign key (idSLstorage) references productStorage(idProductStorage)
);

-- criar tabela produto / fornecedor

create table productSupplier(
	idPssupplier int,
    idPsProduct int,
    quantity int not null,
    primary key(idPsSupplier,idPsProduct),
    constraint fk_product_supplier_supplier foreign key (idPsSupplier) references supplier(idSupplier),
    constraint fk_product_supplier_product foreign key (idPsProduct) references product(idProduct)
    );

create table payment(
	idPayment int auto_increment primary key,
    idClient int,
    typePayment enum('Boleto','Cartão de Crédito','Cartão de Débito','PIX'),
    idOorder int,
    paymentStatus enum('Pending','Paid'),
    payValue float not null,
    constraint fk_Payment_order foreign key (idOorder) references orders(idOrder),
    constraint fk_payment_client foreign key (idClient) references clients(idClient)
);

show tables;