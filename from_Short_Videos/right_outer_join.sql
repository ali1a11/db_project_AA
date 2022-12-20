
-- right outer join
select * from CUSTOMER right outer join ADDRESS on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;


select C.CUSTOMER_ID, C.FIRST_NAME, C.LAST_NAME, A.ADDRESS, A.PHONE
from CUSTOMER C right outer join ADDRESS  A on C.ADDRESS_ID = A.ADDRESS_ID;

-- right outer join with where
select C.CUSTOMER_ID, C.FIRST_NAME, C.LAST_NAME, A.ADDRESS, A.PHONE
from CUSTOMER C right outer join ADDRESS  A on C.ADDRESS_ID = A.ADDRESS_ID
where C.ADDRESS_ID is null or A.ADDRESS_ID is null;