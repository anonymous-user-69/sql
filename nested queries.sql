create database information;
create table EMP(id int not null, name char(20) ,age int, address char(20), department char(20));
select * from EMP
insert into EMP values(1,'john',20,'US','admin');
insert into EMP values(2,'stephan',26,'dubai','developement');
insert into EMP values(3,'david',27,'bankok','production');
insert into EMP values(4,'alina',29,'UK','developement');
insert into EMP values(5,'katherin',34,'banglore','R&D');
insert into EMP values(6,'harry',42,'china','production');
insert into EMP values(7,'jackson',25,'mizoram','developement');
create table salary(s_id int,id int, salary float);
insert into salary values(101,1,20000.00);
insert into salary values(102,2,15000.00);
insert into salary values(103,3,20000.00);
insert into salary values(104,4,65000.00);
insert into salary values(105,5,850000.00);
insert into salary values(106,6,45000.00);
insert into salary values(107,7,100000.00);
select * from salary
select EMP.name,salary.salary from EMP join salary on EMP.id=salary.id and EMP.id in
(select id from EMP group by id having count(*)=1);
select EMP.name,salary.salary from EMP join salary on EMP.id=salary.id and EMP.id in
(select id from EMP where salary<40000.00 group by id having count(*)=1);
select EMP.name,salary.salary from EMP join salary on EMP.id=salary.id and EMP.id in
(select id from EMP where department='Production' group by id having count(*)=1);
select EMP.name,salary.salary from EMP join salary on EMP.id=salary.id and EMP.id in (select
id from EMP where department='developement' group by id having count(*)=1);