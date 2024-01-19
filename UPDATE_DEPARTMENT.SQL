CREATE PROCEDURE UpdateDepartment
	@Name nVARCHAR(100),
	@Id INT
AS
BEGIN
	UPDATE Department SET Name_Department = @Name WHERE Id_Department = @Id ;
END