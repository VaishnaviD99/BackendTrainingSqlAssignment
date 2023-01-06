---===========================================
---Exam Table
---===========================================
create table Exam(Id int primary key identity,
Name varchar (50),
StartDate Date,
EndDate date,
CreateTS Datetime,
UpdateTS Timestamp,
IsActive bit)