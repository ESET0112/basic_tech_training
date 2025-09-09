use society

create table student(id int primary key, names varchar(50))
select * from student

insert into student values(1,'Nilanjan')

alter table student
add number int unique


insert into student values(3,'Rishav',1235)

create table teachers(id int, subjects varchar(50),
foreign key(id) references student(id))

insert into teachers values(3,'English')

select * from teachers
select * from student

delete from student where id=1







