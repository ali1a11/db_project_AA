select distinct  JOB_ID from EMPLOYEES;

select FIRST_NAME from EMPLOYEES
where JOB_ID ='ST_CLERK';

select * from EMPLOYEES;

select postal_code from LOCATIONS where COUNTRY_ID in('JP', 'CA', 'UK');

select city from LOCATIONS
where COUNTRY_ID != 'CH' OR COUNTRY_ID != 'US';

select JOB_ID  from Jobs
where MIN_SALARY >4000 and MIN_SALARY<9000;

select count(distinct salary)  from EMPLOYEES
order by SALARY desc;

select distinct salary, JOB_ID  from EMPLOYEES
order by SALARY desc;

select FIRST_NAME from EMPLOYEES
order by FIRST_NAME;

select FIRST_NAME, count(FIRST_NAME) from EMPLOYEES
group by FIRST_NAME;

select JOB_ID, MIN_SALARY from JOBS
where MIN_SALARY between 4000 and 9000;

select FIRST_NAME, HIRE_DATE from EMPLOYEES
order by HIRE_DATE;

select LAST_NAME, salary, COMMISSION_PCT from EMPLOYEES
order by COMMISSION_PCT;

select * from EMPLOYEES
    order by FIRST_NAME asc, salary desc ;

select FIRST_NAME, JOB_ID, SALARY from EMPLOYEES
    order by JOB_ID desc, SALARY desc ;

select * from COUNTRIES;

select * from LOCATIONS;
select FIRST_NAME, JOB_ID from EMPLOYEES where JOB_ID like '%CLERK';

select EMAIL from EMPLOYEES
where EMAIL like 'E_____';

select FIRST_NAME from EMPLOYEES
where LAST_NAME '_____';

select JOB_ID, avg(salary) from EMPLOYEES
group by JOB_ID;

select max(SALARY) from EMPLOYEES
where JOB_ID = 'IT_PROG';

select min(SALARY) from EMPLOYEES
where JOB_ID = 'SA_REP';

select sum(salary) from EMPLOYEES
where JOB_ID ='ST_MAN';

select avg(SALARY) from EMPLOYEES
where JOB_ID = 'SA_REP';

select DEPARTMENT_ID, max(SALARY) from EMPLOYEES
group by DEPARTMENT_ID;

select JOB_ID, count(*)  from EMPLOYEES
group by  JOB_ID;

select JOB_ID, min(SALARY), max(SALARY), avg(SALARY), sum(SALARY) from EMPLOYEES
group by JOB_ID
having max(SALARY)>5000;

select  DEPARTMENT_ID, count (*)from EMPLOYEES
group by DEPARTMENT_ID
having count(*) >5;

select JOB_ID, count(*) from EMPLOYEES
group by  JOB_ID having avg(COMMISSION_PCT)>0.2;

select MANAGER_ID, max(SALARY) from EMPLOYEES
group by  MANAGER_ID
having  max(SALARY)>10000
order by max(SALARY);
















