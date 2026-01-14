DECLARE
    v_emp_id employees.emp_id%TYPE;
BEGIN
    FOR rec IN (SELECT emp_id, emp_name FROM employees) LOOP
        v_emp_id := rec.emp_id;
        
        DBMS_OUTPUT.PUT_LINE('Employee ID: ' || v_emp_id || ', Name: ' || rec.emp_name);
    END LOOP;
END;
/
