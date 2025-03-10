-- Active: 1740560784691@@127.0.0.1@5432@ph@public

-- syntax
-- CREATE Trigger trigger_name
-- {BEFORE | AFTER | INSERT OF} {INSERT | DELETE | UPDATE | TRUNCATE}
-- ON table_name
-- [for each row]
-- execute function function_name()

-- create table
CREATE Table my_users (
    user_name VARCHAR(255),
    email VARCHAR(255)
)

INSERT INTO
    my_users (user_name, email)
VALUES (
        'John Doe',
        'john.doe@example.com'
    ),
    (
        'Jane Smith',
        'jane.smith@example.com'
    );

SELECT * FROM my_users;

-- create table
CREATE Table delete_users_audit (
    delete_user_name VARCHAR(255),
    deleteAt TIMESTAMP
);

SELECT * FROM delete_users_audit;