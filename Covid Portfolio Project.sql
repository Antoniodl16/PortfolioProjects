SELECT *
FROM PortfolioProject.covid_deaths
ORDER BY 3,4;

SELECT *
FROM PortfolioProject.covid_vaccinations
ORDER BY 3,4;

-- SELECT DATA THAT WE ARE GOING TO BE USING

SELECT location, date, total_cases, new_cases, total_deaths, population
FROM PortfolioProject.covid_deaths
ORDER BY 1,2;

-- LOOKING AT TOTAL CASES VS TOTAL DEATHS
-- SHOWS LIKELIHOOD OF DYING IF YOU CONTRACT COVID IN YOUR COUNTRY
SELECT location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 AS DeathPercentage
FROM PortfolioProject.covid_deaths
WHERE location = 'Mexico'
ORDER BY 1,2;

-- LOOKING AT THE TOTAL CASES VS POPULATION
-- SHOWS WHAT PERCENTAGE OF POPULATION GOT COVID
SELECT location, date, Population, total_cases, (total_cases/population)*100 AS PercentPopulationInfected
FROM PortfolioProject.covid_deaths
WHERE location = 'United States'
ORDER BY 1,2;

-- LOOKING AT COUNTRIES WITH HIGHEST INFECTION RATE COMPARED TO POPULATION

SELECT Location, Population, MAX(total_cases) AS HighestInfectionCount, MAX((total_cases/population))*100 AS PercentPopulationInfected
FROM PortfolioProject.covid_deaths
GROUP BY Location, Population
ORDER BY PercentPopulationInfected DESC;

-- SHOWING COUNTRIES WITH HIGHEST DEATH COUNT PER POPULATION
SELECT Location, MAX(total_deaths) AS TotalDeathCount
FROM PortfolioProject.covid_deaths
GROUP BY Location
ORDER BY TotalDeathCount DESC;

-- SHOWING THE CONTINENT WITH THE HIGHEST DEAD COUNT
SELECT Continent, MAX(total_deaths) AS TotalDeathCount
FROM PortfolioProject.covid_deaths
WHERE Continent is not NULL
GROUP BY Continent
ORDER BY TotalDeathCount DESC;

-- LOOKING AT TOTAL POPULATION VS VACCINATIONS

SELECT dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations,
 SUM(vac.new_vaccinations) OVER (Partition by dea.location ORDER BY dea.location, dea.date) AS RollingPeopleVaccinated
FROM PortfolioProject.covid_deaths dea
JOIN PortfolioProject.covid_vaccinations vac
	ON dea.location = vac.location
    AND dea.date = vac.date
WHERE dea.continent is not NULL
ORDER BY 2,3;







    







