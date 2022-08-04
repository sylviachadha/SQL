/* AS CLAUSE
1. AS clause allows us to create alias for column name or
aggregated result
2. Syntax-
SELECT column AS new_name FROM table
SELECT SUM(column) AS new_name FROM table
3. Its for better readability of output e.g.
instead of SUM(amount) we can say net_revenue
which gives meaning of o/p we r calculating
4. Note - AS operator gets exceuted at very end of query,
meaning we cannot use alias inside a WHERE/HAVING clause.
Only use alias inside a SELECT statement, anywhere else
it is not going to be valid
*/

SELECT amount FROM payment;

SELECT amount AS rental_price
FROM payment;

SELECT COUNT(amount) FROM payment;

SELECT COUNT(amount) AS num_transactions
FROM payment;

SELECT customer_id, SUM(amount) AS total_Spent
FROM payment
GROUP BY customer_id;


SELECT customer_id, SUM(amount) AS total_Spent
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100;


SELECT customer_id,amount as new_name
FROM payment
WHERE amount > 2;



