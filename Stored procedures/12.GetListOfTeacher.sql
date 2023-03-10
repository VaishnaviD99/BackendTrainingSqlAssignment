USE [Vaishnavi_DB]
GO
/****** Object:  StoredProcedure [dbo].[GetListOfTeacher]    Script Date: 04-01-2023 12:00:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Vaishnavi Dhawale	
-- Create date:23 December 2022 
-- Description:Get list of Teachers
-- =============================================
ALTER PROCEDURE [dbo].[GetListOfTeacher]
@Name VARCHAR(50),@StdName VARCHAR(50),@SubjectName VARCHAR(50)
AS
BEGIN
	DECLARE @StdID INT,@SubID INT

	SELECT @StdID = ID FROM Std WHERE Name = @StdName

	SELECT @SubId = Id FROM Subjects WHERE Name = @SubjectName

	IF EXISTS (SELECT 1 FROM Teacher INNER JOIN TeacherStdSubject Ts ON Ts.TeacherId = Teacher.ID
			WHERE Name = @Name OR Ts.StdID = @StdID OR Ts.Subjectid = @SubID)
	BEGIN
		SELECT * FROM Teacher INNER JOIN TeacherStdSubject Ts ON Ts.TeacherId = Teacher.ID
		WHERE Name = @Name OR Ts.StdID = @StdID OR Ts.SubjectId = @SubID
	END
END
