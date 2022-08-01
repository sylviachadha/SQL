/*Aggregate function- to take multiple inputs & return a single output
Most common aggregate functions r AVG(), COUNT(*), MAX(), MIN(), SUM()
Aggregate function calls happen only in SELECT or HAVING clause.
ROUND() for rounding decimal places*/

SELECT * FROM film;

SELECT MIN(replacement_cost) FROM film;

SELECT MAX(replacement_cost) FROM film;

SELECT MAX(replacement_cost), MIN(replacement_cost)
FROM film;

SELECT COUNT(*) FROM film; /*or say*/
SELECT COUNT(film_id) FROM film;

SELECT ROUND(AVG(replacement_cost),2) FROM film;

SELECT SUM(replacement_cost) FROM film;


