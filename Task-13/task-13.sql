USE intern_training_db;

CREATE TABLE accounts (
	account_id INT PRIMARY KEY,
    account_holder VARCHAR(100),
    balance DECIMAL(10,2) CHECK (balance >= 0)
);

INSERT INTO accounts VALUES
(1, 'Alice', 5000),
(2, 'Bob', 3000);

START TRANSACTION;

UPDATE accounts
SET balance = balance - 1000
WHERE account_id = 1;

UPDATE accounts
SET balance = balance + 1000
WHERE account_id = 2;

COMMIT;

SELECT * FROM accounts;

-- Simulate Failure
START TRANSACTION;

UPDATE accounts
SET balance = balance -7000
WHERE account_id = 1;

ROLLBACK;

SELECT @@transaction_isolation;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

START TRANSACTION;

SELECT balance FROM accounts
WHERE account_id = 1
FOR UPDATE;
