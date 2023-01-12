
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:Vaishnavi Dhawale		
-- Create date:10th Jan 2023
-- Description:	Get list of Teacher 
-- =============================================
ALTER PROCEDURE GetlistofTeacherWithStdAndDiv
AS
BEGIN
	SELECT Teacher.Name
		,TeacherDivStdSub.StdId
		,TeacherDivStdSub.DivId
		,IsClassTeacher
		,Teacher.StdId
		,Teacher.DivId
	FROM Teacher
	INNER JOIN TeacherDivStdSub ON Teacher.Id = TeacherDivStdSub.TeacherId
END
GO
