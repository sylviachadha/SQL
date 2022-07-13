/*
1. Use ORDER BY to sort rows based on a column value either in asc or dec
order. If u just say ORDER BY default will be asc.
2. This would be alphabetical for string based columns.
3. This would be numerical order for numerical columns.

4. Syntax:
SELECT column_1, column_2
FROM table_name
ORDER BY column_1 ASC/DESC

5. ORDER BY will be at end of query since we want to do any selection &
filtering first, before sorting.
6. ORDER BY is one of v last things that SQL actually performs.
7. ORDER BY can be used on multiple col's.
*/

SELECT * FROM customer
ORDER BY first_name;

SELECT * FROM customer
ORDER BY first_name ASC;

SELECT * FROM customer
ORDER BY first_name DESC;

SELECT store_id,first_name,last_name FROM customer
ORDER BY store_id;

SELECT store_id,first_name,last_name FROM customer
ORDER BY store_id,first_name;

SELECT store_id,first_name,last_name FROM customer
ORDER BY store_id DESC ,first_name ASC;


/* Technically u can sort on columns which u  did not request in
select but makes more sense to select the column u r ordering by*/

SELECT first_name,last_name FROM customer
ORDER BY store_id DESC ,first_name ASC;


/* Ques - What are customer id's of first 10 customers who created a payment?*/

SELECT * FROM payment;
SELECT * FROM customer;

SELECT customer_id FROM payment
ORDER BY payment_date ASC
LIMIT 10;

/* What are titles of 5 shortest (in length of runtime) movies? */

SELECT * FROM film;

SELECT title,length FROM film /* length is also a SQL keyword but here is a column name*/
ORDER BY length ASC
LIMIT 5;

/* FInd movies shorter in length than 50*/

SELECT COUNT(title) FROM film
WHERE length <= 50;

/*or*/

SELECT COUNT(*) FROM film
WHERE length <= 50;


