
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:Vaishnavi Dhawale	
-- Create date:10th Jan 2023
-- Description:Get collected Fees and Pending Fees for provided Standard
-- =============================================
--Exec GetCollectedfeesAndPendingfeesForGivenStd 1

ALTER PROCEDURE GetCollectedfeesAndPendingfeesForGivenStd
@StdId int 
AS
BEGIN
	If Exists(Select * from Standard Where Id=@StdId)
		BEGIN
		Select Sum(PaidFees) as 'Collected Fees' ,Sum(PendingFees)'Pending Fees' from StudentFeesInstallment 
		where StudentId in (Select Id from Student where StdId=@StdId)
		END
	ELSE
		BEGIN
		RAISERROR ('The provided Standard Id is Invalid, Plz Give Valid Standard Id !', 12321, 12);
		END
END
GO


