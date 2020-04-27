UPDATE employees
SET store_id = 1
WHERE ENAME = 'JONES';


UPDATE employees
SET store_id = 2
WHERE JOB = 'SALESMAN';

UPDATE employees
SET store_id = 3
WHERE ename IN('KING', 'BLAKE', 'CLARK');

UPDATE employees
SET store_id = 4
WHERE JOB IN('ANALYST', 'CLERK');

ALTER TABLE employees 
 MODIFY store_id number not null;
