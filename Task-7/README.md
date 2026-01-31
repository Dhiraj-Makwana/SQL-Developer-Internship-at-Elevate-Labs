# Task 7: Table Relationships & Foreign Keys

## 📖 Task Objective

The objective of **Task-7** is to understand and implement **table relationships** in SQL using **PRIMARY KEY** and **FOREIGN KEY** constraints.

This task focuses on enforcing **referential integrity** between tables and understanding how relational databases maintain data consistency in real-world applications.

---

## 🗂 Database & Table Details

- **Database Name:** `intern_training_db`
- **Tables Used:**
  - `departments`
  - `employees`

---

## 📋 Table Structures

### 🏢 Departments Table (Parent Table)

The `departments` table stores department-related information.

**Columns:**
- `department_id` (PRIMARY KEY, AUTO_INCREMENT)
- `department_name`
- `location`

### 👨‍💼 Employees Table (Child Table)

The `employees` table stores employee records and references departments.

**Columns:**
- `employee_id` (PRIMARY KEY)
- `first_name`
- `last_name`
- `email`
- `salary`
- `hire_date`
- `department_id` (FOREIGN KEY)

---

## 🛠 Concepts Covered

This task covers core relational database concepts:

### 1️⃣ Table Relationships
- Created two related tables: `departments` and `employees`
- Established a **one-to-many relationship**
  - One department → Many employees

### 2️⃣ PRIMARY KEY
- Defined `department_id` as the PRIMARY KEY in the `departments` table
- Ensures each department is uniquely identified

### 3️⃣ FOREIGN KEY
- Added `department_id` column in the `employees` table
- Applied a FOREIGN KEY constraint referencing `departments(department_id)`
- Enforced referential integrity between the tables

### 4️⃣ Valid Data Insertion
- Inserted records into the parent table (`departments`) first
- Inserted employee records using valid `department_id`
- Observed successful insert operations

### 5️⃣ Invalid Foreign Key Handling
- Attempted to insert employee records with invalid `department_id`
- Observed foreign key constraint errors
- Understood how databases prevent inconsistent data

### 6️⃣ ON DELETE CASCADE
- Implemented `ON DELETE CASCADE` on the foreign key
- Automatically deleted dependent employee records when a department was removed
- Prevented orphan records in the database

### 7️⃣ Referential Integrity
- Ensured employees cannot exist without a valid department
- Maintained consistency between related tables

---

## 🧠 Real-World Mapping

This database design mirrors real-world organizational structure:

- A company has multiple departments
- Each department has multiple employees
- Deleting a department removes all its employees automatically (CASCADE)

---

## 🧪 SQL Operations Implemented

- Created parent and child tables
- Defined PRIMARY KEY and FOREIGN KEY constraints
- Inserted valid and invalid test data
- Analyzed foreign key violation errors
- Implemented and tested `ON DELETE CASCADE`
- Verified database consistency after deletions

---

## ✅ Final Outcome

After completing **Task-7**:
- I understand relational database design
- I can enforce referential integrity using foreign keys
- I know how cascading actions work
- I can explain real-world table relationships confidently
- I can design consistent and reliable database schemas

---

## 🚀 Conclusion

Task-7 provided strong practical understanding of **table relationships and foreign keys**, which are essential concepts for backend development and enterprise database systems.  
This task helped reinforce how databases maintain **data accuracy, integrity, and consistency** in real-world scenarios.