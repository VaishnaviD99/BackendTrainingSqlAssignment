USE [Vaishnavi_DB]
GO
/****** Object:  StoredProcedure [dbo].[TeacherTeachingMinNmaxSubjects]    Script Date: 12-01-2023 12:18:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Vaishnavi Dhawale	
-- Create date:26th Dec 2022 
-- Description:Teacher Teaching Min Max Subjects
-- =============================================
ALTER PROCEDURE [dbo].[TeacherTeachingMinNmaxSubjects]
AS
BEGIN

select * from (
Select top 1 Name, DBO.GetSubjectsTaughtByTeacher (Id)
 SubjectCnt from Teacher order by 2 desc
) as Temp1
UNION
select * from (
Select top 1 Name, DBO.GetSubjectsTaughtByTeacher (Id)
 SubjectCnt from Teacher order by 2 asc
) as Temp2	

END