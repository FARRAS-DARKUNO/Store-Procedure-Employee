CREATE PROCEDURE RemoveRoleEmployee
	@Id INT
AS
BEGIN
	DELETE Role_Employee WHERE Id_Role = @Id;
END