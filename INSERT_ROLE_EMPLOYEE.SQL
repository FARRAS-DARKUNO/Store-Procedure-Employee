CREATE PROCEDURE InsertRoleEmployee 
	@Name nVARCHAR(100)
AS
BEGIN
	INSERT INTO Role_Employee (Name_Role) VALUES (@Name);
END