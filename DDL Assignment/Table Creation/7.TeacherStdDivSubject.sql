---===========================================
---TeacherStdDivSub Table
---===========================================
create table TeacherStdDivSub(
Id int primary key identity,
TeacherId int references Teacher(Id),
StdId int references Standard(Id),
DivId int references Division(Id),
SubId int references Subject(Id),
CreateTS Datetime,
UpdateTS Timestamp,
isActive bit)