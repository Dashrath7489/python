CREATE DATABASE join_database;

show DATABASES;

use join_database;

CREATE table employee
(emp_id int primary key,
empname varchar(30) not null,
technology varchar(20) not null,
salary float not null,
age int not null,
gender varchar(10) not null);

select * from employee;	
select * from projects;
select * from address;

select a.state, a.city, p.project_name, p.start_date
from  address as a
right join projects as p
on p.emp_id = a.employ_id

-- innerjoin and join both same output dete hai means dono ek hi hai