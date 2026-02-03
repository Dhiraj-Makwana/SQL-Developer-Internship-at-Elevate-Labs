USE intern_training_db;

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(100) UNIQUE NOT NULL,
    age INT CHECK (age BETWEEN 18 AND 60),
    salary DECIMAL(10,2) CHECK (salary >= 0),
    status VARCHAR(20) DEFAULT 'ACTIVE'
        CHECK (status IN ('ACTIVE', 'INACTIVE')),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (email, age, salary)
VALUES ('user1@gmail.com', 25, 45000);

INSERT INTO users (email, age, salary)
VALUES ('user2@gmail.com', 15, 30000);

INSERT INTO users (email, age, salary)
VALUES ('user3@gmail.com', 30, 50000);

INSERT INTO users (email, age, salary, status)
VALUES ('user4@gmail.com', 28, 40000, 'BLOCKED');

ALTER TABLE users DROP CHECK users_chk_1;

ALTER TABLE users DROP INDEX email;

