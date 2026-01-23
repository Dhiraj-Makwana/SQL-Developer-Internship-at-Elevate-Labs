/* 
   TASK 6: CRUD OPERATIONS (END-TO-END)
   Database: intern_training_db 
*/

USE intern_training_db;

------------------------------------------------------------
-- 1. CREATE A TABLE: employees
------------------------------------------------------------

CREATE TABLE employees (
    employee_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE NOT NULL,
    status ENUM('Active', 'Inactive') DEFAULT 'Active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
               ON UPDATE CURRENT_TIMESTAMP
);

------------------------------------------------------------
-- 2. INSERT BULK DATA
------------------------------------------------------------

INSERT INTO employees
(first_name, last_name, email, department, salary, hire_date)
VALUES
('Amit', 'Sharma', 'amit.sharma@company.com', 'IT', 60000, '2021-06-15'),
('Neha', 'Patel', 'neha.patel@company.com', 'HR', 45000, '2022-02-10'),
('Rahul', 'Mehta', 'rahul.mehta@company.com', 'Finance', 55000, '2020-11-01'),
('Pooja', 'Verma', 'pooja.verma@company.com', 'IT', 65000, '2019-09-25'),
('Karan', 'Singh', 'karan.singh@company.com', 'Sales', 50000, '2023-01-05');

------------------------------------------------------------
-- 3. READ FILTERED DATA (SELECT)
------------------------------------------------------------

-- Fetch all employees
SELECT * FROM employees;

-- Fetch only IT department employees
SELECT employee_id, first_name, department, salary
FROM employees
WHERE department = 'IT';

-- Fetch employees with salary greater than 50,000
SELECT first_name, salary
FROM employees
WHERE salary > 50000;

------------------------------------------------------------
-- 4. UPDATE RECORDS USING CONDITIONS
------------------------------------------------------------

-- Increase salary of IT employees by 10%
SELECT employee_id, department, salary
FROM employees
WHERE department = 'IT';

UPDATE employees
SET salary = salary * 1.10
WHERE employee_id IN (1,4);

-- Mark an employee as Inactive
UPDATE employees
SET status = 'Inactive'
WHERE email = 'rahul.mehta@company.com';

------------------------------------------------------------
-- 5. DELETE SELECTIVE ROWS
------------------------------------------------------------

-- Delete employees from Sales department
SELECT *
FROM employees
WHERE department = 'Sales';

DELETE FROM employees
WHERE employee_id = '5';

------------------------------------------------------------
-- 6. PRACTICE SAFE DELETES
------------------------------------------------------------

-- Always check data before delete
SELECT * FROM employees
WHERE status = 'Inactive';

-- Safe delete using condition
DELETE FROM employees
WHERE status = 'Inactive'
LIMIT 1;

------------------------------------------------------------
-- 7. USE TRANSACTIONS
------------------------------------------------------------

START TRANSACTION;

-- Temporary update
SELECT *
FROM employees
WHERE department = 'HR';

UPDATE employees
SET salary = salary + 5000
WHERE employee_id = '2';

-- Check result before committing
SELECT * 
FROM employees 
WHERE department = 'HR';

-- Undo changes if something looks wrong
ROLLBACK;

-- OR confirm changes
COMMIT;

------------------------------------------------------------
-- 8. VALIDATE BEFORE AND AFTER STATES
------------------------------------------------------------

-- BEFORE update
SELECT employee_id, salary
FROM employees
WHERE department = 'IT';

-- Perform update
SELECT * 
FROM employees
WHERE department = 'IT';

UPDATE employees
SET salary = salary + 2000
WHERE employee_id IN (1,4);

-- AFTER update
SELECT employee_id, salary
FROM employees
WHERE department = 'IT';

------------------------------------------------------------
-- FINAL DATA CHECK
------------------------------------------------------------

SELECT * FROM employees;