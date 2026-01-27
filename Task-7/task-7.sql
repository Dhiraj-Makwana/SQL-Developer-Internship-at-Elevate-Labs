USE intern_training_db;

CREATE TABLE departments (
	department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100) NOT NULL,
    location VARCHAR(100)
);

ALTER TABLE employees
ADD COLUMN department_id INT NOT NULL;

INSERT INTO departments
(department_name, location)
VALUES
('IT', 'Ahmdabad'),
('HR', 'Vadodara'),
('Finance', 'Vadodara');

SELECT * FROM employees;
SELECT * FROM departments;
DESCRIBE employees;
DESCRIBE departments;

UPDATE employees
SET department_id = 1
WHERE employee_id IN (1, 4);

UPDATE employees
SET department_id = 2
WHERE employee_id = 2;

ALTER TABLE employees
ADD FOREIGN KEY (department_id) REFERENCES departments(department_id);

INSERT INTO employees
(first_name, last_name, email, salary, hire_date, department_id)
VALUES
('Dhiraj', 'Makwana', 'dhiraj.makwana@company.com', 55000, '2026-02-01', 1);

UPDATE employees
SET department = 'IT'
WHERE employee_id = 6;

INSERT INTO employees
(first_name, last_name, email, salary, hire_date, department_id)
VALUES
('Rishi', 'Patel', 'rishi.patel@company.com', 55000, '2026-02-01', 4);

SHOW CREATE TABLE employees;

ALTER TABLE employees
DROP FOREIGN KEY employees_ibfk_1;

ALTER TABLE employees
ADD CONSTRAINT fk_employee_department
FOREIGN KEY (department_id)
REFERENCES departments(department_id)
ON DELETE CASCADE;

DELETE FROM departments
WHERE department_id = 1;