-- get average salary for IT_PROG
select avg(salary) from employees
where job_id = 'IT_PROG';

-- get unique job_id s
select DISTINCT job_id from employees;

--get job_id s from employees // same result
select job_id from employees
group by job_id;

-- job_id s and average salaries for each from employees
select job_id, avg(salary)from employees
group by job_id;

-- job_id s and average salaries, number of employees for each from employees
select job_id, avg(salary), count(*)from employees
group by job_id;

-- job_id s and average salaries, number of employees, sum of salaries for each from employees
select job_id, avg(salary), count(*), sum(salary) from employees
group by job_id;

-- get job_id s where their avg salary is more than 5000
select job_id, avg(salary) from employees
group by job_id
having avg(salary)>5000;