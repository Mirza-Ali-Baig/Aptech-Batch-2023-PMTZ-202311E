-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!! Class 04 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!! Topics !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
-- Update data
-- Delete data
-- Truncate table
-- Drop table
-- Drop database
-- Constraints In SQL Server


CREATE DATABASE pmtz_202311e_class_04;

USE pmtz_202311e_class_04;


CREATE TABLE Employees (
    id INT,
    name VARCHAR(30),
    email VARCHAR(30),
    designation VARCHAR(30),
    salary DECIMAL(10,2),
)

-- Insert data

INSERT INTO Employees VALUES 
(1,'Basit','basit@example.com','Angular Developer',50000.00),
(2,'kashif','kashif@example.com','Vue Developer',30000.00),
(3,'Yasir','yasir@example.com','React Developer',60000.00),
(4,'Ubaid','ubaid@example.com','Svelte Developer',90000.00),
(5,'Rehan','rehan@example.com','Alpine Developer',20000.00),
(6,'Basit','basit@example.com','MERN Developer',90000.00),
(7,'Islam','islam@example.com','MEAN Developer',800000.00),
(8,'Usman','usman@example.com','PHP Developer',30000.00),
(9,'Owais','owais@example.com','Laravel Developer',70000.00),
(10,'Eqaan','eqaan@example.com','.NET Developer',70000.00);


SELECT * FROM Employees;


-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!! UPDATE !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

/*
 UPDATE table_name
 SET column_name = new_value, column_name = new_value
 WHERE condition;
*/
-- Bad Practice
UPDATE Employees
SET salary=80000.00
WHERE salary=800000.00

-- Bad Practice
UPDATE Employees
SET salary=80000.00
WHERE name='Islam';

-- Good Practice
UPDATE Employees
SET salary=80000.00
WHERE id=7;



INSERT INTO Employees VALUES 
(7,'Waqas','waqas@example.com','MEAN Developer',80000.00);

-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!! DELETE !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

/*
    DELETE FROM table_name
    WHERE condition;
*/

-- Bad Practice
DELETE FROM Employees
WHERE name='Usman';

-- Good Practice
DELETE FROM Employees
WHERE id=8;


-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!! TRUNCATE !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


DELETE FROM Employees;
SELECT * FROM Employees;
TRUNCATE TABLE Employees;

-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!! DROP TABLE !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

DROP TABLE Employees;

-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!! DROP DATABASE !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

DROP DATABASE pmtz_202311e_class_04;

-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!! Constraints/Rules !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

-- NOT NULL
-- UNIQUE
-- CHECK
-- DEFAULT
-- PRIMARY KEY
-- FOREIGN KEY


-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!! Create table with constraints !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL UNIQUE ,
    designation VARCHAR(30) DEFAULT 'Software Engineer',
    salary DECIMAL(10,2) CHECK (salary > 10000)
)

INSERT INTO Employees VALUES 
(1,'Basit','basit@example.com','Angular Developer',50000.00),
(2,'kashif','kashif@example.com','Vue Developer',30000.00),
(3,'Yasir','yasir@example.com','React Developer',60000.00),
(4,'Ubaid','ubaid@example.com','Svelte Developer',90000.00),
(5,'Rehan','rehan@example.com','Alpine Developer',20000.00),
(6,'Basit','basit123@example.com','MERN Developer',90000.00),
(7,'Islam','islam@example.com','MEAN Developer',80000.00),
(8,'Usman','usman@example.com','PHP Developer',30000.00),
(9,'Owais','owais@example.com','Laravel Developer',70000.00),
(10,'Eqaan','eqaan@example.com','.NET Developer',70000.00);

SELECT * FROM Employees;

INSERT INTO Employees VALUES 
(11,'Siddiq','siddiq@example.com','Angular Developer',30000.00);
