/* Right Outer Join*/
/* 1. Right Outer join results in a set of records that
are in right table. If there is no match with left table,
the results are null.
So rows common in both tables or rows exclusive to table B
will be returned while rows exclusive to table A will not be
returned.
2. It is a non-symmetrical join, so order will matter.
3. Syntax - (Table B is right table)
SELECT * FROM TABLE A
RIGHT OUTER JOIN Table B
ON TableA.col_match = TableB.col_name
4. U can get same results as above by doing left outer join as well
SELECT * FROM TABLE B
LEFT OUTER JOIN Table A
ON TableA.col_match = TableB.col_name
5. Right join is actually a left join with tables flipped
as above.
 */





