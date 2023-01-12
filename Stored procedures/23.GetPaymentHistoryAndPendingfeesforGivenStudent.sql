
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:Vaishnavi Dhawale		
-- Create date: 10th Jan 2023
-- Description:Get a Payment History and Pending Fees for provided student
-- =============================================
--EXEC GetPaymentHistoryAndPendingfeesforGivenStudent 'Monika Darekar'
ALTER PROCEDURE GetPaymentHistoryAndPendingfeesforGivenStudent
@StudentName Varchar(100)
AS
BEGIN
	If @StudentName!=''
	BEGIN
	select Student.Name,StudFeeIns.TotalFees,StudFeeIns.PaidFees,
	StudFeeIns.PendingFees,StudFeeIns.PaymentDate,
	StudFeeIns.PaymentMode
	from StudentFeesInstallment StudFeeIns inner join Student on
	StudFeeIns.StudentId=Student.Id where trim(Student.Name)=trim(@StudentName)
	END
	ELSE
	BEGIN 
	RAISERROR ('The provided Standard Id is Invalid, Plz Give Valid Standard Id !', 12321, 12);
	END
	
END
GO
