-- Where clause: used as the filter option

-- select column(s) from Table(s) where Conditions;

-- Operators:

-- >, <, >=, <=, =, or, and

select * from employees
where salary < 5000;

select * from employees
where salary < 5000 and manager_id = 114;


-- between statement: used for specifying the range of the condition
--          value between lowest and highest

select * from employees 
where salary >= 2500 and salary <= 5000;

select * from employees 
where salary between 2500 and 5000;

select employees.first_name, employees.last_name, employees.salary, departments.department_name 
from employees, departments
where salary between 2500 and 5000; 


-- in statement: used for specifying the range of the condition

select * from employees
where job_id in ('IT_PROG', 'PU_CLERK');

select * from employees where salary in (2000, 3000, 4000, 5000);