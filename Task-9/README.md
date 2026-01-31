# Task 9: Writing Subqueries (Nested Queries)

## 📖 Task Objective

The objective of **Task-9** is to understand and implement **SQL subqueries (nested queries)** to solve complex data retrieval problems.

This task focuses on using **subqueries in different clauses**, understanding **correlated vs non-correlated subqueries**, analyzing **execution flow**, and comparing **subqueries with JOIN-based solutions**.

---

## 🗂 Database & Table Details

- **Database Name:** `intern_training_db`
- **Table Used:** `employees`

The `employees` table was enhanced with salary data to perform subquery-based analysis.

---

## 📋 Table Overview

### 👨‍💼 Employees Table
The table stores employee information including salary for analytical queries.

**Key Columns:**
- `employee_id` (Primary Key)
- `first_name`
- `last_name`
- `department_id`
- `salary`

---

## 🛠 Concepts Covered

This task covers advanced SQL query nesting concepts:

### 1️⃣ Salary Data Creation
- Added salary data inside the `employees` table
- Used salary values for aggregation and comparison

### 2️⃣ Subquery to Find Employees Earning More Than Average Salary
- Used a **non-correlated subquery** with `AVG(salary)`
- Compared individual salaries against company-wide average

📌 **Use Case:**  
Identify high-performing or high-paid employees

### 3️⃣ Subqueries in Different Clauses

#### 🔹 WHERE Clause
- Filtered records based on results returned by subqueries

#### 🔹 FROM Clause
- Used subqueries as derived tables
- Applied aliases to temporary result sets

#### 🔹 SELECT Clause
- Displayed aggregated values alongside row-level data

### 4️⃣ Subquery vs JOIN Comparison
- Executed equivalent queries using:
  - Subqueries
  - JOIN-based approaches
- Compared readability and performance implications

📌 **Observation:**  
JOINs are often faster, but subqueries are sometimes clearer and unavoidable

### 5️⃣ Correlated Subqueries
- Implemented correlated subqueries dependent on outer query values
- Observed row-by-row execution behavior

📌 **Key Learning:**  
Correlated subqueries are powerful but may impact performance

### 6️⃣ Execution Flow Analysis
- Understood how:
  - Non-correlated subqueries execute once
  - Correlated subqueries execute for each row
- Analyzed nested query logic flow

### 7️⃣ When Subqueries Are Unavoidable
- Row-wise comparisons
- Conditional existence checks
- Complex business logic
- Aggregation per group scenarios

### 8️⃣ Debugging Subquery Errors
- Handled common subquery errors such as:
  - Subquery returning multiple rows
  - Missing aliases in derived tables
- Learned how to fix errors using `IN`, `EXISTS`, and aliases

---

## 🧪 SQL Operations Implemented

- Salary-based data analysis
- Subqueries in WHERE, FROM, and SELECT clauses
- Non-correlated subqueries
- Correlated subqueries
- JOIN-based alternatives
- Debugging and error resolution

---

## 🧠 Real-World Use Cases

- Salary analysis and benchmarking
- Performance-based employee filtering
- Reporting and analytics queries
- Business rule enforcement
- Data validation scenarios

---

## ✅ Final Outcome

After completing **Task-9**:
- I understand nested query execution flow
- I can write both correlated and non-correlated subqueries
- I can choose between subqueries and JOINs wisely
- I can debug common subquery-related errors
- I can apply subqueries confidently in real-world SQL problems

---

## 🚀 Conclusion

Task-9 strengthened my understanding of **advanced SQL querying techniques** by introducing nested logic and execution flow analysis.  
This task provided strong practical exposure to **writing efficient, readable, and logically sound SQL queries** used in real-world applications.