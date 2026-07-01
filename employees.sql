-- SQL script for employee table creation and data population
USE sellit_db;

-- Drop table if exists to ensure clean run
DROP TABLE IF EXISTS employee;

-- Create the employee table
CREATE TABLE employee (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone VARCHAR(15),
    hire_date DATE,
    job_title VARCHAR(100),
    salary DECIMAL(12, 2),
    department VARCHAR(50)
);

-- Insert 20 records
INSERT INTO employee (first_name, last_name, email, phone, hire_date, job_title, salary, department) VALUES
('James', 'Smith', 'james.smith@example.com', '555-0101', '2023-01-15', 'Manager', 75000.00, 'Sales'),
('Mary', 'Johnson', 'mary.j@example.com', '555-0102', '2023-02-20', 'Developer', 80000.00, 'IT'),
('Robert', 'Williams', 'robert.w@example.com', '555-0103', '2023-03-10', 'Designer', 65000.00, 'Marketing'),
('Patricia', 'Brown', 'patricia.b@example.com', '555-0104', '2023-04-05', 'Accountant', 60000.00, 'Finance'),
('Michael', 'Jones', 'michael.j@example.com', '555-0105', '2023-05-12', 'Analyst', 70000.00, 'Data'),
('Linda', 'Garcia', 'linda.g@example.com', '555-0106', '2023-06-18', 'HR Specialist', 55000.00, 'HR'),
('William', 'Miller', 'william.m@example.com', '555-0107', '2023-07-22', 'Developer', 82000.00, 'IT'),
('Elizabeth', 'Davis', 'elizabeth.d@example.com', '555-0108', '2023-08-30', 'Marketing Lead', 72000.00, 'Marketing'),
('David', 'Rodriguez', 'david.r@example.com', '555-0109', '2023-09-14', 'Sales Rep', 50000.00, 'Sales'),
('Barbara', 'Martinez', 'barbara.m@example.com', '555-0110', '2023-10-02', 'Engineer', 85000.00, 'IT'),
('Richard', 'Hernandez', 'richard.h@example.com', '555-0111', '2023-10-25', 'Manager', 78000.00, 'IT'),
('Susan', 'Lopez', 'susan.l@example.com', '555-0112', '2023-11-05', 'Analyst', 68000.00, 'Data'),
('Joseph', 'Gonzalez', 'joseph.g@example.com', '555-0113', '2023-11-20', 'Sales Rep', 52000.00, 'Sales'),
('Jessica', 'Wilson', 'jessica.w@example.com', '555-0114', '2023-12-01', 'Accountant', 61000.00, 'Finance'),
('Thomas', 'Anderson', 'thomas.a@example.com', '555-0115', '2023-12-15', 'Developer', 79000.00, 'IT'),
('Sarah', 'Thomas', 'sarah.t@example.com', '555-0116', '2024-01-10', 'HR Manager', 65000.00, 'HR'),
('Charles', 'Taylor', 'charles.t@example.com', '555-0117', '2024-01-20', 'Marketing', 58000.00, 'Marketing'),
('Karen', 'Moore', 'karen.m@example.com', '555-0118', '2024-02-05', 'Designer', 63000.00, 'Marketing'),
('Christopher', 'Jackson', 'christopher.j@example.com', '555-0119', '2024-02-15', 'Engineer', 84000.00, 'IT'),
('Nancy', 'White', 'nancy.w@example.com', '555-0120', '2024-03-01', 'Analyst', 71000.00, 'Data');

-- Verify insertion
SELECT * FROM employee;

-- display name and salary from employee
select first_name,salary from employee;


-- select with where clause 
-- display records of employee whose salary >70000
select *from employee where salary >70000;


-- display employees whose job_title = Developer
select * from employee where job_title = "Developer";


-- and or not
-- display manager whose salary >70000
 select * from employees where job_title = "Manager" and salary >70000;
 
 -- without duplicates use distinct
select distinct job_title from employee;

-- display employee details where job title either manager or Developer
select * from employee where job_title = "Developer" or job_title = "Manager";

-- display employee whose job title  not equal to Manager
select * from  employee where job_title != "Manager";

-- order by = sorting , (asending,decending)
-- limit = 
-- offset = skip
-- ===================================
select * from employee order by salary asc;
select * from emplyoee order by salary desc;

-- employee with highest salary
select * from employee order by salary desc limit 1;

-- employee with lowest salary
select * from employee order by salary  limit 1;

-- employee with second highest salary
select * from employee order by salary desc limit 1 offset 1 ;

-- employee with second lowest salary
select * from employee order by salary asc limit 1 offset 1;

select * from employee where salary between 60000 and 75000;

-- aggregate function--> max,min,sum,avg,count
-- ============================================
select count(*) as count from employee;
select sum(salary) as total_salary from employee;
select max(salary) as max_salary from employee;
select min(salary) as min_salary from employee;
select avg(salary) as avg_salary from employee;

-- group by
-- ===========
-- count by job titles
select job_title,count(*) as count from employee group by job_title;

-- count by deparments
select department,count(*) as count from employee group by department;

-- job title with highest employee count
select job_title,count(*) as count from employee group by job_title order by count desc limit 1;

--  depatment with highest employee count
select department, count(*) as count from employee group by department order by count desc limit 1;

-- department with least employee count
select department,count(*) as count from employee group by department order by count limit 1;

 -- department more than 3 employee
 select department ,count(*) as count from employee group by department having count > 3;
 
 -- like
 -- ========
 select * from employee where first_name like "%a";  -- ends with a
 select * from employee where first_name like "r%";  -- starts with r
 select * from employee where first_name like "%ar%" ;  -- contains ar
 
 -- name of  a employee with highest salary 
 select  first_name,salary from employee order by  salary desc limit 1;
 
 