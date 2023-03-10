USE [SqlAssignment_VaishnaviDB]
GO
/****** Object:  StoredProcedure [dbo].[GetMaxMinAvgPercentageOfStudForProvidedStd]    Script Date: 10-01-2023 15:23:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:Vaishnavi dhawale
-- Create date:10th Jan 2023
-- Description:GetMaxMinAvgPercentageOfstudentforProvidedStandard
-- =============================================
--EXEC GetMaxMinAvgPercentageOfStudForProvidedStd 4
ALTER PROCEDURE [dbo].[GetMaxMinAvgPercentageOfStudForProvidedStd]
@StdId int
AS
BEGIN
	If Exists(Select * from Standard where Id=@StdId)
	BEGIN
	Select min(percentage) from StudentExam where StudentId
	in( select Id from Student where StdId=@StdId group by StdId,Id)
	union
	Select Avg(percentage) from StudentExam where StudentId
	in( select Id from Student where StdId=@StdId group by StdId,Id)
	union
	Select max(percentage) from StudentExam where StudentId
	in( select Id from Student where StdId=@StdId group by StdId,Id)
	END
	ELSE 
	BEGIN
			RAISERROR ('The provided Standard Id is Invalid, Plz Give Valid Standard Id !', 12321, 12);
	END
END

