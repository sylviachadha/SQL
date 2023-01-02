/* Delete Syntax
   1. Can delete all rows from table
   2. Can delete selected rows from table
   3. Can delete rows based on another column
 */

SELECT * FROM job;

INSERT INTO job(job_name)
VALUES
    ('Cowboy');


DELETE FROM job
WHERE job_name = 'Cowboy'
RETURNING job_id, job_name; /* This returns deleted row*/




