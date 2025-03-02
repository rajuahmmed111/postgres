-- Active: 1740560784691@@127.0.0.1@5432@ph@public
SELECT * FROM person2;

ALTER TABLE person2 ADD COLUMN email VARCHAR(20) DEFAULT 'default@gmail.com' NOT NULL;

INSERT INTO person2 VALUES (10, 'test', 23, 'test@gmail.com')

ALTER TABLE person2 DROP COLUMN email;


ALTER TABLE person2 RENAME COLUMN age TO user_age;

ALTER TABLE person2
    ALTER COLUMN user_name TYPE VARCHAR(25);


ALTER TABLE person2
    ALTER COLUMN user_age set NOT NULL;

ALTER TABLE person2 alter COLUMN user_age DROP NOT NULL;



-- add constraint in column
ALTER TABLE person2
    ADD constraint unique_person2_user_age UNIQUE(user_age)



-- change user_age value and id 3 number
UPDATE person2 SET user_age = 34 WHERE id = 6;

UPDATE person2 SET user_age = 27 WHERE user_name = 'hasan';


-- drop constraint
ALTER TABLE person2
DROP constraint unique_person2_user_age;


-- truncate ------->use for remove table values but structural not removed
TRUNCATE TABLE person3;

