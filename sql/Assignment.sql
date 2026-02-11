--1) Retrieve all cities from the City table where the population is greater than 1 million

use world

select * from city

select * from city where  population > 1000000


--Get all countries from the Country table where the life expectancy is greater than 75 years.

select * from country
where lifeExpectancy > 75


-- Find all cities in the City table that belong to the country with the code 'USA'.
select * from city
WHERE countrycode = "USA"


--4) List all countries where the government form is a republic.
select * from country
where governmentform = "republic"

--Retrieve all languages from the CountryLanguage table where the language is spoken by more than 50% of the population.

select * from countrylanguage
where percentage > 50