USE [Vaishnavi_DB]
GO
/****** Object:  StoredProcedure [dbo].[AddNewSubject]    Script Date: 04-01-2023 11:53:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Vaishnavi Dhawale	
-- Create date:23 December 2022 
-- Description:Add New Subject
-- =============================================
ALTER PROCEDURE [dbo].[AddNewSubject] @Subname VARCHAR(50),@OutOfMarks INT,@StdName VARCHAR(50)
AS
BEGIN
	DECLARE @StdId INT
	SELECT @StdId = ID FROM Std WHERE trim(Name)=trim(@StdName)

	IF EXISTS (SELECT *FROM Subjects WHERE trim(Name)=trim(@Subname) AND Std_id = @StdId)
	BEGIN
		PRINT 'Subject Already Present'
	END
	ELSE
	BEGIN
		INSERT INTO [dbo].[Subjects] ([Name],[Out_of_Marks],[Std_id],[isActive])
		VALUES (@SubName,@OutOfMarks,@StdId,1)
	END
END