-- Active: 1740560784691@@127.0.0.1@5432@ph@public
CREATE TABLE employee (
    emp_id INT,
    emp_name VARCHAR(50),
    dept_id INT
)

create TABLE department (
    dept_id INT,
    dept_name VARCHAR(50)
);

INSERT INTO employee VALUES (1, 'John Doe', 101);

INSERT INTO employee VALUES (1, 'Jane Smith', 102)

INSERT INTO department VALUES (101, 'Human Resource');

INSERT INTO department VALUES (102, 'Marketing');

SELECT * FROM employee;

SELECT * FROM department;

-- cross join