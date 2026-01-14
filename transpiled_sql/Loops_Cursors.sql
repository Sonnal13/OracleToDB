DECLARE VARIABLE v_emp_id employees.emp_id%TYPE;
BEGIN
 for_loop_1: FOR rec IN (SELECT emp_id, emp_name FROM employees)  DO
        SET v_emp_id = rec.emp_id;
        
        DBMS_OUTPUT.PUT_LINE('Employee ID: ' || v_emp_id || ', Name: ' || rec.emp_name);
 end for for_loop_1;
END;
