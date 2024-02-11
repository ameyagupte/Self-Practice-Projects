-- group by function

use INTELLIPAATDB

create table groupbydemo
(
jobtitle varchar(20),
salary int
);

insert into groupbydemo values
('HR', 33000),
('HR',26570),
('zonal manager', 40000),
('consultant', 28000),
('CONSULTANT', 33500),
('regional manager', 20500),
('REGIONAL MANAGER', 20500);

SELECT * FROM groupbydemo

SELECT jobtitle
FROM groupbydemo
GROUP BY jobtitle


