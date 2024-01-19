CREATE PROCEDURE UpdateLevel
	@Id INT,
	@Name nVARCHAR(100)
AS
BEGIN
	UPDATE Level_Employee SET Name_Level = @Name WHERE Id_level = @Id;
END