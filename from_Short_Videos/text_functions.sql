/*
Text Functions: string manipulations
        1. concetenation operator: ||
        2. Concat(Value1, Value2)
        3. upper(Value)
        4. lower(Value)
        5. InitCap(Value)
        6. length(Value)
        7. replace(ColumnName, oldValue, newValue)
        8. substr(ColumnName, beginning index, ending index)
        9. trim(Value)
        
        ONLY USED FOR THE DISPLAY, DOES NOT MODIFY THE DATA AND TABLE
*/

--concetenation operator: ||

select email ||'companyName.com' from employees;

select first_name ||' ' || last_name from employees;

--Concat(Value1, Value2)
select concat(email, 'companyName.com')  from employees;

select concat(concat(first_name,' '), last_name)  from employees;

--upper(Value) -- makes UPPERCASE
select upper(first_name) from employees;

--lower(Value) -- makes lowercase
select lower(first_name) from employees;

--InitCap(Value) -- makes Initialletter Uppercase others lowercase
select initcap(email) from employees;

--length(Value)
select first_name, length(first_name) from employees;

--replace(ColumnName, oldValue, newValue)
select replace(first_name, 'a', 'A') from employees;

--substr(ColumnName, beginning index, ending index)
select substr(first_name, 0 , 1) from employees;

select substr(first_name, 0 , 1), substr(last_name, 0 , 1) from employees;

select substr(first_name, 0 , 1) || ' ' || substr(last_name, 0 , 1) from employees;

--trim(Value)
select trim(first_name) from employees;







