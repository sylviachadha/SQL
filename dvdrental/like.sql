/* Patten Matching with regex - regular expression
1. Instead of direct matching first name, we want all names
that begin with 'A' or all emails ending in '@gmail.com'.
2. LIKE - to perform pattern matching against string data
with use of wildcard characters- % and _
3. % matches any sequence of characters
4. _ matches any single character
5. LIKE is case sensitive
6. ILIKE is case insensitive */

/* How many people have name that starts with J*/
SELECT COUNT(*) FROM customer
WHERE first_name LIKE 'J%';


SELECT * FROM customer
WHERE first_name LIKE 'J%' AND last_name LIKE 'S%';


SELECT * FROM customer
WHERE first_name ILIKE 'j%' AND last_name ILIKE 's%';


SELECT * FROM customer
WHERE first_name LIKE '%er%'; /*er can also be at end*/


SELECT * FROM customer
WHERE first_name LIKE '_her%';


SELECT * FROM customer
WHERE first_name NOT LIKE '_her%';


SELECT * FROM customer
WHERE first_name LIKE 'A%' AND last_name NOT LIKE 'B%'
ORDER BY last_name;


