USE [Vaishnavi_DB]
GO
/****** Object:  StoredProcedure [dbo].[GetListOfStudents]    Script Date: 04-01-2023 11:59:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Vaishnavi Dhawale	
-- Create date:23 December 2022 
-- Description:Get list of Students 
-- =============================================
ALTER PROCEDURE [dbo].[GetListOfStudents]
	@StdId INT,@divId INT,@Name VARCHAR(50),@year INT,@month INT,@DOB date
AS
BEGIN
	If @Name!='' 
		BEGIN
			SELECT *FROM student WHERE Trim(Name)=trim(@Name) 
		END
	If  @StdId !=0  
		BEGIN
			SELECT *FROM student WHERE  StdId=@StdID
		END 

	If  @StdId !=0  and @Name!='' 
		BEGIN
			SELECT *FROM student WHERE trim(Name)=trim(@Name) and StdId=@StdID
		END 
	If  @divId !=0 and @Name!='' 
		BEGIN
			SELECT *FROM student WHERE trim(Name)=trim(@Name) and DivID=@divId
		END

	If  @StdId !=0 and @divId !=0 and @Name!='' 
		BEGIN
			SELECT *FROM student WHERE trim(Name)=trim(@Name) and StdId=@StdID and DivId=@divId
		END
	ELSE
	BEGIN
		PRINT 'PLEASE ENTER VALID STUDENTS DETAILS'
	END
END
