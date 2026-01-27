USE intern_training_db;

INSERT INTO departments
(department_id, department_name, location)
VALUES
(1, 'IT', 'Ahmdabad');

SELECT * FROM departments;
SELECT * FROM employees;

INSERT INTO employees
(employee_id, first_name, last_name, email, department, salary, hire_date, department_id)
VALUES
(1, 'Dhiraj', 'Makwana', 'dhiraj.makwana@company.com', 'IT', 100000, '2026-02-01', 1),
(3, 'Rishi', 'Patel', 'rishi.patel@company.com', 'IT', 100000, '2026-02-01', 1),
(4, 'Bharvi', 'Patel', 'bharvi.patel@company.com', 'HR', 70000, '2020-12-01', 2),
(5, 'Bhavya', 'Mishra', 'bhavya.mishra@company.com', 'HR', 60000, '2020-02-01', 2);

INSERT INTO employees
(employee_id, first_name, last_name, email, department, salary, hire_date, department_id)
VALUES
(6, 'Sahil', 'Jha', 'sahil.jha@company.com', '', 100000, '2026-02-01', 1);

SELECT first_name, last_name, department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id;

SELECT first_name, last_name, department_name
FROM employees
LEFT JOIN departments
ON employees.department_id = departments.department_id;

SELECT first_name, last_name, department_name
FROM employees
RIGHT JOIN departments
ON employees.department_id = departments.department_id;