-- get info who is working as IT_PROG or SA_REP

select * from employees
where job_id in ('IT_PROG', 'SA_REP');

-- how many employees working as IT_PROG or SA_REP
select count(*) from employees
where job_id in ('IT_PROG', 'SA_REP');

-- how many employees making more than 8000
select count(*) from employees
where salary > 8000;

-- how many unique first names we have
select count(distinct first_name) from employees;

-- get all employee information based on who is making more salary to low salary
select * from employees
order by salary desc;

-- get all employee information based on who is making low salary to more salary
select * from employees
order by salary asc;

-- get all employee info order by alphabetical based on first name
select * from employees
order by first_name asc;

-- Note: default order type is asc if you don't specify after column name 
select * from employees
order by first_name;

-- get all employees whose first name starts with C
select *
from employees
where first_name like 'C%';

-- get all employees whose first name starts with C and first name has total 5 characters
select *
from employees
where first_name like 'C____';

-- get 5 letter first names where the middle char is z
select first_name
from employees
where first_name like '__z__';

-- get 5 letter first names 
select first_name
from employees
where first_name like '_____';

-- get the number of 5 letter first names
select count(first_name)
from employees
where first_name like '_____';

-- get first names where second char is u
select first_name
from employees
where first_name like '_u%';

-- find mininmum salary
select min(salary) from employees;

-- find maximum salary
select max(salary) from employees;

-- find average of salaries
select avg(salary) from employees;

-- find average of salaries and round
select round(avg(salary), 2) from employees;

-- find sum of salaries
select sum(salary) from employees;