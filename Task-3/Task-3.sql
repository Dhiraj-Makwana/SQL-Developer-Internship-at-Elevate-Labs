USE intern_training_db;

SELECT * FROM students;

ALTER TABLE students
ADD gender ENUM('Male', 'Female', 'Other');

DESCRIBE students;

UPDATE students
SET gender = 'Male'
WHERE student_id IN (1,2,3,4,5,6);

INSERT INTO students
(first_name, last_name, email, mobile_number, date_of_birth, gender, enrollment_date)
VALUES
('Bharvi', 'Patel', 'bharvipatel20@gmail.com', '8795427509', '2004-10-20', 'Female', '2022-09-01'),
('Bhavya', 'Mishra', 'bhavyamishra01@gmail.com', '8745227509', '2004-02-01', 'Female', '2022-09-03'),
('Gayatri', 'Kharva', 'gayatrikharva27@gmail.com', '8795456709', '2004-09-27', 'Female', '2022-09-05');

SELECT * FROM students
WHERE TIMESTAMPDIFF(YEAR, date_of_birth, '2026-01-19') > 19;

SELECT *
FROM students
WHERE TIMESTAMPDIFF(YEAR, date_of_birth, '2026-01-19') > 20;

SELECT *
FROM students
WHERE TIMESTAMPDIFF(YEAR, date_of_birth, '2026-01-19') > 19 AND last_name = 'Patel';

SELECT *
FROM students
WHERE TIMESTAMPDIFF(YEAR, date_of_birth, '2026-01-19') > 19 OR last_name = 'Patel';

SELECT *
FROM students
WHERE TIMESTAMPDIFF(YEAR, date_of_birth, '2026-01-19') > 20 AND last_name = 'Patel';

SELECT *
FROM students
WHERE TIMESTAMPDIFF(YEAR, date_of_birth, '2026-01-19') > 20 OR last_name = 'Patel';

SELECT *
FROM students
WHERE gender = 'Male' AND first_name LIKE 'D%';

SELECT *
FROM students
WHERE gender = 'Male' AND first_name LIKE '%i%';

SELECT *
FROM students
WHERE gender = 'Female' AND first_name LIKE '%i%';

SELECT *
FROM students
WHERE gender IN ('Male', 'Female') AND first_name LIKE 'B%';

INSERT INTO students
(first_name, last_name, email, mobile_number, date_of_birth, gender, enrollment_date)
VALUES
('Bharadwaj', 'Macchi', 'bhardwajmac32@gmail.com', '9853417743', '2005-06-07', 'Male', '2022-09-16');

SELECT *
FROM students
WHERE gender IN ('Male', 'Female') AND last_name LIKE 'M%';

SELECT *
FROM students
WHERE gender IN ('Male', 'Female') AND first_name LIKE '_a%';

SELECT *
FROM students
WHERE gender IN ('Male', 'Female') AND first_name LIKE '_h%';

SELECT *
FROM students
WHERE first_name LIKE '_h%' AND last_name LIKE '_a%';

SELECT * 
FROM students
WHERE first_name IN ('Dhiraj', 'Rishi', 'Neel');

SELECT *
FROM students
WHERE date_of_birth BETWEEN '2003-01-01' AND '2004-12-31';

SELECT *
FROM students
WHERE gender IS NOT NULL;

SELECT *
FROM students
WHERE gender IS NULL;

SELECT first_name, email
FROM students
WHERE email LIKE '%@gmail.com';

SELECT *
FROM students
WHERE email LIKE '%dhiraj%';
