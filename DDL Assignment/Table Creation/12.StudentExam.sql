--===========================================================
---StudentExam
--===========================================================
Create table StudentExam(Id int primary key identity,
ExamId int references Exam(Id),
StudentId int References Student(Id),
Percentage float,
Grade varchar,
CreateTs Datetime default getdate(),
UpdateTs timestamp,
IsActive bit default 1)