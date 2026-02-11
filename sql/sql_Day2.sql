CREATE DATABASE IF NOT EXISTS join_database;

SHOW DATABASES;

USE join_database;

CREATE TABLE IF NOT EXISTS employee (
	emp_id INT PRIMARY KEY,
	empname VARCHAR(30) NOT NULL,
	technology VARCHAR(20) NOT NULL,
	salary FLOAT NOT NULL,
	age INT NOT NULL,
	gender VARCHAR(10) NOT NULL
);

CREATE TABLE IF NOT EXISTS projects (
	idprojects INT PRIMARY KEY AUTO_INCREMENT,
	project_name VARCHAR(100) NOT NULL,
	emp_id INT NOT NULL,
	start_date DATE,
	FOREIGN KEY (emp_id) REFERENCES employee(emp_id)
);

CREATE TABLE IF NOT EXISTS address (
	address_id INT PRIMARY KEY AUTO_INCREMENT,
	emp_id INT NOT NULL,
	state VARCHAR(50),
	city VARCHAR(50),
	FOREIGN KEY (emp_id) REFERENCES employee(emp_id)
);

SELECT * FROM employee;

SELECT * FROM projects;

SELECT
	employee.empname,
	employee.technology,
	address.state,
	address.city
FROM employee
JOIN address
	ON employee.emp_id = address.emp_id;

SELECT
	employee.empname,
	employee.technology,
	projects.project_name,
	projects.emp_id
FROM employee
JOIN projects
	ON employee.emp_id = projects.emp_id;

SELECT
	e.empname,
	e.technology,
	p.project_name,
	p.emp_id
FROM employee AS e
INNER JOIN projects AS p
	ON e.emp_id = p.emp_id;

SELECT
	employee.empname,
	employee.technology,
	projects.project_name,
	projects.emp_id
FROM employee
LEFT JOIN projects
	ON employee.emp_id = projects.emp_id;
SELECT a.state, a.city, p.project_name, p.start_date
FROM address AS a
RIGHT JOIN projects AS p
	ON p.emp_id = a.emp_id

UNION

SELECT a.state, a.city, p.project_name, p.start_date
FROM address AS a
LEFT JOIN projects AS p
	ON p.emp_id = a.emp_id;

SELECT empname, technology FROM employee
UNION ALL
SELECT state, city FROM address;

CREATE TABLE IF NOT EXISTS concat_data AS
SELECT
	e.empname,
	e.salary,
	a.state,
	a.city,
	p.project_name,
	p.start_date
FROM employee AS e
JOIN address AS a
	ON e.emp_id = a.emp_id
JOIN projects AS p
	ON p.emp_id = e.emp_id;