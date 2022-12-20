
-- list salary high to low without duplicates
select distinct salary from employees
order by salary desc;

-- list of employees who has 14 highest salary  (no duplicates)
select * from (select distinct salary from employees
order by salary desc)
where rownum <15;


--find the highest 14th salary
select min(salary) from (select distinct salary from employees
order by salary desc)
where rownum <15;

--find the employee(s) info who is making the highest 14th salary

select * from employees
where salary = (select min(salary) from (select distinct salary from employees
order by salary desc)
where rownum <15);