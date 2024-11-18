# 📘 **Class 04: Data Manipulation and Constraints in SQL Server**

---

## 🗂️ **Topics**
1. **Data Manipulation**:
   - Updating data (`UPDATE`)
   - Deleting data (`DELETE`)
   - Truncating tables (`TRUNCATE`)
   - Dropping tables (`DROP TABLE`)
   - Dropping databases (`DROP DATABASE`)
2. **SQL Constraints**:
   - `NOT NULL`
   - `UNIQUE`
   - `CHECK`
   - `DEFAULT`
   - `PRIMARY KEY`
   - `FOREIGN KEY`

---

## 🌟 **Overview**
In this class, we delved into the core concepts of **data manipulation** in SQL Server. The class emphasized the importance of safe and efficient data operations like updates, deletions, and bulk actions. Additionally, we explored how SQL **constraints** ensure data integrity by applying rules and enforcing relationships between tables.

---

## ✨ **Class Highlights**
- Demonstrated the **best practices** for updating and deleting data to avoid unintended consequences.
- Introduced the differences between `DELETE` and `TRUNCATE` operations.
- Explained the use of constraints (`NOT NULL`, `UNIQUE`, `CHECK`, etc.) to enforce data validation at the database level.
- Discussed scenarios where `DROP TABLE` and `DROP DATABASE` are necessary.

---

## 🗃️ **Database Structure**
### Database Name: `pmtz_202311e_class_04`

#### Create Database
```sql
CREATE DATABASE pmtz_202311e_class_04;
USE pmtz_202311e_class_04;
```

---

## 📋 **Table Design**
### Table Name: `Employees`
The `Employees` table is designed with appropriate constraints to ensure data integrity and prevent invalid entries.

#### Table Schema
| Column Name | Data Type  | Constraints                  | Description                        |
|-------------|------------|------------------------------|------------------------------------|
| `id`        | `INT`      | `PRIMARY KEY`                | Unique identifier for employees   |
| `name`      | `VARCHAR(30)` | `NOT NULL`                 | Employee name                     |
| `email`     | `VARCHAR(30)` | `NOT NULL, UNIQUE`         | Employee email address            |
| `designation` | `VARCHAR(30)` | `DEFAULT 'Software Engineer'` | Job title with default value      |
| `salary`    | `DECIMAL(10,2)` | `CHECK (salary > 10000)` | Employee salary, must exceed 10,000 |

#### Table Creation Code
```sql
CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL UNIQUE,
    designation VARCHAR(30) DEFAULT 'Software Engineer',
    salary DECIMAL(10,2) CHECK (salary > 10000)
);
```

---

## 💻 **Code Snippets**

### Insert Data
```sql
INSERT INTO Employees VALUES 
(1, 'Basit', 'basit@example.com', 'Angular Developer', 50000.00),
(2, 'Kashif', 'kashif@example.com', 'Vue Developer', 30000.00),
(3, 'Yasir', 'yasir@example.com', 'React Developer', 60000.00);
```

### Update Data
#### Best Practice
```sql
UPDATE Employees
SET salary = 80000.00
WHERE id = 7;
```

### Delete Data
#### Best Practice
```sql
DELETE FROM Employees
WHERE id = 8;
```

### Truncate Table
```sql
TRUNCATE TABLE Employees;
```

### Drop Table
```sql
DROP TABLE Employees;
```

### Drop Database
```sql
DROP DATABASE pmtz_202311e_class_04;
```

---

## 🛠️ **SQL Constraints**
### Example of Constraints in Action
```sql
CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL UNIQUE,
    designation VARCHAR(30) DEFAULT 'Software Engineer',
    salary DECIMAL(10,2) CHECK (salary > 10000)
);
```

---

## 🏁 **Conclusion**
This class provided a strong foundation in data manipulation techniques and the use of constraints in SQL Server. By mastering these concepts:
- You can perform secure and efficient database operations.
- You ensure data integrity using constraints such as `PRIMARY KEY`, `UNIQUE`, and `CHECK`.
- You enhance database reliability and consistency by following **best practices** for data management.
