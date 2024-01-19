CREATE PROCEDURE RemoveEmployee	
	@Id INT
AS
BEGIN
	DELETE Employee WHERE Id_Employee = @Id	
END