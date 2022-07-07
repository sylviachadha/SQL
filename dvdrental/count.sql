/*
1. COUNT keyword return number of i/p rows that match specific condition of query.
2. Apply count on specific column or just COUNT(*), same result cz each
column will have same rows as they r in same table.
3. COUNT needs parenthesis cz it is a function acting on something.
4. COUNT is more useful when use with other commands such as DISTINCT
5. Syntax: SELECT COUNT(column_name) FROM table_name
6. Syntax: SELECT COUNT(DISTINCT(column_name)) FROM table_name
7. In a DB, table records r huge, u cannot just scroll down, so use COUNT.
*/

SELECT COUNT(*) FROM payment;

SELECT COUNT(amount) FROM payment;

/* Calculate number of unique amounts */

SELECT COUNT(DISTINCT(amount)) FROM payment;

