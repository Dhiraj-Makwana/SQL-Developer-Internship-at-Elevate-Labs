# Task 3: Filtering Data Using WHERE, AND, OR, LIKE

## 📖 Task Objective

The objective of this task is to **practice and understand advanced data filtering techniques in SQL** using the `WHERE` clause along with logical operators and pattern matching.  
This task helps in fetching **precise and meaningful data** from a database based on multiple conditions, similar to real-world applications.

As described in the official task guidelines, this task focuses on filtering student records efficiently using different SQL operators and conditions.

---

## 🗂 Database Used

**Database Name:** `intern_training_db`  
**Table Name:** `students`

The `students` table stores information such as:
- Personal details
- Contact information
- Date of birth
- Gender
- Enrollment date

---

## 🛠 Features Implemented

This task covers the following SQL concepts:

### 1️⃣ WHERE Clause
Used to filter records based on specific conditions such as age, gender, name, or email domain.

### 2️⃣ AND / OR Operators
- `AND` is used when **all conditions must be true**
- `OR` is used when **any one condition can be true**

### 3️⃣ LIKE Operator with Wildcards
- `%` → Matches any number of characters  
- `_` → Matches exactly one character  

Used for searching names, email patterns, and partial matches.

### 4️⃣ IN Operator
Used to match values from a **specific list** (e.g., multiple names or genders).

### 5️⃣ BETWEEN Operator
Used to filter records within a **range**, especially useful for date-based filtering.

### 6️⃣ NULL Handling
- `IS NULL`
- `IS NOT NULL`

Used to identify missing or available data in columns like `gender`.

---

## 🧪 SQL Operations Performed

### 🔹 Schema Modification
- Added `gender` column using `ALTER TABLE`

### 🔹 Data Manipulation
- Updated gender for existing students
- Inserted multiple new student records

### 🔹 Filtering Queries
- Students above a certain age using `TIMESTAMPDIFF`
- Combining age filters with last name using `AND` / `OR`
- Searching names using `LIKE` with `%` and `_`
- Filtering students using `IN`
- Date range filtering using `BETWEEN`
- Handling `NULL` and `NOT NULL` gender values
- Email-based searches (e.g., Gmail users)

---

## 🧠 Example Real-Life Scenarios Covered

- Finding students **older than 19 or 20 years**
- Searching students with **specific name patterns**
- Filtering users using **Gmail accounts**
- Identifying records with **missing gender**
- Selecting students enrolled within a **date range**

These scenarios closely resemble **real-world database queries** used in applications and analytics systems.

---

## ✅ Final Outcome

After completing this task:
- I can confidently filter data using complex conditions
- I understand logical operators and pattern matching
- I can write clean, readable, and optimized SQL queries
- I can fetch precise data required for real-life use cases

---

## 🚀 Conclusion

This task significantly strengthened my understanding of **SQL filtering techniques** and improved my ability to retrieve **accurate and condition-based data** from databases.  
It forms a strong foundation for advanced SQL querying in real-world projects.