---===========================================
---Teacher Table
---===========================================
create table Teacher(
Id int primary key identity,
Name varchar(20),
DOB Date,
[ContactNo.] bigint,
Gender char(20),
Address varchar(20),
JoiningDate Date,
Salary float,
IsClassTeacher bit,
StdId int references Standard(Id),
DivId int references Division(Id),
CreateTS DateTime default getdate(),
UpdateTS timestamp,
isActive bit default 1);
