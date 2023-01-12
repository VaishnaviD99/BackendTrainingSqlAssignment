USE [Vaishnavi_DB]
GO
/****** Object:  StoredProcedure [dbo].[AddNewDivision]    Script Date: 04-01-2023 11:52:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Vaishnavi Dhawale	
-- Create date:23 December 2022 
-- Description:Add Divisons
-- =============================================
ALTER PROCEDURE [dbo].[AddNewDivision]
@DivName VARCHAR(50),
@StdId int
AS
BEGIN
	IF  EXISTS (SELECT 1 FROM Div WHERE trim(Name) =trim(@DivName))
		BEGIN
			RAISERROR ('DIV ALREADY EXISTS!', 12321, 12);
		END
		ELSE
			BEGIN
				INSERT INTO Div VALUES (@DivName,@StdId,1,7,getDate())
			END
		
END
