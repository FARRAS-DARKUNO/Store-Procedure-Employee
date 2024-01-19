CREATE PROCEDURE RemoveLevel
	@Id INT
AS
BEGIN
	DELETE Level_Employee WHERE Id_level = @Id;
END