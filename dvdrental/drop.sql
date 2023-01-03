/* Drop
1. drop removes column of table, its indexes & constraints.
2. drop does not remove col's used in views, triggers, or stored procedures
if want to remove column that has those dependencies of views, triggers, or
stored procedures then need to use an additional cascade clause to remove that
column & its associated dependencies.
 */

/* ALTER TABLE table_name
   DROP COLUMN col_name CASCADE
 */

ALTER TABLE new_info
DROP COLUMN IF EXISTS people;

SELECT * FROM new_info;