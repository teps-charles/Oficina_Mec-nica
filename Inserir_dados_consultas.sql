-- Usar a tabela oficina
use oficina;

-- inserção de dados e queries
-- Fname, Lname, CPF, Address
insert into clients(Fname, Lname, CPF, Address)
       values('Tommy', 'Anderson', 20442140622, 'Rua esperança 33,SP'),
             ('Sandra', 'Ilhabela', 81707670511, 'Rua dagiesta 126,SP'),
             ('Emily', 'Dos Santos', 60187054323, 'Rua ipitininga 88,SP'),
             ('Helena', 'Coimbra', 31082153371, 'Rua formosa 45,SP'),
             ('Thiago', 'Da Silva', 19293780416, 'Rua senhoras 102,SP'),
             ('evelyn', 'Perreira', 6042654311, 'Rua genebre 505,SP'),
             ('Estevão', 'ignasio', 40317084261, 'Rua simone 33,SP');
             
-- idMechanics, Fname, Mname, Speciality			
insert into mechanics(Fname, Mname, Speciality)
	   values('Andrew', 'Scholf', 'Auto body technician'),
             ('Fernando', 'gutierre', 'Automative mechanic'),
             ('Fred', 'Casidy', 'Diesel mechanic'),
             ('André', 'Murilho', 'Small engine mechanic');
             
-- OrderDate, Price, OrderStatus
insert into orderservices(OrderDate, Price, OrderStatus) 
       values('2020-12-18', 2000, default),
             ('2020-12-11', 3500, default),
             ('2021-03-09', 2500, default),
             ('2020-05-10', 1100, 'Confirmado'),
             ('2020-07-01', 4300, 'Confirmado'),
             ('2021-05-22', 3000, 'Confirmado'),
             ('2020-02-15', 2250, default);
 
-- Descrição, idClientService
insert into services(Descrição, idClientService) 
       values('Repair broken parts', 1),   
			 ('Engine maintenance', 2),
             ('Welding replacement', 3),
             ('Painting restored', 4),
             ('Patching minor body damage', 5),
             ('Disassembling engines', 6),
             ('Replacing fulids & tyres', 7);
             
-- Sparepart_type, quantity
insert into spareparts(Sparepart_type, Quantity)
       values('Brakes and brake pads', 32),
             ('Tires and wheels',24),
             ('Timing belts and spark plugs', 14),
             ('Batteries and radiator', 8),
             ('Oil filters and air filters',10),
             ('Fuel pumps', 16),
             ('Shock absorbers', 12);
             
-- idServiceOrderServ, idOrderO
insert into serviceorderserv(idServiceOrderServ, idOrderO)
       values(1,1),
             (2,2),
             (3,3),
             (4,4),
             (5,5),
             (6,6),
             (7,7);             
             
-- idPartsOrder, idPartsrderType
insert into partsorder(idPartsOrder, idPartsOrderType) 
       values(1,1),
             (2,2),
             (3,3),
             (4,4),
             (5,5),
             (6,6),
             (7,7); 
             
-- idServResponsible, idMechanicSpeciality             
insert into servresponsible(idServResponsible, idMechanicSpeciality)
       values(1,1),
             (2,2),
             (3,3),
             (4,4),
             (5,1),
             (6,3),
             (7,4);             
             
-- Queries para consultas

select idServiceOrderServ, idOrderO from serviceorderserv;
select Sparepart_type, Quantity from spareparts;

-- Quantas especializações a oficina tem?
select count(*) from mechanics;

             