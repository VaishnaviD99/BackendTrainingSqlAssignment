------Adding Primary key to division Table by using Alter table Command------------------------------

ALTER TABLE Division ADD CONSTRAINT Pk PRIMARY KEY (ID);

-----Adding Primary key to Standard Table by using Alter table Command---------------------------------

ALTER TABLE Standard ADD CONSTRAINT Pk PRIMARY KEY (ID);

---Adding Primary key to Student Table by using Alter table Command---------------------------------

ALTER TABLE Student ADD CONSTRAINT Pk PRIMARY KEY (ID);

-----Adding Primary key to Exam Table by using Alter table Command---------------------------------

ALTER TABLE Exam ADD CONSTRAINT Pk PRIMARY KEY (ID);

----Adding Primary key to Teacher Table by using Alter table Command---------------------------------

ALTER TABLE Teacher ADD CONSTRAINT Pk PRIMARY KEY (ID);

-----Adding Primary key to Subject Table by using Alter table Command---------------------------------

ALTER TABLE Subject ADD CONSTRAINT Pk PRIMARY KEY (ID);

-----Adding Primary key to StandardDivision Table by using Alter table Command---------------------------------

ALTER TABLE StandardDivision ADD CONSTRAINT Pk PRIMARY KEY (ID);

------Adding Primary key to StudentExam Table by using Alter table Command---------------------------------

ALTER TABLE StudentExam ADD CONSTRAINT Pk PRIMARY KEY (ID);

-------Adding Primary key to StudentPerAttendance Table by using Alter table Command---------------------------------

ALTER TABLE StudentPerAttendance ADD CONSTRAINT Pk PRIMARY KEY (ID);

------Adding Primary key to StudentsFeesInstallment Table by using Alter table Command---------------------------------

ALTER TABLE StudentsFeesInstallment ADD CONSTRAINT Pk PRIMARY KEY (ID);

-------Adding Primary key to StudentsLectureAttendence Table by using Alter table Command---------------------------------

ALTER TABLE StudentsLectureAttendence ADD CONSTRAINT Pk PRIMARY KEY (ID);

-------Adding Primary key to StudentsSubjectMarks Table by using Alter table Command---------------------------------

ALTER TABLE StudentsSubjectMarks ADD CONSTRAINT Pk PRIMARY KEY (ID);

-------Adding Primary key to TeacherStdDivSub  Table by using Alter table Command---------------------------------

ALTER TABLE TeacherStdDivSub ADD CONSTRAINT Pk PRIMARY KEY (ID);

--------Adding Primary key to TeacherSubjectDivStdLecture Table by using Alter table Command---------------------------------

ALTER TABLE TeacherSubjectDivStdLecture ADD CONSTRAINT Pk PRIMARY KEY (ID);
