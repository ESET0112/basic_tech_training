use society
select * from apt

exec sp_help apt

exec sp_rename 'apt' , 'society'

exec sp_rename 'society.phone_no' , 'mobile_no', 'column'
select * from society

alter table society 
alter column mobile_no float

alter table society
drop column mobile_no

alter table society
add mobile_no varchar(10)