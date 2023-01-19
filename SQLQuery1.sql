select * from sys.tables

select * from LabTest

create proc LabTest_select
as
begin
select * from LabTest
end

create proc LabTest_Insert
@Test_Name nvarchar,
@Test_Cost money
as
begin
insert into LabTest values(@Test_Name,@Test_Cost)
end

insert into LabTest values(1,'sachin',2300)