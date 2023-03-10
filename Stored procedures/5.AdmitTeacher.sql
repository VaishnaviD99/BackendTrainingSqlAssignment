USE [Vaishnavi_DB]
GO
/****** Object:  StoredProcedure [dbo].[AdmitTeacher]    Script Date: 04-01-2023 11:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Vaishnavi Dhawale	
-- Create date:23 December 2022 
-- Description:Add New Teacher
-- =============================================
ALTER PROCEDURE [dbo].[AdmitTeacher]
@Name VARCHAR(50)
AS
BEGIN
	IF NOT  EXISTS(Select * from Teacher Where Name=@Name)
	BEGIN
	INSERT INTO [dbo].[Teacher] ([Name],[isActive])
	VALUES (@Name,1)
	END
	ELSE
	BEGIN
	Print'Teacher Already EXISTS'
	END
END