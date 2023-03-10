USE [Vaishnavi_DB]
GO
/****** Object:  StoredProcedure [dbo].[AddNewStandard]    Script Date: 04-01-2023 11:53:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Vaishnavi Dhawale	
-- Create date:23 December 2022 
-- Description:Add Standard
-- =============================================
ALTER PROCEDURE [dbo].[AddNewStandard] @Name VARCHAR(50)
AS

	IF Exists (Select 1 from Std where trim(Name)=trim(@Name))
	BEGIN
		RAISERROR ('THIS STANDARD IS ALREADY EXISTS,PLEASE ENTER NEW STANDARD !', 12321, 12);
		RETURN 0;
	END
	ELSE
	BEGIN
		INSERT INTO [dbo].[Std] ([Name],[isActive]) VALUES (@Name,1)
	END