# Task 2: Data Types, Constraints & Table Design (SQL)

## 📌 Internship Task Overview
This task is part of the **SQL Developer Internship – Task 2**, focused on understanding **SQL data types**, **constraints**, and **table design best practices** using MySQL.

The objective is to design a well-structured `students` table, enforce data integrity using constraints, and perform schema modifications using `ALTER TABLE`.

📄 *Task reference:* SQL Developer Internship – Task 2

---

## 🛠 Tools & Technologies
- **Database:** MySQL
- **Client Tool:** MySQL Workbench

---

## 🎯 Objectives of the Task
- Design a `students` table using appropriate SQL data types
- Apply constraints such as:
  - `PRIMARY KEY`
  - `NOT NULL`
  - `UNIQUE`
- Understand why constraints are essential for **data integrity**
- Insert valid and invalid data to observe constraint behavior
- Modify the table structure using `ALTER TABLE`
- Document schema design decisions

---

## 🧱 Table Design Explanation

### `students` Table Structure
| Column Name | Data Type | Constraints | Purpose |
|------------|----------|-------------|--------|
| `student_id` | INT UNSIGNED | PRIMARY KEY, AUTO_INCREMENT | Unique student identifier |
| `first_name` | VARCHAR(50) | NOT NULL | Student first name |
| `last_name` | VARCHAR(50) | NOT NULL | Student last name |
| `email` | VARCHAR(100) | NOT NULL, UNIQUE | Prevents duplicate email entries |
| `phone_number` | VARCHAR(15) | — | Stores mobile number |
| `date_of_birth` | DATE | NOT NULL | Student DOB |
| `gender` | ENUM | — | Gender selection |
| `enrollment_date` | DATE | NOT NULL | Course enrollment date |
| `created_at` | TIMESTAMP | DEFAULT CURRENT_TIMESTAMP | Record creation time |
| `updated_at` | TIMESTAMP | AUTO UPDATE | Tracks updates |

---

## 📜 SQL Implementation

### 1️⃣ Database Selection
```sql
USE intern_training_db;
