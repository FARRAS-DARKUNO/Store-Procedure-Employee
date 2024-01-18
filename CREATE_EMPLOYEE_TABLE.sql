CREATE PROCEDURE CreateEmployeTable
AS
Begin
	DROP TABLE IF EXISTS Department;
	
	CREATE TABLE Department
	(
		Id_Department INT IDENTITY PRIMARY KEY,
		Name_Department VARCHAR(10),
	)
	
	DROP TABLE IF EXISTS Role_Employee;
	
	CREATE TABLE Role_Employee
	(
		Id_role INT IDENTITY PRIMARY KEY,
		Name_Role VARCHAR(10),
	)
	
	DROP TABLE IF EXISTS Level_Employee;
	
	CREATE TABLE Level_Employee
	(
		Id_level INT IDENTITY PRIMARY KEY,
		Name_level VARCHAR(10),
	);
	
	DROP TABLE IF EXISTS Employee;
	
	CREATE TABLE Employee 
	(
		Id_Employee INT IDENTITY PRIMARY KEY,
		Name_Employee VARCHAR(50),
		Age INT,
		Email VARCHAR(50),
		Point INT,
		No_Rekening VARCHAR(20),
		FK_Department INT,
		FK_Id_Role INT,
		Fk_Level INT,

		FOREIGN KEY (FK_Department) REFERENCES Department(Id_Department),
		FOREIGN KEY (FK_Id_Role) REFERENCES Role_Employee(Id_role),
		FOREIGN KEY (Fk_Level) REFERENCES Level_Employee(Id_level)
	); 

	DROP TABLE IF EXISTS Point
	
	CREATE TABLE Point
	(
		Id_Point INT IDENTITY PRIMARY KEY,
		Poin INT,
		Type_Point VARCHAR(100),
		Description VARCHAR(255),
		FK_Employe INT,

		FOREIGN KEY (FK_Employe) REFERENCES Employee(Id_Employee)
	)

	DROP TABLE IF EXISTS Status

	CREATE TABLE Status_Data
	(
		Id_Status INT IDENTITY PRIMARY KEY,
		Name_Status VARCHAR(50)
	)

	DROP TABLE IF EXISTS Sand_Email


	CREATE TABLE Sand_Email
	(
		Id_Email INT IDENTITY PRIMARY KEY,
		Subject VARCHAR(100),
		Email_To VARCHAR(50),
		Body TEXT,
		FK_Status INT
		
		FOREIGN KEY (FK_Status) REFERENCES Status_Data(Id_Status)
	)

END