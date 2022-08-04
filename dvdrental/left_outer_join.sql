/* Left Outer Join*/
/* 1. Left Outer join results in a set of records that
are in left table. If there is no match with right table,
the results are null.
So rows common in both tables or rows exclusive to table A
will be returned while rows exclusive to table B will not be
returned.
2. It is a non-symmetrical join, so order will matter.
3. Syntax- (Table A is left table)
SELECT * FROM Table A
LEFT OUTER JOIN Table B
ON TableA.col_match = TableB.col_match
 */


SELECT * FROM inventory;


SELECT film.film_id, title, inventory_id, store_id
FROM film     -- all records from film, film is left table
LEFT JOIN inventory ON
inventory.film_id = film.film_id;


/* To find exclusive rows in table A */
SELECT film.film_id, title, inventory_id, store_id
FROM film     -- all records from film, film is left table
LEFT JOIN inventory ON
inventory.film_id = film.film_id
WHERE inventory.film_id IS NULL;


