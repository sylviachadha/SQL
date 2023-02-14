/* COALESCE function
1. Returns the first non-null value
2. Useful when querying a table that contains null
value & substituting it with another value maybe 0
so can perform mathematical calculations*/

/* SELECT item,(price - COALESCE(discount, 0))
   AS final FROM table

Here if discount is not null value it will
pick that, but in case it is null value, then
it will move to next value which is 0 which
is not null hence subtract 0 from price
indicating no discount on item */

