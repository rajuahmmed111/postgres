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

-- trigger function
CREATE or REPLACE FUNCTION save_deleted_users()
RETURNS TRIGGER
LANGUAGE PLPGSQL
AS
$$
BEGIN
INSERT into delete_users_audit VALUES(OLD.user_name, now());
RAISE NOTICE 'Deleted audit user log created';
RETURN OLD;
END
$$


-- create trigger
CREATE Trigger save_deleted_users_trigger
BEFORE DELETE
ON my_users 
for EACH row
EXECUTE FUNCTION save_deleted_users();


-- now i want to delete data from my_users table

DELETE FROM my_users WHERE user_name = 'John Doe';

SELECT * FROM my_users;

SELECT * FROM delete_users_audit;






