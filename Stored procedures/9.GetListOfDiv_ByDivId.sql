USE [Vaishnavi_DB]
GO
/****** Object:  StoredProcedure [dbo].[GetListOfDiv_ByDivId]    Script Date: 04-01-2023 11:57:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Vaishnavi Dhawale	
-- Create date:23 December 2022 
-- Description:Get List of division by DivId
-- =============================================
ALTER PROCEDURE [dbo].[GetListOfDiv_ByDivId] @DivID INT
AS
BEGIN
	IF @DivID = 0
	BEGIN
	SELECT * FROM Div
	END
	ELSE IF EXISTS (SELECT *FROM Div WHERE ID = @DivID)
	BEGIN
		SELECT *FROM Div WHERE ID = @DivID
	END
	ELSE
	BEGIN
		PRINT 'Invalid Division ID'
	END
END