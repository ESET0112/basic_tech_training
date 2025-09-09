use society

select * from employee

select branch,count(*) as Total from employee group by branch having count(*)=2 

select top 5 * from employee order by salary desc 

select * from employee order by salary desc offset 1 rows fetch next 3 rows only

select * from users
select * from orders

select u.name,count(*)as product_bought from users u INNER JOIN orders o on u.users_id=o.users_id 
group by o.users_id,u.name having count(*)>1