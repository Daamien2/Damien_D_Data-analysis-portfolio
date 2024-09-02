-- Affichage de la structure des tables pour comprendre les types de données disponibles
-- Table des circonscriptions
SELECT column_name, data_type
FROM `data-portfolio-425515.COVID.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'Elections_2022_Circo_FR_ENT';

-- Table des bureaux de vote
SELECT column_name, data_type
FROM `data-portfolio-425515.COVID.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'Elections_2022_Bureaux_FR_ENT';

-- Analyse initiale de la table des circonscriptions
-- Affichage des premières lignes pour un aperçu des données
SELECT *
FROM `data-portfolio-425515.COVID.Elections_2022_Circo_FR_ENT`
LIMIT 10;

-- Comptage du nombre total de lignes dans la table, attendu 577 circonscriptions en France
SELECT COUNT(*) AS total_rows
FROM `data-portfolio-425515.COVID.Elections_2022_Circo_FR_ENT`;

-- Détection des doublons en se basant sur les trois premières colonnes principales
WITH NumberedRows AS (
    SELECT *, 
           ROW_NUMBER() OVER (PARTITION BY Code_du_departement, Libelle_du_departement, Code_de_la_circonscription ORDER BY (SELECT NULL)) AS rn
    FROM `data-portfolio-425515.COVID.Elections_2022_Circo_FR_ENT`
)
SELECT *
FROM NumberedRows
WHERE rn > 1;

-- Vérification des valeurs nulles dans les colonnes principales
SELECT
  SUM(CASE WHEN Code_du_departement IS NULL THEN 1 ELSE 0 END) AS null_Code_du_departement,
  SUM(CASE WHEN Libelle_du_departement IS NULL THEN 1 ELSE 0 END) AS null_Libelle_du_departement,
  SUM(CASE WHEN Code_de_la_circonscription IS NULL THEN 1 ELSE 0 END) AS null_Code_de_la_circonscription,
  SUM(CASE WHEN Libelle_de_la_circonscription IS NULL THEN 1 ELSE 0 END) AS null_Libelle_de_la_circonscription,
  SUM(CASE WHEN Inscrits IS NULL THEN 1 ELSE 0 END) AS null_Inscrits,
  SUM(CASE WHEN Abstentions IS NULL THEN 1 ELSE 0 END) AS null_Abstentions
FROM `data-portfolio-425515.COVID.Elections_2022_Circo_FR_ENT`;

-- Comptage des circonscriptions par département
SELECT Libelle_du_departement, COUNT(*) AS count
FROM `data-portfolio-425515.COVID.Elections_2022_Circo_FR_ENT`
GROUP BY Libelle_du_departement
ORDER BY count DESC;

-- Observation des circonscriptions dans le département du Nord
SELECT Code_du_departement, Libelle_du_departement
FROM `data-portfolio-425515.COVID.Elections_2022_Circo_FR_ENT`
WHERE Libelle_du_departement = "Nord";

-- Analyse du nombre d'inscrits et de circonscriptions par département
SELECT Libelle_du_departement, 
       COUNT(*) AS nombre_circo, 
       SUM(Inscrits) AS total_inscrits, 
       ROUND(SUM(Inscrits)/COUNT(*), 0) AS moyenne_inscrits_par_circo
FROM `data-portfolio-425515.COVID.Elections_2022_Circo_FR_ENT`
GROUP BY Libelle_du_departement
ORDER BY moyenne_inscrits_par_circo DESC;

-- Analyse de la répartition des inscrits par circonscription, observant les disparités
-- Analyse des statistiques de base sur les données de votes
SELECT 
  MIN(Votants) AS min_votes,
  MAX(Votants) AS max_votes,
  MIN(Pourcentage_Abs_sur_Ins) AS min_abstention,
  MAX(Pourcentage_Abs_sur_Ins) AS max_abstention
FROM `data-portfolio-425515.COVID.Elections_2022_Circo_FR_ENT`;

-- Circonscription avec le taux d'abstention le plus bas
SELECT Code_du_departement, Libelle_du_departement, Code_de_la_circonscription, Pourcentage_Abs_sur_Ins
FROM `data-portfolio-425515.COVID.Elections_2022_Circo_FR_ENT`
WHERE Pourcentage_Abs_sur_Ins = (SELECT MIN(Pourcentage_Abs_sur_Ins) FROM `data-portfolio-425515.COVID.Elections_2022_Circo_FR_ENT`);

-- Circonscription avec le taux d'abstention le plus élevé
SELECT Code_du_departement, Libelle_du_departement, Code_de_la_circonscription, Pourcentage_Abs_sur_Ins
FROM `data-portfolio-425515.COVID.Elections_2022_Circo_FR_ENT`
WHERE Pourcentage_Abs_sur_Ins = (SELECT MAX(Pourcentage_Abs_sur_Ins) FROM `data-portfolio-425515.COVID.Elections_2022_Circo_FR_ENT`);

-- Circonscription avec le taux de votes blancs le plus élevé
SELECT Code_du_departement, Libelle_du_departement, Code_de_la_circonscription, Pourcentage_Blancs_sur_Ins
FROM `data-portfolio-425515.COVID.Elections_2022_Circo_FR_ENT`
WHERE Pourcentage_Blancs_sur_Ins = (SELECT MAX(Pourcentage_Blancs_sur_Ins) FROM `data-portfolio-425515.COVID.Elections_2022_Circo_FR_ENT`);

-- Fusion des données de circonscription avec les informations régionales
-- Création d'une table avec les circonscriptions uniques pour la fusion
CREATE TABLE `data-portfolio-425515.COVID.Circo_Unique` AS
SELECT
  circo,
  MAX(libreg) AS libreg  -- Utilisation de MAX pour sélectionner une valeur représentative par circo
FROM
  `data-portfolio-425515.COVID.Circonscriptions_compo`
GROUP BY
  circo;

-- Fusion des données de circonscriptions avec les régions
CREATE TABLE `data-portfolio-425515.COVID.FINAL` AS
  SELECT
    A.*,
    COALESCE(B.libreg, 'Hors métropole') AS Libelle_region  -- Gestion des valeurs nulles
  FROM (
    SELECT 
      *,
      CONCAT(
        LPAD(CAST(Code_du_departement AS STRING), 2, '0'),  -- Formatage des codes de département
        LPAD(CAST(Code_de_la_circonscription AS STRING), 3, '0')
      ) AS Code_circo
    FROM 
      `data-portfolio-425515.COVID.Elections_2022_Circo_FR_ENT`
  ) AS A
  LEFT JOIN
    `data-portfolio-425515.COVID.Circo_Unique` AS B
  ON
    A.Code_circo = B.circo;

-- Vérification de la qualité de la fusion en comptant les valeurs par région
SELECT 
  SUM(CASE WHEN Libelle_region = 'Hors métropole' THEN 1 ELSE 0 END) AS valeurs_hors_metropole, 
  SUM(CASE WHEN Libelle_region != 'Hors métropole' THEN 1 ELSE 0 END) AS valeurs_metropole
FROM 
  `data-portfolio-425515.COVID.FINAL`;

-- Les 38 valeurs nulles sont dues à des disparités dans les codes des départements pour les circonscriptions hors métropole. Nous les avons regroupées sous l'étiquette "Hors métropole".

-- Analyse des résultats par région
CREATE TABLE `data-portfolio-425515.COVID.REGIONS` AS 
SELECT 
  Libelle_region, 
  SUM(Inscrits) AS Inscrits, 
  ROUND(SUM(Votants)/SUM(Inscrits)*100, 1) AS Pourcentage_Votants, 
  ROUND(SUM(Abstentions)/SUM(Inscrits)*100, 1) AS Pourcentage_Abstentions, 
  ROUND(SUM(Exprimes)/SUM(Inscrits)*100, 1) AS Pourcentage_Exprimes, 
  ROUND(SUM(Blancs)/SUM(Inscrits)*100, 1) AS Pourcentage_Blancs, 
  ROUND(SUM(Nuls)/SUM(Inscrits)*100, 1) AS Pourcentage_Nuls
FROM `data-portfolio-425515.COVID.FINAL`
GROUP BY Libelle_region
ORDER BY Libelle_region ASC;

-- Observation des résultats par région, avec un focus sur les taux d'abstention et de participation
SELECT * FROM `data-portfolio-425515.COVID.REGIONS` ORDER BY Pourcentage_Abstentions DESC;

-- Détection des anomalies dans les données, telles que des valeurs négatives pour les votes
SELECT *
FROM `data-portfolio-425515.COVID.FINAL`
WHERE Votants < 0;

-- Détection des anomalies dans les taux de participation, tels que des valeurs aberrantes
SELECT 
  Code_du_departement, 
  Libelle_du_departement, 
  Code_de_la_circonscription, 
  Pourcentage_Abs_sur_Ins,
  CASE 
    WHEN Pourcentage_Abs_sur_Ins < 0 OR Pourcentage_Abs_sur_Ins > 100 THEN 'Anomalie'
    ELSE 'Normal'
  END AS Statut_Abstention
FROM `data-portfolio-425515.COVID.Elections_2022_Circo_FR_ENT`
WHERE Pourcentage_Abs_sur_Ins < 0 OR Pourcentage_Abs_sur_Ins > 100;

-- Analyse comparative entre régions métropolitaines et hors métropole
SELECT 
  CASE 
    WHEN Libelle_region = 'Hors métropole' THEN 'Hors métropole'
    ELSE 'Métropole'
  END AS Type_Region,
  SUM(Inscrits) AS Total_Inscrits, 
  SUM(Votants) AS Total_Votants, 
  ROUND(SUM(Votants) / SUM(Inscrits) * 100, 1) AS Pourcentage_Votants, 
  ROUND(SUM(Abstentions) / SUM(Inscrits) * 100, 1) AS Pourcentage_Abstentions
FROM `data-portfolio-425515.COVID.FINAL`
GROUP BY Type_Region
ORDER BY Type_Region DESC;

-- Analyse des corrélations entre les inscrits, les votants et les abstentions
SELECT 
  Code_du_departement, 
  Libelle_du_departement, 
  Code_de_la_circonscription, 
  ROUND(Votants / Inscrits * 100, 1) AS Pourcentage_Votants,
  ROUND(Abstentions / Inscrits * 100, 1) AS Pourcentage_Abstentions
FROM `data-portfolio-425515.COVID.Elections_2022_Circo_FR_ENT`
ORDER BY Pourcentage_Votants DESC;


