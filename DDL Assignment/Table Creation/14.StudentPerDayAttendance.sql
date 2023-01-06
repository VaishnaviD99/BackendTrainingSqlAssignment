---=======================================================
---StudentPerDayAttendance
--===========================================================
Create table StudentPerDayAttendance(
Id int primary key identity,
StudentId int references Student(Id),
Date date,
IsPresent bit,
StudentLectureAttendanceId int references StudentLectureAttendance(Id),
CreateTs Datetime Default getdate(),
UpdateTs Datetime,
IsActive bit default 1)