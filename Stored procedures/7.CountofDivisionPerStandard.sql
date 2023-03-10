USE [Vaishnavi_DB]
GO
/****** Object:  StoredProcedure [dbo].[CountOfDivisionPerStandard]    Script Date: 04-01-2023 12:10:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Vaishnavi Dhawale	
-- Create date:23 December 2022 
-- Description:Count of Divisions Per standard
-- =============================================
ALTER PROCEDURE [dbo].[CountOfDivisionPerStandard] @StdName VARCHAR(50)
AS
BEGIN
	DECLARE @CountOFdiv INT,@StdID INT,@Name VARCHAR(50)

	SELECT @stdID = ID FROM Std WHERE Name = @StdName
	SELECT @CountOFdiv = count(1)FROM Div WHERE StdID = @stdID
	SET @Name = @StdName
	SELECT @countOFdiv AS 'Number of DIV',@Name AS 'Std Name'
END

--exec CountOfDivisionPerStandard 'first'