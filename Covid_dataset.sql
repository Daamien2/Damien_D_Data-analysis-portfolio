SELECT country_name, state_name, deaths, recovered, active, refresh_date, last_updated
FROM `covid-assistant.covid.world_covid` 
WHERE country_name = "France" AND state_name = "French Guiana" AND EXTRACT(YEAR FROM refresh_date)=2022
ORDER BY refresh_date DESC
LIMIT 1000
