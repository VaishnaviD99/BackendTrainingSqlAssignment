USE [Vaishnavi_DB]
GO
/****** Object:  StoredProcedure [dbo].[CalculateStudentPerNGrade]    Script Date: 04-01-2023 11:56:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Vaishnavi Dhawale	
-- Create date: 26th Dec 2022
-- Description:	Calculates Grade for Provided Student id
-- =============================================
ALTER PROCEDURE [dbo].[CalculateStudentPerNGrade]
@StudId	int
AS
BEGIN
	
	DECLARE @Percentage float, @Grade varchar(20)
	select @Percentage = avg(RecivedMarks) from StudentExamSubjects where StudentID = @StudID

	if @Percentage > 75
	BEGIN 
		set @Grade ='DISTINCTION';
	END
	else if @Percentage > 60
	BEGIN 
		set @Grade ='FIRST CLASS';
	END
	ELSE if @Percentage > 50
	BEGIN 
		set @Grade ='SECOND CLASS';
	END
	ELSE if @Percentage > 35
	BEGIN 
		set @Grade ='THIRD CLASS';
	END
	ELSE 
	BEGIN 
		set @Grade ='FAIL';
	END

	UPDATE StudentExams SET Grade = @Grade, [Percentage] = @Percentage WHERE StudentId = @StudId

END