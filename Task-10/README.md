# Task 10: Creating and Using SQL Views

## 📖 Task Objective

The objective of **Task-10** is to understand how **SQL Views** are created and used to simplify complex queries, improve security, and enable reusable query layers.

This task focuses on converting complex JOIN queries into views, querying views like tables, understanding view limitations, and mapping views to real-world reporting scenarios.

---

## 🗂 Database & Table Details

- **Database Name:** `intern_training_db`
- **Tables Used:**
  - `employees`
  - `departments`

These tables were created and populated in earlier tasks and reused for creating SQL views.

---

## 📋 Tables Overview

### 👨‍💼 Employees Table
- Stores employee-related information
- Contains `department_id` as a foreign key

### 🏢 Departments Table
- Stores department details
- Contains `department_id` as a primary key

---

## 🛠 Concepts Covered

This task covers core and advanced concepts related to SQL views:

### 1️⃣ Complex Query Using JOIN
- Created a JOIN query combining `employees` and `departments`
- Retrieved employee details along with department name and location

📌 **Purpose:**  
To serve as the base query for creating a view

### 2️⃣ Creating a SQL VIEW
- Converted the JOIN query into a SQL VIEW
- Stored the query logic as a reusable virtual table

📌 **Key Point:**  
Views do not store data physically; they store only query definitions

### 3️⃣ Querying Data from a VIEW
- Retrieved data directly from the view using `SELECT`
- Treated the view like a regular table

### 4️⃣ Filtering and Sorting on Views
- Applied `WHERE` clauses on the view
- Used `ORDER BY` for sorting results

📌 **Benefit:**  
Simplifies queries without rewriting JOIN logic

### 5️⃣ Security and Simplicity Using Views
- Restricted access to sensitive columns (e.g., salary)
- Allowed users to query data without direct table access
- Reduced query complexity for developers and analysts

### 6️⃣ Inserting Data Through Views (Limitations)
- Attempted to insert records through a JOIN-based view
- Observed that complex views are **not updatable**

📌 **Learning:**  
Only simple single-table views may allow INSERT/UPDATE operations

### 7️⃣ Dropping and Recreating Views Safely
- Used `DROP VIEW IF EXISTS` to avoid errors
- Recreated views safely when modifications were required

### 8️⃣ Mapping Views to Reporting Dashboards
- Used views as data sources for reports and dashboards
- Aggregated data (e.g., average salary per department)

📌 **Real-World Usage:**  
Views are commonly used in BI tools and analytics dashboards

---

## 🧪 SQL Operations Implemented

- JOIN-based complex query
- VIEW creation
- Querying views
- Filtering and sorting view data
- Testing INSERT limitations on views
- Dropping and recreating views
- Reporting-style queries using views

---

## 🧠 Real-World Use Cases

- HR and employee reporting systems
- Role-based data access
- Business intelligence dashboards
- Simplifying complex database queries
- Secure data abstraction layers

---

## ✅ Final Outcome

After completing **Task-10**:
- I can create and use SQL views confidently
- I understand view limitations and security benefits
- I can simplify complex queries using views
- I can design reusable query layers for reports
- I can explain views clearly in interviews

---

## 🚀 Conclusion

Task-10 strengthened my understanding of **SQL views as reusable, secure, and simplified query layers**.  
This task provided practical exposure to **enterprise-level database design practices** commonly used in real-world applications.