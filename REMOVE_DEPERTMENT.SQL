CREATE PROCEDURE DeleteDepartment
	@Id INT
AS
BEGIN
	Delete Department  WHERE Id_Department = @Id ;
END