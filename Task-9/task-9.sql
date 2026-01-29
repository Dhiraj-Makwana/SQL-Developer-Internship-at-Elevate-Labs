USE intern_training_db;

-- Create salary data inside employees table
SELECT * FROM employees;

-- Employees who are earning more than average
SELECT employee_id, first_name, last_name, salary
FROM employees
WHERE salary < (SELECT AVG(salary) FROM employees);

-- subqueries inside WHERE
SELECT first_name, salary
FROM employees
WHERE salary = (
	SELECT MAX(salary) 
    FROM employees
);

-- subqueries inside FROM
SELECT avg_salary.avg_sal
FROM (
	SELECT AVG(salary) AS avg_sal
    FROM employees
) AS avg_salary;

-- subqueries inside SELECT
SELECT first_name, salary, (SELECT AVG(salary) FROM employees) AS company_avg_salary
FROM employees;

-- Compare subquery results with equivalent JOIN-based queries.
SELECT first_name, salary
FROM employees
WHERE salary > (
	SELECT AVG(salary) 
    FROM employees
);

SELECT e.first_name, e.salary
FROM employees e
JOIN (
	SELECT AVG(salary) AS avg_salary
    FROM employees
) a
ON e.salary > a.avg_salary;

-- employees earning more than their department's avg salary 
SELECT e1.first_name, e1.salary, e1.department
FROM employees e1
WHERE e1.salary > (
	SELECT AVG(e2.salary)
    FROM employees e2
    WHERE e2.department_id = e1.department_id
);

-- subqueries are unavoidable
SELECT first_name
FROM employees e
WHERE EXISTS (
	SELECT 1
    FROM departments d
    WHERE d.department_id = e.department_id
)

/* 
Error: WHERE salary = (SELECT salary FROM employees);
Fix: WHERE salary IN (SELECT salary FROM employees);

Error: FROM (SELECT AVG(salary) FROM employees);
Fix: FROM (SELECT AVG(salary) FROM employees) AS avg_tbl;
*/