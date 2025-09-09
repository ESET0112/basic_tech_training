use society

select * from orders o FULL OUTER JOIN users u on o.users_id=u.users_id
FULL OUTER JOIN books b on o.product_id=b.product_id

select * from books b LEFT JOIN orders o on b.product_id=o.product_id

select u.name,b.title,b.price from orders o INNER JOIN users u on o.users_id=u.users_id
INNER JOIN books b on o.product_id=b.product_id 
where b.product_id IN (20,60,70)

select b.title,u.name from orders o INNER JOIN users u on o.users_id=u.users_id
INNER JOIN books b on o.product_id=b.product_id


select sum(b.price) as total_price from orders o INNER JOIN users u on o.users_id=u.users_id
INNER JOIN books b on o.product_id=b.product_id

select u.name as most_valuable_user_name from orders o INNER JOIN users u on o.users_id=u.users_id
INNER JOIN books b on o.product_id=b.product_id where b.price=(select max(price) from books)

select title,price from books order by price desc

 





