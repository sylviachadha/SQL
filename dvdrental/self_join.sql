/* Self Join
1. A self join is a query in which a table is joined to itself.
2. It can be viewed as a join of 2 copies of same table. The table
is not actually copied but SQL performs command as though it were.
3. When using self join it is necessary to use alias for table else
the table names would be ambiguous.
4. SELECT tableA.col, tableB.col
   FROM table as tableA
   JOIN table as tableB ON
   tableA.some_col = tableB.other_col
*/

/* Q1-Find all pairs of films that have the same length*/

SELECT * FROM film;

SELECT film_a.title,film_b.title, film_a.length
FROM film AS film_a
INNER JOIN film AS film_b
ON film_a.length = film_b.length;


SELECT film_a.title,film_b.title, film_a.length
FROM film AS film_a
INNER JOIN film AS film_b
ON film_a.length = film_b.length
AND film_a.film_id != film_b.film_id;


