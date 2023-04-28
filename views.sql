CREATE database students1
CREATE TABLE Student_information(s_id int NOT NULL PRIMARY KEY, s_name varchar(20)
NOT NULL, s_address varchar (50) NOT NULL, class varchar(15) NOT NULL,admission_year
int NOT NULL,admission_category varchar(25) NOT NULL, applicable_fees float NOT NULL,
result_of_FE float, CET_marks float NOT NULL, Department varchar(25));
select * from Student_information
INSERT INTO Student_information VALUES(01,'Avi','Khed','SE',2021,'CET',32400.16, 8.26, 87,'Comp');
INSERT INTO Student_information VALUES(02,'Anjali','Chiplun','SE',2021,'Management',100520.52, 7.4, 76,'Chem');
INSERT INTO Student_information VALUES(03,'Sam','Khed','FE',2022,'CET',45300.48, 0,89,'Comp');
INSERT INTO Student_information VALUES(04,'Pooja','Khed','SE',2021,'CET',32400.16, 8.46,82,'Comp');
INSERT INTO Student_information VALUES(05,'Pratik','Chiplun','SE',2021,'CET',45300.48,8.26, 85,'EXTC');
INSERT INTO Student_information VALUES(06,'Rutvik','Chiplun','SE',2021,'CET',51330.00,7.17, 68,'Chem');
INSERT INTO Student_information VALUES(07,'Sonal','Mumbai','SE',2021,'Management',100520.52, 7.45, 65,'Chem');
INSERT INTO Student_information VALUES(08,'Tejas','Mumbai','FE',2022,'Management',100520.52, 0, 57,'Civil'); 
INSERT INTO Student_information VALUES(09,'Disha','Pune','FE',2022,'CET',32400.16, 0,90,'Civil');
INSERT INTO Student_information VALUES(10,'Riya','Pune','FE',2022,'CET',45300.48, 70,60,'EXTC');
INSERT INTO Student_information VALUES(11,'Sahil','Mumbai','TE',2020,'CET',51330.00, 7.5,71,'EXTC');
INSERT INTO Student_information VALUES(12,'Sonal','Pune','TE',2020,'Management',100520.52, 6.59, 54,'Civil');
INSERT INTO Student_information VALUES(13,'Snehal','Ratnagiri','TE',2020,'Management',100520.52, 7.00, 81,'Mech'); 
INSERT INTO Student_information VALUES(14,'Ravindra','Ratnagiri','TE',2021,'CET',45300.48, 6.47,45,'Mech');
INSERT INTO Student_information VALUES(15,'Suyog','Ratnagiri','TE',2021,'CET',51330.00,7.35, 58,'Mech');
CREATE VIEW Admin_Data AS 
SELECT s_id, s_name, admission_year, admission_category,applicable_fees 
FROM Student_information;
CREATE VIEW Student_list AS 
SELECT s_id, s_name, class ,Department 
FROM Student_information;
select * from Admin_Data
select * from Student_list
