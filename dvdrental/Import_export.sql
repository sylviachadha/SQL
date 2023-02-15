/* IMPORT AND EXPORT */


/*https://www.jetbrains.com/datagrip/features/importexport.html#:~:text=Import%20CSV&text=Click%20the%20schema%20you%20wish,where%20your%20data%20is%20stored.*/


/* The import command does not create a table
for you, it assumes a table is already created
in same format as the file.
 */

CREATE TABLE simple_import(
    a INTEGER,
    b INTEGER,
    c INTEGER
);

SELECT * FROM simple_import; /*empty*/

/* Now to put information in this table
   using the csv file, currently empty table
   Choose import data from file option
 */

SELECT * FROM simple_import; /*contains data from csv*/

/*EXPORT*/

/* Can also export contents of a table as a .csv
or a .txt file
Use Export data to file option */

