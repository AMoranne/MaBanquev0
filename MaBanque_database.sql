CREATE DATABASE MaBanque; 
USE MaBanque; 

-- CLIENTS(id_client, nom, prenom, adresse, mail, numero, login, password)
CREATE TABLE client(
	id_client INT PRIMARY KEY AUTO_INCREMENT, 
    nom VARCHAR(255), 
    prenom VARCHAR(255), 
    adresse VARCHAR(255),
    mail VARCHAR(255),
    numero VARCHAR(255),
    login VARCHAR(255),
    password VARCHAR(255)
);

-- CONSEILLER(id_conseiller, nom, prenom, adresse, mail, numero, login, password)
CREATE TABLE conseiller(
	id_conseiller INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255), 
    prenom VARCHAR(255), 
    adresse VARCHAR(255),
    mail VARCHAR(255),
    numero VARCHAR(255),
    login VARCHAR(255),
    password VARCHAR(255)
);

-- ADMINISTRATEUR(id_administrateur, nom, prenom, adresse, mail, numero, login, password)
CREATE TABLE administrateur(
	id_administrateur INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255), 
    prenom VARCHAR(255), 
    adresse VARCHAR(255),
    mail VARCHAR(255),
    numero VARCHAR(255),
    login VARCHAR(255),
    password VARCHAR(255)
);

insert into administrateur (id_administrateur, nom,  prenom, adresse, mail, numero, login, password) values (id_administrateur, 'ToutPuissant', 'Admin', '17 Rue des Developpeurs', 'admin-tout-puissante@gmail.com', "999","admin","admin");

insert into conseiller (id_conseiller, nom,  prenom, adresse, mail, numero, login, password) values (id_conseiller, 'Nom1', 'Conseiller1', '1 Rue des Conseillers', 'conseiller1@gmail.com', "001","login1","password1");
insert into conseiller (id_conseiller, nom,  prenom, adresse, mail, numero, login, password) values (id_conseiller, 'Nom2', 'Conseiller2', '2 Rue des Conseillers', 'conseiller2@gmail.com', "002","login2","password2");
insert into conseiller (id_conseiller, nom,  prenom, adresse, mail, numero, login, password) values (id_conseiller, 'Nom3', 'Conseiller3', '3 Rue des Conseillers', 'conseiller3@gmail.com', "003","login3","password3");
insert into conseiller (id_conseiller, nom,  prenom, adresse, mail, numero, login, password) values (id_conseiller, 'Nom4', 'Conseiller4', '4 Rue des Conseillers', 'conseiller4@gmail.com', "004","login4","password4");