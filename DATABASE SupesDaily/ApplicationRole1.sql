CREATE DATABASE SupesDaily;

USE SupesDaily;

CREATE TABLE employees_table (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    job_id VARCHAR(10),
    salary DECIMAL(15, 2),
    hire_date DATE,
    phone_number VARCHAR(20)
);

CREATE TABLE jobs_table (
    job_id VARCHAR(10) PRIMARY KEY,
    job_title VARCHAR(50),
    min_salary DECIMAL(15, 2),
    max_salary DECIMAL(15, 2)
);

CREATE TABLE job_history_table (
    employee_id INT,
    start_date DATE,
    end_date DATE,
    old_job_id VARCHAR(10)
);

CREATE TABLE departments_table (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    location VARCHAR(50),
    manager_id INT,
    creation_date DATE,
    description TEXT,
    avg_salary DECIMAL(15, 2)
);

INSERT INTO employees_table (employee_id, first_name, last_name, department_id, job_id, salary, hire_date, phone_number)
VALUES
    (101, 'Clark', 'Kent', 10, 'SR', 4000.00, '1998-05-10', '(555) 555-1234'),
    (102, 'Bruce', 'Wayne', 20, 'ACC', 7000.00, '1999-03-15', '(555) 555-5678'),
    (103, 'Diana', 'Prince', 100, 'PR', 6500.00, '2001-08-20', '(555) 555-9876'),
    (104, 'Barry', 'Allen', 30, 'HR', 5500.00, '2005-02-25', '(555) 555-4321'),
    (105, 'Hal', 'Jordan', 40, 'IT', 8000.00, '2002-11-15', '(555) 555-7890'),
    (106, 'Arthur', 'Curry', 50, 'OP', 7500.00, '2003-06-30', '(555) 555-2345'),
    (107, 'Oliver', 'Queen', 60, 'SL', 9000.00, '2007-09-12', '(555) 555-8765'),
    (108, 'Barbara', 'Gordon', 70, 'RD', 6000.00, '2010-04-07', '(555) 555-3456'),
    (109, 'Victor', 'Stone', 80, 'CS', 6500.00, '2015-02-03', '(555) 555-6543'),
    (110, 'Kara', 'Zor-El', 90, 'QA', 7000.00, '2018-08-21', '(555) 555-9870'),
    (111, 'Kal-El', 'Kent', 10, 'SR', 8000.00, '1861-03-04', '(555) 555-1111'),
    (112, 'John', 'Stewart', 20, 'ACC', 9000.00, '1901-09-14', '(555) 555-2222'),
    (113, 'Barry', 'Allen', 100, 'PR', 8500.00, '1933-03-04', '(555) 555-3333'),
    (114, 'Diana', 'Prince', 30, 'HR', 7500.00, '1945-04-12', '(555) 555-4444'),
    (115, 'Bruce', 'Wayne', 40, 'IT', 9500.00, '1953-01-20', '(555) 555-5555'),
    (116, 'Clark', 'Kent', 50, 'OP', 9000.00, '1961-01-20', '(555) 555-6666'),
    (117, 'Arthur', 'Curry', 60, 'SL', 8500.00, '1963-11-22', '(555) 555-7777'),
    (118, 'Hal', 'Jordan', 70, 'RD', 8000.00, '1969-01-20', '(555) 555-8888'),
    (119, 'Barbara', 'Gordon', 80, 'CS', 10000.00, '1981-01-20', '(555) 555-9999'),
    (120, 'Victor', 'Stone', 90, 'QA', 8500.00, '1989-01-20', '(555) 555-0000'),
    (121, 'Kara', 'Zor-El', 100, 'PR', 9500.00, '1993-01-20', '(555) 555-1234'),
    (122, 'Barry', 'Allen', 40, 'IT', 9000.00, '2001-01-20', '(555) 555-5678'),
    (123, 'Arthur', 'Curry', 50, 'OP', 10000.00, '2009-01-20', '(555) 555-9876'),
    (124, 'Hal', 'Jordan', 60, 'SL', 11000.00, '2017-01-20', '(555) 555-4321'),
    (125, 'Barbara', 'Gordon', 70, 'RD', 10500.00, '2021-01-20', '(555) 555-8765'),
	(126, 'Martian', 'Manhunter', 80, 'CS', 10000.00, '2020-11-10', '(555) 585-8465')
;

INSERT INTO jobs_table (job_id, job_title, min_salary, max_salary)
VALUES
    ('SR', 'Spider-Man (Sales Division)', 4000.00, 8000.00),
    ('ACC', 'Accounting', 6000.00, 10000.00),
    ('HR', 'Marketing', 7000.00, 12000.00),
    ('IT', 'Tech-Savvy Thor', 5500.00, 11000.00),
    ('OP', 'Operations Optimizer (Deadpool)', 6500.00, 11500.00),
    ('SL', 'Spectacular Sales Manager (Spider-Man)', 7500.00, 13000.00),
    ('RD', 'Research and Development Rocket (Raccoon)', 6000.00, 10500.00),
    ('CS', 'Customer Support Captain (America)', 5200.00, 9500.00),
    ('QA', 'Quality Assurance Ant-Man', 5800.00, 10000.00),
    ('PR', 'Product Planning Professor (Xavier)', 7000.00, 12000.00);


INSERT INTO job_history_table (employee_id, start_date, end_date, old_job_id)
VALUES
    (101, '1776-07-04', '1783-09-03', 'SR'),
    (102, '1787-09-17', '1797-03-04', 'ACC'),
    (103, '1803-04-30', '1809-03-04', 'ACC'),
    (104, '1817-03-04', '1825-03-04', 'ACC'),
    (105, '1861-04-12', '1865-04-09', 'IT'),
    (106, '1861-04-12', '1865-04-09', 'OP'),
    (107, '1861-04-12', '1865-04-09', 'SL'),
    (108, '1861-04-12', '1865-04-09', 'RD'),
    (109, '1914-07-28', '1918-11-11', 'CS'),
    (110, '1917-04-06', '1918-11-11', 'QA'),
    (111, '1914-07-28', '1918-11-11', 'SR'),
    (112, '1914-07-28', '1918-11-11', 'ACC'),
    (113, '1914-07-28', '1918-11-11', 'PR'),
    (114, '1914-07-28', '1918-11-11', 'HR'),
    (115, '1914-07-28', '1918-11-11', 'IT'),
    (116, '1914-07-28', '1918-11-11', 'OP'),
    (117, '1914-07-28', '1918-11-11', 'SL'),
    (118, '1914-07-28', '1918-11-11', 'RD'),
    (119, '1914-07-28', '1918-11-11', 'CS'),
    (120, '1914-07-28', '1918-11-11', 'QA'),
    (121, '1914-07-28', '1918-11-11', 'PR'),
    (122, '1914-07-28', '1918-11-11', 'IT'),
    (123, '1914-07-28', '1918-11-11', 'OP'),
    (124, '1914-07-28', '1918-11-11', 'SL'),
    (125, '1914-07-28', '1918-11-11', 'RD');

INSERT INTO departments_table (department_id, department_name, location, manager_id, creation_date, description, avg_salary)
VALUES
    (10, 'Marketing', 1700, 101, '2020-05-15', 'Responsible for promoting and marketing products like the Justice League', 85000.00),
    (20, 'Accounting', 1700, 102, '2019-09-10', 'Manages financial transactions with the vigilance of Gotham City', 110000.00),
    (30, 'Wonder Woman Human Resources', 1700, 103, '2019-02-25', 'Handles recruitment and policies with the strength of an Amazon', 90000.00),
    (40, 'Tech-Flash IT', 1700, 104, '2021-01-08', 'Provides lightning-fast technical support and software development', 105000.00),
    (50, 'Green Lantern Operations', 1700, 105, '2018-06-12', 'Oversees operations with the power of will and imagination', 95000.00),
    (60, 'Superman Sales', 1000, 106, '2017-04-20', 'Drives sales efforts with superhuman strength and client relationships', 120000.00),
    (70, 'Justice Society Research and Development', 1000, 107, '2022-03-05', 'Innovates new products and technologies like the Justice Society', 88000.00),
    (80, 'Flash Customer Support', 1000, 108, '2020-08-18', 'Provides rapid customer support and solutions with the speed of light', 80000.00),
    (90, 'Aquaman Quality Assurance', 500, 109, '2020-11-22', 'Ensures product quality and testing like the King of Atlantis', 92000.00),
    (100, 'Metropolis Logistics', 500, 110, '2019-03-14', 'Manages product shipping and supply chain in the heart of Metropolis', 90000.00);

--Request 1
SELECT last_name, first_name, employee_id
FROM employees_table
WHERE last_name LIKE 'M%';

--Request 2
SELECT department_id, last_name, first_name, phone_number
FROM employees_table 
WHERE hire_date >= '1998-3-24' AND job_id = 'SR' ORDER BY last_name ASC;

--Request 3
SELECT *
FROM jobs_table
WHERE min_salary <= 4500
ORDER BY min_salary DESC;

--Request 4
SELECT j.job_title, j.job_id, j.min_salary, j.max_salary
FROM jobs_table j
JOIN employees_table e ON j.job_id = e.job_id
JOIN departments_table d ON e.department_id = d.department_id
WHERE d.department_name = 'Marketing' OR d.department_name = 'Accounting';

--Request 5
SELECT department_name, location, last_name, salary
FROM departments_table, employees_table
WHERE departments_table.department_id = employees_table.department_id AND location = '1700' ORDER BY department_name DESC;

--Request 6
SELECT last_name, first_name
FROM employees_table
WHERE MONTH(hire_date) IN (6, 8)
ORDER BY last_name ASC;

--Request 7
SELECT ROUND(AVG(salary) * 12, 2) AS average_salary
FROM employees_table;

--Request 8
SELECT CAST(SUM(salary) AS INT) AS total_monthly_salaries
FROM employees_table
WHERE department_id IN (60, 80);

--Request 9
SELECT d.department_id, d.department_name, COUNT(*) AS num_employees
FROM departments_table d
JOIN employees_table e ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name
HAVING COUNT(*) < 4;

--Request 10
SELECT TOP 1 d.department_id, d.department_name, COUNT(*) AS num_employees
FROM departments_table d
JOIN employees_table e ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name
ORDER BY num_employees ASC;

--Request 11
SELECT d.department_id, d.department_name
FROM departments_table d
LEFT JOIN employees_table e ON d.department_id = e.department_id AND e.job_id = 'SR'
WHERE e.employee_id IS NULL;

--Request 12
INSERT INTO jobs_table (job_id, job_title, min_salary, max_salary)
VALUES ('IT_ASST', 'IT Assistant', 5000.00, 8000.00);

--Request 13
UPDATE jobs_table
SET min_salary = min_salary + 500;

--Request 14
SELECT *
FROM jobs_table
ORDER BY job_id ASC;

--Request 15 has no query.

--Request 16
SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH AS [Size], IS_NULLABLE 
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'departments_table';

--Request 17
DROP TABLE job_history_table;

--Request 18
CREATE TABLE SAL_HISTORY (
    EMPID INT NOT NULL,
    FIRSTNAME VARCHAR(50),
    LASTNAME VARCHAR(50),
    HIREDATE DATE,
    SAL DECIMAL(15, 2),
    PRIMARY KEY (EMPID)
);

--Request 19
INSERT INTO SAL_HISTORY (EMPID, FIRSTNAME, LASTNAME, HIREDATE, SAL)
SELECT employee_id, first_name, last_name, hire_date, salary
FROM employees_table
WHERE employee_id <= 130;

--Request 20
SELECT * FROM SAL_HISTORY;