
-- full outer join
select * from CUSTOMER full outer join ADDRESS on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;

select C.CUSTOMER_ID, C.FIRST_NAME, C.LAST_NAME, A.ADDRESS, A.PHONE
from CUSTOMER C full outer join ADDRESS A on C.ADDRESS_ID = A.ADDRESS_ID;

-- full outer join with where
select C.CUSTOMER_ID, C.FIRST_NAME, C.LAST_NAME, A.ADDRESS, A.PHONE
from CUSTOMER C full outer join ADDRESS A on C.ADDRESS_ID = A.ADDRESS_ID
where C.ADDRESS_ID is null or A.ADDRESS_ID is null;
