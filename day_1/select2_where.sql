-- I want to see firstname, lastname, phone number of David(s)

SELECT first_name, last_name, phone_number 
from employees
where first_name = 'David';

SELECT first_name, last_name, phone_number 
from employees
where first_name = 'David' and last_name = 'Lee';

-- gets all the information of employees whose salary is more than 7000
select * 
from employees
where salary > 7000;

-- get e-mail of who is making less than 4000
select email 
from employees
where salary < 4000;

--get all infor who is working as IT_PROG or SA_REP
select *
from employees
where job_id ='IT_PROG' or job_id = 'SA_REP';

-- get first_name, last_name, salary who is making more than 5000 and less than 10000
select first_name, last_name, salary 
from employees
where salary >=5000 and salary <=10000;

-- get first_name, last_name, salary who is making more than 5000 and less than 10000
select first_name, last_name, salary 
from employees
where salary between 5000 and 10000;

-- get all info where employee_id between 130 and 170
select * from employees
where employee_id between 130 and 170;

-- get all info where employee_id 135 176 154 129
select * from employees
where employee_id = 135 or employee_id = 176 or employee_id = 154 or employee_id = 129;

select * from employees
where employee_id in (135, 176, 154, 129);

-- get city and country_id of where country_id IT, US, UK
select city from locations
where country_id in ('IT', 'US', 'UK');
