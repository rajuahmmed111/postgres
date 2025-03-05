-- create table
CREATE TABLE students (
    s_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)

-- insert students values
INSERT INTO
    students (
        first_name,
        last_name,
        age,
        grade,
        course,
        email,
        dob,
        blood_group,
        country
    )
VALUES (
        'John',
        'Doe',
        18,
        'A',
        'Computer Science',
        'johndoe@example.com',
        '1999-05-15',
        'O+',
        'USA'
    ),
    (
        'Jane',
        'Smith',
        19,
        'B',
        'Mathematics',
        'janesmith@example.com',
        '2000-08-22',
        'A-',
        'Canada'
    ),
    (
        'Michael',
        'Johnson',
        20,
        'A',
        'Physics',
        'michaeljohnson@example.com',
        '1998-11-10',
        'B+',
        'UK'
    ),
    (
        'Emily',
        'Brown',
        21,
        'C',
        'Biology',
        'emilybrown@example.com',
        '1997-07-05',
        'O-',
        'Australia'
    ),
    (
        'David',
        'Wilson',
        22,
        'B',
        'Chemistry',
        'davidwilson@example.com',
        '1996-12-15',
        'AB+',
        'Germany'
    ),
    (
        'Sarah',
        'Miller',
        23,
        'A',
        'Economics',
        'sarahmiller@example.com',
        '1995-03-29',
        'A+',
        'France'
    ),
    (
        'Chris',
        'Davis',
        24,
        'B',
        'Engineering',
        'chrisdavis@example.com',
        '1994-09-17',
        'B-',
        'Japan'
    ),
    (
        'Amanda',
        'Garcia',
        25,
        'C',
        'Psychology',
        'amandagarcia@example.com',
        '1993-06-21',
        'O+',
        'Mexico'
    ),
    (
        'Daniel',
        'Martinez',
        26,
        'A',
        'Philosophy',
        'danielmartinez@example.com',
        '1992-01-30',
        'AB-',
        'Spain'
    ),
    (
        'Jessica',
        'Anderson',
        27,
        'B',
        'Political Science',
        'jessicaanderson@example.com',
        '1991-04-14',
        'A-',
        'Italy'
    ),
    (
        'Mark',
        'Thomas',
        28,
        'A',
        'Sociology',
        'markthomas@example.com',
        '1990-07-19',
        'O+',
        'Brazil'
    ),
    (
        'Emma',
        'Taylor',
        19,
        'C',
        'Anthropology',
        'emmataylor@example.com',
        '2000-09-10',
        'B+',
        'South Africa'
    ),
    (
        'Robert',
        'Moore',
        20,
        'B',
        'Law',
        'robertmoore@example.com',
        '1999-02-03',
        'A-',
        'Russia'
    ),
    (
        'Olivia',
        'Jackson',
        21,
        'A',
        'History',
        'oliviajackson@example.com',
        '1998-12-01',
        'O-',
        'China'
    ),
    (
        'Ethan',
        'White',
        22,
        'C',
        'Geology',
        'ethanwhite@example.com',
        '1997-05-28',
        'AB+',
        'India'
    ),
    (
        'Sophia',
        'Harris',
        23,
        'B',
        'Linguistics',
        'sophiaharris@example.com',
        '1996-03-14',
        'A+',
        'Netherlands'
    ),
    (
        'Benjamin',
        'Clark',
        24,
        'A',
        'Music',
        'benjaminclark@example.com',
        '1995-11-08',
        'B-',
        'Sweden'
    ),
    (
        'Isabella',
        'Lewis',
        25,
        'C',
        'Art',
        'isabellalewis@example.com',
        '1994-06-30',
        'O+',
        'Switzerland'
    ),
    (
        'Alexander',
        'Walker',
        26,
        'B',
        'Architecture',
        'alexanderwalker@example.com',
        '1993-08-22',
        'AB-',
        'Greece'
    ),
    (
        'Mia',
        'Allen',
        27,
        'A',
        'Literature',
        'miaallen@example.com',
        '1992-04-05',
        'A-',
        'Portugal'
    ),
    (
        'William',
        'Young',
        28,
        'C',
        'Astronomy',
        'williamyoung@example.com',
        '1991-07-18',
        'O+',
        'Norway'
    ),
    (
        'Charlotte',
        'King',
        19,
        'B',
        'Statistics',
        'charlotteking@example.com',
        '2000-10-12',
        'B+',
        'Belgium'
    ),
    (
        'James',
        'Scott',
        20,
        'A',
        'Cybersecurity',
        'jamesscott@example.com',
        '1999-01-25',
        'A-',
        'Denmark'
    ),
    (
        'Amelia',
        'Green',
        21,
        'C',
        'Veterinary Science',
        'ameliagreen@example.com',
        '1998-02-14',
        'O-',
        'Finland'
    ),
    (
        'Daniel',
        'Adams',
        22,
        'B',
        'Marine Biology',
        'danieladams@example.com',
        '1997-09-05',
        'AB+',
        'Ireland'
    ),
    (
        'Evelyn',
        'Baker',
        23,
        'A',
        'Astronautics',
        'evelynbaker@example.com',
        '1996-12-20',
        'A+',
        'Austria'
    ),
    (
        'Matthew',
        'Hall',
        24,
        'C',
        'Genetics',
        'matthewhall@example.com',
        '1995-05-07',
        'B-',
        'Poland'
    ),
    (
        'Harper',
        'Rivera',
        25,
        'B',
        'Robotics',
        'harperrivera@example.com',
        '1994-06-19',
        'O+',
        'Hungary'
    ),
    (
        'Liam',
        'Carter',
        26,
        'A',
        'Neuroscience',
        'liamcarter@example.com',
        '1993-11-30',
        'AB-',
        'Czech Republic'
    ),
    (
        'Avery',
        'Mitchell',
        27,
        'B',
        'Public Relations',
        'averymitchell@example.com',
        '1992-08-21',
        'A-',
        'Argentina'
    );

-- show data in table
SELECT email, age, blood_group FROM students;

-- remaining just show time
SELECT email as "student_email" FROM students;

SELECT * FROM students;

-- ami sudhu serial 1 ar row value retrieved korbo
SELECT * FROM Students ORDER BY s_id ASC LIMIT 1;

SELECT country FROM students ORDER BY country ASC;

SELECT DISTINCT country FROM students;

SELECT DISTINCT blood_group FROM students;

-- filtering
SELECT * FROM students WHERE country = 'USA';

SELECT * FROM students WHERE grade = 'A' AND course = 'Physics';

SELECT *
FROM students
WHERE (
        country = 'USA'
        OR country = 'Canada'
    )
    AND age = 20;

-- Scalar functions
-- upper()
-- lower()
-- length()
-- substring()
-- trim()
-- concat()
-- date_part()
-- date_trunc()
-- now()
-- extract()
-- to_char()
-- to_date()
-- coalesce()

SELECT upper(first_name) as first_name_upper, * FROM students;
--use function

-- concat
SELECT concat(first_name, ' ', last_name) as full_name FROM students;
-- scalar function

-- Aggregate functions
-- sum()
-- avg()
-- min()
-- max()
-- count()

-- count(DISTINCT)
-- variance()
-- stddev()
-- mode()
-- median()
-- percentile_cont()
-- percentile_disc()
-- first_value()
-- last_value()
-- nth_value()

SELECT count(*) AS age FROM students

-- combine Scalar and Aggregate

SELECT
    count(*) AS total_students,
    avg(age) AS average_age,
    max(age) AS maximum_age,
    min(age) AS minimum_age
FROM students;


SELECT max(length(first_name)) as name FROM students

-- NOT
SELECT * FROM students WHERE country <> 'USA';

--
SELECT * FROM students WHERE NOT country = 'USA';

SELECT NULL = 0;
-- return null value (NULL ar sathe je value calculated kori all returns null)
SELECT * FROM students WHERE email != NULL;

SELECT * FROM students WHERE email IS NOT NULL;

SELECT * FROM students

-- Coalesce
SELECT COALESCE(email, 'email not provide') FROM students;

-- i show 3 countries
-- SELECT * FROM students WHERE country = 'USA' OR country = 'UK' OR country = 'Canada'
SELECT *
FROM students
WHERE
    country IN ('USA', 'UK', 'Canada')
SELECT *
FROM students
WHERE
    country NOT IN ('USA', 'UK', 'Canada')

-- between operator
SELECT * FROM students WHERE age BETWEEN 19 AND 22 ORDER BY age

-- Like operator
SELECT * FROM students WHERE first_name LIKE '___a%';
-- case sensitive
SELECT * FROM students WHERE first_name ILIKE 'a%';
-- case insensitive

-- limit and offset
SELECT * FROM students LIMIT 5 OFFSET 5 * 0;

SELECT * FROM students LIMIT 5 OFFSET 5 * 1;

-- delete
DELETE FROM students WHERE s_id = 11;

-- update
UPDATE students SET first_name = 'Raju' WHERE s_id = 12;