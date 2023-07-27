-- inserção de dados e queries
use ecommerce;


-- 

-- idClient, Fname, Minit, Lname, CPF, Address
insert into Clients (Fname, Minit, Lname, Address, Phone) 
	   values('Maria','M','Silva','rua silva de prata 29, Carangola - Cidade das flores', '41-9876-9876'),
		     ('Loja','São','Matheus','rua alemeda 289, Centro - Cidade das flores','42-8765-8907'),
			 ('Ricardo','F','Silva','avenida alemeda vinha 1009, Centro - Cidade das flores','41-7897-1243'),
			 ('Construtora','J','Camargo','rua lareijras 861, Centro - Cidade das flores','44-8975-2190'),
			 ('Roberta','G','Assis','avenidade koller 19, Centro - Cidade das flores','21-8901-7865'),
			 ('Casa','do','Computador','rua alemeda das flores 28, Centro - Cidade das flores','11-7896-1429');

insert into client_cpf(cpf, birth_Date, client_cpf_idClient) values ('54895462159','1981-04-12',1),
																	('35468795412','1970-06-21',3),
                                                                    ('65489745312','1998-10-18',5);

insert into client_cnpj(cnpj, contact, client_cnpj_idClient) values ('75.845.456/0001-25','João Ricarco',2),
																	('65.345.198/0001-23','Silvio Brito',4),
                                                                    ('45.439.193/0001-19','Carlos Pereira',6);                                                                    
                                                                 


-- idProduct, Pname, classification_kids boolean, category('Eletrônico','Vestimenta','Brinquedos','Alimentos','Móveis'), avaliação, size
insert into product (Pname, classification_kids, category, avaliation, size) values
							  ('Fone de ouvido',false,'Eletrônico','4',null),
                              ('Barbie Elsa',true,'Brinquedos','3',null),
                              ('Body Carters',true,'Vestuário','5',null),
                              ('Microfone Vedo - Youtuber',False,'Eletrônico','4',null),
                              ('Sofá retrátil',False,'Móveis','3','3x57x80'),
                              ('Farinha de arroz',False,'Alimentos','2',null),
                              ('Fire Stick Amazon',False,'Eletrônico','3',null);

-- idOrder, idOrderClient, orderStatus, orderDescription, sendValue, paymentCash

insert into orders (idOrderClient, orderStatus, orderDescription, sendValue, paymentCash) values 
							 (1, default,'compra via aplicativo',null,1),
                             (2,default,'compra via aplicativo',50,0),
                             (3,'Confirmado',null,null,1),
                             (4,default,'compra via web site',150,0);

-- idPOproduct, idPOorder, poQuantity, poStatus
select * from orders;
insert into productOrder (idPOproduct, idPOorder, poQuantity, poStatus, Pvalue) values
						 (1,1,2,default, 95.29),
                         (2,1,1,default, 248.23),
                         (3,2,1,default, 425.20)
                         ;



select * from productOrder;
-- storageLocation,quantity

insert into productStorage (storageLocation,quantity) values 
							('Rio de Janeiro',1000),
                            ('Rio de Janeiro',500),
                            ('São Paulo',10),
                            ('São Paulo',100),
                            ('São Paulo',10),
                            ('Brasília',60);

-- idLproduct, idLstorage, location
insert into storageLocation (idSLproduct, idSLstorage, location) values
						 (1,2,'RJ'),
                         (2,6,'GO');

-- idSupplier, SocialName, CNPJ, contact
insert into supplier (SocialName, CNPJ, contact) values 
							('Almeida e filhos', 123456789123456,'21985474'),
                            ('Eletrônicos Silva',854519649143457,'21985484'),
                            ('Eletrônicos Valma', 934567893934695,'21975474');
                            
select * from supplier;
-- idPsSupplier, idPsProduct, quantity
insert into productSupplier (idPsSupplier, idPsProduct, quantity) values
						 (1,1,500),
                         (1,2,400),
                         (2,4,633),
                         (3,3,5),
                         (2,5,10);

-- idSeller, SocialName, AbstName, CNPJ, CPF, location, contact
insert into seller (SocialName, AbstName, CNPJ, CPF, location, contact) values 
						('Tech eletronics', null, 123456789456321, null, 'Rio de Janeiro', 219946287),
					    ('Botique Durgas',null,null,123456783,'Rio de Janeiro', 219567895),
						('Kids World',null,456789123654485,null,'São Paulo', 1198657484);

select * from seller;
-- idPseller, idPproduct, prodQuantity
insert into productSeller (idPseller, idPproduct, prodQuantity) values 
						 (1,6,80),
                         (2,7,10);

insert into payment (idClient, typePayment,idOorder,paymentStatus, payValue) values   (1,'PIX',1,'Paid',438.81),
																			(2,'Cartão de Crédito',2,'Pending',425.20);


insert into Delivery (Delivery_data,DStatus,Tracking_code,idDlOrder) values (now(),'Shipped','FKS459-33',1),
																			(now(),'not_delivered','FKX398-11',2);
                                                                            
select * from Delivery;                                                                            

                                                                        
select * from orders;

-- Queries para o Banco de dados Ecommerce


-- Lista dos clientes por Ordem alfabética
select concat(Fname,' ',Minit,'. ',Lname) as 'Name', Address from clients order by Fname asc;

-- Lista de Fornecedores 
select * from supplier;

-- Lista de Vendedores
select SocialName, Location, contact from seller;

-- Lista de produtos
select * from product;
-- Quantidade de produtos cadastrados em cada categoria
select count(*) as 'Products', Category from product
group by category;
-- Lista de Pedidos
select * from orders;

-- Lista de produtos em um pedido e seus valores
select idOrder as 'Order',Pname as 'Product_name',PoQuantity as Quantity,Pvalue as Unit, round(Pvalue * poQuantity,2) as Total  from clients
	inner join orders
    on idOrderClient = idClient
    inner join productOrder
    on idPOorder = idOrder
    inner join product
    on idPOproduct = idProduct
    where idOrder =1
    ;
    
    

-- Relação de Clientes com Status de pedido endereço e contato.
select idOrder as 'Pedido', Fname as 'Cliente', orderStatus as 'Status', Address as Endereço , phone as Telefone from clients
	inner join orders
    on idOrderClient = idClient;

-- Relação de Pedidos
select idOrder as 'Order', concat(Fname,' ',Lname) as 'Name', orderStatus as 'Status', Pname as 'Product_name', Pvalue from clients
	inner join orders
    on idOrderClient = idClient
    inner join productOrder
    on idPOorder = idOrder
    inner join product
    on idPOproduct = idProduct;


-- Relação de produtos por vendedores

select * from seller s
	inner join product p
    on idProduct = idProduct;
    
-- Filtrando por produtos de um vendedor    
select * from seller s
	inner join product p
    on idProduct = idProduct
    where idSeller = 3
    ;
-- Filtrando Mais produtos de mais de um vendedor

select * from seller s
	inner join product p
    on idProduct = idProduct
    where IdSeller >=2 and idSeller <=5 
    order by idSeller, Pname
    ;
    
 -- Relação do Estoque e sua localidade
  select * from productStorage;   

-- Relação de produtos em estoque e sua localização
select concat(storageLocation,' - ',location) as 'Local', Pname as Product, quantity as Quantity from productStorage
	inner join storageLocation
    on idSLstorage = idProductStorage
    inner join product
    on idSLproduct = idProduct
    ;
    
-- Relação de Pagamentos

select concat(Fname,' ',Lname) as 'Client', idOorder as 'Order',payValue as 'Value', paymentStatus as 'Status' from payment p, clients c 
	where p.idClient = c.idClient;

-- Relação de Clientes Pessoa Física

select concat(Fname,' ',Minit,'. ',Lname) as 'Name', Birth_Date, Cpf, Phone, Address  from client_cpf
	inner join clients
    on idClient = client_cpf_idClient;
    
-- Relação de Clientes Pessoa Jurídica

select concat(Fname,' ',Minit,' ',Lname) as Company, cnpj, Contact, Phone, Address from client_cnpj
inner join clients
on idClient = client_cnpj_idClient;    
    
-- Relação de Entregas

select Fname as 'Client', Phone, Address, Delivery_data as 'Delivery date', Tracking_code, DStatus as 'Status'  from Delivery
	inner join orders
    on idDlOrder = idOrder
    inner join clients
    on idOrder = idClient;