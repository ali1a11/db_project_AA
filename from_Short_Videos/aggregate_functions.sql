/*
Aggregate functions:
min(): displays the min value from the column
        select min(ColumnName) from TableName;
        
max(): displays the max value from the column
        select max(ColumnName) from TableName;
        
avg(): displays the average of values from the column
        select avg(ColumnName) from TableName;
        
sum(): displays the sum of values from the column
        select min(ColumnName) from TableName;
        
----------
count(): 
        select count(ColumnName) from TableName where Condition;
        
round():
        select round(avg(ColumnName), 2) from TableName;
        
*/

select min(salary) from employees;

select * from employees 
where salary = (select min(salary) from employees);

select max(salary) from employees;

select * from employees 
where salary = (select max(salary) from employees);

select avg(salary) from employees;

select round(avg(salary), 2) from employees;

select sum(salary) from employees;

select count(*) from employees
where manager_id = 100;

select count(*) from employees
where first_name like 'A%';

select count(*) from employees
where salary > 3500;

