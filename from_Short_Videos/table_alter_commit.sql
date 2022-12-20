/*
commit:
        commit; or commit work;

Alter:
        add column:
            Alter table TableName add ColumnName DataType;

        rename column:
            Alter table TableName Rename Column ColumnName to NewColumnName;

        drop column:
            Alter table TableName drop Column ColumnName;

        rename table:
            Alter table TableName rename to NewTableName;

 */

select * from CUSTOMER_2;

-- add column
ALTER table CUSTOMER_2
    add LastName varchar(20);

-- rename column
ALTER table CUSTOMER_2 rename column Lastname to City;

update CUSTOMER_2
set city = 'London'
where CUSTOMER_ID = 1;

insert into customer_2 (customer_id, firstName, address_id)
values (2, 'John', 12);

update CUSTOMER_2
set city ='Paris'
where CUSTOMER_ID = 2;

-- drop column
ALTER table CUSTOMER_2 drop column city;

-- rename table
ALTER table CUSTOMER_2 rename to Shoppers_2;

select * from SHOPPERS_2;

commit;

