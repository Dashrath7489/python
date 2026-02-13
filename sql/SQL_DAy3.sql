
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


  