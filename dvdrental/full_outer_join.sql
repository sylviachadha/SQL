/* Full Outer Join*/
/* 1. Symmetrical. Order in which tables are
written does not matter u r going to grab
everything anyways.
 */

SELECT * FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id;


SELECT * FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id --Joined both tables on customer_id
WHERE customer.customer_id IS NULL
OR payment.payment_id IS NULL;


SELECT COUNT(DISTINCT customer_id) FROM customer;
SELECT COUNT(DISTINCT customer_id) FROM payment;


