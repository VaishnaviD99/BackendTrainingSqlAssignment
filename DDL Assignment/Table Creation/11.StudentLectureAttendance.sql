--===========================================================
---StudentLectureAttendance
--===========================================================
create table StudentLectureAttendance(Id int primary key identity,
StudentId int references Student(Id),
LectureId int references TeacherStdDivSubLecture(Id),
IsPresent bit,
CreateTs Datetime default getdate(),
UpdateTs Datetime,
IsActive bit default 1)