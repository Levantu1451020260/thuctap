--Drop Database TaiKhoan
Create Database TaiKhoan
Use TaiKhoan
go
Create Table Account
(
	ID int identity(1,1) primary key,
	UserName varchar(30) not null,
	Password varchar(Max) not null,
	Status varchar(30),
)

--drop table Account
--insert into Account values ('tu',123)
Create Procedure AccountIndex
as
Begin
	Select * from Account 
End
Create Procedure AccountLogin(@Username varchar(50),@password varchar(Max))
as
Begin
	Select * from Account where @Username= UserName AND @password=Password
End

Create Procedure AccountSave(@Username varchar(50),@password varchar(Max))
as
Begin
	insert into Account (UserName, Password) values (@Username, @password)
End
Create Procedure AcccountEdit(@id int,@Username varchar(50),@password varchar(Max))
as
Begin
	Update Account set UserName = @Username, Password = @password where ID = @id
End
Create Procedure AcccountDelete(@id int)
as
Begin
	Delete from Account where ID = @id
End
CREATE PROCEDURE LockAccount
    @id INT
AS
BEGIN
    UPDATE Account
    SET Status = 'Locked'
    WHERE ID = @id;
END
select * from Account

--exec TaiKhoanID @IDTaiKhoan = 2;
drop proc AccountIndex
EXEC AccountSave N'tu', 1
insert into Account values (N'eu', 123)