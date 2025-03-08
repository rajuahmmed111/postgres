-- Active: 1740560784691@@127.0.0.1@5432@ph@public
-- create employee1 table
CREATE TABLE employees1 (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    department_name VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
);

DROP Table employees1;


-- insert data into employee1 table
INSERT INTO employees1 (employee_name, department_name, salary, hire_date) 
VALUES
('John Doe', 'HR', 60000.00, '2010-01-01'),
('Jane Smith', 'Finance', 75000.00, '2012-03-15'),
('Michael Johnson', 'Engineering', 90000.00, '2015-07-23'),
('Emily Davis', 'Marketing', 65000.00, '2018-05-12'),
('Robert Brown', 'IT', 85000.00, '2011-11-30'),
('Sarah Wilson', 'Sales', 72000.00, '2014-08-19'),
('James Miller', 'HR', 63000.00, '2017-02-28'),
('Olivia Anderson', 'Finance', 78000.00, '2019-06-10'),
('William Martinez', 'Engineering', 95000.00, '2013-04-25'),
('Sophia Thomas', 'Marketing', 67000.00, '2016-09-14'),
('Benjamin Jackson', 'IT', 88000.00, '2010-12-05'),
('Charlotte White', 'Sales', 71000.00, '2012-07-21'),
('Daniel Harris', 'HR', 62000.00, '2015-11-09'),
('Amelia Martin', 'Finance', 76000.00, '2018-03-30'),
('Alexander Thompson', 'Engineering', 97000.00, '2011-06-17'),
('Mia Garcia', 'Marketing', 69000.00, '2014-12-27'),
('Ethan Robinson', 'IT', 86000.00, '2016-05-14'),
('Isabella Clark', 'Sales', 73000.00, '2013-08-03'),
('Mason Rodriguez', 'HR', 64000.00, '2019-01-20'),
('Harper Lewis', 'Finance', 77000.00, '2017-04-11'),
('Logan Walker', 'Engineering', 92000.00, '2015-10-08'),
('Ava Hall', 'Marketing', 68000.00, '2012-02-22'),
('Elijah Allen', 'IT', 89000.00, '2010-09-15'),
('Lily Young', 'Sales', 75000.00, '2013-06-29'),
('Carter Scott', 'HR', 61000.00, '2016-12-13'),
('Zoe Adams', 'Finance', 74000.00, '2014-07-05'),
('Lucas Baker', 'Engineering', 98000.00, '2011-03-08'),
('Grace Gonzalez', 'Marketing', 66000.00, '2017-10-19'),
('Henry Nelson', 'IT', 87000.00, '2018-11-24'),
('Emma Carter', 'Sales', 72000.00, '2019-08-30');


SELECT * FROM employees1;

-- Retrieve all employees whose salary is greater than hight salary of the HR department
-- SELECT * FROM employees1 WHERE salary > 64000;
SELECT * FROM employees1 WHERE salary > (SELECT max(salary) FROM employees1 WHERE department_name = 'HR');

-- return can single value
-- return can multiple rows
-- return can single column