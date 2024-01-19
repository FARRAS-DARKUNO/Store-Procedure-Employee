CREATE PROCEDURE UpdateEmployee	
	@Id INT,
	@Name nVARCHAR(100) = NULL,
	@Age INT = NULL,
	@Email NVARCHAR(100) = NULL,
	@Point INT = NULL,
	@No_Rek NVARCHAR(20) = NULL,
	@FK_departmen INT = NULL,
	@FK_Id_Role INT = NULL,
	@Fk_Level INT = NULL
AS
BEGIN
	UPDATE Employee
	SET
		Name_Employee = ISNULL(@Name, Name_Employee),
		Age = ISNULL(@Age, Age),
		Email = ISNULL(@Email, Email),
		Point = ISNULL(@Point, Point),
		No_Rekening = ISNULL(@No_Rek, No_Rekening),
		FK_department = ISNULL(@FK_departmen, FK_department),
		FK_Id_Role = ISNULL(@FK_Id_Role, FK_Id_Role),
		Fk_Level = ISNULL(@Fk_Level, Fk_Level)
	WHERE
		Id_Employee = @Id
		
END