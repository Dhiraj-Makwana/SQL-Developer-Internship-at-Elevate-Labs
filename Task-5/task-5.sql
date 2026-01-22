/* =========================================================
   TASK 5: AGGREGATE FUNCTIONS & GROUP BY
   ========================================================= */

USE intern_training_db;

------------------------------------------------------------
-- 1. USE COUNT, SUM, AVG, MIN, MAX
------------------------------------------------------------

-- Total number of students
SELECT COUNT(*) AS total_students
FROM students;

-- Oldest and youngest student (by date of birth)
SELECT 
    MIN(date_of_birth) AS oldest_student_dob,
    MAX(date_of_birth) AS youngest_student_dob
FROM students;

-- Average year of birth (demonstration purpose)
SELECT AVG(YEAR(date_of_birth)) AS avg_birth_year
FROM students;


------------------------------------------------------------
-- 2. GROUP STUDENTS BY AGE
------------------------------------------------------------

-- Calculate age and group students by age
SELECT 
    TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) AS age,
    COUNT(*) AS total_students
FROM students
GROUP BY age
ORDER BY age ASC;


------------------------------------------------------------
-- 3. APPLY GROUP BY WITH AGGREGATES
------------------------------------------------------------

-- Gender-wise student count
SELECT 
    gender,
    COUNT(*) AS total_students
FROM students
GROUP BY gender;

-- Enrollment year-wise student count
SELECT 
    YEAR(enrollment_date) AS enrollment_year,
    COUNT(*) AS total_students
FROM students
GROUP BY enrollment_year
ORDER BY enrollment_year ASC;


------------------------------------------------------------
-- 4. USE HAVING FOR FILTERED GROUPS
------------------------------------------------------------

-- Show only genders having more than 2 students
SELECT 
    gender,
    COUNT(*) AS total_students
FROM students
GROUP BY gender
HAVING COUNT(*) > 2;

-- Show only age groups with more than 1 student
SELECT 
    TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) AS age,
    COUNT(*) AS total_students
FROM students
GROUP BY age
HAVING COUNT(*) > 1;


------------------------------------------------------------
-- 5. COMPARE WHERE vs HAVING
------------------------------------------------------------

-- WHERE filters rows BEFORE grouping
SELECT 
    gender,
    COUNT(*) AS total_students
FROM students
WHERE enrollment_date > '2022-01-01'
GROUP BY gender;

-- HAVING filters groups AFTER aggregation
SELECT 
    gender,
    COUNT(*) AS total_students
FROM students
GROUP BY gender
HAVING COUNT(*) >= 2;

-- ❌ Invalid usage (will cause error)
-- WHERE COUNT(*) > 2;

ALTER TABLE students
ADD department VARCHAR(50);

UPDATE students
SET department = 'Computer Science'
WHERE student_id IN (1,2,3,4,5,6);

UPDATE students
SET department = 'Pharmacy'
WHERE student_id IN (7,8,9,10);


------------------------------------------------------------
-- 6. REAL-WORLD EXAMPLE (DEPARTMENT-WISE COUNT)
------------------------------------------------------------
-- Assuming a department column exists
-- Example: department VARCHAR(50)

SELECT 
    department,
    COUNT(*) AS total_students
FROM students
GROUP BY department
ORDER BY total_students DESC;

-- Departments with more than 5 students
SELECT 
    department,
    COUNT(*) AS total_students
FROM students
GROUP BY department
HAVING COUNT(*) > 5;

------------------------------------------------------------
-- 7. ANALYZE RESULT SETS
------------------------------------------------------------

-- Gender-wise average age of students
SELECT 
    gender,
    AVG(TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE())) AS average_age
FROM students
GROUP BY gender;

-- Enrollment year with earliest & latest enrollment date
SELECT 
    YEAR(enrollment_date) AS enrollment_year,
    MIN(enrollment_date) AS first_enrollment,
    MAX(enrollment_date) AS last_enrollment
FROM students
GROUP BY enrollment_year;


------------------------------------------------------------
-- 8. HANDLE NULLs IN AGGREGATES
------------------------------------------------------------

-- Count students with phone numbers (NULL ignored)
SELECT COUNT(mobile_number) AS students_with_phone
FROM students;

-- Count students without phone numbers
SELECT COUNT(*) - COUNT(mobile_number) AS students_without_phone
FROM students;

-- Use IFNULL to handle NULL values
SELECT 
    COUNT(*) AS total_students,
    COUNT(IFNULL(mobile_number, 0)) AS phone_count_handled
FROM students;

-- Average calculation ignoring NULL automatically
SELECT AVG(mobile_number) AS avg_phone_number
FROM students;
