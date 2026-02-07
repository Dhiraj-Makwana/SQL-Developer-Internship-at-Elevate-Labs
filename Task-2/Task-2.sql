USE intern_training_db;

CREATE TABLE students (
    student_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50)  NOT NULL,
    last_name VARCHAR(50)  NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone_number VARCHAR(15),
    date_of_birth DATE NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    enrollment_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
			   ON UPDATE CURRENT_TIMESTAMP
);
DESCRIBE students;

INSERT INTO students
(first_name, last_name, email, phone_number, date_of_birth, gender, enrollment_date)
VALUES
('Dhiraj', 'Makwana', 'dhirajmakwana33912', '8238164813', '2005-05-26', 'Male', '2022-09-08'),
('Rishi', 'Patel', 'rishipatel22', '5463712343', '2005-05-22', 'Male', '2022-09-01'),
('Neel', 'Patel', 'neelpatel23', '1233712343', '2005-03-21', 'Male', '2022-09-01'),
('Urval', 'Vaghani', 'urvalvaghani54', '5466782343', '2005-07-13', 'Male', '2022-09-05'),
('Sahil', 'Jha', 'sahiljha21', '5464536343', '2005-01-21', 'Male', '2022-09-06'),
('Tanmay', 'More', 'tanmaymore06', '5463756343', '2005-05-22', 'Male', '2022-09-01');

INSERT INTO students (first_name, last_name, email)
VALUES ('Aman', 'Patel', 'rahul@gmail.com');

INSERT INTO students (first_name, last_name, email)
VALUES (NULL, 'Patel', 'aman@gmail.com');

SELECT * FROM students;

ALTER TABLE students
ADD is_active BOOLEAN DEFAULT TRUE;

ALTER TABLE students
CHANGE phone_number mobile_number VARCHAR(10);

ALTER TABLE students
DROP COLUMN gender;