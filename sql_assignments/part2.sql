--1. list the initials of all the employees
select substr(FIRST_NAME, 1, 1) || '.' || substr(LAST_NAME, 1, 1) as "Initials"
from EMPLOYEES;

--2. list the full names of all employees ( fullname: Lastname FirstName)
select LAST_NAME || ' ' || FIRST_NAME as "Full name"
from EMPLOYEES;

--3. who has the longest name in the employees table?
select * from employees where length(first_name||' '||last_name) =
                              ( select max( length(first_name||' '||last_name)) from employees );

select FIRST_NAME, LAST_NAME
from EMPLOYEES
where length(FIRST_NAME) = (select max(length(FIRST_NAME)) from EMPLOYEES);

--4. Show all employees who work in any one of these department id  90, 60, 100, 130, 120
select *
from EMPLOYEES
where DEPARTMENT_ID in (90, 60, 100, 130, 120);

--5. Show all employees who does not work in any one of these department id 90, 60,  100, 130, 120
select *
from EMPLOYEES
where DEPARTMENT_ID not in (90, 60, 100, 130, 120);

--6. divide employees into groups by using their job id
select JOB_ID, count(*) from EMPLOYEES
group by JOB_ID;

--6.1 display the maximum salaries in each groups
select JOB_ID, max(SALARY) from EMPLOYEES
group by JOB_ID;

--display the dept with the maximum salary
select JOB_ID, max(SALARY) from EMPLOYEES
group by JOB_ID
having max(SALARY) = (select max(max(SALARY)) from EMPLOYEES
                      group by JOB_ID);

select max(max(SALARY)) from EMPLOYEES
group by JOB_ID;

--6.2 display the minimum salaries in each groups
select JOB_ID, min(SALARY) from EMPLOYEES
group by JOB_ID;

--display the dept with the minimum salary
select JOB_ID, min(SALARY) from EMPLOYEES
group by JOB_ID
having min(SALARY) = (select min(min(SALARY)) from EMPLOYEES
                      group by JOB_ID);

select min(min(SALARY)) from EMPLOYEES
group by JOB_ID;

--6.3 display the average salary of each group
select JOB_ID, avg(SALARY) from EMPLOYEES
group by JOB_ID;

--6.4 how many employees are there in each group that have minimum salary of 5000?
select JOB_ID, count(*) from EMPLOYEES
where SALARY >= 5000
group by JOB_ID;

--6.5 display the total budgets of each groups
select JOB_ID, sum(SALARY) from EMPLOYEES
group by JOB_ID;

--7. display employees' full email addresses and full names
--(assume that the domain of the email is @gmail)
select FIRST_NAME ||' '|| LAST_NAME as "Full name", lower(EMAIL)||'@gmail.com' as "E-mail address" from EMPLOYEES;

--8. display full addresses from locations table in a single column
--(full address: Street_Address,  CityName  ZipCode,  Country_id)
select STREET_ADDRESS ||', '|| CITY ||', '|| POSTAL_CODE ||', '|| COUNTRY_ID as "Full address" from LOCATIONS;














