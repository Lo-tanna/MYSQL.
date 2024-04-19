create database Employee;
use Employee;
create table Employee (
EmployeeID int,
Firstname varchar(50),
Lastname varchar(50),
Salary int);
select * from Employee;

insert into Employee (EmployeeID, Firstname, Lastname, Salary)
values
(1,"Daniel","Adesanya","5"),
(2,"Emmanuel","Ajitoni","4"),
(3,"Medoye","Mary","3"),
(4,"Okwudili","Lotanna","2"),
(5,"Uremeh","Onyebuchi","1");

rename table Employee to Employee_Data;
update Employee_Data
set salary = "100,000"
where EmployeeID = 1;

select * from Employee_Data;

alter table Employee_Data
add column Positon varchar (50);
select * from Employee_Data;

update Employee_Data
set Role = "CEO"
where EmployeeID = 1;
select * from Employee_Data;

update Employee_Data
set Role = "Engineer"
where EmployeeID = 2;
select * from Employee_Data;



update Employee_Data
set Role = "Software Engineer"
where EmployeeID = 3;
select * from Employee_Data;

update Employee_Data
set Role = "Gateman"
where EmployeeID = 4;
select * from Employee_Data;

update Employee_Data
set Role = "Security"
where EmployeeID = 5;
select * from Employee_Data;

-- filtering method
-- and, or, not

select * from Employee_Data
where EmployeeID = 1;

select * from Employee_Data
where EmployeeID = 2;

select * from Employee_Data
where EmployeeID = 2 and firstname = "Emmanuel";

select * from Employee_Data
where EmployeeID = 2 or firstname = "Emmanuel";

select * from Employee_Data
where not EmployeeID = 2;

-- conditional operator check for multiple
-- >=, <=, <, >;

select * from Employee_Data
where salary > 5;

select * from employee.employee_data
where salary < 5;

select * from employee.employee_data
where salary <= 5 and salary >= 1;

-- limit clause reduce number of row
select * from Employee_Data
order by salary desc;

-- math function
-- sum, count, average, minimum, maximum


SELECT * FROM employee.employee_data;

select sum(salary) as "Total Salary", avg(salary) as "Average Salary", min(salary) as "Lowest Salary", max(salary) as "Maximun Salary" from Employee_Data;

select firstname,salary from Employee_Data;

alter table Employee_Data
add column Fullname varchar(50);

--- Concert

select *, concat(firstname," ",lastname) as Fullname from Employee_Data;

select * from Employee_Data;

update Employee_Data
set Fullname = concat(firstname," ",lastname);

select * from Employee_Data;

alter table Employee_Data
add column DATES date;

update Employee_Data
set dates = "2023-12-03"
where employeeid = 1;

update Employee_Data
set dates = "2023-12-03"
where employeeid = 2;

update Employee_Data
set dates = "2023-12-03"
where employeeid = 3;

update Employee_Data
set dates = "2023-12-03"
where employeeid = 4;

update Employee_Data
set dates = "2023-12-03"
where employeeid = 5;

select * from Employee_Data;

select now();

alter table Employee_Data
add column Present_Date date; 

update Employee_Data
set Present_Date = now()
where employeeid = 1;

update Employee_Data
set Present_Date = now()
where employeeid = 2;

update Employee_Data
set Present_Date = now()
where employeeid = 3;

update Employee_Data
set Present_Date = now()
where employeeid = 4;

update Employee_Data
set Present_Date = now()
where employeeid = 5;

select * from Employee_Data;

alter table Employee_Data
add column Present_Time time; 

select curtime();

update Employee_Data
set Present_Time = curtime()
where employeeid = 5;

select * from Employee_Data;

alter table Employee_Data
drop column Present_Dates;

--- date, time function
select now();
select curtime();
select curdate();

--- constraints are keyworking SQL to specify the type of data 

create table Employee_Performance(
EmployeeID int primary key auto_increment,
Office varchar(50) unique,
Points float default 0,
Total_Points float not null);

insert into Employee_Performance (Office, Points, Total_Points)
values ("CEO","1",30.3),
       ("Manager","2",31.9),
	   ("Physics","3",31.2);

select * from Employee_Performance;
insert into Employee_Performance (Office, Points, Total_Points)
values ("Agent","1",30.3);
