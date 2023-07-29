use workshop;

-- Inserindo dados em Workshop
-- idWorkshop - LocalWorkshop - Address - Phone - cnpj

insert into workshop(WorkshopName,LocalWorkshop, Address, Phone, Cnpj) 
	values ('Oficina São Pedro','Matriz','Rua Quinze de Novembro, 2948','41-3278-2549','75.128.459/0001-16');
   
-- Inserindo dados em clients
-- Fname - Minit - Lname - cpf - Address - phone - idCliWorkshop

insert into clients(Fname,Minit,Lname,cpf,Address,Phone,idCliWorkshop) 
	values('José','C','Silva',12978918214,'Rua das perdizes, 49','21-9876-1234',1),
		  ('Pedro','V','Araujo',54985247962,'Rua doze, 19','21-3564-2154',1),
          ('Matheus','V','Sonosseno',65487962133,'Rua da felicidade, 32','41-3256-1234',1),
          ('Ricardo','M','Ribas',32458796541,'Rua dos amigos, 21','41-9876-1234',1),
          ('Marcelo','V','Silva',32156689751,'Avenida Souza naves, 18','41-3276-3234',1),
          ('Juan','M','Torres',64654368741,'Rua João XIII, 1249','21-9676-1234',1),
          ('Michel','T','Azevedo',54128795231,'Avenida Sete de Setembro, 2345','11-9776-1234',1),
          ('Caroline','S','Naves',53245879636,'Rua 14 bloco 3 apartamento 12','21-8876-1234',1),
          ('Jéssica','E','Machado',35879652147,'Rua Otávio Saldanha Mazza, 2190','61-9675-1534',1),
          ('Carlos','R','Cruz',15468965874,'Rua João Rodrigues Pinheiro, 1234','21-7776-1234',1),
          ('Maria','A','Alves',23658974521,'Rua José Rodrigues Pinheiro, 4190','21-3456-1234',1),
          ('Rafaela','S','Neves',36587895254,'Rua nascente do sol, 14','44-8876-1234',1),
          ('Leonel','R','costa',42536987412,'Avenida Brasil, 745','41-6876-1234',1),
          ('Katarina','M','Mendes',36548795258,'Avenida Rui Barbosa, 142','41-2776-1234',1),
          ('Celso','J','Pereira',58754123014,'Rua dos Pássaros, 22','21-3376-1234',1),
          ('Jurandir','V','Cerqueira',78521548214,'Rua Irmas Paulinas, 11','21-8546-1234',1);

-- Inserindo dados em Vehicle
-- Manufacturer - Model - Vengine - Ident_Plate - Manuf_Year - Chassis_number - color - Observations - idVeClients
insert into vehicle (Manufacturer, Model, Vengine,Ident_Plate,Manuf_year,Chassis_number,color,Observations,idVeClients) 
				values ('Chevrolet','Onix','1.6','ABH-1243',2019,'ABS29630729','BRANCO','Porta do carona frontal amassada e com riscos',1),
                       ('Volkswagem','Gol','1.0','AFB-1356',2000,'ASS2266019','AZUL',default,1),
                       ('Volkswagem',' Audi - A3','2.0','ECB-1243',2022,'SBSS96S07S9','PRETO','RODAS EM PÉSSIMO ESTADO DE CONSERVAÇÃO',3),
                       ('Ferrari','F50','5.0','FAZ-2222',2012,'FBF2F6F0F2F','VERMELHA',default,4),
                       ('Porche','Cayenne','4.1','GJH-4243',2023,'PBS2P630P2P','CINZA',default,2),
                       ('Citroem','C3','1.6','CBH-1453',2010,'CBSC9C0CC9','BRANCO',default,5),
                       ('Chevrolet','Corsa','1.0','AJU-0243',2001,'CBS29630729','PRATA',default,6),
                       ('Jeep','CheroKee','1.6','ABH-4567',2018,'ABS296A0729','PRETO',default,7),
                       ('Ford','Focus','2.0','CJA-3443',2015,'ABS296A0A2A','VERMELHO',default,8),
                       ('Volkswagem','Fox','1.0','ABH-1243',2022,'ABS2A63A79','BRANCO','Está sem o Step',9),
                       ('Volkswagem','Passat','1.6','JCH-1443',1988,'SSSSF630729','BEGE',default,9),
                       ('Fiat','Tempra','1.6','AJC-1243',1998,'ABS29630B2B','BRANCO',default,9),
                       ('Fiat','Tipo','1.6','JJJ-1243',2002,'ABS2963CDE3','PRATA',default,9),
                       ('Kia Motors','Cerato','2.0','CEH-1943',2017,'ABS296ABCEA','BRANCO',default,10),
                       ('Hyunday','HB-20','1.6','HBV-1161',2020,'ABS296307SDF','BRANCO',default,11),
                       ('Chevrolet','Omega	','4.1','AAB-1443',2019,'ABS2963AEE3','PRETO',default,12),
                       ('Chevrolet','Blaser','4.0','BBA-3876',2001,'ABS296DFA29','AZUL',default,13)
               ;  

-- Inserindo Dados em Supplier
-- idSupplier - SocialName - Address - Contact - Phone - Active_supplier
    
  insert into supplier (SocialName,Address,Contact,Phone,Active_Supplier) values('General Motors do Brasil','Rua da Paz,28, Diadema - SP','Pedro Miguel','11-35879-2545',default),
														                        ('Ford do Brasil','Rua Santa Clara,765, São José dos Campos - SP','Celso de Melo','11-2589-1258',default),
                                                                                ('Fiat Automóveis','Avenida dos Estados,1000, São Paulo - SP','Carlos','11-7543-2000',default),
                                                                                ('Ferrari - Parts - Brazil','Rua da Consolação,456, Rio de Janeiro - RJ','Giorgio','21-3598-3456',default),
                                                                                ('Porch Motors Brazil','Avenida XV de Novembro, 129, Barueri-SP','João Miguel','11-5468-8954',default),
                                                                                ('Hyunday Tecnology Motors','Avenida 7 de Setembro, 29, Pouso Alegre - MG','Ricardinhjo','31-35879-2545',default),
                                                                                ('Kia Brazil','Avenida Tapajós, S/N, Manaus AM','Pedro Miguel','92-2569-1897',default),
                                                                                ('Citroem Motors','Rua dos Pássaros, 134, Londrina - PR','Silvia','43-4589-1896',default),
                                                                                ('Volkswagem Parts Brasil','Rodovia BR-277, 17897, São José dos Pinhais -PR','Hans Sheffer','41-9875-5687',default)
                                                                              ;    

-- Inserindo dados em Parts
-- PartNumber - Description_part - Quantity - Pvalue - PaIdSupplier

insert into parts (PartNumber,Description_part,Quantity,Pvalue,PaIdSupplier) values ('12S2549-10','Rolamento dianteiro Corsa', 50, 45.32,1),
																					('13S2549-11','Rolamento trazeiro Corsa', 55, 65.32,1),
																					('14S2549-12','Pastilha de freio corsa', 245, 60.25,1),
                                                                                    ('15S2549-13','Óleo Motor Corsa 1L', 600, 25.00,1),
                                                                                    ('16S2549-14','Filtro de Óleo Corsa', 200, 48.25,1),
                                                                                    ('17S2549-15','Filtro de Ar Corsa', 100, 35.18,1),
                                                                                    ('18S2549-16','Luz de Freio Corsa', 30, 12.00,1),
                                                                                    ('19S2549-17','Pivo roda dianteira ld direito Corsa', 35, 70.00,1),
                                                                                    ('10S2549-18','Pivo roda dianteira ld esquerdo Corsa', 42, 70.00,1),
                                                                                    ('11S2549-19','Rolamento dianteiro Onix', 100, 65.18,1),
                                                                                    ('12S2549-20','Rolamento trazeiro Onix', 100, 85.18,1),
																					('13S2549-21','Pastilha de freio Onix', 300, 90.32,1),
                                                                                    ('14S2549-22','Óleo Motor Onix 1L',1000,35.00,1),
                                                                                    ('15S2549-23','Filtro de Óleo Onix', 80, 68.25,1),
                                                                                    ('16S2549-24','Filtro de Ar Onix', 25, 45.18,1),
                                                                                    ('17S2549-25','Luz de Freio Onix', 45, 12.00,1),
                                                                                    ('18S2549-26','Pivo roda dianteira ld direito Onix', 70, 62.30,1),
                                                                                    ('19S2549-27','Pivo roda dianteira ld esquerdo Onix', 60, 62.30,1),
                                                                                    ('10S2549-28','Rolamento dianteiro Omega', 95, 35.32,1),
                                                                                    ('1D12549-29','Rolamento trazeiro Omega', 93, 55.32,1),
																					('1D22549-30','Pastilha de freio Omega', 30, 40.25,1),
                                                                                    ('1D32549-31','Óleo Motor Omega 1L', 100, 12.50,1),
                                                                                    ('1D42549-32','Filtro de Óleo Omega', 25, 28.25,1),
                                                                                    ('1D52549-33','Filtro de Ar Omega', 10, 15.18,1),
                                                                                    ('1D62549-34','Luz de Freio Omega', 10, 12.00,1),
                                                                                    ('1D72549-35','Pivo roda dianteira ld direito Omega', 10, 50.00,1),
                                                                                    ('1D82549-36','Pivo roda dianteira ld esquerdo Omega', 10, 50.00,1),
                                                                                    ('1D92549-37','Rolamento dianteiro Blazer', 30, 45.32,1),
                                                                                    ('1D02549-38','Rolamento trazeiro Blazer', 27, 65.32,1),
																					('1DS1549-39','Pastilha de freio Blazer', 45, 60.25,1),
                                                                                    ('1DS1549-40','Óleo Motor Blaser 1L', 1000, 12.50,1),
                                                                                    ('1DS3549-41','Filtro de Óleo Blazer', 42, 28.25,1),
                                                                                    ('1DS4549-42','Filtro de Ar Blazer', 15, 15.18,1),
                                                                                    ('1DS5549-43','Luz de Freio Blazer', 28, 12.00,1),
                                                                                    ('1DS6549-44','Pivo roda dianteira ld direito Blazer', 32, 50.00,1),
                                                                                    ('1DS7549-45','Pivo roda dianteira ld esquerdo Blazer', 32, 50.00,1),
                                                                                    ('1DS8549-10','Rolamento dianteiro Tipo', 102, 55.17,3),
                                                                                    ('1DS9549-11','Rolamento trazeiro Tipo', 87, 75.17,3),
                                                                                    ('1DS0549-12','Pastilha de freio Tipo', 45, 72.23,3),
                                                                                    ('1DS2149-13','Óleo Motor Tipo', 200, 45.00,3),
                                                                                    ('1DS2249-14','Filtro de Óleo Tipo', 68, 48.25,3),
                                                                                    ('1DS2349-15','Filtro de Ar Tipo', 42, 35.18,3),
                                                                                    ('1DS2449-16','Luz de Freio Tipo', 26, 12.00,3),
                                                                                    ('1DS2549-17','Pivo roda dianteira ld direito Tipo', 33, 55.00,3),
                                                                                    ('1DS2649-18','Pivo roda dianteira ld esquerdo Tipo', 29, 55.00,3),
                                                                                    ('1DS2749-19','Rolamento dianteiro Tempra', 40, 85.32,3),
                                                                                    ('1DS2849-20','Rolamento trazeiro Tempra', 36, 105.32,3),
																					('1DS2949-21','Pastilha de freio Tempra', 12, 52.25,3),
                                                                                    ('1DS2049-22','Óleo Motor Tempra 1L', 60, 14.25,3),
                                                                                    ('1DS2519-23','Filtro de Óleo Tempra', 20, 28.25,3),
                                                                                    ('1DS2529-24','Filtro de Ar Tempra', 8, 15.18,3),
                                                                                    ('1DS2539-25','Luz de Freio Tempra', 16, 15.00,3),
                                                                                    ('1DS2549-26','Pivo roda dianteira ld direito Tempra', 21, 62.00,3),
                                                                                    ('1DS2559-27','Pivo roda dianteira ld esquerdo Tempra', 21, 62.00,3),
                                                                                    ('1DS2569-28','Rolamento dianteiro Jeep Cherokee', 5, 132.32,3),
                                                                                    ('1DS2579-29','Rolamento trazeiro Jeep Cherokee', 5, 152.32,3),
																					('1DS2589-30','Pastilha de freio Jeep Cherokee', 10, 285.25,3),
                                                                                    ('1DS2599-31','Óleo Motor Jeep Cherokee 1L', 40, 98.10,3),
                                                                                    ('1DS2509-32','Filtro de Óleo Jeep Cherokee', 10, 125.14,3),
                                                                                    ('1DS2541-33','Filtro de Ar Jeep Cherokee', 5, 65.18,3),
                                                                                    ('1DS2542-34','Luz de Freio Jeep Cherokee', 4, 45.00,3),
                                                                                    ('1DS2543-35','Pivo roda dianteira ld direito Jeep Cherokee', 6, 185.00,3),
                                                                                    ('1DS2544-36','Pivo roda dianteira ld esquerdo Jeep Cherokee', 6, 185.00,3),
                                                                                    ('1DS2545-10','Rolamento dianteiro Kia Cerato', 30, 95.12,7),
                                                                                    ('1DS2546-11','Rolamento trazeiro Kia Cerato', 30, 115.32,7),
																					('1DS2547-12','Pastilha de freio Kia Cerato', 32, 142.25,7),
                                                                                    ('1DS2548-13','Óleo Motor Kia Cerato', 258, 78.10,7),
                                                                                    ('1DS2549-14','Filtro de Óleo Kia Cerato', 65, 68.25,7),
                                                                                    ('1DS2540-15','Filtro de Ar Kia Cerato', 28, 45.18,7),
                                                                                    ('1DS2549-16','Luz de Freio Kia Cerato', 19, 25.00,7),
                                                                                    ('1DS2549-17','Pivo roda dianteira ld direito Kia Cerato', 14, 85.00,7),
                                                                                    ('1DS2549-18','Pivo roda dianteira ld esquerdo Kia Cerato', 14, 85.00,7),
                                                                                    ('1DS2549-10','Rolamento dianteiro HB20', 60, 62.12,6),
                                                                                    ('1DS2549-11','Rolamento trazeiro HB20', 58, 82.32,6),
																					('1DS2549-12','Pastilha de freio HB20', 30, 65.25,6),
                                                                                    ('1DS2549-13','Óleo Motor HB20', 400, 56.17,6),
                                                                                    ('1DS2549-14','Filtro de Óleo HB20', 100, 43.00,6),
                                                                                    ('1DS2549-15','Filtro de Ar HB20', 38, 25.16,6),
                                                                                    ('1DS2549-16','Luz de Freio HB20', 32, 18.00,6),
                                                                                    ('1DS2549-17','Pivo roda dianteira ld direito HB20', 49, 69.00,6),
                                                                                    ('1DS2549-18','Pivo roda dianteira ld esquerdo HB20', 49, 69.00,6),
                                                                                    ('1DS2549-10','Rolamento dianteiro Ferrari', 2, 2145.27,4),
                                                                                    ('1DS2549-11','Rolamento trazeiro Ferrari', 2, 2745.27,4),
																					('1DS2549-12','Pastilha de freio Ferrari', 6, 2380.19,4),
                                                                                    ('1DS2549-13','Óleo Motor Ferrari', 24, 150,4),
                                                                                    ('1DS2549-14','Filtro de Óleo Ferrari', 2, 748.35,4),
                                                                                    ('1DS2549-15','Filtro de Ar Ferrari', 2, 428.93,4),
                                                                                    ('1DS2549-16','Luz de Freio Ferrari', 4, 280,4),
                                                                                    ('1DS2549-10','Pivo roda dianteira ld direito Porche Cayenee', 8, 485.00,5),
                                                                                    ('ADS2549-11','Pivo roda dianteira ld esquerdo Porche Cayenee', 8, 485.00,5),
                                                                                    ('BDS2549-12','Rolamento dianteiro Porche Cayenee', 16, 1238.27,5),
                                                                                    ('CDS2549-13','Rolamento trazeiro Porche Cayenee', 16, 925.39,5),
																					('DDS2549-14','Pastilha de freio Porche Cayenee', 6, 742.11,5),
                                                                                    ('EDS2549-15','Óleo Motor Porche Cayenee', 48, 150,5),
                                                                                    ('FDS2549-16','Filtro de Óleo Porche Cayenee', 7, 388.35,5),
                                                                                    ('GDS2549-17','Filtro de Ar Porche Cayenee', 3, 228.93,5),
                                                                                    ('HDS2549-18','Luz de Freio Porche Cayenee', 4, 320,5),
                                                                                    ('IDS2549-19','Pivo roda dianteira ld direito Porche Cayenee', 8, 685.00,5),
                                                                                    ('JDS2549-20','Pivo roda dianteira ld esquerdo Porche Cayenee', 8, 685.00,5),
                                                                                    ('KDS2549-10','Rolamento dianteiro Citroem C3', 30, 98.00,8),
                                                                                    ('LDS2549-11','Rolamento trazeiro Citroem C3', 30, 118.00,8),
																					('MDS2549-12','Pastilha de freio Citroem C3', 45, 74.20,8),
                                                                                    ('NDS2549-13','Óleo Motor Citroem C3', 28, 80,8),
                                                                                    ('ODS2549-14','Filtro de Óleo Porche Citroem C3', 7, 65.25,8),
                                                                                    ('PDS2549-15','Filtro de Ar Citroem C3', 5, 49.22,8),
                                                                                    ('QDS2549-16','Luz de Freio  Citroem C3', 22, 32.00,8),
                                                                                    ('RDS2549-17','Pivo roda dianteira ld direito Citroem C3', 24, 85.00,8),
                                                                                    ('TDS2549-18','Pivo roda dianteira ld esquerdo Citroem C3', 21, 85.00,8),
                                                                                    ('UDS2549-10','Rolamento dianteiro Ford Focus', 20, 85.00,2),
                                                                                    ('VDS2549-11','Rolamento trazeiro Ford Focus', 20, 105.00,2),
																					('WDS2549-12','Pastilha de freio Ford Focus', 12, 65.10,2),
                                                                                    ('XDS2549-13','Óleo Motor Ford Focus', 45, 32,2),
                                                                                    ('YDS2549-14','Filtro de Óleo Ford Focus', 10, 55.25,2),
                                                                                    ('ZDS2549-15','Filtro de Ar Ford Focus', 6, 36.17,2),
                                                                                    ('9DS2549-16','Luz de Freio  Ford Focus', 18, 12.00,2),
                                                                                    ('8DS2549-17','Pivo roda dianteira ld direito Ford Focus', 32, 69.00,2),
                                                                                    ('7DS2549-18','Pivo roda dianteira ld esquerdo Ford Focus', 32, 69.00,2),
                                                                                    ('6DS2549-10','Rolamento dianteiro VW - Gol', 60, 45.00,9),
                                                                                    ('5DS2549-11','Rolamento trazeiro VW - Gol', 60, 65.00,9),
																					('4DS2549-12','Pastilha de freio VW - Gol', 200, 45.10,9),
                                                                                    ('3DS2549-13','Óleo Motor VW - Gol', 1000, 22,9),
                                                                                    ('2DS2549-14','Filtro de Óleo VW - Gol', 300, 32.25,9),
                                                                                    ('0DS2549-15','Filtro de Ar VW - Gol', 45, 27.10,9),
                                                                                    ('19S2549-16','Luz de Freio  VW - Gol', 90, 12.00,9),
                                                                                    ('18S2549-17','Pivo roda dianteira ld direito VW - Gol', 140, 48.00,9),
                                                                                    ('17S2549-18','Pivo roda dianteira ld esquerdo VW - Gol', 136, 48.00,9),
                                                                                    ('16S2549-19','Rolamento dianteiro VW - Fox', 28, 45.00,9),
                                                                                    ('15S2549-20','Rolamento trazeiro VW - Fox', 28, 65.00,9),
																					('14S2549-21','Pastilha de freio VW - Fox', 45, 45.10,9),
                                                                                    ('13S2549-22','Óleo Motor VW - Fox', 1000, 22,9),
                                                                                    ('12S2549-23','Filtro de Óleo VW - Fox', 300, 32.25,9),
                                                                                    ('11S2549-24','Filtro de Ar VW - Fox', 49, 27.10,9),
                                                                                    ('1D92549-25','Luz de Freio  VW - Fox', 89, 12.00,9),
                                                                                    ('1D82549-26','Pivo roda dianteira ld direito VW - Fox', 80, 48.00,9),
                                                                                    ('1D72549-27','Pivo roda dianteira ld esquerdo VW - Fox', 87, 48.00,9),
                                                                                    ('1DS6549-28','Rolamento dianteiro VW - Passat', 32, 75.00,9),
                                                                                    ('1DS5549-29','Rolamento trazeiro VW - Passat', 40, 75.00,9),
																					('1D42549-30','Pastilha de freio VW - Passat', 30, 95.10,9),
                                                                                    ('1D32549-31','Óleo Motor VW - Passat', 300, 42,9),
                                                                                    ('1DS2549-32','Filtro de Óleo VW - Passat', 25, 62.15,9),
                                                                                    ('1DS1549-33','Filtro de Ar VW - Passat', 14, 42.10,9),
                                                                                    ('1DS0549-34','Luz de Freio  VW - Passat', 14, 98.00,9),
                                                                                    ('1DS2548-35','Pivo roda dianteira ld direito VW - Passat', 25, 128.00,9),
                                                                                    ('1DS2547-36','Pivo roda dianteira ld esquerdo VW - Passat', 29, 128.00,9),
                                                                                    ('1DS2546-37','Rolamento dianteiro VW - Audi-A3', 6, 75.00,9),
                                                                                    ('1DS2545-38','Rolamento trazeiro VW - Audi-A3', 8, 75.00,9),
																					('1DS2544-39','Pastilha de freio VW - Audi-A3', 11, 95.10,9),
                                                                                    ('1DS2543-40','Óleo Motor VW - Audi-A3', 25, 42,9),
                                                                                    ('1DS2542-41','Filtro de Óleo VW - Audi-A3', 5, 62.15,9),
                                                                                    ('1DS2541-42','Filtro de Ar VVW - Audi-A3', 4, 42.10,9),
                                                                                    ('1DS2540-43','Luz de Freio  VW - Audi-A3', 8, 98.00,9),
                                                                                    ('1DS254A-44','Pivo roda dianteira ld direito VW - Audi-A3', 7, 128.00,9),
                                                                                    ('1DS254B-45','Pivo roda dianteira ld esquerdo VW - Audi-A3', 4, 128.00,9)
                                                                                    
;                                                                                    

-- Inserindo dados de Employee
-- Fname, Address - Phone, Admission_date - Demission_date - Salary - Active_employee - employeeRole


insert into employee (Fname, Address, Phone, Admission_date, Demission_Date, Salary, Active_Employee, employeeRole)
							values ('João Marcelo','Rua da consolação, 79','21-9748-2589','2019-01-25',null,3545.27,True,'Gerente'),
								   ('Ricardo Souza','Avenida Sete de Setembro, 1450','21-9854-5621','2019-01-28',null,2789.25,True,'Mecânico'),
                                   ('Pedro Ricardo','Rua João Gava, 4567','21-8754-3541','2019-12-12',null,2789.25,True,'Mecânico'),
                                   ('José Carlos','Rua 3 casa 27 - Bairro do Limão','21-9785-7542','2021-06-19',null,1436.18,True,'Auxiliar mecânico')
							;
 
-- Inserindo dados em OrderService
-- EntryDate - Departure - Solution - Reported_defect - labor - OidEmployee - OidClient - OidPayment  FKs(OidEmployee - idEmployee) and (OidClient - idClient)

insert into OrderService (EntryDate,Departure,Reported_defect,Solution,labor,OidEmployee,OidClient,OidVehicle) 
			values('2019-02-03',null,'Freios com barulho','Revisão de freios e troca de óleo',280.00,2,1,1),
				  ('2019-02-03',null,'Troca de óleo','Realizar troca de óleo',45.00,2,9,10),
                  ('2019-02-04',null,'Carro puxando para o lado','Terminais de Suspensão defeituosos',72.00,3,12,16),
                  ('2019-02-04',null,'Fazer Revisão completa','Revisão total do veículo',295.00,2,4,4)
            ;

-- Inserindo dados em OrderParts
-- idParts - idORderService - Quantity

-- Peças Ordem de Serviço Onix
insert into OrderParts (idParts,IdORderService,Quantity) 
	values (10,1,2),
		   (12,1,1),
           (13,1,1),
           (14,1,1),
           (17,1,1);
;           

-- Peças Ordem de serviço Fox
insert into OrderParts (idParts,IdORderService,Quantity) 
	values (130,2,4),
		   (131,2,1),
           (132,2,1)
;  
       
-- Peças Ordem de Serviço Omega
insert into OrderParts (idParts,IdORderService,Quantity) 
	values (26,3,1),
		   (27,3,1),
           (19,3,2)
;     
-- Peças Ordem de Serviço Ferrari
insert into OrderParts (idParts,IdORderService,Quantity) 
	values (82,4,1),
		   (83,4,1),
           (84,4,1),
           (85,4,12),
           (86,4,1),
           (87,4,1)
;             
           
-- Inserindo dados em Payment
-- PayStatus('Paid','Pending') - PayType('Cartão de Crédito','Cartão de Débito','PIX' - default PIX) - PValue - PidOrderService

insert into payment (PayStatus,PayTYpe,PValue,PidOrderService)
		values('Paid',default,666.23,1),
			  ('Paid','Cartão de Crédito',192.35,2),
              ('Paid',default,242.64,3),
              ('Pending','Cartão de Crédito',10543.01,4)
;

-- Criando as Queries para a Database workshop

show tables;
-- Clientes Renomeando as colunas
select concat(Fname,' ',Minit,'. ',Lname) as 'Name', cpf as CPF, Address, Phone from clients;

-- Ordenando Clientes por Ordem Alfabética 
select concat(Fname,' ',Minit,'. ',Lname) as 'Name', cpf as CPF, Address, Phone 
from clients 
Order by Name;

-- Lista de Funcionários

select Fname, Address, Phone, Salary, employeeRole as 'Role' from employee;

-- Quantidade de funcionarios Cadastrado em cada função
select count(*) as Quantity, employeeRole as Role from employee
	group by Role;
    
-- Funcionário com o maior Salário
select Fname as 'Name', Address, Phone, Salary, employeeRole as 'Role' from employee
where Salary = (select max(Salary) from employee);

-- Funcionário com o menor Salário
select Fname as 'Name', Address, Phone, Salary, employeeRole as 'Role' from employee
where Salary = (select min(Salary) from employee);

-- Funcionário com o Salário entre R$2.000,00 e 3.000,00
select Fname as 'Name', Address, Phone, Salary, employeeRole as 'Role' from employee
where Salary between 2000 and 3000;

-- Relação de items de uma ordem de serviço 

select distinct * from parts p 
	inner join orderParts o 
    on p.idParts = o.idParts
    where idOrderService = 1
    ;

-- Relação de ORdens de Serviço com nome do cliente e do veículo

select idOrderService as 'Order', concat(Fname,' ',Minit,'. ',Lname) 
	as 'Name', concat(Manufacturer,' ',Model,' - ',VEngine) 
    as Auto, color as Color, Ident_Plate as 'Ident Plate', 
    Manuf_Year as 'Year', Reported_defect as 'Reported defect',
    Solution as Solution
    from orderservice
		inner join vehicle
		on OidVehicle = idVehicle
		inner join clients
		on OidClient = idClient
	;
 
-- Total de Peças Cadastradas por Fornecedor, usando Having Statement

select SocialName, count(*) as 'Parts by Supplier' from parts
	inner join supplier
	on PaidSupplier = idSupplier
    group by PaidSupplier
    having PaidSupplier >=4
;

-- Relação de Pagamentos
select * from payment;

-- Relação de Fornecedores
select * from supplier;
-- Relação de Veículos
select * from vehicle;


 

