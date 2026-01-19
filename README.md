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
