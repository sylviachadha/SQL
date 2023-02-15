/*NULLIF*/

/* Nullif takes in 2 inputs & returns null
if both equal, else it returns first argument
passed. Useful in cases where null would cause
an error or unwanted result.
Syntax -
NULLIF(arg1, arg2)
*/

CREATE TABLE depts(
first_name VARCHAR(50),
department VARCHAR(50)
);

INSERT INTO depts(
first_name,department
)
VALUES
('Vinton', 'A'),
('Lauren', 'A'),
('Claire', 'B');

SELECT * FROM depts;

SELECT
SUM (CASE department
    WHEN 'A' THEN 1 ELSE 0
END) AS department_A,
SUM (CASE department
    WHEN 'B' THEN 1 ELSE 0
END) AS department_B
FROM depts;


/* Find Ratio of departments*/

SELECT (
SUM(CASE WHEN department='A' THEN 1 ELSE 0 END )/
SUM(CASE WHEN department='B' THEN 1 ELSE 0 END )
 ) AS department_ratio
FROM depts;

DELETE FROM depts
WHERE department='B';

SELECT * FROM depts;

/* Now since no records of B so in below code
you are attempting to divide by 0, hence you
get divide by 0 error */

SELECT (
SUM(CASE WHEN department='A' THEN 1 ELSE 0 END )/
SUM(CASE WHEN department='B' THEN 1 ELSE 0 END )
 ) AS department_ratio
FROM depts;

/* Use NULLIF to ensure instead of getting error
we just get null */

SELECT (
SUM(CASE WHEN department='A' THEN 1 ELSE 0 END )/
NULLIF(SUM(CASE WHEN department='B' THEN 1 ELSE 0 END ),0)
/* If both 0 then will return a null else return 1st argument*/
 ) AS department_ratio
FROM depts;

/* Now if we divide by null we get null instead
of divide by 0 error */


