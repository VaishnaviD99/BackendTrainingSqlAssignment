---===========================================
---Standard Table
---===========================================

Create table Standard(Id int primary key
identity,Name varchar(50),
Fees float ,
CreateTS Datetime default getdate(),
UpdateTS Datetime,
isActive bit default 1);
