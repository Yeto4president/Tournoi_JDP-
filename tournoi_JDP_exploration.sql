use tournoi_gaming;
-- Sélection de tous les joueurs avec le nom 'Smith' et le prénom 'John'.
SELECT *
FROM Joueurs
WHERE Nom = 'Smith' AND Prénom = 'John';

-- Sélection de tous les jeux de la catégorie 'Stratégie'.
SELECT *
FROM Jeux
WHERE Catégorie = 'Stratégie';

-- Sélection de toutes les parties organisées dans le tournoi 'TOURNOI001'.
SELECT Parties.*
FROM Parties
JOIN organise ON Parties.Id_partie = organise.Id_partie
WHERE organise.Id_tournoi = 'TOURNOI001';

-- Sélection de l'identifiant du tournoi, du classement du joueur et du nom et prénom du joueur pour le tournoi 'TOURNOI001'.
SELECT Tournois.Id_tournoi, Tournois.Classement, Joueurs.Nom, Joueurs.Prénom
FROM Tournois
JOIN Joueurs ON Tournois.Id_joueur = Joueurs.Id_joueur
WHERE Tournois.Id_tournoi = 'TOURNOI001';

-- Sélection de tous les détails des joueurs participant à la première partie du tournoi 'TOURNOI001'.
SELECT Joueurs.*
FROM Joueurs
JOIN Participe ON Joueurs.Id_joueur = Participe.Id_joueur
JOIN Parties ON Participe.Id_partie = Parties.Id_partie
JOIN organise ON Parties.Id_partie = organise.Id_partie
WHERE organise.Id_tournoi = 'TOURNOI001' AND Parties.Id_partie = 'PARTIE01';

-- Sélection de tous les tournois avec un statut 'En attente'.
SELECT *
FROM Tournois
WHERE Statut = 'En attente';

-- Sélection de toutes les parties dans les tournois en attente.
SELECT Parties.*
FROM Parties
JOIN organise ON Parties.Id_partie = organise.Id_partie
JOIN Tournois ON organise.Id_tournoi = Tournois.Id_tournoi
WHERE Tournois.Statut = 'En attente';

-- Sélection de tous les jeux auxquels 'Smith John' a participé.
SELECT Jeux.*
FROM Jeux
JOIN Parties ON Jeux.Id_jeu = Parties.Id_jeu
JOIN Participe ON Parties.Id_partie = Participe.Id_partie
JOIN Joueurs ON Participe.Id_joueur = Joueurs.Id_joueur
WHERE Joueurs.Nom = 'Smith' AND Joueurs.Prénom = 'John';

-- Sélection du score moyen des parties pour le jeu 'Catan'.
SELECT AVG(Score) AS Score_moyen
FROM Parties
WHERE Nom_jeu = 'Catan';

-- Sélection du nom, prénom des joueurs et leur score pour le tournoi de coopération.
SELECT Joueurs.Nom, Joueurs.Prénom, Parties.Score
FROM Joueurs
JOIN Participe ON Joueurs.Id_joueur = Participe.Id_joueur
JOIN Parties ON Participe.Id_partie = Parties.Id_partie
JOIN organise ON Parties.Id_partie = organise.Id_partie
JOIN Tournois ON organise.Id_tournoi = Tournois.Id_tournoi
WHERE Tournois.Description = 'Tournoi de coopération';

-- Sélection de toutes les parties avec un score supérieur à 300.
SELECT *
FROM Parties
WHERE Score > 300;

-- Sélection de tous les jeux sortis avant 2000.
SELECT *
FROM Jeux
WHERE Année_de_sortie < '2000-01-01';

-- Sélection de tous les joueurs avec leur description de tournoi et leur classement.
SELECT Joueurs.*, Tournois.Description, Tournois.Classement
FROM Joueurs
JOIN Tournois ON Joueurs.Id_joueur = Tournois.Id_joueur
WHERE Tournois.Classement IN ('Premier', 'Deuxième', 'Troisième');