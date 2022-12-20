-- to change the name of the displayed column 
select first_name as GIVEN_NAME
from employees;

select first_name as GIVEN_NAME, last_name SURNAME
from employees;

select first_name as "GIVEN_NAME", last_name "SURNAME"
from employees;

-- Text functions

-- for concatenation ||

select first_name || ' ' || last_name as "Full name"
from employees;

select email ||'@companyName.com' 
from employees;

-- make lowercase
select lower(email ||'@companyName.com') as "e-mail address"
from employees;

-- make uppercase
select upper(email ||'@companyName.com') as "e-mail address"
from employees;

-- length(value)
select first_name, length(first_name) as "name_length"
from employees
order by "name_length" asc;

select first_name from employees;

-- substr(colName, begIndex, numberOfChar)
select substr(first_name, 0, 1)||'.'|| substr(last_name, 0, 1) as "initials" from employees;

-- same result

select substr(first_name, 1, 1)||'.'|| substr(last_name, 1, 1) as "initials" from employees;

select substr(first_name, 1, 1)||'.'|| substr(last_name, 1, 1) as "initials", 
first_name || ' ' || last_name as "Full name",
lower(email ||'@companyName.com') as "e-mail address"
from employees;

--VIEW
/*
Virtual tables. View does not contain data but it
contains the query that retrieve the data from database.
*/
create VIEW EmailList as select substr(first_name, 1, 1)||'.'|| substr(last_name, 1, 1) as "initials", 
first_name || ' ' || last_name as "Full name",
lower(email ||'@companyName.com') as "e-mail address"
from employees;

select "Full name" 
from emaillist;

--to remove view
drop view EmailList;

