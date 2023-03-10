USE [Vaishnavi_DB]
GO
/****** Object:  StoredProcedure [dbo].[SpToCallCountOfStudentbyStdName]    Script Date: 04-01-2023 12:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	Vaishnavi Dhawale
-- Create date: 26th Dec 2022 
-- Description:By this Store procedure we are calling CountOfStudentbyStdName function 
-- =============================================
ALTER PROCEDURE [dbo].[SpToCallCountOfStudentbyStdName]
@StdandardName varchar(100)
AS
BEGIN

	select @StdandardName as 'Standard_Name',dbo.countOfStudentbyStdName(@StdandardName) as 'CountOfStudents'
END
