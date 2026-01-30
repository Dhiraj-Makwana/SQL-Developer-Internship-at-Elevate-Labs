USE intern_training_db;

-- 1️.Create a complex query joining employees and departments
SELECT e.employee_id, e.first_name, e.last_name, e.email, e.salary, d.department_name, d.location
FROM employees e
JOIN departments d
ON e.department_id = d.department_id;

-- 2. Convert this query into a SQL VIEW
CREATE VIEW employee_department_view AS
SELECT e.employee_id, e.first_name, e.last_name, e.email, e.salary, d.department_name, d.location
FROM employees e
JOIN departments d
ON e.department_id = d.department_id;

-- 3. Query data directly from the created VIEW
SELECT * FROM employee_department_view;

-- 4. Apply filtering and sorting on the VIEW
-- Filter by department
SELECT first_name, salary, department_name
FROM employee_department_view
WHERE department_name = 'IT';

-- Sort by salary
SELECT first_name, salary, department_name
FROM employee_department_view
ORDER BY salary DESC;

/* 5. Attempt inserting data through a VIEW & analyze limitations 
Rule: Simple single-table views may be updatable, JOIN-based views usually are NOT.
*/
INSERT INTO employee_department_view
(first_name, last_name, email, salary, department_name)
VALUES
('Ravi', 'Patel', 'ravi@company.com', 45000, 'HR');

-- 6. Drop and recreate views safely
DROP VIEW IF EXISTS employee_department_view;

-- Recreate view 
CREATE VIEW employee_department_view AS
SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    e.email,
    e.salary,
    d.department_name,
    d.location
FROM employees e
JOIN departments d
ON e.department_id = d.department_id;

-- 7. Map views to reporting dashboards
SELECT department_name, AVG(salary) AS avg_salary
FROM employee_department_view
GROUP BY department_name;