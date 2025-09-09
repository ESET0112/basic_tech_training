use society

select * from employee

create table employee( id int primary key,name varchar(50),branch varchar(50),salary float)

insert into employee values (5,'Navneet','IT',900000)
select * from employee where id!=1
select * from employee where id<>1
select * from employee where id<=3

insert into employee(id,name,branch) values(6,'Vikram','IT')

select * from employee where salary is null
select * from employee where salary is not null

select * from employee where name like 'A%'
select * from employee where name like '%k%'

select * from employee where name like '%a%' and name not like 'P%'

select max(salary) from  employee

select * from employee where salary=(select max(salary) from  employee)

select avg(salary) from employee where salary in 
(select salary from employee where salary BETWEEN 100000 and 800000)

select max(salary) as max_salary from employee

select count(*) as row_count from employee where salary between 100000 and 800000

select * from employee order by salary ASC
select * from employee order by salary DESC


