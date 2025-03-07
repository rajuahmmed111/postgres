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

-- insert department data

INSERT INTO
    departments (d_name)
VALUES ('HR'),
    ('Marketing'),
    ('Finance'),
    ('IT'),
    ('Sales'),
    ('Engineering'),
    ('Customer Support'),
    ('Administration'),
    ('Research'),
    ('Quality Assurance');

-- insert employee 30 data
INSERT INTO
    employees (
        e_name,
        d_id,
        salary,
        hire_date
    )
VALUES (
        'John Doe',
        1,
        60000.00,
        '2010-01-01'
    ),
    (
        'Jane Smith',
        2,
        55000.00,
        '2009-05-15'
    ),
    (
        'Mike Johnson',
        3,
        65000.00,
        '2011-07-10'
    ),
    (
        'Sarah Brown',
        4,
        58000.00,
        '2012-02-20'
    ),
    (
        'David Wilson',
        5,
        52000.00,
        '2013-08-15'
    ),
    (
        'Emily Davis',
        6,
        63000.00,
        '2014-04-05'
    ),
    (
        'Michael Lee',
        7,
        57000.00,
        '2015-10-20'
    ),
    (
        'Sarah Green',
        8,
        62000.00,
        '2016-06-10'
    ),
    (
        'David Thompson',
        9,
        56000.00,
        '2017-02-05'
    ),
    (
        'Joseph Wilson',
        10,
        59000.00,
        '2018-08-15'
    ),
    (
        'Anna Johnson',
        1,
        61000.00,
        '2019-04-05'
    ),
    (
        'Michael Mash',
        2,
        54000.00,
        '2020-10-20'
    ),
    (
        'Cameron Green',
        3,
        60000.00,
        '2021-06-10'
    ),
    (
        'Alp Thompson',
        4,
        55000.00,
        '2022-02-05'
    ),
    (
        'Wilson',
        5,
        64000.00,
        '2023-08-15'
    ),
    (
        'Johnson',
        6,
        58000.00,
        '2024-04-05'
    ),
    (
        'Lee',
        7,
        57000.00,
        '2025-10-20'
    ),
    (
        'Green',
        8,
        63000.00,
        '2026-06-10'
    ),
    (
        'Thompson',
        9,
        56000.00,
        '2027-02-05'
    ),
    (
        'Ela',
        10,
        59000.00,
        '2028-08-15'
    );

SELECT * FROM employees;

SELECT * FROM departments;

-- inner join
SELECT *
FROM employees as e
    JOIN departments as d ON e.d_id = d.d_id;

SELECT * FROM employees as e JOIN departments as d USING (d_id);

-- show departments name with average salary
SELECT d_name, round(avg(salary))
FROM employees
    JOIN departments USING (d_id)
GROUP BY
    d_name;

SELECT * FROM employees;

SELECT * FROM departments;

-- count employees each department
SELECT d_name, count(*)
FROM employees
    JOIN departments USING (d_id)
GROUP BY
    d_name

-- find the department name the highest average salary
SELECT d_name, round(avg(salary)) as avg_salary
FROM employees
    JOIN departments USING (d_id)
GROUP BY
    d_name
    ORDER BY avg_salary DESC
    LIMIT 1;


-- count employees hired each year
