/*CAST*/

/* Cast operator lets u convert from one
data type to other. Used on a column
using SELECT instead of single instance*/

/* Syntax
1. SELECT CAST('5' AS INTEGER)
2. SELECT '5'::INTEGER
 */

SELECT CAST(5 AS INTEGER);

SELECT 5::INTEGER;


/* To check length, we convert inventory_id to string from integer */
SELECT CHAR_LENGTH(CAST(inventory_id AS VARCHAR)) FROM rental;

