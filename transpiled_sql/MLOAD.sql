-- MLOAD simulation: multi-row insert
INSERT INTO employees(emp_id, emp_name, salary, hire_date, dept_id) VALUES (201,'Test1',50000,current_date(),10);
INSERT INTO employees(emp_id, emp_name, salary, hire_date, dept_id) VALUES (202,'Test2',52000,current_date(),20);
INSERT INTO employees(emp_id, emp_name, salary, hire_date, dept_id) VALUES (203,'Test3',51000,current_date(),10);
