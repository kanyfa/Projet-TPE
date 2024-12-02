CREATE TABLE Groupe (
    ID_Groupe INT PRIMARY KEY,
    Nom_Groupe VARCHAR(50) NOT NULL
);

CREATE TABLE Professeur (
    ID_Professeur INT PRIMARY KEY,
    Nom VARCHAR(50) NOT NULL,
    Prenom VARCHAR(50) NOT NULL,
    Domaine_Specialisation VARCHAR(100)
);

CREATE TABLE Cours (
    ID_Cours INT PRIMARY KEY,
    Intitule VARCHAR(100) NOT NULL,
    Coefficient INT NOT NULL,
    ID_Professeur INT,
    FOREIGN KEY (ID_Professeur) REFERENCES Professeur(ID_Professeur));
CREATE TABLE Eleve (
    Matricule INT PRIMARY KEY,
    Nom VARCHAR(50) NOT NULL,
    Prenom VARCHAR(50) NOT NULL,
    Date_Naissance DATE NOT NULL,
    ID_Groupe INT,
    FOREIGN KEY (ID_Groupe) REFERENCES Groupe(ID_Groupe));
    

CREATE TABLE Note (
    ID_Note INT PRIMARY KEY,
    Matricule INT,
    ID_Cours INT,
    Valeur_Numerique FLOAT NOT NULL,
    FOREIGN KEY (Matricule) REFERENCES Eleve(Matricule),
    FOREIGN KEY (ID_Cours) REFERENCES Cours(ID_Cours)
);

-- Insertion des groupes
INSERT INTO Groupe (ID_Groupe, Nom_Groupe) VALUES (1, 'Groupe A'), (2, 'Groupe B');

-- Insertion des professeurs
INSERT INTO Professeur (ID_Professeur, Nom, Prenom, Domaine_Specialisation)
VALUES 
(1, 'Dupont', 'Marie', 'Mathématiques'),
(2, 'Durand', 'Paul', 'Informatique'),
(3, 'Moreau', 'Claire', 'Physique');

-- Insertion des cours
INSERT INTO Cours (ID_Cours, Intitule, Coefficient, ID_Professeur)
VALUES 
(1, 'Algèbre', 3, 1),
(2, 'Programmation', 4, 2),
(3, 'Mécanique', 2, 3),
(4, 'Statistiques', 3, 1);

-- Insertion des élèves
INSERT INTO Eleve (Matricule, Nom, Prenom, Date_Naissance, ID_Groupe)
VALUES 
(101, 'Martin', 'Jean', '2005-03-15', 1),
(102, 'Bernard', 'Lucie', '2006-06-20', 1),
(103, 'Thomas', 'Elise', '2005-08-25', 2),
(104, 'Petit', 'Nicolas', '2006-02-10', 2),
(105, 'Robert', 'Chloé', '2005-11-12', 1);

-- Insertion des notes
INSERT INTO Note (ID_Note, Matricule, ID_Cours, Valeur_Numerique)
VALUES 
(1, 101, 1, 14.5),
(2, 102, 2, 16.0),
(3, 103, 3, 12.0),
(4, 104, 4, 17.5),
  (5, 105,  1, 13.0);

