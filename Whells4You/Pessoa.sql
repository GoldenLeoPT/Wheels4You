-- database designer (todas as permissões) + 1 perfil à escolha
/* Criar uma pessoa dataadmin/administrador */
CREATE USER 'funcadmin'@'localhost' IDENTIFIED BY 'funcadmin';
-- Dar todos os previlégios
GRANT ALL PRIVILEGES ON auto4you.* TO 'funcadmin'@'localhost';
CREATE USER 'func'@'localhost' IDENTIFIED BY 'func';
GRANT SELECT ON auto4you.cliente to 'func'@'localhost';
GRANT SELECT ON auto4you.vehicle to 'func'@'localhost';
GRANT SELECT ON auto4you.repairs to 'func'@'localhost';
GRANT SELECT ON auto4you.parts to 'func'@'localhost';
GRANT SELECT ON auto4you.fuel to 'func'@'localhost';

/* DISCLAIMER ,All of the previous code provided was made by Leandro Martins, GitHub: github.com/GoldenLeoPT */