-- Affichage de la structure des tables pour comprendre les types de données disponibles / Displaying table structures to understand available data types
-- Table des circonscriptions / Constituencies table
SELECT column_name, data_type
FROM `data-portfolio-425515.COVID.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'Elections_2022_Circo_FR_ENT';

-- Table des bureaux de vote / Polling stations table
SELECT column_name, data_type
FROM `data-portfolio-425515.COVID.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'Elections_2022_Bureaux_FR_ENT';

-- Analyse initiale de la table des circonscriptions / Initial analysis of the constituencies table
-- Affichage des premières lignes pour un aperçu des données / Displaying the first rows to get a data overview
SELECT *
FROM `data-portfolio-425515.COVID.Elections_2022_Circo_FR_ENT`
LIMIT 10;

-- Comptage du nombre total de lignes dans la table, attendu 577 circonscriptions en France / Counting the total number of rows in the table, expecting 577 constituencies in France
SELECT COUNT(*) AS total_rows
FROM `data-portfolio-425515.COVID.Elections_2022_Circo_FR_ENT`;

-- Détection des doublons en se basant sur les trois premières colonnes principales / Detecting duplicates based on the first three main columns
WITH NumberedRows AS (
    SELECT *, 
           ROW_NUMBER() OVER (PARTITION BY Code_du_departement, Libelle_du_departement, Code_de_la_circonscription ORDER BY (SELECT NULL)) AS rn
    FROM `data-portfolio-425515.COVID.Elections_2022_Circo_FR_ENT`
)
SELECT *
FROM NumberedRows
WHERE rn > 1;

-- Vérification des valeurs nulles dans les colonnes principales / Checking for null values in the main columns
SELECT
  SUM(CASE WHEN Code_du_departement IS NULL THEN 1 ELSE 0 END) AS null_Code_du_departement,
  SUM(CASE WHEN Libelle_du_departement IS NULL THEN 1 ELSE 0 END) AS null_Libelle_du_departement,
  SUM(CASE WHEN Code_de_la_circonscription IS NULL THEN 1 ELSE 0 END) AS null_Code_de_la_circonscription,
  SUM(CASE WHEN Libelle_de_la_circonscription IS NULL THEN 1 ELSE 0 END) AS null_Libelle_de_la_circonscription,
  SUM(CASE WHEN Inscrits IS NULL THEN 1 ELSE 0 END) AS null_Inscrits,
  SUM(CASE WHEN Abstentions IS NULL THEN 1 ELSE 0 END) AS null_Abstentions
FROM `data-portfolio-425515.COVID.Elections_2022_Circo_FR_ENT`;

-- Comptage des circonscriptions par département / Counting constituencies by department
SELECT Libelle_du_departement, COUNT(*) AS count
FROM `data-portfolio-425515.COVID.Elections_2022_Circo_FR_ENT`
GROUP BY Libelle_du_departement
ORDER BY count DESC;

-- Observation des circonscriptions dans le département du Nord / Observing constituencies in the Nord department
SELECT Code_du_departement, Libelle_du_departement
FROM `data-portfolio-425515.COVID.Elections_2022_Circo_FR_ENT`
WHERE Libelle_du_departement = "Nord";

-- Analyse du nombre d'inscrits et de circonscriptions par département / Analyzing the number of registered voters and constituencies by department
SELECT Libelle_du_departement, 
       COUNT(*) AS nombre_circo, 
       SUM(Inscrits) AS total_inscrits, 
       ROUND(SUM(Inscrits)/COUNT(*), 0) AS moyenne_inscrits_par_circo
FROM `data-portfolio-425515.COVID.Elections_2022_Circo_FR_ENT`
GROUP BY Libelle_du_departement
ORDER BY moyenne_inscrits_par_circo DESC;

-- Analyse de la répartition des inscrits par circonscription, observant les disparités / Analyzing the distribution of registered voters by constituency, observing disparities
-- Analyse des statistiques de base sur les données de votes / Basic statistics analysis on voting data
SELECT 
  MIN(Votants) AS min_votes,
  MAX(Votants) AS max_votes,
  MIN(Pourcentage_Abs_sur_Ins) AS min_abstention,
  MAX(Pourcentage_Abs_sur_Ins) AS max_abstention
FROM `data-portfolio-425515.COVID.Elections_2022_Circo_FR_ENT`;

-- Circonscription avec le taux d'abstention le plus bas / Constituency with the lowest abstention rate
SELECT Code_du_departement, Libelle_du_departement, Code_de_la_circonscription, Pourcentage_Abs_sur_Ins
FROM `data-portfolio-425515.COVID.Elections_2022_Circo_FR_ENT`
WHERE Pourcentage_Abs_sur_Ins = (SELECT MIN(Pourcentage_Abs_sur_Ins) FROM `data-portfolio-425515.COVID.Elections_2022_Circo_FR_ENT`);

-- Circonscription avec le taux d'abstention le plus élevé / Constituency with the highest abstention rate
SELECT Code_du_departement, Libelle_du_departement, Code_de_la_circonscription, Pourcentage_Abs_sur_Ins
FROM `data-portfolio-425515.COVID.Elections_2022_Circo_FR_ENT`
WHERE Pourcentage_Abs_sur_Ins = (SELECT MAX(Pourcentage_Abs_sur_Ins) FROM `data-portfolio-425515.COVID.Elections_2022_Circo_FR_ENT`);

-- Circonscription avec le taux de votes blancs le plus élevé / Constituency with the highest rate of blank votes
SELECT Code_du_departement, Libelle_du_departement, Code_de_la_circonscription, Pourcentage_Blancs_sur_Ins
FROM `data-portfolio-425515.COVID.Elections_2022_Circo_FR_ENT`
WHERE Pourcentage_Blancs_sur_Ins = (SELECT MAX(Pourcentage_Blancs_sur_Ins) FROM `data-portfolio-425515.COVID.Elections_2022_Circo_FR_ENT`);

-- Fusion des données de circonscription avec les informations régionales / Merging constituency data with regional information
-- Création d'une table avec les circonscriptions uniques pour la fusion / Creating a table with unique constituencies for the merge
CREATE TABLE `data-portfolio-425515.COVID.Circo_Unique` AS
SELECT
  circo,
  MAX(libreg) AS libreg  -- Utilisation de MAX pour sélectionner une valeur représentative par circo / Using MAX to select a representative value per constituency
FROM
  `data-portfolio-425515.COVID.Circonscriptions_compo`
GROUP BY
  circo;

-- Fusion des données de circonscriptions avec les régions / Merging constituency data with regions
CREATE TABLE `data-portfolio-425515.COVID.FINAL` AS
  SELECT
    A.*,
    COALESCE(B.libreg, 'Hors métropole') AS Libelle_region  -- Gestion des valeurs nulles / Handling null values
  FROM (
    SELECT 
      *,
      CONCAT(
        LPAD(CAST(Code_du_departement AS STRING), 2, '0'),  -- Formatage des codes de département / Formatting department codes
        LPAD(CAST(Code_de_la_circonscription AS STRING), 3, '0')
      ) AS Code_circo
    FROM 
      `data-portfolio-425515.COVID.Elections_2022_Circo_FR_ENT`
  ) AS A
  LEFT JOIN
    `data-portfolio-425515.COVID.Circo_Unique` AS B
  ON
    A.Code_circo = B.circo;

-- Vérification de la qualité de la fusion en comptant les valeurs par région / Verifying merge quality by counting values per region
SELECT 
  SUM(CASE WHEN Libelle_region = 'Hors métropole' THEN 1 ELSE 0 END) AS valeurs_hors_metropole, 
  SUM(CASE WHEN Libelle_region != 'Hors métropole' THEN 1 ELSE 0 END) AS valeurs_metropole
FROM 
  `data-portfolio-425515.COVID.FINAL`;

-- Les 38 valeurs nulles sont dues à des disparités dans les codes des départements pour les circonscriptions hors métropole. Nous les avons regroupées sous l'étiquette "Hors métropole". / The 38 null values are due to disparities in department codes for constituencies outside the metropolis. We have grouped them under the label "Hors métropole".

-- Analyse des résultats par région / Regional results analysis
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

-- Observation des résultats par région, avec un focus sur les taux d'abstention et de participation / Observing regional results, focusing on abstention and participation rates
SELECT * FROM `data-portfolio-425515.COVID.REGIONS` ORDER BY Pourcentage_Abstentions DESC;

-- Détection des anomalies dans les données, telles que des valeurs négatives pour les votes / Detecting anomalies in the data, such as negative vote counts
SELECT *
FROM `data-portfolio-425515.COVID.FINAL`
WHERE Votants < 0;

-- Détection des anomalies dans les taux de participation, tels que des valeurs aberrantes / Detecting anomalies in participation rates, such as outlier values
SELECT 
  Code_du_departement, 
  Libelle_du_departement, 
  Code_de_la_circonscription, 
  Pourcentage_Abs_sur_Ins,
  CASE 
    WHEN Pourcentage_Abs_sur_Ins < 0 OR Pourcentage_Abs_sur_Ins > 100 THEN 'Anomalie'  --  / Anomaly
    ELSE 'Normal'
  END AS Statut_Abstention
FROM `data-portfolio-425515.COVID.Elections_2022_Circo_FR_ENT`
WHERE Pourcentage_Abs_sur_Ins < 0 OR Pourcentage_Abs_sur_Ins > 100;

-- Analyse comparative entre régions métropolitaines et hors métropole / Comparative analysis between metropolitan and non-metropolitan regions
SELECT 
  CASE 
    WHEN Libelle_region = 'Hors métropole' THEN 'Hors métropole'  --  / Outside metropolis
    ELSE 'Métropole'  --  / Metropolis
  END AS Type_Region,
  SUM(Inscrits) AS Total_Inscrits, 
  SUM(Votants) AS Total_Votants, 
  ROUND(SUM(Votants) / SUM(Inscrits) * 100, 1) AS Pourcentage_Votants, 
  ROUND(SUM(Abstentions) / SUM(Inscrits) * 100, 1) AS Pourcentage_Abstentions
FROM `data-portfolio-425515.COVID.FINAL`
GROUP BY Type_Region
ORDER BY Type_Region DESC;

-- Analyse des corrélations entre les inscrits, les votants et les abstentions / Analyzing correlations between registered voters, voters, and abstentions
SELECT 
  Code_du_departement, 
  Libelle_du_departement, 
  Code_de_la_circonscription, 
  ROUND(Votants / Inscrits * 100, 1) AS Pourcentage_Votants,
  ROUND(Abstentions / Inscrits * 100, 1) AS Pourcentage_Abstentions
FROM `data-portfolio-425515.COVID.Elections_2022_Circo_FR_ENT`
ORDER BY Pourcentage_Votants DESC;
