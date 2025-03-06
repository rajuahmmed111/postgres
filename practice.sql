-- Active: 1740560784691@@127.0.0.1@5432@ph@public

-- create employee table
CREATE TABLE employees (
    e_id SERIAL PRIMARY KEY,
    e_name VARCHAR(50),
    d_id INT REFERENCES departments (d_id),
    salary DECIMAL(10, 2),
    hire_date DATE
)

-- create department table
CREATE TABLE departments (
    d_id SERIAL PRIMARY KEY,
    d_name VARCHAR(50)
)