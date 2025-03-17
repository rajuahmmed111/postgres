-- Active: 1740560784691@@127.0.0.1@5432@ph@public

-- create View
CREATE VIEW dept_avg_salary
AS
SELECT department_name, avg(salary) FROM employees1 GROUP BY department_name; 

SELECT * FROM dept_avg_salary;

-- test view
CREATE View test_view
AS
SELECT
    employee_name,
    salary,
    department_name
FROM employees1
WHERE
    department_name in (
        SELECT department_name
        FROM employees1
        WHERE department_name
            LIKE '%R%'
    );


SELECT * FROM test_view;








-------- notes--------
-- simplified complex query
-- improved security
-- enhanced data abstraction