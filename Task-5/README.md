# Task 5: Aggregate Functions & GROUP BY

## 📖 Task Objective

The objective of Task-5 is to analyze data statistically using **SQL aggregate functions** and the `GROUP BY` clause.  
This task focuses on summarizing large datasets, grouping records logically, filtering aggregated results, and handling `NULL` values effectively.

According to the official task guidelines, this task ensures an intern can **analyze datasets using aggregation and grouping techniques**.

---

## 🗂 Database Information

- **Database Name:** `intern_training_db`
- **Table Used:** `students`

The `students` table contains:
- Student personal details
- Date of birth
- Gender
- Enrollment date
- Mobile number
- Department (added during this task)

---

## 🛠 Concepts Covered

This task covers the following SQL concepts:

### 1️⃣ Aggregate Functions
Used to perform calculations on multiple rows:
- `COUNT()` – total records
- `SUM()` – total values
- `AVG()` – average values
- `MIN()` – minimum value
- `MAX()` – maximum value

### 2️⃣ GROUP BY Clause
Used to group rows sharing common values, such as:
- Age
- Gender
- Enrollment year
- Department

### 3️⃣ GROUP BY with Aggregates
Applying aggregate functions on grouped data to derive meaningful insights.

### 4️⃣ HAVING Clause
Used to **filter grouped results** after aggregation.

### 5️⃣ WHERE vs HAVING
- `WHERE` filters rows **before grouping**
- `HAVING` filters groups **after aggregation**

### 6️⃣ Real-World Grouping Examples
- Department-wise student count
- Gender-wise statistics

### 7️⃣ Result Set Analysis
- Average age by gender
- Enrollment trends per year

### 8️⃣ Handling NULL Values
- Understanding how aggregates treat `NULL`
- Using `IFNULL()` for safe calculations

---

## 🧪 SQL Operations Implemented

### 🔹 Basic Aggregations
- Total number of students
- Oldest and youngest students
- Average birth year

### 🔹 Grouping by Age
- Calculated age using `TIMESTAMPDIFF`
- Grouped students by age with counts

### 🔹 Grouped Aggregates
- Gender-wise student distribution
- Enrollment year-wise statistics

### 🔹 HAVING Clause Usage
- Filtering genders with more than a specific count
- Filtering age groups with multiple students

### 🔹 WHERE vs HAVING Comparison
- Demonstrated correct usage of both clauses
- Highlighted invalid aggregation filtering with `WHERE`

### 🔹 Schema Enhancement
- Added `department` column
- Updated department values for students

### 🔹 Real-World Analysis
- Department-wise student count
- Departments with more than a given number of students

### 🔹 Advanced Result Analysis
- Gender-wise average age
- Earliest and latest enrollments per year

### 🔹 NULL Handling
- Counting non-NULL mobile numbers
- Identifying missing phone numbers
- Using `IFNULL()` in aggregation

---

## 🧠 Real-World Use Cases

- Academic performance analysis
- Department-wise student distribution
- Enrollment trend analysis
- Statistical reporting and dashboards
- Business and analytics reporting

---

## ✅ Final Outcome

After completing Task-5:
- I can analyze datasets statistically using SQL
- I understand how grouping and aggregation work together
- I can correctly use `WHERE` and `HAVING`
- I can handle `NULL` values safely in aggregates
- I can generate meaningful analytical reports

---

## 🚀 Conclusion

Task-5 strengthened my understanding of **SQL aggregation, grouping, and data analysis**, which are critical for analytics, reporting, and backend systems.  
This task builds a solid foundation for **data-driven decision making using SQL**.