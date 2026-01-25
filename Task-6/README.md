# Task 6: CRUD Operations (End-to-End)

## 📖 Task Objective

The objective of Task-6 is to gain hands-on experience with **end-to-end CRUD operations** in SQL.  
CRUD stands for **Create, Read, Update, and Delete**, which are the most fundamental operations performed on databases in real-world applications.

As per the official task guidelines, this task ensures an intern can confidently handle **daily SQL operations**, including safe updates, deletes, and transaction management.

---

## 🗂 Database & Table Details

- **Database Name:** `intern_training_db`
- **Table Created:** `employees`

### 📋 Employees Table Structure
The `employees` table includes:
- Employee ID (Primary Key)
- First & Last Name
- Email (Unique)
- Department
- Salary
- Hire Date
- Status (Active / Inactive)
- Created & Updated timestamps

---

## 🛠 Concepts Covered

This task covers the complete lifecycle of database operations:

### 1️⃣ CREATE
- Created a new `employees` table with constraints
- Used `PRIMARY KEY`, `AUTO_INCREMENT`, `UNIQUE`, `ENUM`, and timestamps

### 2️⃣ INSERT
- Inserted bulk employee records in a single query
- Demonstrated efficient data insertion

### 3️⃣ READ (SELECT)
- Retrieved all employee records
- Filtered data using `WHERE`
- Queried based on department and salary conditions

### 4️⃣ UPDATE
- Updated employee salaries conditionally
- Increased salaries using calculations
- Updated employee status (Active → Inactive)

### 5️⃣ DELETE
- Deleted specific records safely
- Demonstrated targeted row deletion using conditions

### 6️⃣ SAFE DELETES
- Verified records before deleting
- Used `WHERE` and `LIMIT` to prevent accidental mass deletion

### 7️⃣ TRANSACTIONS
- Used `START TRANSACTION`
- Demonstrated `COMMIT` and `ROLLBACK`
- Ensured data safety during critical updates

### 8️⃣ DATA VALIDATION
- Verified data before and after updates
- Ensured correctness of changes

---

## 🧪 SQL Operations Implemented

### 🔹 Table Creation
- Defined schema with proper constraints and defaults

### 🔹 Bulk Insert
- Inserted multiple employee records at once

### 🔹 Filtered Reads
- Fetched employees by department
- Queried employees with salary thresholds

### 🔹 Conditional Updates
- Salary increments for IT employees
- Status update for specific employees

### 🔹 Selective Deletes
- Removed employees from a specific department
- Used safe delete practices

### 🔹 Transaction Control
- Temporary updates using transactions
- Rolled back incorrect changes
- Committed verified updates

### 🔹 Before & After Validation
- Checked salary changes before update
- Verified results after update execution

---

## 🧠 Real-World Use Cases

- Employee management systems
- HR and payroll applications
- Admin dashboards
- Financial and operational databases
- Backend systems requiring data safety

---

## ✅ Final Outcome

After completing Task-6:
- I can perform complete CRUD operations confidently
- I understand safe update and delete practices
- I can use transactions to protect data integrity
- I can validate database changes effectively
- I can handle real-world SQL workflows

---

## 🚀 Conclusion

Task-6 strengthened my understanding of **end-to-end database operations**, which are essential for backend development and real-world applications.  
This task provided strong practical exposure to **safe, reliable, and professional SQL practices**.