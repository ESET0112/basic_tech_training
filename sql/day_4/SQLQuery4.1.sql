use society

select * from orders
select * from users
select * from books
insert into books values(70,'bhagwad gita',1800)

select * from orders o INNER JOIN users u on o.users_id=u.users_id

select * from orders o INNER JOIN users u on o.users_id=u.users_id 
INNER JOIN books b on o.product_id = b.product_id
where price =1500

select * from orders o INNER JOIN books b on o.product_id=b.product_id
FULL OUTER JOIN users u on o.users_id=u.users_id









