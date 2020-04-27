SELECT * 
FROM employees; 

CREATE INDEX emp_name_idx
 ON employees (ename);
-- With the index it will be faster for the database to find a name.

CREATE INDEX emp_name_job_date_idx
ON employees (ename, job, hiredate)


SELECT * 
FROM employees 
WHERE ename = 'JOB'
AND hiredate = ''
AND job = ''

DROP INDEX emp_name_idx;

ALTER INDEX emp_name_job_date_idx
 REBUILD COMPUTE STATISTICS;