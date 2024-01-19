CREATE PROCEDURE InsertLevel	
	@Name nVARCHAR(100)
AS
BEGIN
	INSERT INTO Level_Employee(Name_Level) VALUES (@Name);
END