# 📚 Class 02: SQL Basics

## 🗂️ Topics
- 📋 How to create a database
- 🔍 How to select a database
- 🏗️ How to create a table
- 🖊️ How to add data in the table
- 📊 How to read data from a table

---

## 📝 Overview
In this class, we covered the essentials of SQL, including how to set up a database, define table structures, insert data, and query the data. This knowledge is foundational for managing data in a structured and efficient way.

---

## 🌟 Class Highlights
SQL commands are categorized into five primary types:
- **DDL** – Data Definition Language
- **DQL** – Data Query Language
- **DML** – Data Manipulation Language
- **DCL** – Data Control Language
- **TCL** – Transaction Control Language

We explored each of these categories through practical SQL commands and examples.

---

## 🛠️ Database Structure

### **Creating the Database**
The database for this class, `pmtz_202311e_class_02`, was created using the command:
```sql
create database pmtz_202311e_class_02;
```

### **Selecting the Database**
To use this database:
```sql
use pmtz_202311e_class_02;
```

---

## 🗄️ Table Design

### **Creating the Table: `students`**
The `students` table stores essential student details:
```sql
create table students(
    id int,
    firstName varchar(20),
    lastName varchar(20),
    email varchar(20),
    age int
);
```

**Columns:**
- `id` – Unique identifier for each student.
- `firstName` – Student's first name.
- `lastName` – Student's last name.
- `email` – Student's email address.
- `age` – Student's age.

---

## 💻 Code Snippet

### Adding Data to the Table

**Single Line Insert:**
```sql
insert into students (id, firstName, lastName) values (1, 'M.', 'Hassan');
```

**Multiple Line Insert:**
```sql
insert into students (id, firstName, lastName, email, age)
values 
(2, 'M.', 'Hashim', 'hashim@gmail.com', 25),
(3, 'M.', 'Kashif', 'kashif@gmail.com', 27),
(4, 'M.', 'Usman', 'usman@gmail.com', 23);
```

### Reading Data from the Table

**Selecting All Columns:**
```sql
select * from students;
```

**Selecting Specific Columns:**
```sql
select id, firstName, lastName from students;
```

---

## 🔚 Conclusion
This class provided a hands-on introduction to SQL, focusing on database creation, table setup, data insertion, and retrieval. Mastering these basic commands will enable you to structure, manage, and query databases effectively. 
