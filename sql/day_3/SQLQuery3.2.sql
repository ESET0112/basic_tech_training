use society

create table users(users_id int primary key, email varchar(50) unique,name varchar(50)) 
drop table users

create table books( product_id int primary key, title varchar(50),price varchar(10))

select * from users
select * from books

insert into users values(1,'ramu@example.com','Ramu')
insert into users values(2,'gopal@example.com','Gopal')
insert into users values(3,'introvert@gmail.com','Jai')
insert into users values(4,'extrovert@gmail.com','Ganesh')

insert into books values(10,'ramayan',1500)
insert into books values(20,'how to read a book',150)
insert into books values(30,'2 states',690)
insert into books values(40,'Kalyug',300)

select * from books
select * from users


create table orders( order_no int primary key, users_id int,product_id int,
foreign key (users_id) references users(users_id), foreign key (product_id) references books(product_id))

select * from orders

insert into orders values(101,2,20)
insert into orders values(102,1,10)
insert into orders values(103,1,40)




