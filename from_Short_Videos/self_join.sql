-- self join
/*
syntax:
        select Columns from Table1 a join Table1 b on a.key = b.key
*/

select EMPLOYEE_ID, FIRST_NAME, LAST_NAME, MANAGER_ID from EMPLOYEES;

select E1.EMPLOYEE_ID, E1. FIRST_NAME, E1.LAST_NAME, E1.MANAGER_ID, E2.FIRST_NAME, E2.LAST_NAME
from EMPLOYEES E1 join EMPLOYEES E2
on e1.MANAGER_ID = e2.EMPLOYEE_ID;

select E1.EMPLOYEE_ID, E1. FIRST_NAME, E1.LAST_NAME, E1.MANAGER_ID, E2.FIRST_NAME || ' ' || E2.LAST_NAME as FullName
from EMPLOYEES E1 join EMPLOYEES E2
on e1.MANAGER_ID = e2.EMPLOYEE_ID;

select E2.FIRST_NAME || ' ' || E2.LAST_NAME as "Manager FullName", count(*)
from EMPLOYEES E1 join EMPLOYEES E2
on e1.MANAGER_ID = e2.EMPLOYEE_ID
group by E2.FIRST_NAME || ' ' || E2.LAST_NAME;

