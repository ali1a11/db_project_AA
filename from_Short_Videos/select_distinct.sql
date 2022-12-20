--Select statement
-- 1) Selecting entire columns from a table
--      select * from TableName;

-- 2) Selecting a single column from a table 
--      select ColumnName from TableName;

-- 3) Selecting multiple columns from a table 
--      select ColumnName1,  ColumnName2, .. from TableName;

-- 4) Selecting column(s) from multiple tables 
--      select TableName1.ColumnName1,  TableName2.ColumnName2 from TableName1, TableName2;

select * from employees;

select first_name from employees;

select first_name, last_name,phone_number from employees;

select employees.first_name, employees.last_name, departments.department_name from employees, departments;

select * from employees, departments;


-- distinct keyword: displays the result without the duplicates

select distinct first_name from employees;


