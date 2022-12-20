select * from SCRUMTEAM;

--adding new column
alter table SCRUMTEAM add salary INTEGER;

--update existing employees salary
update SCRUMTEAM
set SALARY = 100000
where EMP_ID = 1;

update SCRUMTEAM set SALARY = 125000 where EMP_ID = 2;

update SCRUMTEAM set SALARY = 105000 where EMP_ID = 4;

update SCRUMTEAM set SALARY = 95000 where EMP_ID = 5;

-- rename the column
alter table SCRUMTEAM rename column salary to annual_salary;

--delete,drop column
ALTER TABLE SCRUMTEAM DROP COLUMN ANNUAL_SALARY;

--change the table name
ALTER TABLE SCRUMTEAM RENAME TO AGILETEAM;

SELECT * FROM AGILETEAM;
COMMIT;

--TRUNCATE, if we want to delete all data from the table, but still keep the table structure, we use truncate
TRUNCATE TABLE AGILETEAM;

--DROP If we want to delete the table and data together
DROP TABLE AGILETEAM;








