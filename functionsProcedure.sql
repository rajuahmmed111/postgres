-- Active: 1740560784691@@127.0.0.1@5432@ph@public
SELECT * FROM employees1;

-- create function
CREATE Function emp_count()
RETURNS INT
LANGUAGE SQL
AS
$$
SELECT count(*) FROM employees1;
$$;

SELECT emp_count ();

CREATE Function emp_delete()
RETURNS void
LANGUAGE SQL
AS
$$
DELETE FROM employees1 WHERE employee_id =30;
$$;

SELECT emp_delete ();

-- DELETE FUNCTION with PARAMETER
CREATE Function delete_emp_id (p_emp_id INT)
    RETURNS void
    LANGUAGE SQL
AS
$$
DELETE FROM employees1 WHERE employee_id = p_emp_id;
$$;

SELECT delete_emp_id (29);

DROP Table employee;

CREATE Procedure remove_emp()
LANGUAGE plpgsql
AS 
$$
    BEGIN
    DELETE FROM employees1 WHERE employee_id = 28;
    END
$$;

CALL remove_emp ();

SELECT * FROM employees1;