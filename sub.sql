-- Active: 1740560784691@@127.0.0.1@5432@ph@public
-- create employee1 table
CREATE TABLE employees1 (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    department_name VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
);


-- insert data into employee1 table
INSERT INTO employees1 (employee_name, department_name, salary,hire_date) VALUES
    ('John Doe', 'HR', 60000.00, '2010-01-01'),
    ('Jane Smith', 'IT', 80000.00, '2015-05-15'),
    ('Mike Johnson', 'Finance', 70000.00, '2012-07-20');
