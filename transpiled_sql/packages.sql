CREATE OR REPLACE PACKAGE emp_pkg AS
    PROCEDURE add_employee(p_emp_id DECIMAL(38,18), p_name STRING, p_salary DECIMAL(38,18), p_dept_id DECIMAL(38,18));
    FUNCTION total_salary_by_dept(p_dept_id DECIMAL(38,18)) RETURN DECIMAL(38,18);
END emp_pkg;

CREATE OR REPLACE PACKAGE BODY emp_pkg AS
    PROCEDURE add_employee(p_emp_id DECIMAL(38,18), p_name STRING, p_salary DECIMAL(38,18), p_dept_id DECIMAL(38,18)) IS
    BEGIN
INSERT INTO employees(emp_id, emp_name, salary, hire_date, dept_id) VALUES (p_emp_id,p_name,p_salary,current_date(),p_dept_id);
END add_employee;

    FUNCTION total_salary_by_dept(p_dept_id DECIMAL(38,18)) RETURN DECIMAL(38,18) IS
        v_total DECIMAL(38,18);
    BEGIN

    BEGIN
SET v_total = (
SELECT
SUM(salary)
FROM employees WHERE dept_id = p_dept_id);
        RETURN NVL(v_total,0);
END total_salary_by_dept;
END emp_pkg;
