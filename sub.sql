-- Active: 1740560784691@@127.0.0.1@5432@ph@public
-- create employee1 table
CREATE TABLE employees1 (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    department_name VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
);