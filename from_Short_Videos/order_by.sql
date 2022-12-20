-- order by statement: used for sorting the result

-- ascending order: ASC
-- descending order: DESC

select * from employees
order by salary; -- by default sorts in ascending order

select * from employees
order by salary asc;

select * from employees
order by salary desc;

select first_name, last_name, job_id, salary  from employees
where salary between 2000 and 5000
order by salary asc;