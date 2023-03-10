USE [Vaishnavi_DB]
GO
/****** Object:  StoredProcedure [dbo].[AdmitStudent]    Script Date: 04-01-2023 11:54:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Vaishnavi Dhawale	
-- Create date:23 December 2022 
-- Description:Admit new Student
-- =============================================

ALTER PROCEDURE [dbo].[AdmitStudent] @StudName VARCHAR(50), @DOB DATE, @DivId INT
AS
BEGIN
	DECLARE @CurrentAdmissionCnt INT, @CurrentDivCapacity INT, @StdId INT


	SELECT @CurrentDivCapacity = MaxCapacity,@StdId =StdID FROM Div WHERE ID = @DivId

	SELECT @CurrentAdmissionCnt = count(1) FROM Student WHERE DivID = @DivId
	select @CurrentDivCapacity,@CurrentAdmissionCnt

	IF @CurrentAdmissionCnt < @CurrentDivCapacity
	BEGIN

		INSERT INTO [dbo].[Student] ([Name], [DOB], [StdID], [DivID], [isActive])
		VALUES (@StudName, @DOB, @StdId, @DivId, 1)

		RETURN 1;
	END
	ELSE
	BEGIN
		RAISERROR ('CAPACITY for this DIV complete, Plz select another DIV !', 12321, 12);

		RETURN 0;
	END
END