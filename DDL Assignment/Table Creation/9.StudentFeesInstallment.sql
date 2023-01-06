--===========================================================
---StudentFeesInstallment
--===========================================================
Create table StudentFeesInstallment(Id int primary key identity,
StudentId int references Student(Id),
TotalFees float,
PaidFees float,
PendingFees float,
PaymentDate Date,
PaymentMode Varchar(50),
CreateTs Datetime default getdate(),
UpdateTs Datetime,
IsActive bit default 1)