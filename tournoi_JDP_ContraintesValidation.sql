use tournoi_gaming;
-- Contrainte de non-nullité pour les noms et prénoms des joueurs
ALTER TABLE Joueurs
ADD CONSTRAINT CHK_Nom_Prenom_Not_Null CHECK (Nom IS NOT NULL AND Prénom IS NOT NULL);

-- Contrainte de non-nullité pour la date de partie et l'heure de partie
ALTER TABLE Parties
ADD CONSTRAINT CHK_Date_Heure_Not_Null CHECK (Date_partie IS NOT NULL AND Heure_partie IS NOT NULL);

-- Contrainte de vérification pour le score positif ou nul
ALTER TABLE Parties
ADD CONSTRAINT CHK_Score_Positive CHECK (Score >= 0);

-- Contrainte de vérification pour le statut de tournoi
ALTER TABLE Tournois
ADD CONSTRAINT CHK_Statut CHECK (Statut IN ('En attente', 'En cours', 'Terminé'));

-- Contrainte de vérification pour le Hall of Fame
ALTER TABLE Tournois
ADD CONSTRAINT CHK_Hall_of_Fame CHECK (Hall_of_fame IN ('Oui', 'Non'));
-- Cette instruction ajoute une nouvelle colonne 'Id_joueur' à la table 'Tournois'.
ALTER TABLE Tournois
ADD COLUMN Id_joueur INT;
-- Cette instruction ajoute une contrainte de clé étrangère 'fk_joueur' à la colonne 'Id_joueur' de la table 'Tournois'.
ALTER TABLE Tournois
ADD CONSTRAINT fk_joueur FOREIGN KEY (Id_joueur) REFERENCES Joueurs(Id_joueur);