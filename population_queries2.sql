-- How many entries in the database are from Africa?
SELECT COUNT(*)
FROM countries
WHERE continent = 'Africa';


-- What was the total population of Oceania in 2005?
SELECT countries.continent AS 'Continent', SUM(population_years.population) AS 'Total Population'
FROM countries
JOIN population_years
ON countries.id = population_years.country_id
WHERE population_years.year = 2005 AND countries.continent = 'Oceania'
GROUP BY countries.continent;

-- What is the average population of countries in South America in 2003?
SELECT countries.continent AS 'Continent', AVG(population_years.population) AS 'Average Population'
FROM countries
JOIN population_years
ON countries.id = population_years.country_id
WHERE population_years.year = 2003 AND countries.continent = 'South America'
GROUP BY countries.continent;


-- What country had the smallest population in 2007?
SELECT countries.name AS 'Country', MIN(population_years.population) AS 'Population'
FROM countries
JOIN population_years
ON countries.id = population_years.id;


-- What is the average population of Poland during the time period covered by this dataset?
SELECT countries.name AS 'Country', AVG(population_years.population) AS 'Average Population'
FROM countries
JOIN population_years
ON countries.id = population_years.country_id
WHERE countries.name = 'Poland';


-- How many countries have the word "The" in their name?
SELECT COUNT(*)
FROM countries
WHERE name LIKE '%The%';


-- What was the total population of each continent in 2010?
SELECT countries.continent AS 'Continent', SUM(population_years.population) AS 'Total Population'
FROM countries 
JOIN population_years
ON countries.id = population_years.country_id
WHERE population_years.year = 2005
GROUP BY countries.continent;


