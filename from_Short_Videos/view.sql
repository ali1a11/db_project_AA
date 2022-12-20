/*
    create view:
        create view ViewName as Statement;

    replace view:
        create or replace view ViewName;

    dropping view:
        drop view ViewName;
 */

select first_name || ' ' || last_name as FullName
from EMPLOYEES;

create view EmployeeInfo as
select first_name || ' ' || last_name as FullName
from EMPLOYEES;

select * from EmployeeInfo;

select first_name || ' ' || last_name     as FullName,
lower(email || '@companyName.com') as Email
from EMPLOYEES;

create or replace view EmployeeInfo as
select first_name || ' ' || last_name     as FullName,
lower(email || '@companyName.com') as Email
from EMPLOYEES;


drop view EmployeeInfo;