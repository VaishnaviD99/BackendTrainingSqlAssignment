--===========================================================
---StudentSubjectMarks
--===========================================================
Create table StudentSubjectMarks(Id int primary key identity,
StudentId int references Student(Id),
SubjectId int references Subject(Id),
ExamId int references  Exam(Id),
OutOfMarks float Default 100,
RecivedMarks Float,
CreateTs Datetime Default getdate(),
UpdateTs Datetime,
IsActive bit default 1)