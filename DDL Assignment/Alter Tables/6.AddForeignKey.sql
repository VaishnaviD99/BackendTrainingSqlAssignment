---Syntax
ALTER TABLE Table_Name1 ADD CONSTRAINT ForeignKey_Name
FOREIGN KEY (Column_Name) REFERENCES Table_Name2 (Column_Name); 

----Examples
ALTER TABLE StdDiv ADD CONSTRAINT ForeignKey_StdId
FOREIGN KEY (StdId) REFERENCES Standard(Id); 
----------------------------------------------------------
ALTER TABLE StudentExam ADD CONSTRAINT ForeignKey_StudentId
FOREIGN KEY (StudentId) REFERENCES StudentId(Id); 
----------------------------------------------------------------
ALTER TABLE StudentExam ADD CONSTRAINT ForeignKey_StudentId
FOREIGN KEY (StudentId) REFERENCES StudentId(Id); 