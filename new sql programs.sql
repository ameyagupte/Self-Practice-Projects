use INTELLIPAATDB

create table aadhartable
(
aadharid int,
firstname varchar(20),
lastname varchar(20),
city varchar(20),
state varchar(20),
);

insert into aadhartable values
(01,'Manoj', 'mahajan', 'noida', 'delhi'),
(02,'Vikas', 'yadav', 'mumbai', 'Maharashtra'),
(03,'Raj', 'Sharma', 'jaipur', 'rajasthan'),
(04,'Hema', 'Anand', 'kanpur', 'uttar-pradesh'),
(05,'Pranali', 'Rao', 'jalandhar', 'punjab');

select * from aadhartable

create table appolo2
(
aadharid int,
covidstatus varchar(20),
hospitalizationstatus varchar(20),
);

insert into appolo2 values
(01,'yes', 'no'),
(02,'yes', 'no'),
(03,'no', 'no'),
(04,'yes', 'yes'),
(05,'yes', 'no');

select * from aadhartable
select * from appolo2

SELECT
E.aadharid,
E.firstname,
E.lastname,
E.city,
E.state,
es.covidstatus,
es.hospitalizationstatus
FROM aadhartable e inner join appolo2 es on e.aadharid= es.aadharid where not e.state = 'maharashtra'

-- fecth me the details of the patient where aadhar id, first name, last name, city, state, covid status, hospitalizationstatus who are currently hospitalized
--fecth me the details of the patient where aadhar id, first name, last name, city, state, covid status, hospitalizationstatus who are covid positive and hospitalized
-- fecth me the details of the patient where aadhar id, first name, last name, city, state, covid status, hospitalizationstatus who belongs to maharashtra
-- fecth me the details of the patient where aadhar id, first name, last name, city, state, covid status, hospitalizationstatus whse first name start with v
-- fecth me the details of the patient where aadhar id, first name, last name, city, state, covid status, hospitalizationstatus who doesnot belong to maharashtra
