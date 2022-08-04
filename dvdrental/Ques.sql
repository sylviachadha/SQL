/* Q1 - How many payment txn's were greater than 5$ ?*/
SELECT COUNT(amount) FROM payment
WHERE amount > 5;


/* Q2 - How many actors have first name that starts with letter P?*/
SELECT COUNT(*) FROM actor
WHERE first_name LIKE 'P%';


/* Q3 - How many unique districts are our customers from?*/
SELECT COUNT (DISTINCT(district)) FROM address;


/* Q4 -  Retrieve list of names for distinct districts*/
SELECT DISTINCT(district) FROM address;


/* Q5 - How many films have rating 'R' & replacement cost b/w $5 and $15?*/
SELECT COUNT(*) FROM film
WHERE rating='R' AND replacement_cost BETWEEN 5 AND 15;


/* Q6 - How many films have word Truman somewhere in title?*/
SELECT * FROM film
WHERE title LIKE '%Truman%';


/* Q7 - Return the customer IDs of customers who have spent at least $110 with
the staff member who has an ID of 2. */

SELECT customer_id, SUM(amount)
FROM payment
WHERE staff_id=2
GROUP BY customer_id
HAVING SUM(amount) > 110;


/* Q8 - How many films begin with the letter J?*/

SELECT * FROM film;

SELECT COUNT(*)
FROM film
WHERE title LIKE 'J%';


/* Q9 - What customer has the highest customer ID number whose name starts
with an 'E' and has an address ID lower than 500?*/

SELECT * FROM customer;

SELECT first_name,last_name FROM customer
WHERE first_name LIKE 'E%' AND address_id<500
ORDER BY customer_id DESC
LIMIT 1;


