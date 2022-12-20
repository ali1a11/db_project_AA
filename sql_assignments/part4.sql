select * from EMPLOYEES;

select * from EMPLOYEES
    where ROWNUM <11;

select * from EMPLOYEES
    order by SALARY desc;

select salary from (select distinct SALARY from EMPLOYEES where ROWNUM <11)
order by SALARY desc;

--1. find the 3rd maximum salary from the employees table (do not include duplicates)
select distinct SALARY from EMPLOYEES order by SALARY desc;

select min(SALARY) from EMPLOYEES
where rownum <4;

--first 3 distinct top salaries
select SALARY from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where rownum <4;

--3rd maximum salary
select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where rownum <4;

--2. find the 5th maximum salary from the employees table (do not include duplicates)
select distinct SALARY from EMPLOYEES order by SALARY desc;

--first 5 distinct top salaries
select SALARY from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM<6;

--the 5th maximum salary
select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM<6;

--3. find the 7th maximum salary from the employees table (do not include duplicates)
select distinct SALARY from EMPLOYEES order by SALARY desc;

--first 7 distinct top salaries
select SALARY from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM<8;

--the 7th maximum salary
select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM<8;


--4. find the 10th maximum salary from the employees table (do not include duplicates)
select distinct SALARY from EMPLOYEES order by SALARY desc;

--first 10 distinct top salaries
select SALARY from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM <11;

--the 10th maximum salary
select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM <11;

--5. find the 3rd minimum salary from the employees table (do not include duplicates)
select distinct SALARY from EMPLOYEES order by SALARY asc;

--first 3 distinct top min salaries
select SALARY from (select distinct SALARY from EMPLOYEES order by SALARY asc)
where ROWNUM <4;

--the 3rd minimum salary
select max(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY asc)
where ROWNUM <4;

--6. find the 5th minimum salary from the employees table (do not include duplicates)
select distinct SALARY from EMPLOYEES order by SALARY asc;

--first 5 distinct top min salaries
select SALARY from (select distinct SALARY from EMPLOYEES order by SALARY asc)
where ROWNUM<6;

--the 5th minimum salary
select max(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY asc)
where ROWNUM<6;

--7. find the 7th maximum salary from the employees table (do not include duplicates)
select distinct SALARY from EMPLOYEES order by SALARY asc;

--first 7 distinct top min salaries
select SALARY from (select distinct SALARY from EMPLOYEES order by SALARY asc)
where ROWNUM<8;

--the 7th minimum salary
select max(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY asc)
where ROWNUM<8;

--8. find the 10th maximum salary from the employees table (do not include duplicates)
select distinct SALARY from EMPLOYEES order by SALARY asc;

--first 10 distinct top min salaries
select SALARY from (select distinct SALARY from EMPLOYEES order by SALARY asc)
where ROWNUM<11;

--the 10th minimum salary
select max(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY asc)
where ROWNUM<11;








