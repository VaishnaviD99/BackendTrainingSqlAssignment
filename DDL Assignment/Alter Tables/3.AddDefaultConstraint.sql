---Syntax
ALTER TABLE TableName
ADD CONSTRAINT ConstraintName
DEFAULT 100 FOR OutOfMarks

----Example

-----Adding Default constraint For OutOfMarks Field in SubjectMarks table
ALTER TABLE SubjectMarks
ADD CONSTRAINT df_OutOfMarks
DEFAULT 100 FOR OutOfMarks

----Adding Default constraint For IsActive Field in Subject table
ALTER TABLE Subject
ADD CONSTRAINT df_IsActive
DEFAULT 1 FOR IsActive

--Adding Default constraint For TotalLectureTime in TeacherStdDivSubLecture table
ALTER TABLE TeacherStdDivSubLecture
ADD CONSTRAINT df_TotalLectureTime
DEFAULT '01:00:00' FOR TotalLectureTime
