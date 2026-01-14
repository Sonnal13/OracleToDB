CREATE OR REPLACE VIEW emp_department_view AS
SELECT e.emp_id, e.emp_name, e.salary, d.dept_name, d.location
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id;
