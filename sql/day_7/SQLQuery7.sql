use society

select * from employee

create table employee1(id int,name varchar(50)) 
insert into employee1 values(10,'Vineet')

--Merge (Without duplicates)
select id,name from employee union
select id,name from employee1

--Merge all (Duplicates all)
select id,name,branch,salary from employee union all
select id,name,branch,salary from employee


--Uppercase and Lowercase. selecting the name of column put it without ''
select UPPER(name) as uppercase from employee

select LOWER(name) as lowercase from employee


--LEN no of characters in string
select len(name) as char_length from employee

--LEN don't consider the spaces in the end
select len('nilanjan     ') as length   --length 8
select len('nilanjan  ch ') as length   --length 12


--substring
select substring('nilanjan',2,4) as ss    --start point->2 ... to print->4

select substring(name,2,4) as ss from employee

--reverse
select reverse(name) as rev from employee

--replace(Required 3 arguments)
select replace ('Nilanjan likes tea','tea','coffee') as coffee

select replace(name,'nilanjan','coffee') from employee

--concat
select concat('Nilanjan don''t',' ','like ev') as hell

select concat(name,'_',salary) from employee


--cast
select cast('5000' as int) as salary_int

--For this particular query change datatype to use
select cast(salary as float) from employee

--convert
select getdate() as today

select convert(varchar(10), getdate(),103) as date_ddmmyyyy  --103->British date format


