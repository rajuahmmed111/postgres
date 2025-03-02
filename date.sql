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