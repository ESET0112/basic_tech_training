use society

--Create View
create view required_view
as
select * from employee

select * from required_view

delete from required_view where id=5

select * from employee where id=5