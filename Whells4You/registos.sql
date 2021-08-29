-- Inserção de dados das tabelas(cada tabela tem pelo menos 4 registos ou linhas)
USE auto4you;

INSERT INTO Pessoa
(ID, Nome, DtaNasc, Idade, Funct)
VALUES
(1, 'Pedro Mendes', '1971-11-07','49','cliente'),
(2, 'Réjane', '1993-12-09','27','funcionário'),
(3, 'Ahyan Cantu', '1972/10/03','48','cliente'),
(4, 'Karl Ashley', '1973/09/04','47','cliente'),
(5, 'Fathima Larsen', '1971/08/05', '49','cliente'),
(6, 'Tyler Durden', '2001/01/07', '20','funcionário' ),
(7, 'Clement Bernard', '2000/04/07', '21','cliente'),
(8, 'Adriana Foreman', '1967/08/08', '53','cliente' );

INSERT INTO Cliente
(IDcliente, tele, NIF, Morada, mail, repairs_r, Vehicles)
values
(1,'8852641299', '211517565',null,null,null,null),
(2,'8501540218', '345866862',null,null,null,null),
(3,'3962149117', '647468746',null,null,null,null),
(4,'4456001521', '220173108',null,null,null,null),
(5,'8474509422', '653597095',null,null,null,null),
(6,'5688780310', '455991109',null,null,null,null);

INSERT INTO Func
(IDfun, tele, NIF, Morada, mail, repairs_r)
values
(1,'8701366737', '371770100',null,null,null),
(2,'5023053981', '850430533',null,null,null);

INSERT INTO Vehicle
(Matricula, Marca, Modelo, AnoFabri, cilindrada, HP)
VALUES
('JU91ZL', 'Dodge', 'Stratus', 2002,null,null),
('LJ64SM', 'Volkswagen', 'Fox', 1992,null,null),
('EL47FA', 'Ford', 'F-Series', 2011,null,null),
('GP10QB', 'Buick', 'Century', 1986,null,null),
('WY36ZW', 'Land Rover', 'Discovery', 1996,null,null),
('GT56KQ', 'Toyota', 'Sequoia', 2010,null,null),
('ID58IX', 'Dodge', 'Ram Wagon B350', 1992,null,null),
('OB44TO', 'Lexus', 'SC', 1998,null,null),
('UG78US', 'Lincoln', 'Navigator', 2000,null,null),
('QP59HQ', 'Hyundai', 'Azera', 2010,null,null),
('DN53SS', 'Audi', 'S4', 2004,null,null),
('LS00GX', 'Aston Martin', 'Virage', 2011,null,null),
('AP96BI', 'Mercedes-Benz', 'SLK-Class', 2009,null,null),
('OG12PX', 'Kia', 'Optima', 2010,null,null),
('EF67EZ', 'Lincoln', 'Mark VII', 1984,null,null);

INSERT INTO Parts
(IDautopart, price, Segmento)
VALUES
(1,110,'Rodas'),
(2,20,'Filtros'),
(3,310,'Sobrealimentação'),
(4,300,'Rodas');

INSERT INTO Repairs
(IDrepair, IDfun, ID, IDautopart)
VALUES
(1, 1, 2, 2),
(2, 2, 6, 2),
(3, 1, 2, 4),
(4, 1, 2, 4);

INSERT INTO Fuel
(IDcomb, Descriptionn)
VALUES
(1, 'Gasolina'),
(2, 'Diesel'),
(3, 'Eletrico'),
(4, 'Diesel'),
(5, 'Etanol');

/* DISCLAIMER ,All of the previous code provided was made by Leandro Martins, GitHub: github.com/GoldenLeoPT */