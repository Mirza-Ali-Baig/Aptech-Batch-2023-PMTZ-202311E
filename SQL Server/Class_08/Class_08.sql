-- !!!!!!!!!!!!!!!!!!!!!!! Class 08 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
-- !!!!!!!!!!!!!!!!!!!!!!! Topics !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
-- Distinct
-- Order by
-- Aggregate Functions
-- Group by
-- Having

CREATE TABLE employees
(
    id          INT PRIMARY KEY identity (1,1),
    name        VARCHAR(50),
    designation VARCHAR(50),
    department  VARCHAR(50),
    salary      DECIMAL(10, 2)
);

INSERT INTO employees (name, designation, department, salary)
VALUES ('Ali Khan', 'React Developer', 'Frontend', 60000.00),
       ('Sara Ahmed', 'JavaScript Developer', 'Frontend', 55000.00),
       ('Usman Malik', 'Backend Developer', 'Backend', 70000.00),
       ('Ayesha Iqbal', 'Full Stack Developer', 'Full Stack', 75000.00),
       ('Bilal Aslam', 'DevOps Engineer', 'Backend', 80000.00),
       ('Fatima Noor', 'UI/UX Designer', 'Frontend', 50000.00),
       ('Owais Raza', 'Software Engineer', 'Backend', 65000.00),
       ('Nida Bashir', 'QA Engineer', 'Backend', 52000.00),
       ('Faisal Latif', 'Web Developer', 'Frontend', 62000.00),
       ( 'Hina Sadiq', 'Mobile App Developer', 'App Development', 68000.00),
       ( 'Saad Qureshi', 'React Native Developer', 'App Development', 59000.00),
       ( 'Zainab Memon', 'Data Scientist', 'Backend', 85000.00),
       ( 'Kamran Shah', 'Node.js Developer', 'MERN Stack', 70000.00),
       ( 'Ahsan Yasin', 'Security Analyst', 'Backend', 72000.00),
       ( 'Mariam Javed', 'Database Administrator', 'Backend', 64000.00),
       ( 'Tariq Mehmood', 'Cloud Engineer', 'Backend', 73000.00),
       ( 'Noreen Awan', 'Web Developer', 'Frontend', 55000.00),
       ( 'Aliya Baig', 'Java Developer', 'Backend', 61000.00),
       ( 'Omer Bashir', 'PHP Developer', 'Backend', 57000.00),
       ( 'Sadia Khan', 'Game Developer', 'App Development', 75000.00),
       ( 'Adeel Rahman', 'Systems Administrator', 'Backend', 62000.00),
       ( 'Bashir Ahmed', 'Scrum Master', 'Full Stack', 80000.00),
       ( 'Nazia Jameel', 'Business Analyst', 'Full Stack', 69000.00),
       ( 'Imran Rafiq', 'Product Manager', 'Full Stack', 85000.00),
       ( 'Sana Shahid', 'Technical Writer', 'Frontend', 48000.00),
       ( 'Hassan Ali', 'IT Support Specialist', 'Support', 45000.00),
       ( 'Yasmin Feroz', 'Artificial Intelligence Engineer', 'Backend', 90000.00),
       ( 'Waqas Iftikhar', 'MERN Stack Developer', 'MERN Stack', 80000.00),
       ( 'Sufyan Tariq', 'SEO Specialist', 'Frontend', 52000.00),
       ( 'Kashif Ashraf', 'Digital Marketing Specialist', 'Frontend', 57000.00),
       ( 'Zeeshan Malik', 'Web Designer', 'Frontend', 49000.00),
       ( 'Samreen Akhtar', 'Network Administrator', 'Backend', 61000.00),
       ( 'Farhan Waqas', 'Data Analyst', 'Backend', 64000.00),
       ( 'Nashid Hussain', 'Research Scientist', 'Backend', 78000.00),
       ( 'Rania Bukhari', 'Software Architect', 'Full Stack', 95000.00),
       ( 'Umar Shah', 'Mobile UI Designer', 'App Development', 53000.00),
       ( 'Komal Khokhar', 'Data Engineer', 'MERN Stack', 67000.00),
       ( 'Junaid Farooq', 'IT Project Coordinator', 'Full Stack', 60000.00),
       ( 'Areeba Zafar', 'Technical Support Engineer', 'Support', 48000.00),
       ( 'Rameez Ullah', 'Game Designer', 'App Development', 55000.00),
       ( 'Aiza Naveed', 'Frontend Engineer', 'Frontend', 62000.00),
       ( 'Nashit Ali', 'Virtual Reality Developer', 'App Development', 78000.00),
       ( 'Sami Ullah', 'Web Applications Developer', 'MERN Stack', 67000.00),
       ( 'Mahira Khan', 'E-commerce Specialist', 'Frontend', 54000.00),
       ( 'Khadija Baloch', 'Software Development Manager', 'Full Stack', 90000.00),
       ( 'Jibran Ahmed', 'Cloud Solutions Architect', 'Backend', 85000.00),
       ( 'Rida Ali', 'Business Intelligence Analyst', 'Backend', 72000.00),
       ( 'Hadiya Fariha', 'IT Consultant', 'Full Stack', 95000.00),
       ( 'Aftab Sher', 'Integration Specialist', 'MERN Stack', 60000.00),
       ( 'Rehan Iqbal', 'Cloud Systems Engineer', 'Backend', 80000.00);

select *
from employees;

-- !!!!!!!!!!!!!!!!!!!!!!! Distinct !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

SELECT distinct department from employees

SELECT distinct designation from employees

-- !!!!!!!!!!!!!!!!!!!!!!! Order By (ASC, DESC) !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

select * from employees order by salary ASC -- Low To High

select * from employees order by salary DESC -- High To Low

select * from employees order by name -- A to Z

select * from employees order by name Desc  -- Z to A

-- !!!!!!!!!!!!!!!!!!!!!!! Aggregate Functions !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
-- COUNT
-- SUM
-- MIN
-- MAX
-- AVG

-- select function() from table

select COUNT(salary) as CountSalary
from employees;

select COUNT(*) as CountSalary
from employees;

select SUM(salary) as TotalSalary
from employees;

select MIN(salary) as MinSalary
from employees;

select MAX(salary) as MaxSalary
from employees;

select AVG(salary) as AverageSalary
from employees;

-- !!!!!!!!!!!!!!!!!!!!!!! Group By !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

select  department,count(department) as NumberOfEmploy
from employees group by department;


select *
from employees
where department = 'Backend'
or department ='Frontend';


select *
from employees where department in('App Development', 'Frontend','Backend');

select *
from employees where department ='Backend' or department ='Frontend' or department ='App Development';


select department, max(salary) as MaxSalary
from employees group by department;


select department,avg(salary) as AverageSalary
from employees group by department;

-- !!!!!!!!!!!!!!!!!!!!!!! Having !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
-- Having clause is used with aggregate functions to filter the result set based on a condition.
select department,avg(salary) as AverageSalary
from employees group by department having avg(salary) > 60000;


select department,count(*) as TotalEmployee
from employees group by department having count(*) >= 5;





