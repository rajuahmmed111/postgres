-- Active: 1740560784691@@127.0.0.1@5432@ph@public

EXPLAIN ANALYSE
SELECT *
FROM employees1
WHERE
    employee_name = 'John Doe';

-- show employee1 data
SELECT * FROM employees1;

--create indexing
CREATE INDEX idx_employees1_emp_name ON employees1 (employee_name);

--show data directory
SHOW data_directory;