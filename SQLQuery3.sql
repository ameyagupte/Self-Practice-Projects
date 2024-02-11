
create database prashant;

use prashant;
CREATE TABLE Student
(
id int ,
fistname varchar(20),
lastname varchar(30),
gender varchar(30),
department varchar(20),
);
select *from Student;
insert into student values
(1,'manoj','konda','male','hr'),
(2,'ameya','gupte','male','hr'),
(3,'chetan','kolhe','male','hr');

CREATE TABLE college
(
ID INT,
JOBTITLE VARCHAR(20),
SALARY VARCHAR (20),
);
INSERT INTO college VALUES
(1,'ACCOUNTANT','30000'),
(2,'ADMIN','50000'),
(3,'ENGINNER','10000');
SELECT *FROM college;
SELECT*FROM Student;

SELECT
E.id,
E.fistname,
E.lastname,
E.gender,
E.department,
ES.jobtitle,
ES.SALARY
FROM Student E INNER JOIN college ES ON E.id = ES.id;



