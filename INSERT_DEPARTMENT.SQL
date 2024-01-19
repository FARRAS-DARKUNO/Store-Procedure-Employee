CREATE PROCEDURE InsertDepartment
	@Name nVARCHAR(100)
AS
BEGIN
	INSERT INTO Department(Name_Department) VALUES (@Name);
END