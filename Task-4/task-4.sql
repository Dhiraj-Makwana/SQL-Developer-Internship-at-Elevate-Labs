USE intern_training_db;

------------------------------------------------------------
-- 1. SORT DATA USING ORDER BY (ASCENDING & DESCENDING)
------------------------------------------------------------

-- Sort students by first name in ascending order (A → Z)
SELECT student_id, first_name, last_name
FROM students
ORDER BY first_name ASC;

-- Sort students by enrollment date in descending order (Latest first)
SELECT student_id, first_name, enrollment_date
FROM students
ORDER BY enrollment_date DESC;


------------------------------------------------------------
-- 2. APPLY SORTING ON MULTIPLE COLUMNS
------------------------------------------------------------

-- Sort by gender first, then by last name
SELECT student_id, first_name, last_name, gender
FROM students
ORDER BY gender ASC, last_name ASC;

-- Sort by enrollment date (latest first) and first name
SELECT student_id, first_name, enrollment_date
FROM students
ORDER BY enrollment_date DESC, first_name ASC;


------------------------------------------------------------
-- 3. LIMIT RESULTS USING LIMIT
------------------------------------------------------------

-- Fetch only first 5 students
SELECT student_id, first_name, last_name
FROM students
LIMIT 5;

-- Fetch top 3 most recently enrolled students
SELECT student_id, first_name, enrollment_date
FROM students
ORDER BY enrollment_date DESC
LIMIT 3;


------------------------------------------------------------
-- 4. COMBINE ORDER BY WITH WHERE
------------------------------------------------------------

-- Fetch Male students sorted by first name
SELECT student_id, first_name, gender
FROM students
WHERE gender = 'Male'
ORDER BY first_name ASC;

-- Fetch students enrolled after 2022, sorted by enrollment date
SELECT student_id, first_name, enrollment_date
FROM students
WHERE enrollment_date > '2022-01-01'
ORDER BY enrollment_date ASC;


------------------------------------------------------------
-- 5. USE OFFSET FOR PAGINATION
------------------------------------------------------------

-- Page 1 (First 5 records)
SELECT student_id, first_name, last_name
FROM students
ORDER BY student_id
LIMIT 5 OFFSET 0;

-- Page 2 (Next 5 records)
SELECT student_id, first_name, last_name
FROM students
ORDER BY student_id
LIMIT 5 OFFSET 5;

-- Page 3 (Next 5 records)
SELECT student_id, first_name, last_name
FROM students
ORDER BY student_id
LIMIT 5 OFFSET 10;


------------------------------------------------------------
-- 6. PERFORMANCE IMPACT (BEST PRACTICES DEMO)
------------------------------------------------------------

-- ❌ Bad practice: Sorting without index (slow for large data)
SELECT *
FROM students
ORDER BY last_name;

-- ✅ Good practice: Sorting using indexed column (PRIMARY KEY)
SELECT *
FROM students
ORDER BY student_id;

-- Tip:
-- Use indexes on columns frequently used in ORDER BY and WHERE
-- Example:
-- CREATE INDEX idx_enrollment_date ON students(enrollment_date);


------------------------------------------------------------
-- 7. LEADERBOARD-STYLE QUERY
------------------------------------------------------------

-- Leaderboard: Most recently enrolled students (Top 10)
SELECT 
    student_id,
    CONCAT(first_name, ' ', last_name) AS student_name,
    enrollment_date
FROM students
ORDER BY enrollment_date DESC
LIMIT 10;

-- Leaderboard by earliest enrollment (Top 5 oldest students)
SELECT 
    student_id,
    first_name,
    enrollment_date
FROM students
ORDER BY enrollment_date ASC
LIMIT 5;


------------------------------------------------------------
-- 8. TEST EDGE CASES
------------------------------------------------------------

-- Case 1: LIMIT more rows than available
SELECT student_id, first_name
FROM students
LIMIT 1000;

-- Case 2: OFFSET beyond total rows (returns empty set)
SELECT student_id, first_name
FROM students
ORDER BY student_id
LIMIT 5 OFFSET 1000;

-- Case 3: NULL values sorting (if any column allows NULL)
SELECT student_id, mobile_number
FROM students
ORDER BY mobile_number ASC;

-- Case 4: WHERE condition returning no rows
SELECT student_id, first_name
FROM students
WHERE enrollment_date > '2030-01-01';