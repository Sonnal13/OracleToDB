CREATE OR REPLACE PROCEDURE increase_salary (
    p_emp_id  IN NUMBER,
    p_percent IN NUMBER
) AS
BEGIN
    UPDATE employees
    SET salary = salary + (salary * p_percent / 100)
    WHERE emp_id = p_emp_id;
END;
