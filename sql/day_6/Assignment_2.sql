use society
select * from users
select * from orders
select * from books

--Find top 2 most expensive books purchased by each user
-- Using joins
select numbers.users_id,numbers.title,numbers.price from
(select o.users_id,b.title,b.price,
ROW_NUMBER() over(partition by o.users_id order by b.price desc ) as ranked 
from books b INNER JOIN orders o on o.product_id=b.product_id) numbers
where numbers.ranked<=2

--Rank users by total spending
select o.users_id,sum(b.price) as Total_Spending
from books b INNER JOIN orders o on o.product_id=b.product_id 
group by o.users_id order by Total_Spending desc
