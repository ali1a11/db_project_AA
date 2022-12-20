-- left outer join
select * from CUSTOMER C left outer join ADDRESS A on c.ADDRESS_ID = A.ADDRESS_ID;

select C.CUSTOMER_ID, C.FIRST_NAME, C.LAST_NAME, A.ADDRESS_ID, A.ADDRESS, A.PHONE
from CUSTOMER C left outer join ADDRESS A on c.ADDRESS_ID = A.ADDRESS_ID;

-- left outer join with where
select C.CUSTOMER_ID, C.FIRST_NAME, C.LAST_NAME, A.ADDRESS_ID, A.ADDRESS, A.PHONE
from CUSTOMER C left outer join ADDRESS A on c.ADDRESS_ID = A.ADDRESS_ID
where C.ADDRESS_ID is null;

select C.CUSTOMER_ID, C.FIRST_NAME, C.LAST_NAME, A.ADDRESS_ID, A.ADDRESS, A.PHONE
from CUSTOMER C left outer join ADDRESS A on c.ADDRESS_ID = A.ADDRESS_ID
where C.ADDRESS_ID is null;
