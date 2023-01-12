USE [SqlAssignment_VaishnaviDB]
GO
/****** Object:  StoredProcedure [dbo].[GetCollectedfeesAndPendingfeesForGivenStd]    Script Date: 10-01-2023 15:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:Vaishnavi Dhawale	
-- Create date:10th Jan 2023
-- Description:Get collected Fees and Pending Fees for provided Standard and Division
-- =============================================
--EXEC GetCollectedfeesAndPendingfeesForGivenStdAndDiv 2,1
Alter PROCEDURE [dbo].[GetCollectedfeesAndPendingfeesForGivenStdAndDiv]
@StdId int,
@DivId int
AS
BEGIN
	If Exists(Select * from Standard Where Id=@StdId)
	BEGIN
		If Exists(Select * from Division where Id=@DivId)
		BEGIN
			Select Sum(PaidFees) as 'Collected Fees' ,Sum(PendingFees)'Pending Fees' from StudentFeesInstallment 
			where StudentId in (Select Id from Student where StdId=@StdId And DivId=@DivId)
		END
		ELSE
		BEGIN
		RAISERROR ('The provided Standard Id is Invalid, Plz Give Valid Standard Id !', 12321, 12);
		END
	END
END
