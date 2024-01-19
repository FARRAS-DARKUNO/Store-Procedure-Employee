CREATE PROCEDURE InsertEmployee	
	@Name nVARCHAR(100),
	@Age INT,
	@Email NVARCHAR(100),
	@Point INT = NULL,
	@No_Rek NVARCHAR(20),
	@FK_departmen INT,
	@FK_Id_Role INT,
	@Fk_Level INT
AS
BEGIN
	INSERT INTO Employee
		(Name_Employee,Age, Email, Point, No_Rekening,FK_department, FK_Id_Role, Fk_Level)
	VALUES
		(@Name,@Age,@Email,@Point,@No_Rek,@FK_departmen,@FK_Id_Role,@Fk_Level)
END