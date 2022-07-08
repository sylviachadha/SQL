/*
1. WHERE statement allows us to specify conditions on columns for rows to be returned.
2. Syntax:
SELECT column1, column2
FROM table_name
WHERE conditions;

3. WHERE clause appears immediately after FROM clause of SELECT statement.
4. Operators to construct conditions are Comparison Operators and Logical Operators
*/

SELECT * FROM customer
WHERE first_name='Jared';

SELECT * FROM film
WHERE rental_rate > 4;

/*AND logical operator*/
SELECT * FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99;


/* Multiple conditions together*/
SELECT * FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99
AND rating = 'R';

/* Only selected columns in result*/
SELECT title FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99
AND rating = 'R';

/*Count based on conditions*/
SELECT COUNT(title) FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99
AND rating = 'R';


SELECT COUNT(*) FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99
AND rating = 'R';

/* OR logical operator*/
SELECT COUNT(*) FROM film
WHERE rating = 'R' OR rating = 'PG-13';

/* Not equal to logical operator*/
SELECT * FROM film
WHERE rating != 'R';


/* Ques1- What is email of customer with name Nancy Thomas?*/

SELECT email FROM customer
WHERE first_name = 'Nancy' AND last_name = 'Thomas';


/* Ques2- TO give customer the description for movie 'Outlaw Hanky'*/

SELECT description FROM film
WHERE title = 'Outlaw Hanky';


/* Ques3- To get phone number for customer who lives at '259 Ipoh Drive'?*/
/* A table and column can have same name as below- both are address */

SELECT phone FROM address
WHERE address = '259 Ipoh Drive';


