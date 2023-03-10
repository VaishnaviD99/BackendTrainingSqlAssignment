USE [Vaishnavi_DB]
GO
/****** Object:  StoredProcedure [dbo].[GetListOfSubject]    Script Date: 04-01-2023 11:59:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Vaishnavi Dhawale	
-- Create date:23 December 2022 
-- Description:Get list of subjects
-- =============================================
ALTER PROCEDURE [dbo].[GetListOfSubject] 
@SubjectName VARCHAR(50),@StdName VARCHAR(50)
AS
BEGIN
	DECLARE @StdID INT

	SELECT @StdID = ID FROM Std WHERE Name = @StdName

	SELECT *FROM Subjects WHERE Name = @SubjectName OR Std_id = @StdID
END