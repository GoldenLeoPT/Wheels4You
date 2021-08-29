-- SELECT's das tabelas
-- 2 grupos (GROUP BY) 
-- 2 subconsultas
USE auto4you;

/* Mostrar todos os carros da tabela*/
CREATE OR REPLACE VIEW v_search_vehicles AS
SELECT
v.Matricula,
v.Marca AS "Fabricante",
v.Modelo AS "Modelo",
v.AnoFabri AS "Ano de Fabrico",
v.HP AS "Potencia"
FROM vehicle v
ORDER BY 2;

/* Mostrar tipos de combustivel*/
CREATE OR REPLACE VIEW v_show_fuel AS
SELECT 
v.Descriptionn AS "Combustível"
FROM fuel v
ORDER BY 1;

/* Mostrar todos os clientes*/
CREATE OR REPLACE VIEW v_search_clientes AS
SELECT
p.Nome AS "Nome",
p.Idade AS "Idade",
p.DtaNasc AS "Data de nascimento",
c.tele AS "Telemóvel",
c.NIF AS "Numero de indentificação fiscal",
c.Morada AS "Morada",
c.mail AS "Mail",
c.repairs_r AS "Reparações realizadas",
c.Vehicles AS "Veículos"
FROM pessoa p JOIN cliente c ON p.ID = c.IDcliente
ORDER BY 1 DESC;

/*Mostrar Peças*/
CREATE OR REPLACE VIEW v_show_parts AS
SELECT
p.price AS "Preço",
p.Segmento AS "Peça"
FROM parts p  
ORDER BY 2;

/* Mostrar todos os funcionarios*/
CREATE OR REPLACE VIEW v_search_func AS
SELECT
p.Nome AS "Nome",
p.Idade AS "Idade",
p.DtaNasc AS "Data de nascimento",
f.tele AS "Telemóvel",
f.NIF AS "Numero de indentificação fiscal",
f.Morada AS "Morada",
f.mail AS "Mail",
f.repairs_r AS "Reparações realizadas"
FROM pessoa p JOIN func f ON p.ID = f.IDfun
ORDER BY 1 DESC;

/* Mostrar todos os funcionarios*/
CREATE OR REPLACE VIEW v_show_repairs AS
SELECT
r.IDrepair AS "Reparação numero",
r.IDfun AS "Funcionario numero",
r.ID,
r.IDautopart AS "peça numero"
FROM repairs r
ORDER BY 1 DESC;

CREATE OR REPLACE VIEW v_show_carros AS
SELECT
c.Vehicles AS "Veículos"
FROM cliente c
Order BY 1 DESC;

/* DISCLAIMER ,All of the previous code provided was made by Leandro Martins, GitHub: github.com/GoldenLeoPT */