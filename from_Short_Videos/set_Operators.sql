/*
 Set operators:
 UNION, UNION ALL, INTERSECT, MINUS

 FOR SET OPERATORS TO WORK:
 - You need 2 independent queries
 - Same number of columns in Select statement
 - Same data type in same order
 */

select * from DEVELOPERS -- 3 columns
union
select * from TESTERS; -- 3 columns

-- UNION removes the duplicated rows, ascending
select NAMES from DEVELOPERS
union
select NAMES from TESTERS;

-- UNION ALL doesn't remove duplicated rows, and doen't sort
select NAMES from DEVELOPERS
union all
select NAMES from TESTERS;

-- MINUS returns the first query's rows that are not matching second query's rows
select NAMES from DEVELOPERS
minus
select NAMES from TESTERS;

-- INTERSECT
select NAMES from DEVELOPERS
intersect
select NAMES from TESTERS;
