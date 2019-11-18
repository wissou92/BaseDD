/*///////////////////////////////////////////////////////////////
/// SE CONNECTER EN ROOT : sudo mysql -u root -p
/// CREER UTILISATEUR : create user 'root'@'localhost' identified by 'password'
/// DONNER LES DROITS : grant all on * . * to 'root'@'localost'
/// flush privileges
////////////////////////////////////////////////////////////////
*/


/*
---
--- Nom des Joueurs ayant joué un match
---
*/
select J.nom
from Joueurs J
where exists(select *
			from rencontre R
			where (J.nom = R.nomgagnant or J.nom = R.nomperdant)
				and R.lieutournoi = 'Wimbledon'
			);

/*
---
--- Joueurs ayant gagné tous leur match
---
*/
select distinct nomgagnant
from Rencontre
where nomgagnant not in ( select nomperdant
						  from Rencontre
						);
/*
---
---	Nom des Joueurs ayant touché une prime de + 1 000 000$
---
*/
select ga.nomjoueur, ga.lieutournoi, ga.annee, SUM(ga.prime) as somme
from Gain ga
group by ga.nomjoueur, ga.lieutournoi, ga.annee
having SUM(ga.prime)>=1 000 000;

/*
---
--- Nombre de match total joués a l'US open
---
*/
select count(R.lieutournoi) as nbmatchs
from Rencontres R
where R.lieutournoi = 'US open';

/*
---
--- Gain total de nadal
---
*/
select sum(ga.prime) as gaintotal
from Gain ga
where ga.nomjoueur = 'Nadal';

/*
---
--- nom et gain des joueurs ayant touchés plus de 2 000 000
---
*/
select ga.nomjoueur, sum(ga.prime) as gaintotal
from Gain ga
group by ga.nomjoueur
having sum(ga.prime) >= 2 000 000;

/*
---
--- noms et année des tournoi où somme versée par les sponsors supérieur aux gains
---
*/
select nom

/*
	beatrice.finance@uvsq.fr
*/

