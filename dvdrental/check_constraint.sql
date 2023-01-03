/*Check Constraint*/

/* To create more customised constraints that adhere to
   certain condition such as making sure all integers fall
   below certain threshold */

CREATE TABLE employees(
    emp_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    birthdate DATE CHECK ( birthdate > '1900-01-01' ), /* check constraint against date*/
    hire_date DATE CHECK ( hire_date > birthdate ),    /* check constraint against another column*/
    salary INTEGER CHECK ( salary > 0 )                /* check constraint against salary*/
);

/* Insert values into this table*/
INSERT INTO employees(first_name, last_name, birthdate, hire_date, salary)
   VALUES
     ('Jose','Portilla','1899-11-03', '2010-01-01', 100);

/* You get error- since birthdate entered is before 1900-01-01
   [23514] ERROR: new row for relation "employees" violates check constraint
   "employees_birthdate_check" Detail: Failing row contains
   (1, Jose, Portilla, 1899-11-03, 2010-01-01, 100).
 */

/* Insert values into this table*/
INSERT INTO employees(first_name, last_name, birthdate, hire_date, salary)
   VALUES
     ('Sam','Martin','1980-11-03', '2010-01-01', -100);

/*[23514] ERROR: new row for relation "employees" violates check constraint "employees_salary_check"
Detail: Failing row contains (3, Sam, Martin, 1999-11-03, 2010-01-01, -100).*/


/* Insert values into this table*/
INSERT INTO employees(first_name, last_name, birthdate, hire_date, salary)
   VALUES
     ('Jose','Portilla','1990-11-03', '2010-01-01', 100),
     ('Sam','Martin','1980-11-03', '2010-01-01', 1100);
/* Successful execution for above query*/

SELECT * FROM employees;

