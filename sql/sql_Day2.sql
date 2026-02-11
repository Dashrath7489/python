CREATE DATABASE join_database

show DATABASES;

use join_database;

CREATE table employee
(emp_id int primary key,
empname varchar(30) not null,
technology varchar(20) not null,
salary float not null,
age int not null,
gender varchar(10) not null)

select * from employee

select * from projects

select
 employee.empname, employee.technology,address.state,address.city
 from employee
 join address
 on employee.emp_id = employ_id
