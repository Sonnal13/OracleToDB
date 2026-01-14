CREATE OR REPLACE PACKAGE emp_pkg AS
    PROCEDURE add_employee(p_emp_id NUMBER, p_name VARCHAR2, p_salary NUMBER, p_dept_id NUMBER);
    FUNCTION total_salary_by_dept(p_dept_id NUMBER) RETURN NUMBER;
END emp_pkg;

CREATE OR REPLACE PACKAGE BODY emp_pkg AS
    PROCEDURE add_employee(p_emp_id NUMBER, p_name VARCHAR2, p_salary NUMBER, p_dept_id NUMBER) IS
    BEGIN
        INSERT INTO employees(emp_id, emp_name, salary, hire_date, dept_id) VALUES (p_emp_id,p_name,p_salary,SYSDATE,p_dept_id);
    END add_employee;

    FUNCTION total_salary_by_dept(p_dept_id NUMBER) RETURN NUMBER IS
        v_total NUMBER;
    BEGIN
        SELECT SUM(salary) INTO v_total FROM employees WHERE dept_id = p_dept_id;
        RETURN NVL(v_total,0);
    END total_salary_by_dept;
END emp_pkg;
