 CREATE TABLE users
(
Id int primary key identity(1,1),
[Name] VARCHAR(32),
[Email] VARCHAR(32)
) 

INSERT INTO users(Name,Email)
VALUES 
('Abzal','abzalshariff@gmail.com'),
('Bhaarath','bhaarath24@gmail.com'),
('Raj','raj24@gmail.com'),
('Rafeeq','rafee56@gmail.com'),
('Kaliq','abdulkaaliq@gmail.com')



 CREATE TABLE codekata
(
Id int primary key identity(1,1),
[Number_problems] int,
) 

INSERT into codekata(Number_problems)
VALUES(10),(15),(18),(12),(11)



 CREATE TABLE attendance
(
Id int primary key identity(1,1),
[percentage_] int,
) 

INSERT into attendance(percentage_)
VALUES(85),(83),(79),(90),(98)



 CREATE TABLE topics
(
Id int primary key identity(1,1),
[topic] VARCHAR(32)
)

INSERT INTO topics(topic)
VALUES 
('Array'),('Strings'),('Numbers'),('Looping'),('Patterns')

 CREATE TABLE tasks
(
Id int primary key identity(1,1),
[task] VARCHAR(32)
)

INSERT INTO tasks(task)
VALUES 
('CRUD operation'),('Pagination'),('Pricing-table'),('Todo-list'),('React-router')


 CREATE TABLE company_drives
(
Id int primary key identity(1,1),
[companies_attended] int
)

INSERT INTO company_drives(companies_attended)
VALUES 
(5),(7),(3),(4),(9)

 CREATE TABLE mentor
(
Id int primary key identity(1,1),
[Mentor_name] VARCHAR(32),
[NumOf_students] int
)

INSERT INTO mentor(Mentor_name,NumOf_students)
VALUES 
('Rajesh',45),('Subbiah',39),('Raghav',40),('Lavish',35),('Lakshman',37),('Vijay',39),('Ajith',48),('Raghul',38),('Vishwa',30),('Vyass',40)

 CREATE TABLE courses
(
Id int primary key identity(1,1),
[course_name] VARCHAR(32)
)

INSERT INTO courses(course_name)
VALUES 
('Web Development'),('Cybersecurity'),('Data Visualization'),('Database'),('AI'),('MERN'),('Machine Learning'),('Python'),('MEAN')



 CREATE TABLE students_activated_course
(
Id int primary key identity(1,1),
[student_name] VARCHAR(32),
[course] VARCHAR(32)
)

INSERT INTO students_activated_course(student_name,course)
VALUES 
('Abzal','MERN'),
('Bhaarath','Cybersecurity'),
('Raj','AI'),
('Rafeeq','MERN'),
('Kaliq','MEAN')



select Name,Number_problems,companies_attended from users As a
left Outer JOIN codekata As b
on a.Id = b.Id 
left Outer JOIN company_drives as c
on b.Id = c.Id


select distinct course_name,student_name,Mentor_name,NumOf_students  from courses as d
left join students_activated_course as e 
on e.course = d.course_name
left join mentor as f
on d.Id = f.Id
