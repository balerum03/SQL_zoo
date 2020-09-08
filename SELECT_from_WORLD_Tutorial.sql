/*number 1*/
SELECT name, continent, population FROM world
/*number 2*/
SELECT name FROM world
WHERE population >= 200000000
/*number 3*/
SELECT name, gdp/population
FROM world
WHERE population >200000000
/*number 4*/
SELECT name, population/1000000
FROM world
WHERE continent= 'South America'
/*number 5*/
SELECT name, population
FROM world
WHERE name IN ('France', 'Germany', 'Italy')
/*number 6*/
SELECT name
FROM world
WHERE name LIKE 'United%'
/*number 7*/
SELECT name, population, area
FROM world
WHERE population> 250000000 or area>3000000
/*number 8*/
SELECT name, population, area
FROM world
WHERE area>3000000 xor population>250000000
/*number 9*/
SELECT name, ROUND(population/1000000,2), ROUND(gdp/1000000000,2)
FROM world
WHERE continent = 'South America'
/*number 10*/
SELECT name, ROUND(gdp/population,-3)
FROM world
WHERE gdp>=1000000000000
/*number 11*/
SELECT name, capital
FROM world
WHERE LENGTH(name)=LENGTH(capital)
/*number 12*/
SELECT name, capital
FROM world
WHERE LEFT(name,1) = LEFT(capital,1) and capital <> name
/*number 13*/
SELECT name
FROM world
WHERE name LIKE '%a%' AND
name  LIKE '%e%' AND
name  LIKE '%i%' AND
name  LIKE '%o%' AND
name  LIKE '%u%' AND
name NOT LIKE '% %'
