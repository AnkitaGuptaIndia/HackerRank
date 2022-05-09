/*
Business Expansion
As a part of Business Expansion efforts at a company, your help is needed to find all pairs of customers and agents who have been in contact more than once. 
For each such pair, display the user id, first name, and last name, and the customer_id, name and the number of their contacts. Order the result by user_id ascending.
There are 3 tables provided - customer, contact and user_account
*/

SELECT u.id, u.first_name, u.last_name, 
       c.id, c.customer_name, count(co.id) AS no_of_contacts
FROM customer c JOIN contact co ON c.id = co.customer_id
JOIN user_account u ON u.id = co.user_account_id
GROUP BY u.id, u.first_name, u.last_name, c.id, c.customer_name
HAVING no_of_contacts > 1;

/*
Customer Spending
List all customers who spent 25% or less than the average amount spent on all invoices. For each customer, display their name and amount spent to 6 decimal places. 
Order the result by the amount spent from high to low.
There are 2 tables provided - customer and invoice
*/

SELECT c.customer_name, round(sum(i.total_price), 6) AS amount_spent
FROM customer c JOIN invoice i ON c.id = i.customer_id
WHERE i.total_price < (SELECT avg(total_price) FROM invoice)*0.25
GROUP BY c.customer_name
ORDER BY amount_spent DESC;
