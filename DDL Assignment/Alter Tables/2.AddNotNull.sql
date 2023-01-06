--Syntax
ALTER TABLE TableName ALTER COLUMN COLUMNNAME DATATYPE NOT NULL;


----Example
---------Add Not Null Constraint On Student Name field and Teacher ContactNo. Field-------------
ALTER TABLE Student ALTER COLUMN Name VARCHAR(50) NOT NULL;
ALTER TABLE Teacher ALTER COLUMN [ContactNo.] VARCHAR(50) NOT NULL