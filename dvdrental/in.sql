/* IN
When u want to check for multiple possible value options,
instead of multiple OR operators u can use IN operator.
IN checks to see if a value is included in list of multiple
options
Syntax: value IN(option1, option2, .... option_n)*/

SELECT * FROM payment
LIMIT 3;

SELECT DISTINCT(amount) FROM payment
ORDER BY amount;

SELECT * FROM payment
WHERE amount IN (0.99,1.98,1.99);

SELECT COUNT(*) FROM payment
WHERE amount IN (0.99,1.98,1.99);

SELECT COUNT(*) FROM payment
WHERE amount NOT IN (0.99,1.98,1.99);

SELECT * FROM customer
WHERE first_name IN ('Jake','John','Julie');


SELECT * FROM customer
WHERE first_name NOT IN ('Jake','John','Julie');

