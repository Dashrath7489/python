
use growtech;
select * from student_performance;
SELECT *,
       CASE
           WHEN `previous Scores` > 80 THEN 'A'
           WHEN `previous Scores` > 60 THEN 'B'
           WHEN `previous Scores` > 45 THEN 'C'
           ELSE 'Fail'
           END AS grade
FROM student_performance;


use world;

SELECT * FROM world.city;
select avg(population) as average_population from city;

-- country data where population is greater than average population
select * from city
where population >(select
 avg(population) as average_population 
  from city);
  
  -- country data where population is greater than average population
  select * from city
where population <(select
 avg(population) as average_population 
  from city);
  
  select * from country
  where LifeExpectancy > (select LifeExpectancy from country where name = "India");
  
  select Name from city
  where CountryCode in (select code from country where LifeExpectancy > 70);




use growtech

CREATE TABLE employee (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    dob DATE,
    joining_date DATE
);

SELECT * FROM employee

SELECT year(dob) as YEAR
from employee;

select month(dob) as YEAR
from employee

select date(dob) as YEAR
from employee

select day(dob) as YEAR
from employee


select dob, year(dob) as year, month(dob) as month, day(dob) as day, week(dob) as week, WEEKDAY(dob) as weekday, DAYNAME(dob) as DAYNAME, MONTHNAME(dob) as MONTHNAME
from employee;


ALTER table employee
add column Birthtime time DEFAULT (CURRENT_TIME);

SELECT * from employee

select BirthTime,
HOUR(BirthTime) as HOUR,
MINUTE(BirthTime) as MINUTE,
SECOND(BirthTime) as secondd

FROM employee  

SELECT DATEDIFF(CURRENT_DATE(), '2020-11-03') AS diff_days;

select dob,joining_date, TIMESTAMPDIFF(YEAR,dob,joining_date) as YEAR FROM employee

select dob,joining_date, TIMESTAMPDIFF(month,dob,joining_date) as MONTH FROM employee

select dob,joining_date, TIMESTAMPDIFF(Day,dob,joining_date) as DAY FROM employee

select dob,joining_date, TIMESTAMPDIFF(HOUR,dob,joining_date) as hour FROM employee

select dob,joining_date, TIMESTAMPDIFF(SECOND,dob,joining_date) as second FROM employee

select dob,joining_date, TIMESTAMPDIFF(MINUTE,dob,joining_date) as MINUTE FROM employee


use nirmal

select * from car1;

DELETE from car1

update car3
set car_name = "jaguar"
where id = 5;
commit

select * from car3

