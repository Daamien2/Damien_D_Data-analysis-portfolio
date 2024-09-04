# Damien Delonglée - Data portfolio

## About <img src="GB.png" alt="GB" style="height: 15px; width: auto;"/>

Welcome, my name is Damien Delonglée. Explore my portfolio of data analysis projects. You'll find concrete examples of my work in data processing, visualization and reporting. These projects aim to demonstrate my methodical approach and technical skills in the field of data analysis.

You can also find my CV in [PDF](https://github.com/Daamien2/Damien_D_Data-analysis-portfolio/blob/main/CV%20Damien%20Delongl%C3%A9e%20(1).pdf)

## À propos  <img src="FR.png" alt="FR" style="height: 15px; width: auto;"/>

Bienvenue, je m'appelle Damien Delonglée. Explorez mon portfolio de projets d'analyse de données. Vous y trouverez des exemples concrets de travaux réalisés en traitement de données, création de visualisations et génération de rapports. Ces projets visent à démontrer mon approche méthodique et mes compétences techniques dans le domaine de l'analyse de données.

Retrouvez également mon CV en [PDF](https://github.com/Daamien2/Damien_D_Data-analysis-portfolio/blob/main/CV%20Damien%20Delongl%C3%A9e%20(1).pdf)

---
## Summary
* [Technical skills](#techniques)
* [Portfolio Projects](#ptfprojects)
* **Python**
  - [Projet 1 - Transaction analysis - Python](#python1)
  - [Projet 2 - Data cleansing - Python](#python2)
* **SQL**
  - [Projet - Voting data analysis - SQL](#sql1)
* **Tableau / Looker Studio**
  - [In progress](#viz1)
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
<img src="GB.png" alt="GB" style="height: 15px; width: auto;"/> - In this section, I'm going to introduce you to some data analysis projects, providing you with the work script, recommendations drawn from these analyses and briefly listing the technical skills used to solve the cases.

<img src="FR.png" alt="FR" style="height: 15px; width: auto;"/> - Dans cette section, je vais vous présenter des projets d'analyse de données en vous fournissant le script de travail, des recommandations tirées de ces analyses et en listant brièvement les compétences techniques utilisées pour résoudre les cas.

---

## Python
<a id="python1"></a>
### Projet 1
**<img src="GB.png" alt="GB" style="height: 15px; width: auto;"/> Optimisation of operations and sales strategies based on analysis of weekly transactions**

**<img src="FR.png" alt="FR" style="height: 15px; width: auto;"/> Optimisation des opérations et des stratégies de vente sur la base de l'analyse des transactions hebdomadaires**

**Script** : [Project link](https://gist.github.com/Daamien2/f9737d7d04cf27bb5386378b6f90a7c6)

**Dataset** : https://archive.ics.uci.edu/dataset/396/sales+transactions+dataset+weekly

**Skills**: 
- Data cleansing
- Exploratory data analysis (EDA)
- Visualisation

**Technologies** : Python, Pandas, Numpy, Seaborn, Matplotlib, Jupyter Notebook

**Description** : 

> <img src="GB.png" alt="GB" style="height: 15px; width: auto;"/> - This script processes and analyzes retail sales data extracted from an Excel file. The workflow includes data cleaning, detailed exploration of quantity and price distributions, and visualization of transaction volumes across different countries. The analysis delves into monthly and daily sales trends, including the identification of seasonal and weekly sales patterns. Additionally, the data is normalized to gain deeper insights into country-specific trends.

> <img src="FR.png" alt="FR" style="height: 15px; width: auto;"/> - Ce script traite et analyse des données sur les ventes au détail extraites d'un fichier Excel. Le flux de travail comprend le nettoyage des données, l'exploration détaillée des distributions de quantités et de prix, et la visualisation des volumes de transactions dans différents pays. L'analyse se penche sur les tendances des ventes mensuelles et quotidiennes, y compris l'identification des modèles de vente saisonniers et hebdomadaires. En outre, les données sont normalisées afin d'obtenir des informations plus approfondies sur les tendances propres à chaque pays.

**Key insights**

> <img src="GB.png" alt="GB" style="height: 15px; width: auto;"/>
> - Resource Optimization: Identifying daily and weekly activity peaks allows for more effective human resource planning by focusing efforts on critical times, such as lunchtime during weekdays.
> - Market-Specific Strategies: Observed differences between countries, particularly regarding the most active days, suggest that tailoring sales and marketing strategies to the specifics of each market could be beneficial.

> <img src="FR.png" alt="FR" style="height: 15px; width: auto;"/>
> - Optimisation des ressources : L'identification des pics d'activité quotidiens et hebdomadaires permet une planification plus efficace des ressources humaines en concentrant les efforts sur les moments critiques, comme l'heure du déjeuner en semaine.
> - Stratégies spécifiques au marché : Les différences observées entre les pays, notamment en ce qui concerne les jours les plus actifs, suggèrent qu'il pourrait être bénéfique d'adapter les stratégies de vente et de marketing aux spécificités de chaque marché.

---

<a id="python2"></a>
### Projet 2
**<img src="GB.png" alt="GB" style="height: 15px; width: auto;"/> Cleaning a database of trending videos on Youtube in France in 2017-2018 and correlation analysis**

**<img src="FR.png" alt="FR" style="height: 15px; width: auto;"/>  Nettoyage d'une base de données de vidéos tendances sur Youtube en France en 2017-2018 et analyse de corrélation**

**Script** : [Project link](https://gist.github.com/Daamien2/306513dc994ea779871e8a20b4f9199c)

**Dataset** : [YTFRvideos.xlsx](https://github.com/Daamien2/Stockage-data-portfolio/blob/main/YTFRvideos.xlsx)

**Skills**: 
- Data cleansing
- Exploratory data analysis (EDA)
- Correlation analysis

**Technologies** : Python, Pandas, Numpy, Seaborn, Matplotlib ticker, Jupyter Notebook

**Description** : 

> <img src="GB.png" alt="GB" style="height: 15px; width: auto;"/> - This script performs a comprehensive analysis of a dataset comprising YouTube videos, with detailed metrics such as views, likes, dislikes, and publication dates. It begins with thorough data cleansing, addressing special characters, standardizing date formats, and exploring the interplay between publication dates, view counts, and dislike proportions. The analysis includes visualizations such as graphs illustrating video performance over time and a detailed examination of the ratio of dislikes to views.

> <img src="FR.png" alt="FR" style="height: 15px; width: auto;"/> - Ce script effectue une analyse complète d'un ensemble de données composé de vidéos YouTube, avec des métriques détaillées telles que les vues, les likes, les dislikes et les dates de publication. Il commence par un nettoyage approfondi des données, en traitant les caractères spéciaux, en normalisant les formats de date et en explorant l'interaction entre les dates de publication, les nombres de vues et les proportions d'aversion. L'analyse comprend des visualisations telles que des graphiques illustrant les performances des vidéos au fil du temps et un examen détaillé du rapport entre le nombre de dislikes et le nombre de vues.

**Key insights**

> <img src="GB.png" alt="GB" style="height: 15px; width: auto;"/>
> - ?

> <img src="FR.png" alt="FR" style="height: 15px; width: auto;"/>
> - ?

---

## SQL
<a id="sql1"></a>
### Projet : 
**<img src="GB.png" alt="GB" style="height: 15px; width: auto;"/> Data cleansing and exploratory analysis of voting data from the 2022 French presidential elections**

**<img src="FR.png" alt="FR" style="height: 15px; width: auto;"/> Nettoyage de données et analyse exploratoire des données de vote des élections présidentielles françaises de 2022**

**Script** : [Project link](https://github.com/Daamien2/Damien_D_Data-analysis-portfolio/blob/main/Elections_2022_Circos.sql)

**Dataset** : 
  - [resultats-par-niveau-burvot-t1-france-entiere.csv](https://github.com/Daamien2/Damien_D_Data-analysis-portfolio/blob/main/resultats-par-niveau-burvot-t1-france-entiere.csv)
  - [resultats-par-niveau-cirlg-t1-france-entiere.csv](https://github.com/Daamien2/Damien_D_Data-analysis-portfolio/blob/main/resultats-par-niveau-cirlg-t1-france-entiere.csv)
  - [circo_composition.csv](https://github.com/Daamien2/Damien_D_Data-analysis-portfolio/blob/main/circo_composition.csv)

Source : [data.gouv.fr](https://www.data.gouv.fr/fr/pages/donnees-des-elections/)

**Description** : 

> <img src="GB.png" alt="GB" style="height: 15px; width: auto;"/> - This analysis covers electoral data for French districts for the year 2022. It includes checking the structure of the data tables, detecting duplicates and null values, and calculating key statistics such as the total number of registered voters, abstention rates, and blank and invalid vote rates. The script also performs in-depth analysis by department and region, merging constituency data with regional data to produce detailed reports on the distribution of registered voters and voters, as well as abstention rates and blank and invalid votes.

> <img src="FR.png" alt="FR" style="height: 15px; width: auto;"/> - Cette analyse porte sur les données électorales des circonscriptions françaises pour l'année 2022. Elle comprend la vérification de la structure des tables de données, la détection des doublons et des valeurs nulles, ainsi que le calcul de statistiques clés telles que le nombre total d'inscrits, les taux d'abstention, et les taux de votes blancs et nuls. Le script réalise également une analyse approfondie par département et région en fusionnant les données des circonscriptions avec celles des régions, afin de produire des rapports détaillés sur la répartition des inscrits et des votants, ainsi que sur les taux d'abstention, de votes blancs et nuls.

**Key insights**

> <img src="GB.png" alt="GB" style="height: 15px; width: auto;"/> - The data show significant disparities in abstention and turnout rates between constituencies, with significant variations between metropolitan and non-metropolitan regions. Some constituencies show extreme rates of abstention and blank votes, revealing marked differences in electoral engagement across the country.

> <img src="FR.png" alt="FR" style="height: 15px; width: auto;"/> - Les données montrent des disparités notables dans les taux d'abstention et de participation entre les circonscriptions, avec des variations significatives entre les régions métropolitaines et hors métropole. Certaines circonscriptions présentent des taux d'abstention et de votes blancs extrêmes, révélant des différences marquées dans l'engagement électoral à travers le pays.
> 
---

## Data visualisation (project in progress)
<a id="viz1"></a>
#### Project : Dynamic data visualisation report

---


<a id="certificates"></a>
## Certificates <img src="GB.png" alt="GB" style="height: 15px; width: auto;"/>
- **Data Analyst Certificate - Google** (July - December 2023)
  - Skills : Data analysis, Python, SQL, R, Looker Studio
  - Certificate in [PDF](https://github.com/Daamien2/Damien_D_Data-analysis-portfolio/blob/main/Google%20Data%20Analyst%20Certificate.pdf)
- **IBM Data Analyst Certificate** (January 2024 - April 2024)
  - Certificate in [PDF](https://github.com/Daamien2/Damien_D_Data-analysis-portfolio/blob/main/IBM%20Data%20Analyst%20Certificate.pdf)

## Certificats <img src="FR.png" alt="FR" style="height: 15px; width: auto;"/>
- **Data Analyst Certificate - Google** (July - December 2023)
  - Compétences : Analyse de données, Python, SQL, R, Looker Studio
  - Certificat en [PDF](https://github.com/Daamien2/Damien_D_Data-analysis-portfolio/blob/main/Google%20Data%20Analyst%20Certificate.pdf)
- **IBM Data Analyst Certificate** (January 2024 - April 2024)
  - Certificat en [PDF](https://github.com/Daamien2/Damien_D_Data-analysis-portfolio/blob/main/IBM%20Data%20Analyst%20Certificate.pdf)

---

<a id="formation"></a>
## Education <img src="GB.png" alt="GB" style="height: 15px; width: auto;"/>
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

## Formation <img src="FR.png" alt="FR" style="height: 15px; width: auto;"/>
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
## Work experience <img src="GB.png" alt="GB" style="height: 15px; width: auto;"/>
- **Citeo** (Since May 2023) - Marketing Data Analyst
  - Analyzed customer behavior, optimized data flows, and created PowerBI dashboards for better insights and decision-making.
- **Citeo** (January 2021 - May 2023) - Marketing Project Manager
  - Production of marketing content, development of innovative strategies.
- **Amundi** (August 2019 - August 2020) - Part-time student as a Project & Marketing Manager
  - Marketing strategy, team coordination.
- **Clear Channel** (September 2017 - July 2018) - Part-time student as a Project & Marketing Manager
  - Production of marketing contents

## Expériences Professionnelles <img src="FR.png" alt="FR" style="height: 15px; width: auto;"/>
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
