create table ClassMates(
Student_id INTEGER primary key, -- MUST be unique, cannot be null
"First Name" varchar(30),
"Last Name" varchar(30)
);
select * from CLASSMATES;

create table Coworkers (
Employee_ID INTEGER primary key,
"First Name" varchar(30),
"Last Name" varchar(30),
personnel_id INTEGER references CLASSMATES(Student_id) --foreign key, data needs to be matched the referenced primary key
);

--foreign key, data needs to be matched the referenced primary key
--foreign key can be duplicated, can be null

insert into Coworkers values (1, 'John', 'Eric', null);
select * from COWORKERS;

insert into CLASSMATES values (1, 'Aaron', 'Daniel');
select * from CLASSMATES;
insert into Coworkers values (2, 'Jimmy', 'Rose', 1);

insert into Coworkers values (3, 'Tom', 'Sharp', 777);
--foreign key rule is violated, integrity constraint violated, parent key not found

--if there is primary key --> foreign key relationship, primary key values cannot be uptdated without removing this relationship
-- In this case primary key column name cannot be changed and cannot be dropped
-- cannot drop parent key column
-- cannot drop or truncate table which its primary key is foreign key in other table
-- unique/primary keys in table referenced by foreign keys

update CLASSMATES set Student_id = 4 where Student_id = 1;
--  integrity constraint violated - child record found

alter table CLASSMATES drop column Student_id;
-- cannot drop parent key column

drop table CLASSMATES;
-- unique/primary keys in table referenced by foreign keys

truncate table CLASSMATES;
-- unique/primary keys in table referenced by foreign keys


