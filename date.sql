-- SHOW timezone
SELECT now()

CREATE TABLE timeZ (
    ts TIMESTAMP WITHOUT TIME ZONE,
    tsz TIMESTAMP WITH TIME ZONE
);

INSERT INTO
    timeZ
VALUES (
        '2025-03-02 11:00:00',
        '2025-03-02 11:00:00'
    )

SELECT * FROM timeZ;

SELECT CURRENT_DATE

SELECT now()::date;

SELECT now()::time

SELECT to_char(now(), 'yyyy-MM-dd');

SELECT to_char(now(), 'DDD');

-- interval
SELECT CURRENT_DATE - INTERVAL '1 year';

SELECT age (CURRENT_DATE, '2003-07-07');

SELECT *, age (CURRENT_DATE, dob) FROM students;

-- extract
SELECT extract( months FROM '2025-03-02'::date );

SELECT 'n'::BOOLEAN;

-- group clause
SELECT country , count(*), avg(age) FROM students GROUP BY country;


-- 



---- query using having clause with group clause ----

 -- filter group using having to show only countries with average age above 22
 SELECT country , count(*), avg(age) FROM students 
    GROUP BY country
        HAVING avg(age) > 22;



 -- count students born in each year
 SELECT count(*), extract(year FROM dob) as birth_year
    FROM students
    GROUP BY birth_year