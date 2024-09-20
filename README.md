# Data portfolio - Damien Delonglée

## About <img src="Pictograms/GB.png" alt="GB" style="height: 15px; width: auto;"/>

Welcome, my name is Damien Delonglée. This data portfolio presents a series of data analysis projects using Python and/or SQL, illustrating skills in data extraction, cleansing and processing. Each project demonstrates the use of different techniques to manipulate complex datasets and extract actionable insights.

You can also find my CV in [PDF](https://github.com/Daamien2/Damien_D_Data-analysis-portfolio/blob/main/CV/CV_Damien_Delonglee_UK.pdf)

## À propos  <img src="Pictograms/FR.png" alt="FR" style="height: 15px; width: auto;"/>

Bienvenue, je m'appelle Damien Delonglée. Ce data portfolio présente une série de projets d’analyse de données réalisés avec Python et/ou SQL, illustrant des compétences en extraction, nettoyage et traitement de données. Chaque projet met en avant l'utilisation de diverses techniques pour manipuler des ensembles de données complexes et en extraire des insights exploitables.

Retrouvez également mon CV en [PDF](https://github.com/Daamien2/Damien_D_Data-analysis-portfolio/blob/main/CV/CV_Damien_Delongl%C3%A9e_FR.pdf)

---
## Summary
* [Technical skills](#techniques)
* [Portfolio Projects](#ptfprojects)
* **Python**
  - [Projet 1 - Analysis of the Paris self-service bicycle hire service - Python](#python0)
  - [Projet 2 - Transaction analysis - Python](#python1)
  - [Projet 3 - Data cleansing - Python](#python2)
* **SQL**
  - [Projet - Voting data analysis - SQL](#sql1)
* [**Certificates**](#certificates)
* [**Education**](#formation)
* [**Work experience**](#experiences)

---
<a id="techniques"></a>
## Technical skills

- **Programming languages** :
  - Python (pandas, matplotlib, seaborn)
  - SQL (complex queries, optimisation)
  - Excel (pivot tables, VBA macros)

- **Data Visualization** :
  - Power BI (interactive visualisations, dynamic dashboards, DAX functions): +++
  - Tableau, Looker Studio : +

- **Tools and Techniques** :
  - Multi-source data collection
  - Data cleansing and transformation
  - Data analysis for strategic insights

---

<a id="ptfprojects"></a>
## Portfolio Projects
<img src="Pictograms/GB.png" alt="GB" style="height: 15px; width: auto;"/> - In this section, I'm going to introduce you to some data analysis projects, providing you with the work script, recommendations drawn from these analyses and briefly listing the technical skills used to solve the cases.

<img src="Pictograms/FR.png" alt="FR" style="height: 15px; width: auto;"/> - Dans cette section, je vais vous présenter des projets d'analyse de données en vous fournissant le script de travail, des recommandations tirées de ces analyses et en listant brièvement les compétences techniques utilisées pour résoudre les cas.

---

## Python
<a id="python0"></a>
### Projet 1
**<img src="Pictograms/GB.png" alt="GB" style="height: 15px; width: auto;"/> Analysis and live mapping of Paris' self-service bicycle hire service**

**<img src="Pictograms/FR.png" alt="FR" style="height: 15px; width: auto;"/> Analyse et cartographie en direct du service de vélo en libre-service de Paris**

**Script** : [Project link](https://gist.github.com/Daamien2/19265f7a4865e7e488ec8c87a57dbbfa)

**Dataset** : Velib open data (https://www.velib-metropole.fr/donnees-open-data-gbfs-du-service-velib-metropole)

**Skills**: 
- Data cleansing
- Exploratory data analysis
- Data Mapping and Visualization
- Data extraction and process automation via Google Apps Script.
  
**Technologies** : Python, folium, Pandas, Numpy, Seaborn, Matplotlib, Jupyter Notebook, GeoJson

**Description** : 

> <img src="Pictograms/GB.png" alt="GB" style="height: 15px; width: auto;"/> - This script processes and analyses data from the ‘Vélib’ self-service bicycle service in Paris. The real-time open-source data, covering the network's 1,500 stations, enables precise monitoring of service performance as part of an ongoing quality assessment. The analysis also provides an interactive map displaying the status of stations, making it easier to identify areas of congestion. To deepen the analysis, a Google script was deployed to automate the extraction of data over 24 hours, creating a data history. This information was then used to analyse the flow of bicycles at peak times, morning and evening, in order to identify trends in station use.

> <img src="Pictograms/FR.png" alt="FR" style="height: 15px; width: auto;"/> - Ce script traite et analyse les données du service de vélos en libre-service 'Vélib'' à Paris. Les données open-source en temps réel, couvrant les 1500 stations du réseau, permettent de suivre précisément les performances du service dans le cadre d'une évaluation continue de la qualité. L'analyse permet également une visualisation cartographique interactive de l'état des stations, facilitant l'identification des zones de congestion. Pour approfondir l'analyse, un script Google a été déployé pour automatiser l'extraction des données sur 24 heures, créant ainsi un historique des données. Ces informations ont ensuite été exploitées pour analyser les flux de vélos aux heures de pointe, matin et soir, afin d'identifier les tendances d'utilisation des stations.

**Key insights**

> <img src="Pictograms/GB.png" alt="GB" style="height: 15px; width: auto;"/>
> Optimising the balance of bikes between overloaded and underused stations is a key challenge for shared bike services. This challenge is directly influenced by user travel flows, particularly between residential and business areas. An analysis of cycle flows at peak times shows that Paris can be divided into two main zones: residential areas, mainly on the outskirts, and work areas, more concentrated in the centre. This data can be used to set up regulatory processes to improve the distribution of bicycles.
> Analysis of low-use areas: The reasons for low use of the service in certain areas, particularly on the outskirts, should be explored. Factors to consider could include the quality of cycle paths, the accessibility of stations, or other influential elements.

> <img src="Pictograms/FR.png" alt="FR" style="height: 15px; width: auto;"/>
> L'optimisation du rééquilibrage des vélos entre les stations surchargées et celles sous-utilisées est un enjeu central pour les services de vélos partagés. Ce défi est directement influencé par les flux de déplacements des usagers, notamment entre les zones résidentielles et les zones d'activité. L'analyse des flux de vélos aux heures de pointe permet de diviser Paris en deux grandes zones : les zones résidentielles, majoritairement en périphérie, et les zones de travail, plus concentrées au centre. Ces données peuvent être exploitées pour mettre en place des processus de régulation afin d'améliorer la répartition des vélos.
> Analyse des zones peu fréquentées : Il convient d'explorer les raisons de la faible utilisation du service dans certaines zones, particulièrement en périphérie. Les facteurs à considérer pourraient inclure la qualité des pistes cyclables, l'accessibilité des stations, ou d'autres éléments influents.

---

<a id="python1"></a>
### Projet 2
**<img src="Pictograms/GB.png" alt="GB" style="height: 15px; width: auto;"/> Optimisation of operations and sales strategies based on analysis of weekly transactions**

**<img src="Pictograms/FR.png" alt="FR" style="height: 15px; width: auto;"/> Optimisation des opérations et des stratégies de vente sur la base de l'analyse des transactions hebdomadaires**

**Script** : [Project link](https://gist.github.com/Daamien2/2a4a2ddd80990b2e340b6362701da251)

**Dataset** : https://archive.ics.uci.edu/dataset/396/sales+transactions+dataset+weekly

**Skills**: 
- Data cleansing
- Exploratory data analysis (EDA)
- Visualisation

**Technologies** : Python, Pandas, Numpy, Seaborn, Matplotlib, Jupyter Notebook

**Description** : 

> <img src="Pictograms/GB.png" alt="GB" style="height: 15px; width: auto;"/> - This script processes and analyzes retail sales data extracted from an Excel file. The workflow includes data cleaning, detailed exploration of quantity and price distributions, and visualization of transaction volumes across different countries. The analysis delves into monthly and daily sales trends, including the identification of seasonal and weekly sales patterns. Additionally, the data is normalized to gain deeper insights into country-specific trends.

> <img src="Pictograms/FR.png" alt="FR" style="height: 15px; width: auto;"/> - Ce script traite et analyse des données sur les ventes au détail extraites d'un fichier Excel. Le flux de travail comprend le nettoyage des données, l'exploration détaillée des distributions de quantités et de prix, et la visualisation des volumes de transactions dans différents pays. L'analyse se penche sur les tendances des ventes mensuelles et quotidiennes, y compris l'identification des modèles de vente saisonniers et hebdomadaires. En outre, les données sont normalisées afin d'obtenir des informations plus approfondies sur les tendances propres à chaque pays.

**Key insights**

> <img src="Pictograms/GB.png" alt="GB" style="height: 15px; width: auto;"/>
> - Resource Optimization: Identifying daily and weekly activity peaks allows for more effective human resource planning by focusing efforts on critical times, such as lunchtime during weekdays.
> - Market-Specific Strategies: Observed differences between countries, particularly regarding the most active days, suggest that tailoring sales and marketing strategies to the specifics of each market could be beneficial.

> <img src="Pictograms/FR.png" alt="FR" style="height: 15px; width: auto;"/>
> - Optimisation des ressources : L'identification des pics d'activité quotidiens et hebdomadaires permet une planification plus efficace des ressources humaines en concentrant les efforts sur les moments critiques, comme l'heure du déjeuner en semaine.
> - Stratégies spécifiques au marché : Les différences observées entre les pays, notamment en ce qui concerne les jours les plus actifs, suggèrent qu'il pourrait être bénéfique d'adapter les stratégies de vente et de marketing aux spécificités de chaque marché.

---

<a id="python2"></a>
### Projet 3
**<img src="Pictograms/GB.png" alt="GB" style="height: 15px; width: auto;"/> Cleaning a database of trending videos on Youtube in France in 2017-2018 and correlation analysis**

**<img src="Pictograms/FR.png" alt="FR" style="height: 15px; width: auto;"/>  Nettoyage d'une base de données de vidéos tendances sur Youtube en France en 2017-2018 et analyse de corrélation**

**Script** : [Project link](https://gist.github.com/Daamien2/598d4ef785e149aee59bd2dcf027855a)

**Dataset** : [YTFRvideos.xlsx](https://github.com/Daamien2/Stockage-data-portfolio/blob/main/YTFRvideos.xlsx)

**Skills**: 
- Data cleansing
- Exploratory data analysis (EDA)
- Correlation analysis

**Technologies** : Python, Pandas, Numpy, Seaborn, Matplotlib ticker, Jupyter Notebook

**Description** : 

> <img src="Pictograms/GB.png" alt="GB" style="height: 15px; width: auto;"/> - This script performs a comprehensive analysis of a dataset comprising YouTube videos, with detailed metrics such as views, likes, dislikes, and publication dates. It begins with thorough data cleansing, addressing special characters, standardizing date formats, and exploring the interplay between publication dates, view counts, and dislike proportions. The analysis includes visualizations such as graphs illustrating video performance over time and a detailed examination of the ratio of dislikes to views.

> <img src="Pictograms/FR.png" alt="FR" style="height: 15px; width: auto;"/> - Ce script effectue une analyse complète d'un ensemble de données composé de vidéos YouTube, avec des métriques détaillées telles que les vues, les likes, les dislikes et les dates de publication. Il commence par un nettoyage approfondi des données, en traitant les caractères spéciaux, en normalisant les formats de date et en explorant l'interaction entre les dates de publication, les nombres de vues et les proportions d'aversion. L'analyse comprend des visualisations telles que des graphiques illustrant les performances des vidéos au fil du temps et un examen détaillé du rapport entre le nombre de dislikes et le nombre de vues.

**Key insights**

> <img src="Pictograms/GB.png" alt="GB" style="height: 15px; width: auto;"/>
> - After a complete clean-up of this database, the analysis showed, for example, a significant correlation between the number of views of a video and the number of comments. This result is obviously very consistent, as a larger audience is generally associated with a higher number of comments. The next stage in this analysis will involve examining the correlation between video titles and the number of views. This will enable us to identify whether certain catchy words or phrases have a greater influence on the number of views, so that we can use this as a lever to increase the visibility of a video.

> <img src="Pictograms/FR.png" alt="FR" style="height: 15px; width: auto;"/>
> - Après un nettoyage complet de cette base de données, l'analyse a par exemple démontré une corrélation significative entre le nombre de vues d'une vidéo et le nombre de commentaires. Ce résultat est évidemment très cohérent, car une plus grande audience est généralement associée à un nombre plus élevé de commentaires. La prochaine étape de cette analyse va consister à examiner la corrélation entre les titres des vidéos et leur nombre de vues. Cette démarche permettrait d'identifier si certains mots ou expressions accrocheurs influencent davantage le nombre de vues, afin de pouvoir utiliser cela comme levier pour augmenter la visibilité d'une vidéo.

---

## SQL
<a id="sql1"></a>
### Projet : 
**<img src="Pictograms/GB.png" alt="GB" style="height: 15px; width: auto;"/> Data cleansing and exploratory analysis of voting data from the 2022 French presidential elections**

**<img src="Pictograms/FR.png" alt="FR" style="height: 15px; width: auto;"/> Nettoyage de données et analyse exploratoire des données de vote des élections présidentielles françaises de 2022**

**Script** : [Project link](https://github.com/Daamien2/Damien_D_Data-analysis-portfolio/blob/main/SQL/Votes/Elections_2022_Circos.sql)

**Dataset** : 
  - [resultats-par-niveau-burvot-t1-france-entiere.csv](https://github.com/Daamien2/Damien_D_Data-analysis-portfolio/blob/main/SQL/Votes/resultats-par-niveau-burvot-t1-france-entiere.csv)
  - [resultats-par-niveau-cirlg-t1-france-entiere.csv](https://github.com/Daamien2/Damien_D_Data-analysis-portfolio/blob/main/SQL/Votes/resultats-par-niveau-cirlg-t1-france-entiere.csv)
  - [circo_composition.csv](https://github.com/Daamien2/Damien_D_Data-analysis-portfolio/blob/main/SQL/Votes/circo_composition.csv)

Source : [data.gouv.fr](https://www.data.gouv.fr/fr/pages/donnees-des-elections/)

**Description** : 

> <img src="Pictograms/GB.png" alt="GB" style="height: 15px; width: auto;"/> - This analysis covers electoral data for French districts for the year 2022. It includes checking the structure of the data tables, detecting duplicates and null values, and calculating key statistics such as the total number of registered voters, abstention rates, and blank and invalid vote rates. The script also performs in-depth analysis by department and region, merging constituency data with regional data to produce detailed reports on the distribution of registered voters and voters, as well as abstention rates and blank and invalid votes.

> <img src="Pictograms/FR.png" alt="FR" style="height: 15px; width: auto;"/> - Cette analyse porte sur les données électorales des circonscriptions françaises pour l'année 2022. Elle comprend la vérification de la structure des tables de données, la détection des doublons et des valeurs nulles, ainsi que le calcul de statistiques clés telles que le nombre total d'inscrits, les taux d'abstention, et les taux de votes blancs et nuls. Le script réalise également une analyse approfondie par département et région en fusionnant les données des circonscriptions avec celles des régions, afin de produire des rapports détaillés sur la répartition des inscrits et des votants, ainsi que sur les taux d'abstention, de votes blancs et nuls.

**Key insights**

> <img src="Pictograms/GB.png" alt="GB" style="height: 15px; width: auto;"/> - The data show significant disparities in abstention and turnout rates between constituencies, with significant variations between metropolitan and non-metropolitan regions. Some constituencies show extreme rates of abstention and blank votes, revealing marked differences in electoral engagement across the country.

> <img src="Pictograms/FR.png" alt="FR" style="height: 15px; width: auto;"/> - Les données montrent des disparités notables dans les taux d'abstention et de participation entre les circonscriptions, avec des variations significatives entre les régions métropolitaines et hors métropole. Certaines circonscriptions présentent des taux d'abstention et de votes blancs extrêmes, révélant des différences marquées dans l'engagement électoral à travers le pays.
> 

---


<a id="certificates"></a>
## Certificates <img src="Pictograms/GB.png" alt="GB" style="height: 15px; width: auto;"/>
- **Data Analyst Certificate - Google** (July - December 2023)
  - Skills : Data analysis, Python, SQL, R, Looker Studio
  - Certificate in [PDF](https://github.com/Daamien2/Damien_D_Data-analysis-portfolio/blob/main/Certificates/Google%20Data%20Analyst%20Certificate.pdf)
- **IBM Data Analyst Certificate** (January 2024 - April 2024)
  - Certificate in [PDF](https://github.com/Daamien2/Damien_D_Data-analysis-portfolio/blob/main/Certificates/IBM%20Data%20Analyst%20Certificate.pdf)

## Certificats <img src="Pictograms/FR.png" alt="FR" style="height: 15px; width: auto;"/>
- **Data Analyst Certificate - Google** (July - December 2023)
  - Compétences : Analyse de données, Python, SQL, R, Looker Studio
  - Certificat en [PDF](https://github.com/Daamien2/Damien_D_Data-analysis-portfolio/blob/main/Certificates/Google%20Data%20Analyst%20Certificate.pdf)
- **IBM Data Analyst Certificate** (January 2024 - April 2024)
  - Certificat en [PDF](https://github.com/Daamien2/Damien_D_Data-analysis-portfolio/blob/main/Certificates/IBM%20Data%20Analyst%20Certificate.pdf)

---

<a id="formation"></a>
## Education <img src="Pictograms/GB.png" alt="GB" style="height: 15px; width: auto;"/>
- **Master’s Degree in Global Management (2019-2020)**
  - *Université Paris-Dauphine, Paris*
  - Marketing, Business analytics, Project management, Communication, Accounting, CSR
- **Master’s Degree Year 1 with exchange in Canada (2018-2019)**
  - *Wilfrid Laurier University, Waterloo (Ontario), Canada*
  - Project management, Strategic analysis, Data analysis, Marketing (B2B, Service, etc.)
- **Bachelor’s Degree in Management (2017-2018)**
  - *Université Paris-Dauphine, Paris*
- **Preparatory Class for ENS Cachan D2 (2015-2017)**
  - *Lycée Victor & Hélène Basch, Rennes*
  - Economics & Management

## Formation <img src="Pictograms/FR.png" alt="FR" style="height: 15px; width: auto;"/>
- **Master 2 - Management Global (Parcours Magistère)** (2019-2020)
  - *Université Paris Dauphine*
  - Marketing, Business analytics, Gestion de Projet, Communication, Comptabilité, RSE
- **Master 1 en immersion au Canada** (2018-2019)
  - *Wilfrid Laurier University, Waterloo (Ontario), Canada*
  - Gestion de projet, Analyse stratégique, Analyse de données, Marketing (B2B, Service, etc.)
- **Licence de Gestion** (Parcours Magistère) (2017-2018)
  - *Université Paris Dauphine*
- **Classe préparatoire ENS Cachan D2** (2015-2017)
  - *Lycée Victor & Hélène Basch, Rennes*
  - Economie & Gestion

---

<a id="experiences"></a>
## Work experience <img src="Pictograms/GB.png" alt="GB" style="height: 15px; width: auto;"/>
- **Citeo** (Since May 2023) - Marketing Data Analyst
  - Analyzed customer behavior, optimized data flows, and created PowerBI dashboards for better insights and decision-making.
- **Citeo** (January 2021 - May 2023) - Marketing Project Manager
  - Production of marketing content, development of innovative strategies.
- **Amundi** (August 2019 - August 2020) - Part-time student as a Project & Marketing Manager
  - Marketing strategy, team coordination.
- **Clear Channel** (September 2017 - July 2018) - Part-time student as a Project & Marketing Manager
  - Production of marketing contents

## Expériences Professionnelles <img src="Pictograms/FR.png" alt="FR" style="height: 15px; width: auto;"/>
- **Citeo** (Depuis Mai 2023) - Analyste de Données Marketing
  - Analyse du comportement des clients, optimisation des flux de données et création de tableaux de bord PowerBI pour une meilleure compréhension et prise de décision.
- **Citeo** (Janvier 2021 - Mai 2023) - Chargé de Projet Marketing Stratégique
  - Production de contenu marketing, développement de stratégies innovantes.
- **Amundi** (Août 2019 - Août 2020) - Alternant Chargé de Projet & Marketing
  - Stratégie de marketing, coordination des équipes.
- **Clear Channel** (Septembre 2017 - Juillet 2018) - Alternant Chargé de Projet & Marketing
  - Production de documents marketing, analyse de communication.

## Contact

Si vous avez des questions ou souhaitez discuter d'opportunités, n'hésitez pas à me contacter directement par email à [damiendelonglee@gmail.com](mailto:damiendelonglee@gmail.com).

Connectez-vous avec moi sur [LinkedIn](https://www.linkedin.com/in/damiendelonglee).
