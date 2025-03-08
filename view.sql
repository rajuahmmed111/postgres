-- Active: 1740560784691@@127.0.0.1@5432@ph@public

-- create View
CREATE VIEW dept_avg_salary
AS
SELECT department_name, avg(salary) FROM employees1 GROUP BY department_name; 