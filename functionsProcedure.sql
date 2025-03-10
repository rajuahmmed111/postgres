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

-- procedure
CREATE Procedure remove_emp()
LANGUAGE plpgsql
AS 
$$
    BEGIN
    DELETE FROM employees1 WHERE employee_id = 28;
    END
$$;

CALL remove_emp ();

-- procedure with use variables
CREATE Procedure remove_emp_var()
LANGUAGE PLPGSQL
AS $$
declare
test_var int;

BEGIN 
select employee_id INTO test_var from employees1 WHERE employee_id=27;
DELETE FROM employees1 where employee_id = test_var;
end
$$;

CALL remove_emp_var ();



SELECT * FROM employees1;