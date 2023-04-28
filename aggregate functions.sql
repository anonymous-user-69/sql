create database Employee1
create table Employee(
Emp_no int not null primary key,
Emp_name varchar(50) not null,
Job varchar(50) not null,
Salary int not null,
Dept_no int not null);
select * from Employee
insert into Employee(Emp_no,Emp_name,Job,Salary,Dept_no) values(1365,'Smith','Clerk',8000,10);
insert into Employee(Emp_no,Emp_name,Job,Salary,Dept_no) values(2110,'John','Manager',45000,20);
insert into Employee(Emp_no,Emp_name,Job,Salary,Dept_no) values(2567,'Harry','Salesman',4500,20);
insert into Employee(Emp_no,Emp_name,Job,Salary,Dept_no) values(2890,'Johnson','Salesman',15000,10);
insert into Employee(Emp_no,Emp_name,Job,Salary,Dept_no) values(3454,'Turner','Analyst',25000,10);
insert into Employee(Emp_no,Emp_name,Job,Salary,Dept_no) values(5678,'James','Clerk',8500,30);
insert into Employee(Emp_no,Emp_name,Job,Salary,Dept_no) values(5999,'Miller','Salesman',13500,30);
insert into Employee(Emp_no,Emp_name,Job,Salary,Dept_no) values(6845,'Ford','Salesman',5000,20);
insert into Employee(Emp_no,Emp_name,Job,Salary,Dept_no) values(6890,'Marin','Manager',50000,10);
insert into Employee(Emp_no,Emp_name,Job,Salary,Dept_no) values(7000,'Allen','Clerk',7500,20);
select count(Emp_no) as [Total no. of Employees] from Employee
select Dept_no,count(Emp_no) as [Employees in each department] from Employee group by Dept_no
select Job,sum(Salary) as [Total salary of clerks] from Employee group by job having job ='Clerk'
select avg(Salary) as [Average salary of all Employees] from Employee
select Dept_no,sum(Salary) as[Total salary payable in each department] from Employee group by Dept_no
select Dept_no,avg(Salary) as [Average Salary] from Employee group by Dept_no having count(Job)>3
select Job,count(Emp_no) as [No. Employees in each Job] from Employee group by Job order by count(Job)desc
select Job from Employee group by Job,Salary having (Salary>=25000)
select Job,avg(Salary) as [Average Salary] from Employee group by job having job <>'Manager'
select Job,sum(Salary) as [Total Salary],max(Salary) as [Maximum Salary],
min(Salary) as [Minimum Salary],avg(Salary) as [Average Salary] from Employee group by job 
select Job,Dept_no,sum(Salary) as [Total Salary],max(Salary) as [Maximum Salary],
min(Salary) as [Minimum Salary],avg(Salary) as [Average Salary] from Employee group by job ,Dept_no having Dept_no=20
select Job,Dept_no,sum(Salary) as [Total Salary],max(Salary) as [Maximum Salary],
min(Salary) as [Minimum Salary],avg(Salary) as [Average Salary] from Employee group by job ,Dept_no having Dept_no=20 AND avg(Salary)>7000

