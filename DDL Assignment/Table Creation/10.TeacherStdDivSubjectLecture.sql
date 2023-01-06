--===========================================================
---TeacherStdDivSubLecture
--===========================================================

Create table TeacherStdDivSubLecture(Id int primary key identity,
TeacherId int references Teacher(Id),
StdId int references Standard(Id),
DivId int references Division(Id),
SubId int references Subject(Id),
StartTime time,
EndTime time,
TotalTime time default '01:00:00',
CreateTs Datetime default getdate(),
UpdateTs Datetime,
IsActive bit default 1)