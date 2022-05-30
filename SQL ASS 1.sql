# starting exercise one
create database exercise1;

use exercise1;

CREATE TABLE Jobs (
    job_id VARCHAR(20),
    job_title VARCHAR(50) default 0,
    min_salary INT DEFAULT 8000,
    max_salary INT
);

CREATE TABLE countries1 (
    country_id VARCHAR(50) PRIMARY KEY,
    country_name VARCHAR(50),
    region_id VARCHAR(50)
);

CREATE TABLE countries2 (
    country_id VARCHAR(50),
    country_name VARCHAR(50),
    region_id VARCHAR(50)
);

# starting Exercise 2
CREATE DATABASE exercise2;

USE exercise2;

CREATE TABLE `job history` (
    employee_id INT PRIMARY KEY,
    start_date DATE,
    end_date DATE,
    job_id VARCHAR(50),
    department_id VARCHAR(50)
); 
DROP TABLE `job history`;

CREATE TABLE jobs (
    job_id VARCHAR(10) PRIMARY KEY,
    job_title VARCHAR(35),
    min_salary DECIMAL(6 , 0 ),
    max_salary DECIMAL(6 , 0 )
);

CREATE TABLE `job history` (
    employee_id INT PRIMARY KEY,
    start_date DATE,
    end_date DATE,
    job_id VARCHAR(50) references jobs,
    department_id VARCHAR(50)
); 

# Starting Exercise 3
CREATE DATABASE exercise3;

USE exercise3;

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    manager_id INT,
    location_id INT
);

CREATE TABLE employees (
    employee_id INT UNIQUE KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(50),
    email VARCHAR(50),
    phone_number CHAR(11),
    hire_date DATE,
    job_id INT,
    salary INT,
    commission INT,
    manager_id INT,
    department_id VARCHAR(50) REFERENCES Departments
);

# STARTING EXERCISE 4
CREATE DATABASE exercise4;

USE exercise4;

CREATE TABLE Departments(
department_id INT PRIMARY KEY, 
department_name VARCHAR(50), 
manager_id INT, 
location_id INT);

CREATE TABLE jobs (
    Job_id VARCHAR(10) PRIMARY KEY,
    Job_title VARCHAR(50),
    min_salary DECIMAL(6 , 0 ),
    max_salary DECIMAL(6 , 0 )
);

CREATE TABLE Employees (
    employee_id VARCHAR(50) UNIQUE KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50),
    phone_number CHAR(11),
    hire_date DATE,
    job_id VARCHAR(10),
    salary INT,
    commission INT,
    manager_id INT,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

#STARTING EXERCISE 5
CREATE DATABASE exercise5;

USE exercise5;

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    department VARCHAR(50),
    division VARCHAR(50)
);

CREATE TABLE states (
    state_code INT PRIMARY KEY,
    state VARCHAR(20),
    region VARCHAR(20)
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    last_name VARCHAR(50),
    first_name VARCHAR(50),
    middle_name VARCHAR(50),
    email VARCHAR(50),
    hire_date DATE,
    dept_code INT,
    gender CHAR(1),
    salary INT,
    state_id INT,
    FOREIGN KEY (dept_code)
        REFERENCES Departments (dept_id),
    FOREIGN KEY (state_id)
        REFERENCES states (state_code)
);


