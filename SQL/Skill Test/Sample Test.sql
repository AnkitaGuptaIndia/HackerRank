/*
Count the Employees
The data for the number employed at several famous IT Companies is maintained in the COMPANY Table. 
Write a query to print the IDs of the companies that have more than 10000 employees, in ascending order of ID.

*/


SELECT ID
FROM company
WHERE employees>10000
ORDER BY ID;
