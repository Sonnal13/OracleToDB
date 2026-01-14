-- Example of materialized view
CREATE MATERIALIZED VIEW emp_salary_mv AS
SELECT dept_id, SUM(salary) AS total_salary
FROM employees
GROUP BY dept_id;
