/*
 Aliases: used to give temporary name o tables and columns
        column aliases: we use "As" keyword to give temporary name tp the column
            select Column as "name" from Table;

        Table aliases: given with a space
            select Column from Table Name;
 */

-- column aliases

select first_name as "Given Name" from EMPLOYEES;
select first_name || ' ' || last_name as "Full Name" from EMPLOYEES;

select lower(concat(email, '@companyName.com')) as "E-mail address" from EMPLOYEES;


-- Table aliases
select EMPLOYEES.EMPLOYEE_ID, EMPLOYEES.FIRST_NAME, EMPLOYEES.LAST_NAME, JOB_HISTORY.JOB_ID, JOB_HISTORY.START_DATE from EMPLOYEES, JOB_HISTORY;

select E.EMPLOYEE_ID, E.FIRST_NAME, E.LAST_NAME, JH.JOB_ID, JH.START_DATE from EMPLOYEES E, JOB_HISTORY JH;




