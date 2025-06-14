create database DBMS;
use DBMS;

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,       
    Name VARCHAR(50),                       
    Department VARCHAR(100),           
    Salary DECIMAL(10, 2),           
    Age INT 
);

INSERT INTO Employee (EmployeeID, Name, Department, Salary, Age) 
VALUES 
    (1, 'Aksh', 'BE', 30000.00, 21),
    (2, 'Purv', 'IT', 40000.00, 22),
    (3, 'DV', 'BE', 30400.00, 23),
    (4, 'Kd', 'Sales', 26000.00, 25),
    (5, 'Ayush', 'HR', 58000.00, 26),
    (6, 'Aryan', 'IT', 25500.00, 28);

    
SELECT * FROM Employee;

select * from employee where salary > 32000;

select distinct Department from employee;

select * from employee where salary<35000 and Department='BE';

select * from employee order by salary asc;

-- Aggregates 
select count(*) from employee;
select sum(salary) from employee;
select avg(salary) from employee;
select max(salary) from employee;
select min(salary) from employee;

-- group by 
select Department,count(*) AS empcount 
from employee
group by Department;

-- Having (uses after grouping)

select Department ,avg(salary) as avgsalary from employee 
group by Department
having avg(salary) >28000; 

-- where(use before grouping)
select * from employee where salary >28000;

-- Q:2 Find departments with more than 2 employees?
select Department ,COUNT(*) as count
FROM Employee
GROUP BY Department
HAVING COUNT(*) > 1;
