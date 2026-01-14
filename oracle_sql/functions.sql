CREATE OR REPLACE FUNCTION get_employee_salary (
    p_emp_id IN NUMBER
) RETURN NUMBER
IS
    v_salary NUMBER;
BEGIN
    SELECT salary INTO v_salary FROM employees WHERE emp_id = p_emp_id;
    RETURN v_salary;
EXCEPTION
    WHEN NO_DATA_FOUND THEN RETURN NULL;
END;
