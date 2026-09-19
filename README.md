# 🚗 Vehicle Rental SQL Project

A beginner-to-intermediate **MySQL database project** created to practice SQL concepts using a Vehicle Rental Management System.

This project focuses on writing practical SQL queries for retrieving, filtering, grouping, analyzing, and combining data from multiple related tables.

---

## 📌 Project Overview

The **Vehicle Rental System** contains information about customers, vehicles, and rental transactions.

The main purpose of this project is to strengthen SQL fundamentals through practical queries rather than only learning syntax theoretically.

---

## 🗄️ Database

**Database Name:**

```sql
vechilerental
```

> Note: `vechilerental` and `vechile` use the spelling from the original project database.

---

## 📊 Main Tables

### 1. `customers`

Stores customer-related information.

Examples of data:

* Customer ID
* Customer Name
* Contact information
* Customer details

### 2. `vechile`

Stores vehicle-related information.

Examples of data:

* Vehicle ID
* Vehicle information
* Availability
* Vehicle details

### 3. `rental`

Stores rental transaction information.

Examples of data:

* Rental ID
* Customer ID
* Vehicle ID
* Rental amount
* Rental information

---

## 🧠 SQL Concepts Practiced

### 🔹 JOINs

* INNER JOIN
* LEFT JOIN
* RIGHT JOIN
* Multiple-table JOINs

Used to combine related information from different tables.

### 🔹 Aggregate Functions

* `COUNT()`
* `SUM()`
* `AVG()`
* `MAX()`
* `MIN()`

Used for calculating rental statistics and customer-related information.

### 🔹 GROUP BY

Used to group rental records based on customers and other categories.

### 🔹 HAVING

Used to filter grouped results.

Example:

```sql
SELECT customer_id, SUM(total_amount) AS total_amount
FROM rental
GROUP BY customer_id
HAVING SUM(total_amount) > 1000;
```

### 🔹 Subqueries

Practiced different types of subqueries, including:

* Average-based subqueries
* Maximum/minimum subqueries
* `IN`
* `NOT IN`
* Comparison subqueries

### 🔹 EXISTS / NOT EXISTS

Used to check whether related records exist between tables.

Example:

```sql
SELECT customer_name
FROM customers
WHERE EXISTS (
    SELECT 1
    FROM rental
    WHERE rental.customer_id = customers.customer_id
);
```

### 🔹 Correlated Subqueries

Practiced subqueries that depend on values from the outer query.

### 🔹 CASE Statements

Used to categorize rental amounts.

Example:

```sql
CASE
    WHEN total_amount > 2000 THEN 'High'
    WHEN total_amount >= 1000 THEN 'Medium'
    ELSE 'Low'
END AS category
```

---

## 📈 Example Analysis

The project can be used to answer questions such as:

* Which customers have made rentals?
* How much has each customer spent?
* What is the average rental amount?
* Which rental has the highest amount?
* Which customers have no rental records?
* Which customers have rentals above a certain amount?
* How many rentals fall into High, Medium, and Low categories?

---

## 🛠️ Technologies Used

* **MySQL**
* **MySQL Workbench**
* SQL

---

## 🎯 Project Goals

The main goals of this project were:

1. Strengthen SQL fundamentals.
2. Understand relationships between tables.
3. Practice writing multi-table queries.
4. Learn how to analyze data using aggregate functions.
5. Understand subqueries and correlated subqueries.
6. Practice conditional logic using `CASE`.
7. Build confidence in solving practical database problems.

---

## 📚 SQL Topics Covered

```text
SQL Basics
   ↓
JOINs
   ↓
Aggregate Functions
   ↓
GROUP BY
   ↓
HAVING
   ↓
Subqueries
   ↓
IN / NOT IN
   ↓
EXISTS / NOT EXISTS
   ↓
Correlated Subqueries
   ↓
CASE
   ↓
CASE + GROUP BY
```

---

## 🚀 Future Improvements

Possible future extensions of this project include:

* CTE (`WITH`)
* Window Functions
* Advanced rental analysis
* Customer spending analysis
* Vehicle performance analysis
* Python + MySQL integration
* Data visualization using Python

---

## 👨‍💻 Author

**Ashutosh Adhikari**

BCA Student | Learning Python, SQL, Data Analysis & AI/ML

---

## ⭐ Purpose

This project is primarily a **learning and practice project** designed to build a strong foundation in SQL and prepare for future **Python + SQL data analysis and AI/ML projects**.
