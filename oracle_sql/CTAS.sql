-- Create Table As Select
CREATE TABLE employees_backup AS
SELECT emp_id, emp_name, salary, dept_id
FROM employees
WHERE salary > 50000;
