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

UPDATE employees
SET department_id = 1
WHERE employee_id IN (1, 4);

UPDATE employees
SET department_id = 2
WHERE employee_id = 2;