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
WHERE title LIKE '%Truman%'