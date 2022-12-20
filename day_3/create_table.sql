/*
 create table syntax:
    create table TableName(
        colName1 DataTyepe Constraints,
        colName1 DataTyepe Constraints(optional),
        colName1 DataTyepe Constraints,
        ...
    );
 */

create table ScrumTeam(
        Emp_ID Integer PRIMARY KEY,
        FirstName varchar(30) not null,
        LastName varchar(30),
        JobTitle varchar(20)
);

select * from SCRUMTEAM;

/*
 INSERT INTO TableName (cloumn1, column2, ...)
 VALUES (values1, values2, ...);
 */

insert into ScrumTeam (emp_id, firstname, lastname, jobtitle)
values (1, 'Severus', 'Snape', 'Tester');

insert into ScrumTeam (emp_id, firstname, lastname, jobtitle)
values (2, 'Mike', 'White', 'QA');

insert into ScrumTeam values (3, 'Karen', 'Lambda', 'Developer');
insert into ScrumTeam values (4, 'Tom', 'Herldsen', 'SDET');
insert into ScrumTeam values (5, 'Viali', 'Siona', 'Developer');

/*
 UPDATE TableName
 SET column1 = value1,
 column2 = value2, ...
 WHERE condition;
 */

update ScrumTeam
set JobTitle = 'Senior tester'
WHERE Emp_ID = 1;

-- Delete from table
/*
 DELETE FROM TableName
 WHERE Condition;
 */

delete from ScrumTeam
where Emp_ID = 3;

--saving changes
commit;



