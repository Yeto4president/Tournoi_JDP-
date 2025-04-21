use tournoi_gaming;
CREATE TABLE Joueurs(
   Id_joueur INT,
   Nom VARCHAR(50),
   Prénom VARCHAR(50),
   PRIMARY KEY(Id_joueur)
);

-- Création de la table Jeux
CREATE TABLE Jeux(
   Nom_jeu VARCHAR(50),
   Id_jeu INT,
   Année_de_sortie DATE,
   Editeur VARCHAR(50),
   Catégorie VARCHAR(50),
   PRIMARY KEY(Nom_jeu, Id_jeu)
);

-- Création de la table Parties
CREATE TABLE Parties(
   Id_partie VARCHAR(50),
   Date_partie DATE,
   Heure_partie VARCHAR(50),
   Score INT,
   Nom_jeu VARCHAR(50) NOT NULL,
   Id_jeu INT NOT NULL,
   PRIMARY KEY(Id_partie),
   FOREIGN KEY(Nom_jeu, Id_jeu) REFERENCES Jeux(Nom_jeu, Id_jeu)
);

-- Création de la table Tournois
CREATE TABLE Tournois(
   Id_tournoi VARCHAR(50),
   Date_t DATE,
   Description VARCHAR(50),
   Statut VARCHAR(50),
   Classement VARCHAR(50),
   Hall_of_fame VARCHAR(50),
   PRIMARY KEY(Id_tournoi)
);

-- Création de la table Participe
CREATE TABLE Participe(
   Id_joueur INT,
   Id_partie VARCHAR(50),
   PRIMARY KEY(Id_joueur, Id_partie),
   FOREIGN KEY(Id_joueur) REFERENCES Joueurs(Id_joueur),
   FOREIGN KEY(Id_partie) REFERENCES Parties(Id_partie)
);

-- Création de la table organise
CREATE TABLE organise(
   Id_partie VARCHAR(50),
   Id_tournoi VARCHAR(50),
   PRIMARY KEY(Id_partie, Id_tournoi),
   FOREIGN KEY(Id_partie) REFERENCES Parties(Id_partie),
   FOREIGN KEY(Id_tournoi) REFERENCES Tournois(Id_tournoi)
);

-- Création de la table appartient
CREATE TABLE appartient(
   Nom_jeu VARCHAR(50),
   Id_jeu INT,
   Id_tournoi VARCHAR(50),
   PRIMARY KEY(Nom_jeu, Id_jeu, Id_tournoi),
   FOREIGN KEY(Nom_jeu, Id_jeu) REFERENCES Jeux(Nom_jeu, Id_jeu),
   FOREIGN KEY(Id_tournoi) REFERENCES Tournois(Id_tournoi)
);
