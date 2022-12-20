-- JOIN

SELECT first_name, last_name, address, phone
FROM CUSTOMER JOIN ADDRESS ON customer.address_id = address.address_id;

SELECT first_name, last_name, C.address_id, address, phone
FROM CUSTOMER C JOIN ADDRESS  A ON C.address_id = A.address_id;

-- regular join is inner join
-- whenever matching same values in joining columns
SELECT first_name, last_name, C.address_id, address, phone
FROM CUSTOMER C inner JOIN ADDRESS  A ON C.address_id = A.address_id;

--left join
SELECT first_name, last_name, C.address_id, address, phone
FROM CUSTOMER C left JOIN ADDRESS  A ON C.address_id = A.address_id;

--right join
SELECT first_name, last_name, C.address_id, address, phone
FROM CUSTOMER C right JOIN ADDRESS  A ON C.address_id = A.address_id;

--full join
SELECT first_name, last_name, C.address_id, address, phone
FROM CUSTOMER C full JOIN ADDRESS  A ON C.address_id = A.address_id;

SELECT first_name, last_name, DEPARTMENT_NAME
FROM EMPLOYEES E JOIN DEPARTMENTS  D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID;

