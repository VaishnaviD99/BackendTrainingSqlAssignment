USE [Vaishnavi_DB]
GO
/****** Object:  StoredProcedure [dbo].[AssignSubjectToTeacher]    Script Date: 04-01-2023 11:56:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Vaishnavi Dhawale	
-- Create date:23 December 2022 
-- Description:Assign Subject to Teacher
-- =============================================
ALTER PROCEDURE [dbo].[AssignSubjectToTeacher]
@TeacherID int,
@StdID int,
@SubjectId int
AS
BEGIN
	IF EXISTS (SELECT * FROM TeacherStdSubject WHERE TeacherId = @TeacherID 
	AND StdId = @StdID AND SubjectId = @SubjectId)
	BEGIN
		PRINT 'This Subject is already assign to Teacher'
	END
	ELSE
	BEGIN
		INSERT INTO [dbo].[TeacherSTDSubject] ([TeacherID],[StdId],[SubjectId])
		VALUES (@TeacherID,@StdID,@SubjectId)
	END
END