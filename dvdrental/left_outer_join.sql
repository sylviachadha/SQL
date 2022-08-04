/* Left Outer Join*/
/* 1. Left Outer join results in a set of records that
are in left table. if there is no match with right table,
the results are null.
So rows common in both tables or rows exclusive to table A
will be returned while rows exclusive to table B will not be
returned.
2. It is a non-symmetrical join, so order will matter.
 */


SELECT * FROM inventory;


SELECT film.film_id, title, inventory_id, store_id
FROM film     -- all records from film, film is left table
LEFT JOIN inventory ON
inventory.film_id = film.film_id;


SELECT film.film_id, title, inventory_id, store_id
FROM film     -- all records from film, film is left table
LEFT JOIN inventory ON
inventory.film_id = film.film_id
WHERE inventory.film_id IS NULL;


