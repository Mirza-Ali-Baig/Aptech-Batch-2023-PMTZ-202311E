-- !!!!!!!!!!!!!!! Class 09 !!!!!!!!!!!!!!!!!!!!
-- !!!!!!!!!!!!!!! Topics !!!!!!!!!!!!!!!!!!!!
-- Views
-- Variable in TSQL
-- Procedure in TSQL
-- Transcat SQL


CREATE DATABASE pmtz_202311e_class_09;


CREATE TABLE departments(
    id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(200) NOT NULL
)

INSERT INTO departments
(
 name
)
VALUES
(
 'Full Stack'
),
(
 'MERN Stack'
),
(
 'MEAN Stack'
),
(
 'TELL Stack'
);


CREATE TABLE employees(
    id int PRIMARY KEY IDENTITY,
    name VARCHAR(200),
    email VARCHAR(30) UNIQUE,
    salary DECIMAL(10,2),
    designation VARCHAR(50),
    department_id INT,
    FOREIGN KEY(department_id) REFERENCES departments(id) On DELETE CASCADE
);

INSERT Into employees (name,email,salary,designation,department_id)
VALUES ('Usman','usman@gmail.com',50000,'React Devloper',2),
('Rehan','rehan@gmail.com',80000,'PHP Devloper',1)


-- !!!!!!!!!!!!!!!!!!!!!!!!!!!! Join !!!!!!!!!!!!!!!!!!!!!!!
SELECT employees.*,departments.name as department FROM employees JOIN departments On employees.department_id=departments.id;
-- FOREIGN KEY = PRIMARY KEY;
-- DRY RUN / Never Repeat Your Self

-- !!!!!!!!!!!!!!!!!!!!!!!!!!!! Create a View !!!!!!!!!!!!!!!!!!!!!!!
GO
CREATE VIEW Emp_Details
AS
(SELECT employees.*,departments.name as department FROM employees JOIN departments On employees.department_id=departments.id);

GO

-- !!!!!!!!!!!!!!!!!!!!!!!!!!!! Call a View !!!!!!!!!!!!!!!!!!!!!!!
SELECT * FROM Emp_Details;

SELECT id,name,email,salary,designation,department FROM Emp_Details;

SELECT id,name,email,salary,designation,department FROM Emp_Details WHERE salary > 60000;


-- !!!!!!!!!! !!!!!!!!!!!!!!!!!! Variable !!!!!!!!!!!!!!!!!!!!!!!

-- !!!!!!!!!! !!!!!!!!!!!!!!!!!! Create a Variable !!!!!!!!!!!!!!!!!!!!!!!

DECLARE @name VARCHAR(20);


SELECT @name='Ali';

PRINT @name;

SELECT @name as name;


DECLARE @age int =20;

SELECT @age;



-- !!!!!!!!!! !!!!!!!!!!!!!!!!!! Procedure !!!!!!!!!!!!!!!!!!!!!!!
GO
-- Create
CREATE PROCEDURE insertEmployee
AS
BEGIN
    insert into employees (name,email,salary,designation,department_id)
    VALUES ('Hassan','hassan@gmail.com',60000,'Angular Dev',3);
END


-- Call

EXECUTE insertEmployee;

EXEC insertEmployee;

GO
CREATE PROCEDURE insertEmployee2
@name VARCHAR(30),
@email VARCHAR(30),
@salary decimal(10,2),
@desingation VARCHAR(50),
@dep_id INT
AS
BEGIN
    insert into employees (name,email,salary,designation,department_id)
    VALUES (@name,@email,@salary,@desingation,@dep_id);
END


-- Call

EXECUTE insertEmployee2 'Basit','baist@gmail.com',100000,'.Net Dev',1;

EXEC insertEmployee2 'Talha','talha@gmail.com',100000,'JAVA Dev',1;







