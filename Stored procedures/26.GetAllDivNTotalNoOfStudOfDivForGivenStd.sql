
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Vaishnavi Dhawale
-- Create date: 11th Jan 2023
-- Description:Get all Divisions and Total number of students of division of provided Standard. 
-- =============================================
--EXEC GetAllDivNTotalNoOfStudOfDivForGivenStd 1
ALTER PROCEDURE GetAllDivNTotalNoOfStudOfDivForGivenStd
@StdId int
AS
BEGIN
	If EXISTS (Select * from Standard where Id=@StdId)
	BEGIN
	Select Student.StdId,Division.Name as 'Division Name',count(Student.Id) as 'NoOfStudents' from Student inner join Division on Student.DivId=Division.Id where 
	DivId in(Select DivId from StdDiv where StdId=@StdId )and StdId =@StdId group by Division.Name,Student.StdId
	END
	ELSE
	BEGIN
		RAISERROR ('The provided Standard Id is Invalid, Plz Give Valid Standard Id !', 12321, 12);
	END
END
GO

