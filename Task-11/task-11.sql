USE intern_training_db;

CREATE TABLE employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    joining_date DATE
);

INSERT INTO employees (first_name, last_name, department, salary, joining_date)
SELECT
    CONCAT('Emp', FLOOR(RAND()*10000)),
    CONCAT('User', FLOOR(RAND()*10000)),
    ELT(FLOOR(1 + RAND()*4), 'IT', 'HR', 'Finance', 'Sales'),
    FLOOR(30000 + RAND()*70000),
    DATE_SUB(CURDATE(), INTERVAL FLOOR(RAND()*3650) DAY)
FROM information_schema.tables
LIMIT 100000;

SELECT * FROM employees
WHERE department = 'IT';

EXPLAIN SELECT * FROM employees WHERE department = 'IT';

CREATE INDEX idx_department ON employees(department);

SELECT * FROM employees
WHERE department = 'IT';

EXPLAIN SELECT * FROM employees WHERE department = 'IT';

SELECT * FROM employees;