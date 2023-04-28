create database Employee
create table Employee(EMP_ID int,EMP_NAME varchar(20),EMP_CITY varchar(30),EMP_SALARY float)
select * from Employee
insert into Employee(EMP_ID,EMP_NAME,EMP_CITY,EMP_SALARY)values(7345,'Smith','Mumbai',20000)
insert into Employee values(7561,'Jones','Pune',35000)
insert into Employee values(8111,'Johnson','Pune',82000)
insert into Employee values(9012,'Marin','Kankavli',45000)
insert into Employee values(9877,'Ward','Kolhapur',7000)
insert into Employee values(9975,'Allen','Mumbai',15000)
alter table Employee alter column EMP_NAME varchar(50)
select EMP_NAME,EMP_CITY from Employee
select EMP_NAME,EMP_SALARY from Employee where EMP_SALARY>10000
select EMP_NAME from Employee where EMP_CITY='Pune'
update Employee set EMP_CITY='Delhi' where EMP_ID=9877
update Employee set EMP_SALARY=50000
delete from Employee where EMP_NAME='Marin'
alter table Employee drop column EMP_CITY
alter table Employee add DEPT_NO int
drop table Employee