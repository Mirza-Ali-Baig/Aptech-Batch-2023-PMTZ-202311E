
-- Data Normalization
-- identity
-- foreign key
-- primary key
-- joins
-- inner join
-- left join
-- right join
-- full join
-- cross-join
-- Cascading Referential Integrity Constraints
-- ON DELETE
-- ON UPDATE
-- No Action (default)
-- cascade
-- set null
-- set default

create database Normalization;

use Normalization


-- LMS()

create table courses
(
    id          int primary key identity (1,1),
    name        varchar(100)   not null,
    description text           not null,
    duration    varchar(50)    not null,
    fees        decimal(10, 2) not null,
);
INSERT INTO courses (name, description, duration, fees)
VALUES ('Introduction to Python Programming', 'Learn the basics of Python, including data types, loops, and functions.',
        '4 weeks', 199.99),
       ('Advanced Python Programming',
        'Deep dive into advanced Python concepts such as decorators, generators, and multi-threading.', '6 weeks',
        299.99),
       ('Web Development with HTML, CSS, and JavaScript',
        'A comprehensive guide to building modern websites using HTML, CSS, and JavaScript.', '8 weeks', 249.99),
       ('Java Programming for Beginners',
        'Learn how to write Java programs from scratch, covering basic syntax and object-oriented programming principles.',
        '6 weeks', 279.99),
       ('Mastering JavaScript',
        'Become proficient in JavaScript with a focus on ES6+ features, DOM manipulation, and asynchronous programming.',
        '8 weeks', 329.99),
       ('Data Structures and Algorithms in C++',
        'Master common data structures and algorithms using C++, including linked lists, trees, and sorting algorithms.',
        '10 weeks', 349.99),
       ('Introduction to Web Development with React',
        'Learn to build modern, interactive web applications using React.', '6 weeks', 219.99),
       ('iOS Development with Swift', 'Learn to build native iOS apps using Swift and the iOS SDK.', '12 weeks',
        399.99),
       ('Android Development with Kotlin',
        'Develop Android apps using Kotlin, covering UI design, APIs, and advanced features.', '10 weeks', 379.99),
       ('Machine Learning with Python',
        'Introduction to machine learning using Python, covering algorithms, data preprocessing, and model evaluation.',
        '8 weeks', 499.99),
       ('Artificial Intelligence and Deep Learning',
        'Understand AI and deep learning concepts, including neural networks and reinforcement learning.', '12 weeks',
        599.99),
       ('Database Design and SQL for Beginners',
        'Learn database design principles and how to query databases using SQL.', '4 weeks', 149.99),
       ('Full Stack Development with Node.js and Express',
        'Master full-stack web development using Node.js, Express, and MongoDB.', '10 weeks', 349.99),
       ('Building RESTful APIs with Python and Flask',
        'Learn to design and build REST APIs using Python and Flask framework.', '6 weeks', 249.99),
       ('Introduction to Data Science with Python',
        'Learn the foundations of data science, including data cleaning, visualization, and analysis using Python.',
        '8 weeks', 329.99),
       ('Game Development with Unity and C#',
        'Create interactive 2D and 3D games using Unity and C# programming language.', '10 weeks', 399.99),
       ('Cloud Computing with AWS',
        'Learn to deploy applications and manage infrastructure using Amazon Web Services (AWS).', '6 weeks', 299.99),
       ('Introduction to Cybersecurity',
        'Learn about common cybersecurity threats and how to protect systems, networks, and data.', '6 weeks', 249.99),
       ('DevOps and Continuous Integration',
        'Learn DevOps principles and how to automate software delivery using CI/CD tools.', '8 weeks', 349.99),
       ('Building Microservices with Java and Spring Boot',
        'Develop microservices architecture using Java and Spring Boot framework.', '10 weeks', 389.99);



create table faculty
(
    id     int primary key identity (1,1),
    name   varchar(100)   not null,
    salary decimal(10, 2) not null,
    phone  varchar(15)    not null,
)
INSERT INTO faculty (name, salary, phone)
VALUES ('Ali Ahmed', 50000.00, '03011234567'),
       ('Sara Iqbal', 55000.00, '03121234567'),
       ('Muhammad Usman', 60000.00, '03221234567'),
       ('Fatima Khan', 45000.00, '03321234567'),
       ('Omer Farooq', 70000.00, '03421234567'),
       ('Hina Shahid', 48000.00, '03521234567');


create table students
(
    id         int primary key identity (1,1),
    name       varchar(100) not null,
    email      varchar(100) not null,
    phone      varchar(15)  not null,
    course_id  int,
    faculty_id int,
    foreign key (course_id) references courses (id),
    foreign key (faculty_id) references faculty (id)
)

INSERT INTO students (name, email, phone, course_id, faculty_id)
VALUES ('Ahmed Ali', 'ahmed.ali@example.com', '03031234567', 1, 1),
       ('Zara Iqbal', 'zara.iqbal@example.com', '03131234567', 2, 2),
       ('Bilal Khan', 'bilal.khan@example.com', '03231234567', 3, 3),
       ('Mariam Shah', 'mariam.shah@example.com', '03331234567', 1, 4),
       ('Shoaib Malik', 'shoaib.malik@example.com', '03431234567', 3, 4),
       ('Ayesha Rehman', 'ayesha.rehman@example.com', '03531234567', 2, 6),
       ('Owais Javed', 'owais.javed@example.com', '03631234567', 7, 1),
       ('Nadia Ali', 'nadia.ali@example.com', '03731234567', 8, 2),
       ('Usman Aslam', 'usman.aslam@example.com', '03831234567', 9, 3),
       ('Hassan Qureshi', 'hassan.qureshi@example.com', '03931234567', 10, 4),
       ('Sana Butt', 'sana.butt@example.com', '04031234567', 4, 4),
       ('Farhan Nawaz', 'farhan.nawaz@example.com', '04131234567', 6, 6),
       ('Noreen Khan', 'noreen.khan@example.com', '04231234567', 8, 1),
       ('Tariq Anwar', 'tariq.anwar@example.com', '04331234567', 7, 2),
       ('Amna Raza', 'amna.raza@example.com', '04431234567', 9, 3);


select *
from courses
select *
from faculty


select *
from students;

-- Inner Join
select
    s.id,s.name,s.email,s.phone,c.name as course,c.description,c.duration,c.fees
from students s inner join courses c on s.course_id=c.id;

-- foreign key = primary key

-- left Join
select
    s.id,s.name,s.email,s.phone,c.name as course,c.description,c.duration,c.fees
from students s left join courses c on s.course_id=c.id;


-- right Join
select
    s.id,s.name,s.email,s.phone,c.name as course,c.description,c.duration,c.fees
from students s right join courses c on s.course_id=c.id;


-- full Join
select
    s.id,s.name,s.email,s.phone,c.name as course,c.description,c.duration,c.fees
from students s full join courses c on s.course_id=c.id;

-- Joins 3 Tables

select
    s.id,s.name,s.email,s.phone,f.name as faculty,f.phone as facultyPhone, c.name as course,c.description,c.duration,c.fees
from students s full join courses c on s.course_id=c.id inner join faculty f on s.faculty_id=f.id;



delete from courses where id=3; -- It Will Give an Error

drop table students;

create table students
(
    id         int primary key identity (1,1),
    name       varchar(100) not null,
    email      varchar(100) not null,
    phone      varchar(15)  not null,
    course_id  int,
    faculty_id int,
    foreign key (course_id) references courses (id) ON DELETE Cascade ON UPDATE Cascade ,
    foreign key (faculty_id) references faculty (id) on Delete CASCADE on update Cascade
)


INSERT INTO students (name, email, phone, course_id, faculty_id)
VALUES ('Ahmed Ali', 'ahmed.ali@example.com', '03031234567', 1, 1),
       ('Zara Iqbal', 'zara.iqbal@example.com', '03131234567', 2, 2),
       ('Bilal Khan', 'bilal.khan@example.com', '03231234567', 3, 3),
       ('Mariam Shah', 'mariam.shah@example.com', '03331234567', 1, 4),
       ('Shoaib Malik', 'shoaib.malik@example.com', '03431234567', 3, 4),
       ('Ayesha Rehman', 'ayesha.rehman@example.com', '03531234567', 2, 6),
       ('Owais Javed', 'owais.javed@example.com', '03631234567', 7, 1),
       ('Nadia Ali', 'nadia.ali@example.com', '03731234567', 8, 2),
       ('Usman Aslam', 'usman.aslam@example.com', '03831234567', 9, 3),
       ('Hassan Qureshi', 'hassan.qureshi@example.com', '03931234567', 10, 4),
       ('Sana Butt', 'sana.butt@example.com', '04031234567', 4, 4),
       ('Farhan Nawaz', 'farhan.nawaz@example.com', '04131234567', 6, 6),
       ('Noreen Khan', 'noreen.khan@example.com', '04231234567', 8, 1),
       ('Tariq Anwar', 'tariq.anwar@example.com', '04331234567', 7, 2),
       ('Amna Raza', 'amna.raza@example.com', '04431234567', 9, 3);


select
    s.id,s.name,s.email,s.phone,f.name as faculty,f.phone as facultyPhone, c.name as course,c.description,c.duration,c.fees
from students s inner join courses c on s.course_id=c.id inner join faculty f on s.faculty_id=f.id;


delete from courses where id=3; -- It Will Not Give an Error
