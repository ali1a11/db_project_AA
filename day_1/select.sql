select * from employees;
-- reads all column from employees table

SELECT * FROM departments;
-- reads all column from departments table

SELECT first_name from employees;
-- gets only firstname from employees table

SELECT city FROM locations;
-- gets city names

SELECT first_name, last_name, salary from employees;
-- gets first_name, last_name and salary

SELECT street_address, postal_code from locations;
-- gets street_address and postal_code

SELECT FIRST_NAME FROM employees;
-- gets all the employee names (duplicates are alloved) from employees table 

SELECT DISTINCT FIRST_NAME FROM employees;
-- gets all the employee names (withhout duplicates) from employees table

