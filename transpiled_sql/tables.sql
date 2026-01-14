CREATE TABLE departments (
    dept_id DECIMAL(38,18) ,
    dept_name STRING NOT NULL,
    location STRING
);

CREATE TABLE employees (
    emp_id DECIMAL(38,18) ,
    emp_name STRING NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    hire_date DATE NOT NULL,
    dept_id DECIMAL(38,18) NOT NULL,
    CONSTRAINT fk_emp_dept FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);
