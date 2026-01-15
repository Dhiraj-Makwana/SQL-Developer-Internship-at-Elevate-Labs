CREATE DATABASE intern_training_db;
USE intern_training_db;

CREATE TABLE students (
  id INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(50) UNIQUE,
  age INT
);

INSERT INTO students
(id, name, email, age)
VALUES
(1, "Dhiraj Makwana", "dhirajmakwana33912@gmail.com", 21),
(2, "Rishi Patel", "rishipatel22@gmail.com", 21),
(3, "Bharvi Patel", "bharvipatel20@gmail.com", 21),
(4, "Bhavya Mishra", "bhavyamishra01@gmail.com", 21),
(5, "Gayatri Kharva", "gayatrikharva27@gmail.com", 21);

SELECT * FROM students;

SELECT name, age FROM students;

SELECT DISTINCT age FROM students;

SELECT id FROM students;

SELECT * FROM students WHERE id = 1;

SELECT * FROM students WHERE age = 21;

SELECT * FROM students WHERE name = "Bharvi Patel";

SELECT * FROM students WHERE id BETWEEN 1 AND 5;

SELECT * FROM students WHERE id BETWEEN 3 AND 4;

SELECT * FROM students WHERE id IN (1,2,5);

SELECT * FROM students WHERE id NOT IN (1,2,5);