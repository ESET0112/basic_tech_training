use society
select * from student

--Stored Procedures
create procedure retrieve_data
as
begin
select * from Student	
end

--Drop Stored Procedures
drop procedure retrieve_data

--Execute
exec retrieve_data

--Stored Procedure with parameters
create procedure retrieve_data
@student_id int
as
begin
select * from Student where id=@student_id	
end

--Execute with parameter
exec retrieve_data @student_id=3



--Example
select * from employee

create procedure CheckEmployeeSalary 
@emp_id int
as
begin
   Declare @salary int;
   select @salary = salary
   from employee where id=@emp_id;

   if @salary >= 50000
       print 'High salary employee';
	else if @salary>=30000
	   print 'Medium salary employee';
	else
	   print 'Low salary employee';
end


exec CheckEmployeeSalary @emp_id=3




--Trigger
create trigger trg_after_insert_student
on student
after insert
as 
begin
    print 'A new student record has been created'
end;


--Insert and check
insert into student values(5,'Aniket',4567)

select * from SalaryAudit
--Example
drop table SalaryAudit

CREATE TABLE SalaryAudit
(
    AuditID INT IDENTITY(1,1) PRIMARY KEY,
    id INT,
    OldSalary INT,
    NewSalary INT,
    ChangeDate DATETIME DEFAULT GETDATE()
);

CREATE TRIGGER trg_AuditSalaryChange
ON Employee
AFTER UPDATE
AS
BEGIN
    IF UPDATE(Salary) -- Run only if Salary column is updated
    BEGIN
        INSERT INTO SalaryAudit (id, OldSalary, NewSalary)
        SELECT 
            d.id,
            d.Salary AS OldSalary,
            i.Salary AS NewSalary
        FROM deleted d
        INNER JOIN inserted i ON d.id = i.id;
    END
END;



update employee set salary=400000 where id=4