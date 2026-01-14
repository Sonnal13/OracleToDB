INSERT INTO departments (dept_id, dept_name, location) VALUES (10,'IT','Mumbai');
INSERT INTO departments (dept_id, dept_name, location) VALUES (20,'HR','Pune');

INSERT INTO employees (emp_id, emp_name, salary, hire_date, dept_id) VALUES (101,'Amit Sharma',60000,DATE '2025-01-01',10);
INSERT INTO employees (emp_id, emp_name, salary, hire_date, dept_id) VALUES (102,'Neha Verma',50000,DATE '2025-02-01',20);

COMMIT;
