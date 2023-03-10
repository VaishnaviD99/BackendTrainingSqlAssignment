USE [Vaishnavi_DB]
GO
/****** Object:  StoredProcedure [dbo].[GetListTeacher_BySubjectName]    Script Date: 12-01-2023 12:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Vaishnavi Dhawale	
-- Create date:23 December 2022 
-- Description:Get List of Teacher by subject name.
-- =============================================
--EXEC GetListTeacher_BySubjectName 'English'
ALTER PROCEDURE [dbo].[GetListTeacher_BySubjectName]
@SubjectName VARCHAR(50)
AS
BEGIN
	DECLARE @subjectId INT

	SELECT @subjectId = ID FROM Subjects WHERE Name = @SubjectName

	SELECT @subjectId

	SELECT *FROM Teacher INNER JOIN TeacherSubject ON SubjectID = @subjectId
END