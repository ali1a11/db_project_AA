/*
 create table:

    syntax:
        create table Name(
        ColumnName1 DataType Constraint,
        ColumnName2 DataType Constraint
        );

        Constraint is not mandatory
 Column constraints:
 NOT NULL
 UNIQUE
 PRIMARY KEY
 REFERENCES OtherTable (PKColumn) -used to give foreign key to the column

 Insert:
        Insert Into TableName(Column1, Column2, ...) values (value1, value2);

 Update:
        Update TableName Set ColumnName = Value where condition

 Delete:
        Delete From TableName Where Condition;
 */

 create table CustomerAddress (
 address_id INTEGER primary key,
 address varchar(50) not null,
 phone INTEGER
 );

insert into CUSTOMERADDRESS (address_id, address, phone) VALUES (10, 'Lark Street 10, 55245 Albany, NY', 52632589);
insert into CUSTOMERADDRESS (address_id, address, phone) VALUES (12, 'Elm Street 35, 55982 Albany, NY', 65763415);

select * from CUSTOMERADDRESS;

-- foreign key usage
create table customer_2(
customer_id INTEGER primary key,
firstName varchar(30) null,
address_id INTEGER REFERENCES CUSTOMERADDRESS(address_id)
);

select * from customer_2;

insert into customer_2 (customer_id, firstName, address_id) values (1, 'Tom', 10);
insert into customer_2 (customer_id, firstName, address_id) values (2, 'John', 12);

update customer_2 set customer_id = 3 where address_id = 12;

delete from customer_2 where customer_id = 3 and address_id = 12;

commit work;
