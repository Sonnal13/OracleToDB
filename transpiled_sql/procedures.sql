CREATE OR REPLACE PROCEDURE increase_salary(
IN p_emp_id DECIMAL(38,18),
IN p_percent DECIMAL(38,18))
LANGUAGE SQL
SQL SECURITY INVOKER
AS

BEGIN

    UPDATE employees
    SET salary = salary + (salary * p_percent / 100)
    WHERE emp_id = p_emp_id;
END;
