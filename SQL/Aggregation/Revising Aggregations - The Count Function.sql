/*
Query a count of the number of cities in CITY having a Population larger than .

Input Format

The CITY table is described as follows:
*/

SELECT count(id)
FROM city
WHERE population > 100000;
