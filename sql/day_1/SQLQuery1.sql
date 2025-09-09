create database society
use society

create table apt(flat_no int,names varchar(50),phone_no varchar(10))

select * from apt

insert into apt values(1,'Nilanjan','1234567890')
insert into apt(flat_no,names,phone_no) values(2,'Brijesh','1232356785')
insert into apt values(3,'Rishav','1232356787'),(4,'Aniket','1232398787')

update apt SET phone_no = '9876543210' where names='Aniket'

delete from apt where flat_no=3

create table employee(emp_id int,emp_name varchar(50),dept varchar(50),salary varchar(20))
insert into employee values(1,'Nilanjan','CSIS','80000'),(2,'Brijesh','CSE','90000'),(3,'Aniket','ECE','95000'),(4,'Rishav','CSE','85000'),(5,'Soumyadip','EEE','70000')
select * from employee
select * from employee where salary>80000

