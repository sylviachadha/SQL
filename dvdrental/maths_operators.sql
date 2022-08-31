/*Mathematical Functions and Operators
  https://www.postgresql.org/docs/9.5/functions-math.html*/

SELECT * FROM film;

/* What percentage of replacement cost is rental rate?*/
SELECT round(rental_rate/replacement_cost,4)*100 AS percent_cost FROM film;


/* 10% of replacement cost as deposit*/
SELECT 0.1*replacement_cost AS deposit FROM film;