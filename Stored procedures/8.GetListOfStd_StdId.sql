USE [Vaishnavi_DB]
GO
/****** Object:  StoredProcedure [dbo].[GetListOfStd_ByStdId]    Script Date: 04-01-2023 11:58:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Vaishnavi Dhawale	
-- Create date:23 December 2022 
-- Description:Get list of stdandard by stdId
-- =============================================
ALTER PROCEDURE [dbo].[GetListOfStd_ByStdId] @StdId INT
AS
BEGIN
	IF @StdId = 0
	BEGIN
	SELECT * FROM DIV
	END
	ELSE IF EXISTS (SELECT *FROM Std WHERE ID = @StdID)
	BEGIN
		SELECT *FROM Std WHERE ID = @StdId
	END
	ELSE
	BEGIN
		PRINT 'Invalid STD ID'
	END
END
