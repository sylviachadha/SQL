/* BETWEEN
1. To match a value against a range of values
2. e.g. value BETWEEN low AND high (low & high r inclusive)
3. e.g. value NOT BETWEEN low AND high (low & high exclusive)
4. It is same as using where value >=low and <=high
5. BETWEEN used with date format 'YYYY-MM-DD' */

/* Show number of payments done b/w 8 and 9 dollars*/
SELECT * FROM payment;

SELECT * FROM payment
WHERE amount BETWEEN 8 AND 9;

SELECT COUNT(*) FROM payment
WHERE amount BETWEEN 8 AND 9;

SELECT * FROM payment
WHERE amount NOT BETWEEN 8 AND 9;

SELECT COUNT(*) FROM payment
WHERE amount NOT BETWEEN 8 AND 9;

/* Find payments from 1st to 15th Feb 2007*/
SELECT * FROM payment
WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-16';

