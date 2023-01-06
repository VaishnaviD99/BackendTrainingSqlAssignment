---===========================================
---Subject Table
---===========================================
create table Subject(
Id int primary key identity,
Name varchar(50),
CreateTS DateTime default getdate(),
UpdateTS timestamp,
isActive bit default 1);
