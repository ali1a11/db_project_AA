/*
group by divides the column by group

having
*/

select job_id from employees group by job_id;

select job_id, count(*) from employees group by job_id;

select job_id, max(salary) from employees group by job_id;

select job_id, min(salary) from employees group by job_id;

select job_id, avg(salary) from employees group by job_id;

select job_id, sum(salary) from employees group by job_id;

-- having

select job_id from employees group by job_id having max(salary)> 2500;

select job_id, count(*) from employees group by job_id having max(salary)> 2500; 

select job_id from employees group by job_id having avg(salary)>6000;

select job_id, count(*) from employees group by job_id having min(salary)>6000;

