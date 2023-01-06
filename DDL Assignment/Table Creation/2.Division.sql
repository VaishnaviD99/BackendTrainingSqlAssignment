---===========================================
---Division Table
---===========================================
create table Division(
Id int primary key identity,
Name varchar(50),
MaxCapacity int,
CreateTS DateTime default getdate(),
UpdateTS datetime,isActive bit default 1);