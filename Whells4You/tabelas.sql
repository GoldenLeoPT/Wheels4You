-- Criação da base de dados e as suas respetivas tabelas
/* CRIAR BASE DE DADOS */
DROP DATABASE IF EXISTS auto4you;
CREATE DATABASE auto4you;
USE auto4you;

/* Criação de tabelas */
CREATE TABLE Pessoa(
	ID INT UNSIGNED NOT NULL AUTO_INCREMENT,
	Nome varchar(60) NOT NULL,
	DtaNasc date not null,
    Idade INT NOT NULL,
    Funct varchar(60) NOT NULL,
	PRIMARY KEY (ID)
) ENGINE=InnoDB;

CREATE TABLE Cliente(
	IDcliente INT UNSIGNED NOT NULL AUTO_INCREMENT,
    tele VARCHAR(10) NOT NULL,
	NIF INT NOT NULL,
    Morada varchar(60),
    mail varchar(60),
    repairs_r INT,
    Vehicles INT,
    PRIMARY KEY (IDcliente)
) ENGINE=InnoDB;

CREATE TABLE Func(
	IDfun INT UNSIGNED NOT NULL AUTO_INCREMENT,
    tele VARCHAR(10) not null, 	
    NIF INT NOT NULL,
    Morada varchar(60),
    mail varchar(60),
    repairs_r INT,
	primary key (IDfun)
) ENGINE=InnoDB;

CREATE TABLE Vehicle(
    Matricula char(6) NOT NULL,
    Marca VARCHAR(60) NOT NULL,
    Modelo VARCHAR(60) NOT NULL,
    AnoFabri year not null,
    cilindrada INT,
    HP INT,
    PRIMARY KEY (Matricula)
) ENGINE=INNODB;

CREATE TABLE Parts(
	IDautopart INT UNSIGNED NOT NULL AUTO_INCREMENT,
    price float NOT NULL, 
    Segmento varchar(35) NOT NULL,
    primary key (IDautopart)
) ENGINE=InnoDB;

CREATE TABLE Repairs(
	IDrepair INT UNSIGNED NOT NULL AUTO_INCREMENT,
    IDfun INT UNSIGNED NOT NULL,
    ID INT UNSIGNED NOT NULL,
    IDautopart INT UNSIGNED NOT NULL,
    PRIMARY KEY (IDrepair),
    FOREIGN KEY (IDfun) REFERENCES Func(IDfun),
    FOREIGN KEY (ID) REFERENCES Pessoa(ID),
    FOREIGN KEY (IDautopart) REFERENCES Parts(IDautopart)
) ENGINE=InnoDB;

CREATE TABLE Fuel(
	IDcomb INT UNSIGNED NOT NULL AUTO_INCREMENT,
    Descriptionn VARCHAR(60) NOT NULL,
	PRIMARY KEY (IDcomb)
) ENGINE=InnoDB;

/* DISCLAIMER ,All of the previous code provided was made by Leandro Martins, GitHub: github.com/GoldenLeoPT */
