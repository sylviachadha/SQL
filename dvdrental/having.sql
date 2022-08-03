/*1. Having - allows us to filter after an aggregation has
  already taken place, so comes after groupby clause.
  2. Having allows us to use aggregate result as a filter
  along with groupby
  3. It can be thought of as WHERE statement but only for
  something that is being aggregated through groupby
 */

SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100;


SELECT store_id, COUNT(customer_id)
FROM customer
GROUP BY store_id;


SELECT store_id, COUNT(customer_id)
FROM customer
GROUP BY store_id
HAVING COUNT(customer_id)>300;


SELECT * FROM payment;


SELECT customer_id, COUNT(*)
FROM payment
GROUP BY customer_id
HAVING  COUNT(*) >= 40;

SELECT customer_id,staff_id, SUM(amount)
FROM payment
WHERE staff_id=2
GROUP BY customer_id,staff_id
HAVING SUM(amount) > 100;

