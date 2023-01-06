---===========================================
---Student Table
---===========================================
create table Student(Id int primary key identity,
Name varchar(50),
DOB Date,
[ContactNo.] bigint,
Address varchar(50),
Gender varchar(50),
Admission_Date Date,
[RollNo.] int,
StdId int references Standard(Id),
DivId int references Division(Id),
CreateTS DateTime default getdate(),
UpdateTS Datetime,
isActive bit default 1);
