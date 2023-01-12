
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:Vaishnavi Dhawale		
-- Create date: 11th Jan 2023
-- Description:	Get List Of Teacher With Salary N Number Of Lecture They Teach
-- =============================================
CREATE PROCEDURE GetListOfTeacherWithSalaryNNumOfLectureTheyTeach
AS
BEGIN
	Select Name,Salary,Count(TeacherStdDivSubLecture.Id) as 
	'NoOfLecture' from Teacher inner join TeacherStdDivSubLecture
	on Teacher.Id=TeacherStdDivSubLecture.TeacherId group by TeacherId,Name,Salary
END
GO
