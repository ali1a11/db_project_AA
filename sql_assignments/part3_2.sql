select * from EMPLOYEES;

--1. Show all job_id and average salary who work as any of these jobs IT_PROG, SA_REP, FI_ACCOUNT, AD_VP
select JOB_ID, avg(SALARY) from EMPLOYEES
group by JOB_ID
having JOB_ID = 'IT_PROG' or JOB_ID = 'SA_REP'or JOB_ID = 'FI_ACCOUNT'or JOB_ID = 'AD_VP';

select JOB_ID, avg(SALARY) from EMPLOYEES
group by JOB_ID
having JOB_ID in ('IT_PROG', 'SA_REP', 'FI_ACCOUNT', 'AD_VP');

--2. Show all records whose last name contains 2 lowercase 'a's
select * from EMPLOYEES
where LAST_NAME like '%a%a%';

--3. Display max salary  for each department
select DEPARTMENT_ID, max(SALARY) from EMPLOYEES
group by DEPARTMENT_ID;

--4. Display total salary for each department except department_id 50, and where total salary >30000
select DEPARTMENT_ID, sum(SALARY) from EMPLOYEES
group by DEPARTMENT_ID
having DEPARTMENT_ID !=50 and sum(SALARY)>30000;

--5. Write a SQL query that returns first and last name any employees who started job between 1-JAN-2000 and 3-SEP-2007 from the hr database
select FIRST_NAME, LAST_NAME from EMPLOYEES
where HIRE_DATE between '1-JAN-2000' and '3-SEP-2007';

--6. Display country_id, country name, region id, region name from hr database
select C.COUNTRY_ID, C.COUNTRY_NAME, R.REGION_ID, R.REGION_NAME from COUNTRIES C inner join REGIONS R on C.REGION_ID = R.REGION_ID;

--7. Display All cities, country names from hr database
select L.CITY, C.COUNTRY_NAME from COUNTRIES C join LOCATIONS L on C.COUNTRY_ID = L.COUNTRY_ID;

--8. display the first name, last name, department number, and department name,  for all employees for departments 80 or 40.
select E.FIRST_NAME, E.LAST_NAME, D.DEPARTMENT_ID, D.DEPARTMENT_NAME
from EMPLOYEES E join DEPARTMENTS D on E.DEPARTMENT_ID = D.DEPARTMENT_ID
WHERE E.DEPARTMENT_ID in (80, 40);

--9. Display employees' first name, Lastname department id and all departments including those where do not have any employee.
select E.FIRST_NAME, E.LAST_NAME, E.DEPARTMENT_ID from EMPLOYEES E left join DEPARTMENTS D on E.DEPARTMENT_ID = D.DEPARTMENT_ID;

--10. Display the first name, last name, department number, and name, for all employees who have or have not any department
select E.FIRST_NAME, E.LAST_NAME, D.DEPARTMENT_ID, D.DEPARTMENT_NAME from EMPLOYEES E left outer join DEPARTMENTS D on E.DEPARTMENT_ID = D.DEPARTMENT_ID;

--11. Display all employee and their manager's names
select E1.FIRST_NAME || ' ' || E1.LAST_NAME as "Emloyee name", E2.FIRST_NAME ||' ' || E2.LAST_NAME as "Manager name"   from EMPLOYEES E1 join EMPLOYEES E2 On E1.EMPLOYEE_ID = E2.MANAGER_ID;

