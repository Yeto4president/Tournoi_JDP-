use tournoi_gaming;
-- Insertion des joueurs avec leurs identifiants, noms et prénoms.

INSERT INTO Joueurs (Id_joueur, Nom, Prénom) VALUES
(1, 'Smith', 'John'),
(2, 'Johnson', 'Emily'),
(3, 'Garcia', 'Michael'),
(4, 'Martinez', 'Maria'),
(5, 'Brown', 'David'),
(6, 'Jones', 'Jessica'),
(7, 'Davis', 'Daniel'),
(8, 'Miller', 'Sophia'),
(9, 'Wilson', 'Andrew'),
(10, 'Taylor', 'Emma'),
(11, 'Anderson', 'Olivia'),
(12, 'Thomas', 'James'),
(13, 'Jackson', 'Isabella'),
(14, 'White', 'William'),
(15, 'Harris', 'Sophia'),
(16, 'Clark', 'Ethan'),
(17, 'Lewis', 'Ava'),
(18, 'Lee', 'Michael'),
(19, 'Walker', 'Charlotte'),
(20, 'Hall', 'Mason');
-- Insertion des jeux avec leurs noms, identifiants, années de sortie, éditeurs et catégories.

INSERT INTO Jeux (Nom_jeu, Id_jeu, Année_de_sortie, Editeur, Catégorie) VALUES
('Catan', 21, '1995-01-01', 'Klaus Teuber', 'Stratégie'),
('Puissance 4', 22, '1974-01-01', 'Milton Bradley', 'Puzzle'),
('Risk', 23, '1957-01-01', 'Albert Lamorisse', 'Stratégie'),
('Monopoly', 24, '1935-01-01', 'Hasbro', 'Familial'),
('Cluedo', 25, '1949-01-01', 'Anthony E. Pratt', 'Mystère'),
('Scrabble', 26, '1938-01-01', 'Alfred Butts', 'Mots'),
('7 Wonders', 27, '2010-01-01', 'Antoine Bauza', 'Stratégie'),
('Les Colons de Catane', 28, '1995-01-01', 'Klaus Teuber', 'Stratégie'),
('Dixit', 29, '2008-01-01', 'Jean-Louis Roubira', 'Familial'),
('Time’s Up!', 30, '1999-01-01', 'Peter Sarrett', 'Partie'),
('Carcassonne', 31, '2000-01-01', 'Klaus-Jürgen Wrede', 'Stratégie'),
('7 Wonders Duel', 32, '2015-01-01', 'Antoine Bauza', 'Stratégie'),
('Ticket to Ride', 33, '2004-01-01', 'Alan R. Moon', 'Familial'),
('Pandemic', 34, '2008-01-01', 'Matt Leacock', 'Coopératif'),
('Splendor', 35, '2014-01-01', 'Marc André', 'Stratégie'),
('Codenames', 36, '2015-01-01', 'Vlaada Chvátil', 'Mots'),
('Azul', 37, '2017-01-01', 'Michael Kiesling', 'Puzzle'),
('Terraforming Mars', 38, '2016-01-01', 'Jacob Fryxelius', 'Stratégie'),
('Small World', 39, '2009-01-01', 'Philippe Keyaerts', 'Fantasy'),
('L’Île interdite', 40, '2010-01-01', 'Matt Leacock', 'Coopératif');
-- Insertion des parties avec leurs identifiants, dates, heures, scores, noms de jeu et identifiants de jeu.

INSERT INTO Parties (Id_partie, Date_partie, Heure_partie, Score, Nom_jeu, Id_jeu) VALUES
('PARTIE01', '2024-03-15', '18:30:00', 250, 'Catan', 1),
('PARTIE02', '2024-03-16', '19:00:00', 150, 'Puissance 4', 2),
('PARTIE03', '2024-03-17', '20:00:00', 300, 'Risk', 3),
('PARTIE04', '2024-03-18', '15:00:00', 200, 'Monopoly', 4),
('PARTIE05', '2024-03-19', '14:30:00', 350, 'Cluedo', 5),
('PARTIE06', '2024-03-20', '17:45:00', 180, 'Scrabble', 6),
('PARTIE07', '2024-03-21', '16:20:00', 220, '7 Wonders', 7),
('PARTIE08', '2024-03-22', '19:30:00', 280, 'Les Colons de Catane', 8),
('PARTIE09', '2024-03-23', '18:00:00', 260, 'Dixit', 9),
('PARTIE10', '2024-03-24', '20:15:00', 320, 'Time’s Up!', 10),
('PARTIE11', '2024-03-25', '17:00:00', 240, 'Carcassonne', 11),
('PARTIE12', '2024-03-26', '19:45:00', 270, '7 Wonders Duel', 12),
('PARTIE13', '2024-03-27', '16:30:00', 290, 'Ticket to Ride', 13),
('PARTIE14', '2024-03-28', '18:45:00', 310, 'Pandemic', 14),
('PARTIE15', '2024-03-29', '15:20:00', 330, 'Splendor', 15),
('PARTIE16', '2024-03-30', '17:10:00', 240, 'Codenames', 16),
('PARTIE17', '2024-03-31', '19:40:00', 280, 'Azul', 17),
('PARTIE18', '2024-04-01', '20:30:00', 300, 'Terraforming Mars', 18),
('PARTIE19', '2024-04-02', '18:25:00', 260, 'Small World', 19),
('PARTIE20', '2024-04-03', '16:50:00', 280, 'L’Île interdite', 20);
-- Insertion des tournois avec leurs identifiants, dates, descriptions, statuts, classements et hall_of_fame.

INSERT INTO Tournois (Id_tournoi, Date_t, Description, Statut, Classement, Hall_of_fame) VALUES
('TOURNOI001', '2024-03-25', 'Tournoi de stratégie', 'Terminé', '', 'Non'),
('TOURNOI002', '2024-04-01', 'Tournoi familial', 'En attente', '', 'Non'),
('TOURNOI003', '2024-04-08', 'Tournoi de jeux de société', 'En attente', '', 'Non'),
('TOURNOI004', '2024-04-15', 'Tournoi de mots', 'En attente', '', 'Non'),
('TOURNOI005', '2024-04-22', 'Tournoi de coopération', 'En attente', '', 'Non');
-- Insertion des relations entre joueurs et parties.

INSERT INTO Participe (Id_joueur, Id_partie) VALUES
(1, 'PARTIE01'),
(2, 'PARTIE02'),
(3, 'PARTIE03'),
(4, 'PARTIE04'),
(5, 'PARTIE05'),
(6, 'PARTIE06'),
(7, 'PARTIE07'),
(8, 'PARTIE08'),
(9, 'PARTIE09'),
(10, 'PARTIE10'),
(11, 'PARTIE11'),
(12, 'PARTIE12'),
(13, 'PARTIE13'),
(14, 'PARTIE14'),
(15, 'PARTIE15'),
(16, 'PARTIE16'),
(17, 'PARTIE17'),
(18, 'PARTIE18'),
(19, 'PARTIE19'),
(20, 'PARTIE20');
-- Insertion des relations entre parties et tournois.

INSERT INTO organise (Id_partie, Id_tournoi) VALUES
('PARTIE01', 'TOURNOI001'),
('PARTIE02', 'TOURNOI002'),
('PARTIE03', 'TOURNOI003'),
('PARTIE04', 'TOURNOI003'),
('PARTIE05', 'TOURNOI003'),
('PARTIE06', 'TOURNOI003'),
('PARTIE07', 'TOURNOI003'),
('PARTIE08', 'TOURNOI003'),
('PARTIE09', 'TOURNOI003'),
('PARTIE10', 'TOURNOI003'),
('PARTIE11', 'TOURNOI003'),
('PARTIE12', 'TOURNOI003'),
('PARTIE13', 'TOURNOI003'),
('PARTIE14', 'TOURNOI003'),
('PARTIE15', 'TOURNOI003'),
('PARTIE16', 'TOURNOI003'),
('PARTIE17', 'TOURNOI003'),
('PARTIE18', 'TOURNOI003'),
('PARTIE19', 'TOURNOI003'),
('PARTIE20', 'TOURNOI003');
-- Insertion des relations entre jeux, tournois et leurs identifiants.

INSERT INTO appartient (Nom_jeu, Id_jeu, Id_tournoi) VALUES
('Catan', 21, 'TOURNOI001'),
('Puissance 4', 22, 'TOURNOI002'),
('Risk', 23, 'TOURNOI003'),
('Monopoly', 24, 'TOURNOI003'),
('Cluedo', 25, 'TOURNOI003'),
('Scrabble', 26, 'TOURNOI003'),
('7 Wonders', 27, 'TOURNOI003'),
('Les Colons de Catane', 28, 'TOURNOI003'),
('Dixit', 29, 'TOURNOI003'),
('Time’s Up!', 30, 'TOURNOI003'),
('Carcassonne', 31, 'TOURNOI003'),
('7 Wonders Duel', 32, 'TOURNOI003'),
('Ticket to Ride', 33, 'TOURNOI003'),
('Pandemic', 34, 'TOURNOI003'),
('Splendor', 35, 'TOURNOI003'),
('Codenames', 36, 'TOURNOI003'),
('Azul', 37, 'TOURNOI003'),
('Terraforming Mars', 38, 'TOURNOI003'),
('Small World', 39, 'TOURNOI003'),
('L’Île interdite', 40, 'TOURNOI003');
-- Mise à jour du classement pour le tournoi 'TOURNOI001' en associant chaque joueur à son classement.

UPDATE Tournois
SET Id_joueur = 1, Classement = 'Premier'
WHERE Id_tournoi = 'TOURNOI001';

UPDATE Tournois
SET Id_joueur = 2, Classement = 'Deuxième'
WHERE Id_tournoi = 'TOURNOI001';

UPDATE Tournois
SET Id_joueur = 3, Classement = 'Troisième'
WHERE Id_tournoi = 'TOURNOI001';
UPDATE Tournois
SET Id_joueur = 4, Classement = 'Quatrième'
WHERE Id_tournoi = 'TOURNOI001';

UPDATE Tournois
SET Id_joueur = 5, Classement = 'Cinquième'
WHERE Id_tournoi = 'TOURNOI001';

UPDATE Tournois
SET Id_joueur = 6, Classement = 'Sixième'
WHERE Id_tournoi = 'TOURNOI001';

UPDATE Tournois
SET Id_joueur = 7, Classement = 'Septième'
WHERE Id_tournoi = 'TOURNOI001';

UPDATE Tournois
SET Id_joueur = 8, Classement = 'Huitième'
WHERE Id_tournoi = 'TOURNOI001';

UPDATE Tournois
SET Id_joueur = 9, Classement = 'Neuvième'
WHERE Id_tournoi = 'TOURNOI001';

UPDATE Tournois
SET Id_joueur = 10, Classement = 'Dixième'
WHERE Id_tournoi = 'TOURNOI001';

UPDATE Tournois
SET Id_joueur = 11, Classement = 'Onzième'
WHERE Id_tournoi = 'TOURNOI001';

UPDATE Tournois
SET Id_joueur = 12, Classement = 'Douzième'
WHERE Id_tournoi = 'TOURNOI001';

UPDATE Tournois
SET Id_joueur = 13, Classement = 'Treizième'
WHERE Id_tournoi = 'TOURNOI001';

UPDATE Tournois
SET Id_joueur = 14, Classement = 'Quatorzième'
WHERE Id_tournoi = 'TOURNOI001';

UPDATE Tournois
SET Id_joueur = 15, Classement = 'Quinzième'
WHERE Id_tournoi = 'TOURNOI001';

UPDATE Tournois
SET Id_joueur = 16, Classement = 'Seizième'
WHERE Id_tournoi = 'TOURNOI001';

UPDATE Tournois
SET Id_joueur = 17, Classement = 'Dix-septième'
WHERE Id_tournoi = 'TOURNOI001';

UPDATE Tournois
SET Id_joueur = 18, Classement = 'Dix-huitième'
WHERE Id_tournoi = 'TOURNOI001';

UPDATE Tournois
SET Id_joueur = 19, Classement = 'Dix-neuvième'
WHERE Id_tournoi = 'TOURNOI001';

UPDATE Tournois
SET Id_joueur = 20, Classement = 'Vingtième'
WHERE Id_tournoi = 'TOURNOI001';