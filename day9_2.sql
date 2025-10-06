CREATE DATABASE company;
USE company;
CREATE TABLE Employees(
    id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name varchar(255) NOT NULL);
CREATE TABLE Departments(
    emp_id int NOT NULL PRIMARY KEY,
    Department_name varchar(255) NOT NULL);
INSERT INTO employees(id,Name)
VALUES(1,'Anjali'),(2,'Rohan'),(3,'Meena');
INSERT INTO departments
VALUES(1,'HR'),(2,'IT'),(4,'FINANCE');
SELECT employees.id,employees.Name,departments.Department_name
FROM employees
LEFT JOIN departments ON employees.id=departments.emp_id;
SELECT employees.id,employees.Name,departments.Department_name
FROM employees
INNER JOIN departments ON employees.id=departments.emp_id;
SELECT employees.id,employees.Name,departments.Department_name
FROM departments
LEFT JOIN employees ON employees.id=departments.emp_id;