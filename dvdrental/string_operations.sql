/*String Functions and Operators
These allow us to edit, combine & alter text data columns
https://www.postgresql.org/docs/9.5/functions-string.html
*/

SELECT * FROM customer;

SELECT LENGTH(first_name), first_name FROM customer;

SELECT first_name||last_name AS full_name FROM customer;

SELECT first_name || ' ' || last_name AS full_name FROM customer;

SELECT UPPER(first_name) || ' ' || UPPER(last_name) AS full_name FROM customer;


SELECT first_name||last_name||'gmail.com' FROM customer;
SELECT LEFT(first_name,1) || last_name || 'gmail.com' FROM customer;
SELECT LOWER(LEFT(first_name,1)) || LOWER(last_name) || 'gmail.com' AS customer_email FROM customer;

