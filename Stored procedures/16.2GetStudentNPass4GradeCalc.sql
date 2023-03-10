USE [Vaishnavi_DB]
GO
/****** Object:  StoredProcedure [dbo].[GetStudentNPass4GradeCalc]    Script Date: 04-01-2023 12:03:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	Vaishnavi Dhawale
-- Create date: 26th dec 2022
-- Description: Get all the students appeared for exam and pass them to other Stored Procedure 
-- to calculate Percentage and Grade
-- Also update Grade in DB
-- =============================================
ALTER PROCEDURE [dbo].[GetStudentNPass4GradeCalc]

AS
BEGIN

DECLARE @StudId int
DECLARE stud_cursor CURSOR FAST_FORWARD  FOR 
SELECT StudentId from StudentExams

OPEN stud_cursor  
FETCH NEXT FROM stud_cursor INTO @StudId 

WHILE @@FETCH_STATUS = 0  
BEGIN  

	EXECUTE  [dbo].[CalculateStudentPerNGrade] @StudId
	FETCH NEXT FROM stud_cursor INTO @StudId  

END

close stud_cursor
deallocate stud_cursor

END
