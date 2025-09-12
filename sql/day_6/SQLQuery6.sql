use society

select * from  employee

insert into employee values(8,'Anupam','IT', 200000)

--window functions --row_number(function)
select id,name,branch,salary, ROW_NUMBER() over (order by salary desc) as popularity from employee
-- The function 'ROW_NUMBER' must have an OVER clause with ORDER BY


--rank()->Assign value to records , --dense_rank()->Assign value to record values
select id,name,branch,salary,
ROW_NUMBER() over (order by salary desc) as popularity,
rank() over (order by salary desc) as popularity_rank,
dense_rank() over (order by salary desc) as popularity_dense_rank
from employee


--partition by
select id,name,branch,salary, 
ROW_NUMBER() over (partition by branch order by salary desc) as popularity from employee







