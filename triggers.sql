create database STDNTS
create table STD_INFO(S_ID int not null, NAME char(20) ,CLASS char(20), ADDR char(20));
insert into STD_INFO(S_ID,NAME,CLASS,ADDR) values (1,'Sahil','SE','Chiplun')
insert into STD_INFO(S_ID,NAME,CLASS,ADDR) values (2,'Shaurya','TE','Mumbai')
insert into STD_INFO(S_ID,NAME,CLASS,ADDR) values (3,'Shubham','BE','United States')
insert into STD_INFO(S_ID,NAME,CLASS,ADDR) values (4,'Harsh','TE','United Kingdom')
insert into STD_INFO(S_ID,NAME,CLASS,ADDR) values (5,'Rohit','TE','Pune') 
insert into STD_INFO(S_ID,NAME,CLASS,ADDR) values (6,'Arya', 'TE', 'Mumbai')
select  * from STD_INFO

create table STD_INFO_LOG(
S_ID int not null, 
NAME char(20) ,
CLASS char(20), 
ADDR char(20),
LOG_ACTION varchar(30),
LOG_TIMESTAMP date

);
create trigger trgAfterInsert
ON STD_INFO
AFTER INSERT
AS
DECLARE @s_id int
DECLARE @s_name varchar(30)
DECLARE @s_class varchar(30)
DECLARE @s_addr varchar(30)
DECLARE @log_action varchar(30)

SELECT @s_id=i.S_ID,@s_name=i. NAME,@s_class=i.ADDR, @s_addr=i.ADDR FROM inserted i; 
set @log_action='Inserted record == After insert trigger';

INSERT INTO STD_INFO_LOG(
S_ID,NAME,CLASS,ADDR,LOG_ACTION,LOG_TIMESTAMP) values (@s_id,@s_name,@s_class,@s_addr,@log_action,GETDATE());

PRINT 'AFTER INSERT TRIGGER FIRED'
GO

create trigger trgAfterUpdate
ON STD_INFO
AFTER UPDATE
AS
DECLARE @s_id int
DECLARE @s_name varchar(30)
DECLARE @s_class varchar(30)
DECLARE @s_addr varchar(30)
DECLARE @log_action varchar(30)

SELECT @s_id=i.S_ID,@s_name=i.NAME,@s_class=i.ADDR, @s_addr=i.ADDR FROM inserted i;

if update (NAME)
set @log_action='Updated record--After Update trigger';

INSERT INTO STD_INFO_LOG(
S_ID,NAME,CLASS,ADDR,LOG_ACTION,LOG_TIMESTAMP) values (@s_id,@s_name,@s_class,@s_addr,@log_action, GETDATE());

PRINT 'AFTER UPDATE TRIGGER FIRED'
GO

Update STD_INFO SET NAME='Aditya'
where S_ID=1
select * from STD_INFO
select * from STD_INFO_LOG


create trigger trgAfterDelete
ON STD_INFO
AFTER Delete
AS
DECLARE @s_id int
DECLARE @s_name varchar(30)
DECLARE @s_class varchar(30)
DECLARE @s_addr varchar(30)
DECLARE @log_action varchar(30)

SELECT @s_id=i.S_ID,@s_name=i.NAME,@s_class=i.ADDR, @s_addr=i.ADDR FROM inserted i;


INSERT INTO STD_INFO_LOG(
S_ID, NAME,CLASS,ADDR,LOG_ACTION,LOG_TIMESTAMP) values (@s_id,@s_name,@s_class,@s_addr,@log_action, GETDATE());

PRINT 'AFTER DELETE TRIGGER FIRED'
GO

DELETE from STD_INFO WHERE S_ID=2

drop trigger trgAfterInsert
drop table STD_INFO

select * from STD_INFO_LOG
select * from STD_INFO