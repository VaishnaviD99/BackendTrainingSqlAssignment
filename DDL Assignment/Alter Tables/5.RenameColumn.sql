--Syntax
EXEC Sp_Rename 'TableName.OldColumnName', 'NewColumnName', 'COLUMN'
----Example
EXEC Sp_Rename 'Student.ContactNo.', 'MobileNo.', 'COLUMN'
EXEC Sp_Rename 'Teacher.DOB', 'Birth Date', 'COLUMN'

