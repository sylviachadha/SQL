/* 1. LIMIT allows us to limit number of rows returned for a query
2. Useful when u do not want to view every single row but just first
few rows to get an idea of table layout.
3. LIMIT useful in combination with ORDER BY
4. LIMIT goes at very end of query & is last command to be executed
cz after u r done with filtering, ordering, LIMIT just says how many
rows u want at the end of the day*/

/* To get an idea of table layout*/
SELECT * FROM payment
LIMIT 1;


/*5 most recent payments based on payment dates*/
SELECT * FROM payment
ORDER BY payment_date DESC
LIMIT 5;


/*5 most recent payments based on payment dates
and amount not equal to 0*/
SELECT * FROM payment
WHERE amount != 0
ORDER BY payment_date DESC
LIMIT 5;

