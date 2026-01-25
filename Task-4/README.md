# Task 4: Sorting and Limiting Data

## 📖 Task Objective

The objective of Task-4 is to understand how **data ordering, result limiting, and pagination** work in SQL.  
This task focuses on using `ORDER BY`, `LIMIT`, and `OFFSET` clauses to control how query results are displayed and optimized for real-world applications such as dashboards, leaderboards, and paginated APIs.

This task is designed to strengthen practical knowledge of **result ordering and pagination**, as outlined in the official task document.

---

## 🗂 Database Details

- **Database Name:** `intern_training_db`
- **Table Used:** `students`

The `students` table contains:
- Student ID
- First & Last Name
- Gender
- Enrollment Date
- Contact Information

---

## 🛠 Concepts Covered

This task implements the following SQL concepts:

### 1️⃣ ORDER BY (Ascending & Descending)
- Sorting data in **ascending (ASC)** and **descending (DESC)** order
- Sorting by names, dates, and IDs

### 2️⃣ Sorting on Multiple Columns
- Primary sorting using one column
- Secondary sorting using another column when values match

### 3️⃣ LIMIT Clause
- Restricting the number of rows returned
- Fetching top-N records (e.g., recent enrollments)

### 4️⃣ ORDER BY with WHERE
- Filtering data first
- Then sorting the filtered results

### 5️⃣ OFFSET for Pagination
- Implementing page-wise data retrieval
- Useful for large datasets and UI pagination

### 6️⃣ Performance Considerations
- Understanding how `ORDER BY` affects query performance
- Using indexed columns for faster sorting

### 7️⃣ Leaderboard-Style Queries
- Displaying top students based on enrollment date
- Real-world ranking use cases

### 8️⃣ Edge Case Testing
- LIMIT exceeding available rows
- OFFSET beyond total records
- Sorting columns containing NULL values
- Queries returning empty result sets

---

## 🧪 SQL Operations Implemented

### 🔹 Basic Sorting
- Students sorted by first name (A → Z)
- Students sorted by enrollment date (latest first)

### 🔹 Multi-Column Sorting
- Sorted by gender and then last name
- Sorted by enrollment date and first name

### 🔹 Result Limiting
- Fetching first 5 students
- Fetching top 3 most recently enrolled students

### 🔹 Filtering + Sorting
- Sorting only male students
- Sorting students enrolled after a specific year

### 🔹 Pagination
- Page-wise student records using `LIMIT` and `OFFSET`

### 🔹 Performance Demo
- Comparison between sorting indexed vs non-indexed columns
- Index usage recommendation for optimization

### 🔹 Leaderboards
- Top 10 most recently enrolled students
- Top 5 earliest enrolled students

### 🔹 Edge Case Handling
- Handling empty result sets
- OFFSET beyond data range
- NULL value sorting

---

## 🧠 Real-World Use Cases

- Paginated student lists in admin panels
- Leaderboards in educational platforms
- Efficient result ordering for reports
- Optimized queries for large datasets

---

## ✅ Final Outcome

After completing Task-4:
- I understand how SQL controls result ordering
- I can implement pagination using LIMIT & OFFSET
- I can write optimized, readable sorting queries
- I can handle edge cases confidently
- I am comfortable building leaderboard-style queries

---

## 🚀 Conclusion

Task-4 strengthened my understanding of **sorting, limiting, and paginating SQL data**, which are critical for real-world applications like dashboards, reports, and APIs.  
This task builds a strong foundation for writing **efficient and scalable SQL queries**.