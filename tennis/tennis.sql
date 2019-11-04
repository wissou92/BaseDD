/*------------------------------------------------------------------------
--------------------------CREATE----------------------------------------
------------------------------------------------------------------------

--- 
--- Table Joueurs
---
*/
create table Joueurs (
	nom varchar(30) not null,
	prenom varchar(30) not null,
	age int(3) not null,
	nationalite varchar(30) not null,
	primary key (nom)
);
/*
---
--- Table Sponsor
--- 
*/
create table Sponsor (
	nom varchar(30) not null,
	lieutournoi varchar(30) not null,
	annee int(3) not null,
	adresse varchar(30) not null,
	montant int(5) not null,
	primary key (nom, lieutournoi, annee)
);
/*
---
--- Table Rencontre
--- 
*/
create table Rencontre (
	nomgagnant varchar(30) not null,
	nomperdant varchar(30) not null, 
	lieutournoi varchar(30) not null,
	annee int (3) not null,
	score varchar(15) not null,
	primary key (nomgagnant, nomperdant, lieutournoi, annee),
	foreign key (nomgagnant) references Joueurs(nom),
	foreign key (nomperdant) references Joueurs(nom)
);
/*
---
--- Table Gain
---
*/
create table Gain (
	nomjoueur varchar(30) not null,
	nomsponsor varchar(30) not null,
	lieutournoi varchar(30) not null,
	annee int(3) not null,
	rang int(3) not null,
	prime int(5) not null,
	primary key (nomjoueur, lieutournoi, annee),
	foreign key (nomsponsor, lieutournoi, annee) references Sponsor (nom, lieutournoi, annee)
);
/*
------------------------------------------------------------------------
------------------------------INSERTION---------------------------------
------------------------------------------------------------------------

---
--- Données Joueurs
---
*/
insert into Joueurs values 
		('Federer','Roger',34,'suisse'),
		('Nadal','Raphael',33,'espagnol'),
		('Djokovic','Novak',32,'serbe'),
		('Murray','Andy',32,'ecossais'),
		('Soederling','Robin',35,'suedois'),
		('Berdych','Tomas',34,'tcheque');
/*
---
--- Données Rencontre
---

---
--- 2011
---
*/
insert into Rencontre values
		('Djokovic','Murray','Australie', 2011,'6/4-6/2-6/3'),
		('Nadal','Federer','Roland-Garros',2011,'7/5-7/6-5/7-6/1'),
		('Djokovic','Nadal','Wimbledon',2011,'6/4-6/1-1/6-6/3'),
		('Djokovic','Nadal','Flushing Meadows',2011,'6/2-6/4-6/7-6/1');
/*	
---
--- 2010
---
*/
insert into Rencontre values 
		('Federer','Murray','Australie',2010,'6/3-6/4-7/6'),
		('Nadal','Soederling','Roland-Garros',2010,'6/4-6/2-6/4'),
		('Nadal','Berdych','Wimbledon',2010,'6/3-7/5-6/4'),
		('Nadal','Djokovic','Flushing Meadows',2010,'6/4-5/7-6/4-6/2');
/*
---
--- Données Gain
---	
*/
		
		
		
		
