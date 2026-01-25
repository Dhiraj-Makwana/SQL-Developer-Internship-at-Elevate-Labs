# ✅Task-1: First Queries
## 1️⃣ What is the difference between a database and a table?
- A database is a **container** that stores many tables.  
- A table **stores** actual **data in rows and columns.**  
  - 👉 Example: **Database** = Excel file, **Table** = one sheet inside it.

## 2️⃣ Why should we avoid using SELECT * in production?
- It fetches unnecessary columns
- Slows down performance
- Breaks code if table structure changes
- Exposes sensitive data accidentally
  - 👉**Remember:** Always select only required columns.

## 3️⃣ What happens if we insert incorrect data types?
- SQL throws an error
- Data is rejected
- Database integrity is protected
  - 👉**Example:** inserting text into a DATE column fails.

## 4️⃣ What is SQL and where is it used?
- SQL **(Structured Query Language)** is used to manage and query databases.
- Used in **backend applications, websites, analytics,** and **data systems.**
  - 👉 **Example:** login systems, reports, dashboards.

## 5️⃣ Difference between MySQL and PostgreSQL
- **MySQL:** Faster, simpler, widely used for web apps.
- **PostgreSQL:** More powerful, supports complex queries and data types.
  - 👉 MySQL = speed & simplicity
  - 👉 PostgreSQL = advanced features & strict rules

---

# ✅Task-2: Data Types, Constraints & Table Design
## 1️⃣ Difference between CHAR and VARCHAR
- **CHAR:** Fixed-length string (always uses same space).
- **VARCHAR:** Variable-length string (uses only needed space).
   - 👉 Use **CHAR** for fixed data (e.g., country code), **VARCHAR** for names, emails.

## 2️⃣ Why is PRIMARY KEY important?
- Uniquely identifies each row
- Prevents duplicate and NULL values
- Makes searching faster
  - 👉 Every table should have **one primary key.**

## 3️⃣ What is NOT NULL?
- Ensures a column **cannot be empty**
- Forces mandatory data entry
  - 👉 **Example:** name, email should not be NULL.

## 4️⃣ Can a table have multiple unique constraints?
- **Yes**
- Each UNIQUE column ensures no duplicate values in that column
  - 👉 **Example:** email and phone number can both be UNIQUE.
 
## 5️⃣ What happens if we drop a column?
- Column and its data are **permanently deleted**
- Cannot be recovered without backup
  - 👉 **Remember:** Always drop columns carefully.

---

# ✅Task-3: Filtering Data Using WHERE, AND, OR, LIKE
## 1️⃣ Difference between `=` and `LIKE`?
- `=` is used for **exact match**
- `LIKE` is used for **pattern matching**
  - Example:
  ```
    email = 'abc@gmail.com'     -- exact match
    email LIKE '%gmail.com'    -- pattern match
  ```

## 2️⃣ What does `%` do?
- `%` is a wildcard character
- It matches **zero or more characters**
  - Example:
  ```
    name LIKE 'A%'     -- starts with A
    name LIKE '%a'     -- ends with a
    name LIKE '%it%'   -- contains "it"
  ```

## 3️⃣ How does SQL handle `NULL`?
- `NULL` means **no value / unknown**
- Cannot be compared using `=` or `!=`
- Use `IS NULL` or `IS NOT NULL`

## 4️⃣ When to use `BETWEEN`?
- Used to **check values within a range**
- Includes both `start` and `end` values
  - Example:
  ```
  age BETWEEN 18 AND 25
  date BETWEEN '2023-01-01' AND '2023-12-31'
  ```

## 5️⃣ Difference between `AND` and `OR`
- `AND` → **all conditions must be true**
- `OR` → **any one condition can be true**

---

# ✅Task-4: Sorting and Limiting Data
## 1️⃣ Default sort order?
- Default sort order is `ASC (Ascending)`
  - Example:
  ```
  ORDER BY first_name;   -- same as ORDER BY first_name ASC
  ```

## 2️⃣ Difference between `LIMIT` and `OFFSET`?
- `LIMIT` → How many rows to return
- `OFFSET` → How many rows to skip
  - Example:
  ```
  LIMIT 5 OFFSET 10   --Skip first 10 rows, then show next 5
  ```

## 3️⃣ Can we sort by column alias?
- Yes, in most databases (including MySQL)
- Alias must be defined in `SELECT`
  - Example:
  ```
  SELECT salary * 12 AS annual_salary
  FROM employees
  ORDER BY annual_salary;
  ```
- **👉 Remember:**
  Alias can be used in **ORDER BY**

## 4️⃣ Why `pagination` is needed?
- To load data in small chunks
- Improves performance
- Better user experience
- **👉 Real-life example:**
Page 1, Page 2, Page 3 on websites
- **👉 Remember:**
Pagination = faster + cleaner data display

## 5️⃣ Performance impact of `ORDER BY`?
- ORDER BY can be slow on large tables
- Faster when sorting on indexed columns
- Slower on non-indexed columns
  - **👉 Remember:**
    ```
    Index + ORDER BY = faster
    No index + ORDER BY = slower
    ```

---

# ✅Task-5: Aggregate Functions & GROUP BY
## 1️⃣ Difference between `WHERE` and `HAVING`?
- `WHERE` → filters rows before grouping
- `HAVING` → filters groups after aggregation
  - **Example idea:**
  ```
  Filter students first → WHERE
  Filter grouped results → HAVING
  ```
  - **👉 Remember:**
  ```
  WHERE = before GROUP BY
  HAVING = after GROUP BY
  ```

## 2️⃣ Can we use aggregate without `GROUP BY`?
- Yes, if you want one single result
- No, if you mix aggregate with normal columns
  - Example:
  ```
  SELECT COUNT(*) FROM students;   -- valid
  ```

## 3️⃣ How does `COUNT` handle `NULL`?
- **COUNT(column)** ignores NULL
- **COUNT(*)** counts all rows
  - Example:
  ```
  COUNT(phone)   -- ignores NULL
  COUNT(*)       -- counts everything
  ```

## 4️⃣ Why `HAVING` exists?
- Because `WHERE` cannot filter aggregates
- `HAVING` filters aggregate results
  - **👉 Example idea:**
  `Show departments with more than 5 employees`

## 5️⃣ Real-world use of `GROUP BY`?
- Reports and analytics
- Department-wise counts
- Sales per day/month
- Average salary per department

---

# ✅Task-6: CRUD Operations End-to-End
## 1️⃣ Difference between `DELETE` and `TRUNCATE`?
- **DELETE** → removes selected rows, can use `WHERE`, can be rolled back
- **TRUNCATE** → removes all rows, no `WHERE`, cannot be rolled back

## 2️⃣ What is `CRUD`?
- **C**reate → `INSERT`
- **R**ead → `SELECT`
- **U**pdate → `UPDATE`
- **D**elete → `DELETE`

## 3️⃣ Why `transactions` matter?
- To keep data safe and consistent
- Prevents partial updates
- Allows undo if something goes wrong

## 4️⃣ How to rollback?
- Use `ROLLBACK` inside a transaction
- Reverts changes made after `START TRANSACTION`
  - Example:
  ```
  START TRANSACTION;
  ROLLBACK;   --undo changes
  ```

## 5️⃣ Risk of `DELETE` without `WHERE`?
- Deletes all rows from the table
- Causes data loss
- Cannot be undone easily