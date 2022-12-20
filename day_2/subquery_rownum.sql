
-- sverage salary for each group

select job_id , avg(salary) from employees group by job_id;

select first_name, count(*) from employees group by first_name having first_name like 'A%';

select max(salary) from employees;

-- subquery

select * from employees where salary =(select max(salary) from employees);


-- find highest salary
select max(salary) from employees;

-- find second highest salary
select max(salary) from employees where salary < (select max(salary) from employees);

-- employee information of having second highest salary
select * from employees where salary = (select max(salary) from employees where salary < (select max(salary) from employees));

-------------
--limiting the result
select * from employees
where rownum < 11;

-- list of employees based on salary descending order
select * from employees
order by salary desc;

-- list the employees who is making top 10 salary
-- order all the employees based on salary high to low then display only first 10 result

select * from (select * from employees order by salary desc)
where rownum < 11;

select min(SALARY) from (select * from employees order by salary desc)
where rownum < 11;

select count(*) from EMPLOYEES
where DEPARTMENT_ID = 80;

select DEPARTMENT_ID, count(*) from EMPLOYEES
group by DEPARTMENT_ID
HAVING count(DEPARTMENT_ID) > (select count(*) from EMPLOYEES where DEPARTMENT_ID = 80);

SELECT min(HIRE_DATE) from EMPLOYEES
where JOB_ID = 'IT_PROG';

select FIRST_NAME, HIRE_DATE from EMPLOYEES
where HIRE_DATE < (SELECT min(HIRE_DATE) from EMPLOYEES
                   where JOB_ID = 'IT_PROG');

select count(*) from EMPLOYEES
where HIRE_DATE < (SELECT min(HIRE_DATE) from EMPLOYEES
                   where JOB_ID = 'IT_PROG');




