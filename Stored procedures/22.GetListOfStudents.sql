USE [SqlAssignment_VaishnaviDB]
GO
/****** Object:  StoredProcedure [dbo].[GetListOfStudents]    Script Date: 11-01-2023 17:57:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Vaishnavi Dhawale	
-- Create date:10th Jan 2023
-- Description:Get list of Students By Name,Standard and Division
-- =============================================
---EXEC GetListOfStudents 0,2,null,0,0,null
ALTER PROCEDURE [dbo].[GetListOfStudents]
	@StdId INT,@divId INT,@Name VARCHAR(50),@year INT,@month INT,@DOB date
AS
BEGIN
	If @Name!='' 
		BEGIN
			SELECT *FROM student WHERE Trim(Name)=trim(@Name) 
		END
	Else If  @StdId !=0  
		BEGIN
			SELECT *FROM student WHERE  StdId=@StdID
		END 

	Else If  @StdId !=0  and @Name!='' 
		BEGIN
			SELECT *FROM student WHERE trim(Name)=trim(@Name) and StdId=@StdID
		END 
	Else If  @divId !=0 and @Name!='' 
		BEGIN
			SELECT *FROM student WHERE trim(Name)=trim(@Name) and DivID=@divId
		END

	Else If  @StdId !=0 and @divId !=0 and @Name!='' 
		BEGIN
			SELECT *FROM student WHERE trim(Name)=trim(@Name) and StdId=@StdID and DivId=@divId
		END
		Else If  @divId !=0  
		BEGIN
			SELECT *FROM student WHERE  DivId=@divId
		END 
	ELSE
	BEGIN
		RAISERROR ('The provided information is Invalid, Plz Give Valid information!', 12321, 12);
	END
END