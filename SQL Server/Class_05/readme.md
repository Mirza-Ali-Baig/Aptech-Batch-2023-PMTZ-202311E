# 📘 **Class 05: Advanced SQL Filtering and Operators**

---

## 🗂️ **Topics**
1. **SELECT Statement with WHERE Clause**
2. **Using the AS Keyword**
3. **SQL Operators**:
   - Arithmetic (`+`, `-`, `*`, `/`, `%`)
   - Relational/Comparison (`=`, `!=`, `<`, `>`, `<=`, `>=`)
   - Logical (`AND`, `OR`, `NOT`)
4. **Advanced Filtering Techniques**:
   - `IN` and `NOT IN`
   - `BETWEEN` and `NOT BETWEEN`
   - `LIKE` and `NOT LIKE`
   - `IS NULL` and `IS NOT NULL`

---

## 🌟 **Overview**
In this session, we explored advanced filtering techniques in SQL to refine data retrieval from a database. We focused on practical applications of operators and advanced filtering methods such as `BETWEEN`, `IN`, and `LIKE` to meet specific data needs. 

Additionally, we introduced the use of the `AS` keyword for aliasing and demonstrated the power of combining conditions with logical operators.

---

## ✨ **Class Highlights**
- **Arithmetic Operators**: Perform calculations on data during queries.
- **Relational/Comparison Operators**: Extract data based on conditions.
- **Logical Operators**: Combine multiple conditions for complex queries.
- **Advanced Filtering**:
  - Use `IN` to check for specific values.
  - Use `BETWEEN` for range queries.
  - Use `LIKE` for pattern matching.
  - Handle `NULL` values explicitly using `IS NULL` and `IS NOT NULL`.

---

## 🗃️ **Database Structure**

### 📂 **Database Name**: `pmtz_202311e_class_05`

### 📋 **Table Name**: `products`

#### **Table Design**
| Column   | Data Type  | Constraints                                  |
|----------|------------|---------------------------------------------|
| `id`     | INT        | Primary Key                                |
| `title`  | VARCHAR(100) | NOT NULL                                  |
| `price`  | INT        | NOT NULL, CHECK(price >= 5)                |
| `quantity` | INT      | NOT NULL, CHECK(quantity > 0), DEFAULT 1   |

---

## 🖥️ **Code Snippets**

### 🔢 **Arithmetic Operators**
Apply discounts during queries:
```sql
SELECT *, price * 0.8 AS discount FROM products;
```

---

### 🔍 **Relational/Comparison Operators**
Retrieve specific data:
```sql
SELECT * FROM products WHERE title='Laptop Backpack';
SELECT * FROM products WHERE price!=100;
SELECT * FROM products WHERE quantity > 6;
```

---

### 🔗 **Logical Operators**
Combine conditions:
```sql
SELECT * FROM products WHERE price >= 50 AND price <= 100;
SELECT * FROM products WHERE price = 50 OR price = 70;
SELECT * FROM products WHERE price >= 70 AND quantity <= 5;
```

---

### 🔄 **Advanced Filtering**

#### **BETWEEN**
Retrieve data within a range:
```sql
SELECT * FROM products WHERE price BETWEEN 100 AND 200;
SELECT * FROM products WHERE price NOT BETWEEN 100 AND 200;
```

#### **IN**
Match multiple specific values:
```sql
SELECT * FROM products WHERE title IN ('Smartphone Stand', 'Smartwatch', 'Wireless Router');
SELECT * FROM products WHERE title NOT IN ('Smartphone Stand', 'Smartwatch', 'Wireless Router');
```


## 🏁 **Conclusion**
This session focused on enhancing query precision through **WHERE clauses**, **operators**, and **advanced filtering techniques**. Mastering these tools will significantly improve your ability to retrieve and analyze data efficiently. With practice, these skills will become second nature, empowering you to handle complex data scenarios with confidence.