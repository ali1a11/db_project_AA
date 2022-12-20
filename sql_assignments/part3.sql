create table CustomerAddress (
  address_id integer primary key,
  address varchar(50) not null,
  phone integer not null
);

insert into CustomerAddress(address_id, address, phone) values (5, '1913 Hanoi way', 286303384);
insert into CustomerAddress(address_id, address, phone) values (7, '692 Joliet street', 44847719);
insert into CustomerAddress(address_id, address, phone) values (8, '1566 Inegl Mamor', 70581400);
insert into CustomerAddress(address_id, address, phone) values (10, '1795 Santiago', 86045262);
insert into CustomerAddress(address_id, address, phone) values (11, '900 Santiago', 16571220);
insert into CustomerAddress(address_id, address, phone) values (12, '12 Jason street', 23694587);
insert into CustomerAddress(address_id, address, phone) values (13, '34 Manor ave', 32564598);


select * from CustomerAddress order by address_id;


create table CustomersNew (
    customer_id integer primary key,
    first_name varchar(20) not null,
    last_name varchar(20) not null,
    address_id integer references CustomerAddress(address_id)
);

insert into CustomersNew (customer_id, first_name, last_name, address_id) VALUES (1, 'Mary', 'Smith', 5);
insert into CustomersNew (customer_id, first_name, last_name) VALUES (2, 'Patricia', 'Johnson');
insert into CustomersNew(customer_id, first_name, last_name, address_id) VALUES (3, 'Linda', 'Williams', 7);
insert into CustomersNew(customer_id, first_name, last_name, address_id) VALUES (4, 'Barbara', 'Jones', 8);
insert into CustomersNew(customer_id, first_name, last_name) VALUES (5, 'Elizabeth', 'Brown');
insert into CustomersNew(customer_id, first_name, last_name, address_id) values (6, 'John', 'Smith', 5);
insert into CustomersNew(customer_id, first_name, last_name, address_id) VALUES (7, 'Mark', 'Black', 13);

select * from CustomersNew;

commit work;

