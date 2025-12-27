-- Create the database 
CREATE DATABASE EmployeeManagement; 

USE EmployeeManagement; -- Create the Department table 

CREATE TABLE Departments ( 
DepartmentID INT PRIMARY KEY AUTO_INCREMENT, 
DepartmentName VARCHAR(50) NOT NULL, 
Location VARCHAR(50), 
HeadOfDepartment VARCHAR(50), 
AnnualBudget DECIMAL(10, 2) 
); -- Create the Employee table 

CREATE TABLE Employees ( 
EmployeeID INT PRIMARY KEY AUTO_INCREMENT, 
FirstName VARCHAR(50), 
LastName VARCHAR(50), 
DepartmentID INT, 
Salary DECIMAL(10,2),                            
DateOfJoining DATE, 
Email VARCHAR(100), 
FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID) 
); -- Insert records into Departments table 

INSERT INTO Departments (DepartmentName, Location, HeadOfDepartment, AnnualBudget) 
VALUES  
('HR', 'Pune', 'Raj Sharma', 500000), 
('Finance', 'Mumbai', 'Sneha Gupta', 1000000), 
('IT', 'Bangalore', 'Anil Kumar', 1500000), 
('Sales', 'Delhi', 'Priya Singh', 1200000), 
('Operations', 'Pune', 'Ravi Patil', 900000), 
('Admin', 'Chennai', 'Geeta Reddy', 400000), 
('Legal', 'Hyderabad', 'Amit Desai', 600000), 
('Logistics', 'Mumbai', 'Nisha Joshi', 700000), 
('Research', 'Bangalore', 'Vikram Roy', 2000000), 
('Support', 'Pune', 'Arun Kumar', 800000);
-- (The Marketing department has been created (DepartmentID: 11) with a budget of 
-- ₹13,00,000, located in Pune, and headed by Rakesh Mehta. Add this department.
insert into Departments values('21','Marketing','pune','Rakesh Mehta',1300000);
select * from departments;
select * from departments where DepartmentName='it';

 -- Insert records into Employees table 

INSERT INTO Employees (FirstName, LastName, DepartmentID, Salary, DateOfJoining, 
Email) values
('Ravi', 'Sharma', 1, 45000, '2022-05-20', 'ravi.sharma@example.com'), 
('Priya', 'Patil', 2, 60000, '2021-03-15', 'priya.patil@example.com'), 
('Amit', 'Kumar', 3, 75000, '2020-01-10', 'amit.kumar@example.com'), 
('Sneha', 'Desai', 4, 50000, '2019-07-22', 'sneha.desai@example.com'), 
('Nisha', 'Joshi', 5, 55000, '2023-08-01', 'nisha.joshi@example.com'), 
('Raj', 'Verma', 6, 48000, '2022-09-14', 'raj.verma@example.com'), 
('Anil', 'Roy', 7, 70000, '2020-02-20', 'anil.roy@example.com'), 
('Vikram', 'Chauhan', 8, 45000, '2023-06-11', 'vikram.chauhan@example.com'), 
('Arun', 'Khan', 9, 65000, '2021-12-03', 'arun.khan@example.com'), 
('Geeta', 'Reddy', 10, 62000, '2020-11-10', 'geeta.reddy@example.com'), 
('Rohit', 'Sharma', 1, 46000, '2022-03-25', 'rohit.sharma@example.com'), 
('Pooja', 'Mehta', 2, 59000, '2021-05-17', 'pooja.mehta@example.com'), 
('Karan', 'Jain', 3, 73000, '2020-08-10', 'karan.jain@example.com'), 
('Smita', 'Pawar', 4, 51000, '2019-09-14', 'smita.pawar@example.com'), 
('Neha', 'Deshmukh', 5, 57000, '2023-10-19', 'neha.deshmukh@example.com'), 
('Rahul', 'Joshi', 6, 50000, '2022-07-07', 'rahul.joshi@example.com'), 
('Ajay', 'Roy', 7, 72000, '2020-03-25', 'ajay.roy@example.com'), 
('Sunita', 'Sharma', 8, 48000, '2023-11-21', 'sunita.sharma@example.com'), 
('Akshay', 'Patil', 9, 68000, '2021-01-15', 'akshay.patil@example.com'), 
('Isha', 'Reddy', 10, 64000, '2020-06-12', 'isha.reddy@example.com'), 
('Vivek', 'Shah', 1, 47000, '2022-02-23', 'vivek.shah@example.com'),                            
('Tina', 'Gupta', 2, 58000, '2021-06-28', 'tina.gupta@example.com'), 
('Aditya', 'Kumar', 3, 72000, '2020-09-05', 'aditya.kumar@example.com'), 
('Simran', 'Pawar', 4, 52000, '2019-11-08', 'simran.pawar@example.com'), 
('Sanjay', 'Deshmukh', 5, 56000, '2023-05-30', 'sanjay.deshmukh@example.com'), 
('Anjali', 'Joshi', 6, 51000, '2022-08-17', 'anjali.joshi@example.com'), 
('Ramesh', 'Roy', 7, 74000, '2020-04-16', 'ramesh.roy@example.com'), 
('Preeti', 'Sharma', 8, 49000, '2023-12-05', 'preeti.sharma@example.com'), 
('Ankur', 'Patil', 9, 66000, '2021-07-13', 'ankur.patil@example.com'), 
('Meera', 'Reddy', 10, 61000, '2020-10-20', 'meera.reddy@example.com'), 
('Vikas', 'Shah', 1, 49000, '2022-04-04', 'vikas.shah@example.com'), 
('Neeta', 'Gupta', 2, 60000, '2021-09-09', 'neeta.gupta@example.com'), 
('Ashish', 'Kumar', 3, 74000, '2020-12-01', 'ashish.kumar@example.com'), 
('Ritu', 'Pawar', 4, 53000, '2019-10-24', 'ritu.pawar@example.com'), 
('Santosh', 'Deshmukh', 5, 58000, '2023-02-18', 'santosh.deshmukh@example.com'), 
('Lata', 'Joshi', 6, 52000, '2022-11-29', 'lata.joshi@example.com'), 
('Arjun', 'Roy', 7, 71000, '2020-07-04', 'arjun.roy@example.com'), 
('Kiran', 'Sharma', 8, 50000, '2023-03-10', 'kiran.sharma@example.com'), 
('Mohit', 'Patil', 9, 67000, '2021-11-11', 'mohit.patil@example.com'), 
('Naina', 'Reddy', 10, 63000, '2020-02-14', 'naina.reddy@example.com');

-- We have hired two employees, Siddharth Gupta (email: siddharth.gupta@example.com, 
-- salary: ₹70,000, DOJ: 2024-01-01) and Aarav Jain (email: aarav.jain@example.com, salary: 
-- ₹72,000, DOJ: 2024-01-02), in the IT department (DepartmentID: 3). Add these records.
insert into Employees values
('41','Siddharth','Gupta',3,70000,'2024-01-01', 'siddharth.gupta@example.com'),
('42','Aarav','Jain',3,72000,'2024-01-02','email: aarav.jain@example.com');

-- Three employees have been hired for the Marketing department (DepartmentID: 11): 
-- Rahul Mehra (email: rahul.mehra@example.com, salary: ₹58,000, DOJ: 2024-01-10), Sara 
-- Kapoor (email: sara.kapoor@example.com, salary: ₹62,000, DOJ: 2024-01-11), and Nitin Shah 
-- (email: nitin.shah@example.com, salary: ₹60,000, DOJ: 2024-01-12). Add these records.
insert into Employees values 
('43','Rahul',' Mehra ',21,58000 ,'2024-01-10',' rahul.mehra@example.co'),
('44','sara','kapoor',21,62000,'2024-01-11','sara.kapoor@example.com'),
('45','nitin','shah',21,60000,'2024-01-12','nitin.shah@example.com');

-- (Two employees have been hired for the HR department (DepartmentID: 1): Riya Sharma 
-- (email: riya.sharma@example.com, salary: ₹50,000, DOJ: 2024-02-01) and Mohit Desai (email: 
-- mohit.desai@example.com, salary: ₹55,000, DOJ: 2024-02-02). Add these records.)
 insert into Employees values
 ('46','riya','sharma',1,50000,'2024-02-01','riya.sharma@example.com'),
 ('47','mohit','desai',1,55000,'2024-02-02','mohit.desai@example.com');
 
 -- Sneha Rao (email: sneha.rao@example.com) has joined the Finance department 
--- (DepartmentID: 2) on 2024-02-15 with a salary of ₹60,000. Add this record.
insert into Employees values
('48','sneha','rao',2,60000,'2024-02-15','sneha.rao@example.com');

-- Three employees have been hired for the Legal department (DepartmentID: 7): Aditya 
-- Malhotra (email: aditya.malhotra@example.com, salary: ₹65,000, DOJ: 2024-03-01), Priyanka 
-- Kapoor (email: priyanka.kapoor@example.com, salary: ₹67,000, DOJ: 2024-03-02), and Kunal 
-- Singh (email: kunal.singh@example.com, salary: ₹68,000, DOJ: 2024-03-03). Add these 
-- records. 
insert into Employees values
('49','aditya','Malhotra',7,65000,'2024-03-01','aditya.malhotra@example.com'),
('50','priynka','kapoor',7,670000,'2024-03-02','priyanka.kapoor@example.com'),
('51','kunal','singh',7,680000,'2024-03-03','kunal.singh@example.com');

-- The Research department (DepartmentID: 12) has been created with a budget of 
-- ₹20,00,000, located in Hyderabad, and headed by Dr. Meera Joshi. Add this department.

insert into departments values
('22','Research','Hyderabad','Dr.Meera Joshi','2000000');

-- Two employees have been hired for the Research department (DepartmentID: 12): Arjun 
-- Shah (email: arjun.shah@example.com, salary: ₹75,000, DOJ: 2024-04-01) and Riya Patel 
-- (email: riya.patel@example.com, salary: ₹72,000, DOJ: 2024-04-02). Add these records.
insert into  Employees values
('52','arjun','shah',12,75000,'2024-04-01','arjun.shah@example'),
('53',' Riya',' Patel ',12,720000,'2024-04-02','riya.patel@example.com');

-- The Logistics department (DepartmentID: 13) has been created with a budget of 
-- ₹9,00,000, located in Chennai, and headed by Ravi Verma. Add this department.
insert into departments values
('23','Logistics','Chennai',' Ravi Verma','900000');

-- Two employees have been hired for the Logistics department (DepartmentID: 13): Kavita 
-- Desai (email: kavita.desai@example.com, salary: ₹50,000, DOJ: 2024-05-01) and Amit Jain 
-- (email: amit.jain@example.com, salary: ₹52,000, DOJ: 2024-05-02). Add these records.
insert into Employees values
('54','kavita','desai',23,50000,'2024-05-01','kavita.desai@example.com'),
('55','amit','jain',23,520000,'2024-05-02',' amit.jain@example.com');

select * from Employees;
-- Situation -1 We are planning a cybersecurity project. Find all employees working in the IT 
-- department (DepartmentID: 3). 
select * from employees where DepartmentID='3';

 -- To organize a corporate event, we need employees who joined after 2024-01-01. 
-- Retrieve their details.
select * from employees where DateOfJoining > '2024-01-01'; 

-- Situation -3 The finance team is preparing budgets. List all employees whose salary is greater 
-- than ₹60,000. 
select * from employees where salary >60000;

-- Situation -4 We are sending a company-wide newsletter. Find the details of employees whose 
-- email ends with '@example.com'.
select * from employees where Email like '%@example.com';

-- Situation -5 The Marketing department is launching a new campaign and needs a cost-effective 
-- team. Retrieve the details of employees in the Marketing department (DepartmentID: 11) who 
-- earn less than ₹60,000. 
select * from employees where DepartmentID =21 and salary <60000;

-- Situation -6 A client requires a project lead for their team. Find the employee details where the 
-- name starts with 'S'.
select * from employees where FirstName like 's%';

-- Situation -7 For recruitment analysis, retrieve all employees who joined in February 2024.
select * from employees where  year (DateOfJoining) = 2024 and month (DateOfJoining) =2 ;

-- Situation -8 To shortlist mid-level employees, find the details of employees who are earning 
-- between ₹50,000 and ₹70,000. 
select * from employees where salary between 50000 and 70000;

-- Situation -9 We need to identify senior employees. Retrieve the details of employees who joined 
-- before 2024-03-01 and earn more than ₹55,000. 
select * from employees where DateOfJoining ='2024-03-01'and salary >55000;

-- Situation -11 To identify local opportunities, list all the departments located in Pune. 
select * from departments where Location ='pune';

-- Situation -12 The board is interested in high-budget projects. Find the details of departments
-- where the budget exceeds ₹10,00,000.
select * from departments where AnnualBudget =1000000;

-- Situation -13 For a leadership meeting, retrieve the departments headed by "Rakesh Mehta". 
select * from departments where HeadOfDepartment='rakesh mehta';

-- Situation -14 Marketing expansion is being planned. Find all departments whose names start with "M". 
select * from departments where DepartmentName like'm%';

-- Situation -15 To allocate funds efficiently, list all departments where the budget is between ₹8,00,000 and ₹15,00,000
select * from departments where AnnualBudget between 800000 and 1500000;

--        GROUP BY 
-- Situation -1: To analyze salary distribution, find the total salary paid in each department. 
select DepartmentID,sum(salary) as tolalsalary from employees group by DepartmentID;

-- Situation -2: For employee retention analysis, count the number of employees in each department.
select DepartmentID,count(EmployeeID)from employees group by DepartmentID;
 select DepartmentID,count(*) as employeescount from employees group by DepartmentID;
 
-- Situation -3: The finance team wants to understand salary variation. Find the average salary in each department. 
select DepartmentID ,avg(salary)from employees group by DepartmentID;
 
-- Situation -4: To reward experienced employees, identify the earliest joining date in each department.
select DepartmentID ,min(DateOfJoining) as earliestjoiningdate from employees group by DepartmentID;

-- Situation -5: The HR team is preparing performance reports. Retrieve the maximum salary in each department. 
select DepartmentID,max(salary)from employees group by DepartmentID;
 
-- Situation -6: To analyze junior-level hiring, find the minimum salary in each department. 
select DepartmentID ,min(salary)from employees group by DepartmentID;

-- Situation -7: The finance team wants to review high-salary employees. Find the total salary paid 
-- for employees earning more than ₹60,000 in each department. 
select DepartmentID,sum(salary)as highsalary from employees where salary >60000 group by DepartmentID;

-- Situation -8: To monitor departmental growth, count the number of employees who joined in 
-- 2024 in each department. 
select DepartmentID, count(*)  from employees where year( DateOfJoining) = 2024 group by DepartmentID;

-- Situation -9: For training allocation, count the number of employees with salaries between 
-- ₹50,000 and ₹70,000 in each department. 
select DepartmentID,count(*)as employees_count from employees where salary between 50000 and 70000 group by DepartmentID;
select DepartmentID,salary from employees where salary between 50000 and 70000 group by DepartmentID;

-- Situation -10: For diversity analysis, count the number of employees whose names start with 
-- each letter of the alphabet.


-- Situation -11: For city-based analysis, count the number of departments located in each city. 
select location,count(*)from departments group by location;

-- Situation -12: To manage high-budget projects, find the total budget allocated to all departments in each city. 
select location as city ,sum(AnnualBudget)as totalbudget  from departments group by location;

-- Situation -13: For leadership tracking, count the number of departments headed by each manager. 
select HeadOfDepartment as manager,count(HeadOfDepartment) from departments group by HeadOfDepartment;

-- Situation -14: To plan budget allocation, calculate the average budget of departments in each  city
select location,avg(AnnualBudget)from departments group by location;
 
-- Situation -15: For funding efficiency, find the maximum and minimum budgets among departments in each city.
select location ,min(AnnualBudget), max(AnnualBudget) from departments group by location;

 --                CONCAT and Concatenating Words
-- Situation -1: To create a full name column, concatenate the first name and last name of each employee
 select concat(FirstName, ' ' ,LastName)as full_name	from employees;
 
-- Situation -2: For a project report, concatenate the department name and its location to display a 
-- complete department address. 
select concat(DepartmentName, '_',location)as department_address from departments;
select * from employees;
-- Situation -3: To prepare a personalized email greeting, concatenate "Hello " with the employee's 
-- name and a comma. 
select concat('hello',FirstName, ' ,')as email_greeting from employees;

-- Situation -4: For creating a unique employee ID, concatenate the department ID and employee 
-- number. 
select concat(DepartmentID,EmployeeID)as unique_employee_ID from employees;

-- Situation -5: For creating a company contact list, concatenate the employee's phone number 
-- with their extension (if applicable). 

-- Situation -6: To display the complete address, concatenate the street, city, and postal code of 
-- each employee. 


-- Situation -7: To create an employee login ID, concatenate the employee’s first name, last name, 
-- and their department ID. 


-- Situation -8: For sending out a personalized notification, concatenate the employee's department 
-- with their position. 


-- Situation -9: To display the employee's work status, concatenate their job title and current 
-- project. 


--  Situation -10: For an annual report, concatenate the year and employee’s first name to create a 
-- unique report reference code.




