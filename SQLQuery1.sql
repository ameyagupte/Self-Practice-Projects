use INTELLIPAATDB

create table employee
(
employeeid int,
firstname varchar(20),
lastname varchar(20),
age int,
gender varchar(20),
);
Select * from employee


insert into employee values
(1001, 'Ram', 'Kumar', 30, 'Male'),
(1002, 'Ramesh', 'Singh', 31, 'Male'),
(1003, 'Ishika', 'Pradhan', 21, 'Female'),
(1004, 'MD', 'Abdul', 33, 'Male'),
(1005, 'Sayed', 'Qadar', 27, 'Male'),
(1006, 'Jamsheed', 'Tata', 40, 'Male'),
(1007, 'Rita', 'Malik', 28, 'Female'),
(1008, 'Akshay', 'Singh', 33, 'Male'),
(1009, 'Manmeet', 'Kaur', 20, 'Female'),
(1010, 'Rahul', 'Yadav', 40, 'Male');



create table empsalary
(
employeeid int,
jobtitle varchar(20),
salary int
);


Select * from empsalary
select * from employee

insert into empsalary values 
(1001, 'Housekeeping', 30000),
(1002, 'Receptionist', 31500),
(1003, 'Accountant', 21570),
(1004, 'HR', 33000),
(1005, 'Regionalmanager',26570),
(1006, 'zonal manager', 40000),
(1007, 'consultant', 28000),
(1008, 'executive', 33500),
(1012, 'regional manager', 20500),
(1011, 'Accountant', 20500);
select * from employee
Select * from empsalary

--fetch me employee id, first name, last name, gender, jobtitle, salary, age who are more than 35 year age

SELECT
E.employeeid,
E.firstname,
E.lastname,
E.age,
E.gender,
es.jobtitle,
es.salary
FROM employee e inner join empsalary es on e.employeeid= es.employeeid where  e.firstname like 'R%';

--fretch me the employee id fistname lastname age gender jobtitle with salary 28000, 40000, 315000 #
--fretch me the employee id fistname lastname age gender jobtitle who doesnot have 31500, 33000, 40000 as a salary
--fretch me the employee id fistname lastname age gender jobtitle whose first name starts with r

-- order by function
	select * from empsalary order by salary ASC;
	select * from empsalary order by salary DESC;

-- aggregate functions

select * from empsalary

select AVG(salary) from empsalary
select sum(salary) from empsalary
select count(*) from empsalary
select max(salary) from empsalary
select min(salary) from empsalary

-- date functions

select CURRENT_TIMESTAMP 
select GETUTCDATE()
select SYSDATETIME()
select SYSUTCDATETIME()

--date part function

select GETDATE()
select DATEPART(hour, getdate());
select DATEPART(minute, getdate());
select DATEPART(month, getdate());
select DATEPART(MILLISECOND, getdate());
select DATEPART(year, getdate());
select DATEPART(second, getdate());

-- day, month, year function

select day(getdate())
select month(getdate())
select year(getdate())

-- date difference

select DATEDIFF(mm, '2008-05-17' , '2008-04-15'); --for month
select DATEDIFF(yy, '2008-05-17' , '2008-04-15'); --for year
select DATEDIFF(dd, '2008-05-17' , '2008-04-15'); -- for day

-- date add

select DATEADD(month, 2, getdate()); -- added 2 months
select DATEADD(year, 2, getdate()); -- added 2 years
select DATEADD(day, 2, getdate()); -- added 2 days

select EOMONTH(getdate()); -- given end date of current month

-- date from parts

select DATEFROMPARTS(2019,09,10);

--is date

select ISDATE(2019-09-10); --it will give 1 as it is date 1 for true
select ISDATE('ameya'); --it will give 0 as it is string 0 for false


--ltrim
select LTRIM(' ameya '); --removed spaces from ameya

--lower
select LOWER('AMEYA'); -- will convert to lower

--upper
select upper('ameya'); -- will convert to upper

--reverse
select reverse('ameya'); -- will reverse

--substring

select * from empsalary

select SUBSTRING(jobtitle, 1,6) from empsalary where salary > 30000-- it will give substrings 

-- caste 

SELECT CAST(25.65 AS int);
SELECT CAST(07/07/2022 AS datetime);

-- convert

select CONVERT(decimal(7,2), 12345.76543);
select CONVERT(decimal(8,3), 12345.76543);
select CONVERT(decimal(9,4), 12345.76543);
select CONVERT(numeric(8,3), 12345.76543);
select CONVERT(datetime , '07/07/2022');


-- choose

select CHOOSE (1, 'mango','papaya', 'grapes'); -- output - mango
select CHOOSE (2, 'mango','papaya', 'grapes');-- output - papaya
select CHOOSE (3, 'mango','papaya', 'grapes');-- output - grapes


-- is null

select ISNULL(salary, 1000)from empsalary

-- is numeric

select ISNUMERIC ('1234'); -- returns 1 as this is numeric 1 for true
select ISNUMERIC ('ameya'); -- returns 0 as this is string 0 for false

--iif

select IIF(10>5, 'true', 'null'); -- return true as 10 is greater than 5



-- case studies 

-- que if salary <30000 print middle class & >30000 uppar class <5000 bpl

select * from empsalary;
case
when salary <5000 then 'bpl'
when salary >5000 and <30000 then 'middleclass'
when salary >30000 then 'uppar class'
else 'data not found'
end as socialclass;
from empsalary

-- try cast

select TRY_CAST('sql server' as int); -- output will be null
select TRY_CAST('12345' as int); -- output will be 12345

--stored procedure

create procedure spjobtitlelist
AS
BEGIN
select * from empsalary where salary >30000
end

-- STORED PROCEDURE CREATED
-- whenever want to user stored procedure just paste spjobtitlelist and execute

--index

select * from empsalary

create index myindex
on empsalary(jobtitle);

-- index created

--view

select * from employee

create view [gendermale] as
select employeeid, gender
from employee
where gender = 'male';

select * from [gendermale];

-- view created now just give upar wali commaned to see view





















































