USE [Vaishnavi_DB]
GO
/****** Object:  UserDefinedFunction [dbo].[countOfStudentbyStdName]    Script Date: 04-01-2023 12:38:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	vaishnavi Dhawale	
-- Create date: 26th Dec 2022
-- Description:	This function gives count of student with respect to Standard name
-- =============================================
ALTER FUNCTION [dbo].[countOfStudentbyStdName](@StandardName varchar(100))
RETURNS int

AS
BEGIN
Declare @TotalNoOfStudents int
	Select @TotalNoOfStudents= Count(Student.ID) from Student inner join Std on
	Std.ID=Student.StdID Where Std.Name=@StandardName 

	RETURN @TotalNoOfStudents

END
