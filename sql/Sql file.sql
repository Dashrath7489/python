use nirmal;


select  * from student_performance;

-- ye jo hai ye alag hai
select * from growtect.mall_customer;

-- Aggregate function 

select min(`Hours studied`)
from student_performance;

select max(`Hours studied`)
from student_performance;

select count(`Hours studied`)
from student_performance;

select sum(`Sleep Hours`)
from student_performance;

select avg(`Hours studied`)
from student_performance;

select count(`Hours studied`) as Avg_Hr_stdy
from student_performance;

select avg (`Hours studied`) as Avg_Hr_stdy,
 sum(`Hours studied`) as Total_Hr_stdy,
 min(`Hours studied`) as min_Hr_stdy,
 max(`Hours studied`) as max_Hr_stdy,
 Count(`Hours studied`) as Count_Hr_stdy
 
 from student_performance;
 
 
 select * from vidhyarthi;
 
 alter table vidhyarthi
 add column Last_name varchar(30);
 
 select * from vidhyarthi;
 update vidhyarthi
 set Last_name = "patidar";
 select * from vidhyarthi;
 
 update vidhyarthi
 set city = "indore"
 where first_name = "David";
 
 update vidhyarthi
 set city = "ujjain"
 where first_name = "mat";
 
 update vidhyarthi
 set city = "Bhopal"
 where First_name = "Rohan";
 
 -- new database

 use new_world;
 select * from city;


 select * from city
 WHERE `CountryCode` = "aus" or `District` = "madhyapradesh";



SELECT `CountryCode`, min(population) as min_population
from city
GROUP BY `CountryCode`
ORDER BY `CountryCode` asc;


SELECT `CountryCode`, MAX(population) as MAX_population
from city
GROUP BY `CountryCode`
ORDER BY `CountryCode` asc;

SELECT district, sum(population) as total_pap
FROM city
GROUP BY District
ORDER BY total_pap DESC

 
 SELECT district, sum(population) as total_pap
FROM city
GROUP BY District
ORDER BY total_pap DESC
LIMIT 4;

 SELECT district, sum(population) as total_pap
FROM city
GROUP BY District
ORDER BY total_pap DESC
LIMIT 4 OFFSET 1;

 SELECT district, sum(population) as total_pap
FROM city
GROUP BY District
ORDER BY total_pap DESC
LIMIT 1 OFFSET 1;

 SELECT district, sum(population) as total_pap
FROM city
GROUP BY District
ORDER BY total_pap ASC
LIMIT 1 OFFSET 1;

 SELECT CountryCode, AVG(population) as AVG_population
FROM city
GROUP BY CountryCode
ORDER BY AVG_population from city;

