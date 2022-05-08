/*
Query all columns for all American cities in CITY with populations larger than 100,000. The CountryCode for America is USA.
Input Format
The CITY table is described as follows:
+-------------+--------------+
| Field       | Type         |
+-------------+--------------+
| ID          | NUMBER       |
| NAME        | VARCHAR2(17) |
| COUNTRYCODE | VARCHAR2(3)  |
| DISTRICT    | VARCHAR2(20) |
| POPULATION  | NUMBER       |
+-------------+--------------+
*/

select * 
from city 
where population > 100000 and countrycode = 'USA';
