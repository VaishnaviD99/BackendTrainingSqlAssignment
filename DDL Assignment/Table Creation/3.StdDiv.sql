---===========================================
---Standard Division Table
---===========================================
create table StdDiv(
Id int primary key identity,
StdId int references Standard(Id),
DivId int references Division(Id),
CreateTS DateTime default getdate(),
UpdateTS DateTime,
isActive bit default 1);
