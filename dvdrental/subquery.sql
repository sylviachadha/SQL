/* Sub-Query
1. Performing query on results of another query or using results of another query.
2. Sub-query is executed first since its inside the parenthesis & then becomes part
of large query.
3. We can use IN operator in conjunction with sub-query to check against multiple
results returned.
4. Syntax-
   SELECT col_name FROM table_name
   WHERE EXISTS
   (SELECT col_name FROM
   table_name WHERE condition);
 */

SELECT * FROM film;

SELECT title, rental_rate FROM film
WHERE rental_rate >
(SELECT AVG(rental_rate) FROM film);

SELECT * FROM rental
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30';


SELECT return_date, inventory.film_id
FROM rental
INNER JOIN inventory ON rental.inventory_id = inventory.inventory_id
WHERE  rental.return_date BETWEEN '2005-05-29' AND '2005-05-30';


SELECT film_id, title
FROM film
WHERE film_id IN
(SELECT inventory.film_id
FROM rental
INNER JOIN inventory ON rental.inventory_id = inventory.inventory_id
WHERE  rental.return_date BETWEEN '2005-05-29' AND '2005-05-30')
ORDER BY title;


/* Find customers who have atleast 1 payment with amount > 11.
Grab first_name & last name of those customers */

SELECT * FROM payment;
SELECT * FROM customer;

SELECT DISTINCT first_name, last_name FROM customer
INNER JOIN payment ON customer.customer_id = payment.customer_id
WHERE payment.customer_id IN
(SELECT customer_id FROM payment
WHERE amount > 11)
ORDER BY first_name;


/* Same can be done using EXISTS*/

SELECT first_name, last_name FROM customer as c
WHERE EXISTS
(SELECT * FROM payment as p
WHERE p.customer_id = c.customer_id
AND amount > 11)
ORDER BY first_name;


/* Find customers who did not make any payment with amount > 11.
Grab first_name & last name of those customers */


SELECT first_name, last_name FROM customer as c
WHERE NOT EXISTS
(SELECT * FROM payment as p
WHERE p.customer_id = c.customer_id
AND amount > 11)
ORDER BY first_name;



