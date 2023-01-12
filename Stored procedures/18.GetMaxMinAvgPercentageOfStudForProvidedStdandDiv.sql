
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:Vaishnavi Dhawale		
-- Create date: 10th Jan 2023
-- Description:	GetMaxMinAvgPercentageOfStudForProvidedStdandDiv
-- =============================================
--EXEC GetMaxMinAvgPercentageOfStudForProvidedStdandDiv 1,2
Alter PROCEDURE GetMaxMinAvgPercentageOfStudForProvidedStdandDiv
@StdId int,
@DivId int
AS
	BEGIN
	If Exists(Select * from Standard where Id=@StdId)
	BEGIN
		If Exists(Select * from Division where Id=@DivId)
		BEGIN
			Select min(percentage) from StudentExam where StudentId
			in( select Id from Student where StdId=@StdId or DivId=@DivId group by StdId,Id,DivId)
			union
			Select Avg(percentage) from StudentExam where StudentId
			in( select Id from Student where StdId=@StdId or DivId=@DivId group by StdId,Id,DivId)
			union
			Select max(percentage) from StudentExam where StudentId
			in( select Id from Student where StdId=@StdId and DivId=@DivId group by StdId,Id,DivId)
			END
	
	ELSE 
	BEGIN
			RAISERROR ('The provided Standard Id is Invalid, Plz Give Valid Standard Id !', 12321, 12);
	END
END
		
END


