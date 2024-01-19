CREATE PROCEDURE UpdateRoleEmployee
	@Id INT,
	@Name nVARCHAR(100)
AS
BEGIN
	UPDATE Role_Employee SET Name_Role = @Name WHERE Id_Role = @Id;
END