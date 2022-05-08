/*
Query the total population of all cities in CITY where District is California.

Input Format

The CITY table is described as follows:
*/

SELECT sum(population)
FROM city
WHERE district = 'California';
