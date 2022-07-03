/*
1. DISTINCT keyword is used to return only distinct values in a column
2. DISTINCT keyword operates on a column
3. Syntax: SELECT DISTINCT (column_name) FROM table_name
*/

SELECT * FROM film;

SELECT DISTINCT release_year FROM film;   /*or*/
SELECT DISTINCT (release_year) FROM film;

SELECT DISTINCT (rental_rate) FROM film;

/*Q1 - What types of ratings we have in database? */

SELECT DISTINCT (rating) FROM film;


