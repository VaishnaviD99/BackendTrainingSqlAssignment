
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:Vaishnavi Dhawale		
-- Create date: 10th Jan 2023
-- Description:Get List of student Who's fees is Pending.
-- =============================================
ALTER PROCEDURE GetListOfStudWhosFeesIsPending
AS
BEGIN
	SELECT Student.Id
		,Student.Name
		,StudentFeesInstallment.PendingFees
	FROM Student
	INNER JOIN StudentFeesInstallment ON Student.Id = StudentFeesInstallment.StudentId
	WHERE StudentFeesInstallment.PendingFees != 0
END
GO