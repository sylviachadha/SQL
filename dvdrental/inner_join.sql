/*Inner Join
1. Joins allow us to combine multiple tables together.
2. An inner join is looking for matches that exist
within both tables.
3. Syntax-
SELECT * FROM TableA
INNER JOIN TableB
ON TableA.col_match = TableB.col_match
4. Inner join is symmetrical
TableA join TableB
TableB join TableA both give same results */

SELECT *
FROM payment
INNER JOIN customer
ON PAYMENT.customer_id = customer.customer_id;


SELECT payment_id,payment.customer_id, first_name
FROM payment
INNER JOIN customer
ON PAYMENT.customer_id = customer.customer_id;


SELECT payment_id,payment.customer_id, first_name
FROM customer
INNER JOIN payment
ON PAYMENT.customer_id = customer.customer_id;

