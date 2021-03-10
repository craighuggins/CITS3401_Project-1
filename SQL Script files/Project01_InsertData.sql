:setvar Sql_DimensionTables_SourceDataPath "C:\Users\craighuggins\Dropbox\University Work\2020_Semester_01\CITS3401 Data Warehousing\Project\Dimension Tables\"

:setvar Sql_FactTable_SourceDataPath "C:\Users\craighuggins\Dropbox\University Work\2020_Semester_01\CITS3401 Data Warehousing\Project\Fact Table\"

:setvar Database_Name "US_AdultIncome_DW"

Use US_AdultIncome_DW
Go

BULK INSERT [dbo].[DimAge] FROM '$(Sql_DimensionTables_SourceDataPath)dimAge.csv'
WITH (
	CHECK_CONSTRAINTS,
	--CODEPAGE='ACP',
	DATAFILETYPE='char',
	FIELDTERMINATOR=',',
	ROWTERMINATOR='\n',
	--KEEPIDENTITY,
	TABLOCK
);

BULK INSERT [dbo].[DimGender] FROM '$(Sql_DimensionTables_SourceDataPath)dimGender.csv'
WITH (
	CHECK_CONSTRAINTS,
	--CODEPAGE='ACP',
	DATAFILETYPE='char',
	FIELDTERMINATOR=',',
	ROWTERMINATOR='\n',
	--KEEPIDENTITY,
	TABLOCK
);

BULK INSERT [dbo].[DimRace] FROM '$(Sql_DimensionTables_SourceDataPath)dimRace.csv'
WITH (
	CHECK_CONSTRAINTS,
	--CODEPAGE='ACP',
	DATAFILETYPE='char',
	FIELDTERMINATOR=',',
	ROWTERMINATOR='\n',
	--KEEPIDENTITY,
	TABLOCK
);

BULK INSERT [dbo].[DimNativeCountry] FROM '$(Sql_DimensionTables_SourceDataPath)dimNativeCountry.csv'
WITH (
	CHECK_CONSTRAINTS,
	--CODEPAGE='ACP',
	DATAFILETYPE='char',
	FIELDTERMINATOR=',',
	ROWTERMINATOR='\n',
	--KEEPIDENTITY,
	TABLOCK
);

BULK INSERT [dbo].[DimEducation] FROM '$(Sql_DimensionTables_SourceDataPath)dimEducation.csv'
WITH (
	CHECK_CONSTRAINTS,
	--CODEPAGE='ACP',
	DATAFILETYPE='char',
	FIELDTERMINATOR=',',
	ROWTERMINATOR='\n',
	--KEEPIDENTITY,
	TABLOCK
);

BULK INSERT [dbo].[DimOccupation] FROM '$(Sql_DimensionTables_SourceDataPath)dimOccupation.csv'
WITH (
	CHECK_CONSTRAINTS,
	--CODEPAGE='ACP',
	DATAFILETYPE='char',
	FIELDTERMINATOR=',',
	ROWTERMINATOR='\n',
	--KEEPIDENTITY,
	TABLOCK
);

BULK INSERT [dbo].[DimMaritalStatus] FROM '$(Sql_DimensionTables_SourceDataPath)dimMaritalStatus.csv'
WITH (
	CHECK_CONSTRAINTS,
	--CODEPAGE='ACP',
	DATAFILETYPE='char',
	FIELDTERMINATOR=',',
	ROWTERMINATOR='\n',
	--KEEPIDENTITY,
	TABLOCK
);

BULK INSERT [dbo].[FactAdultIncome] FROM '$(Sql_FactTable_SourceDataPath)adult-training processed.csv'
WITH (
	CHECK_CONSTRAINTS,
	--CODEPAGE='ACP',
	DATAFILETYPE='char',
	FIELDTERMINATOR=',',
	ROWTERMINATOR='\n',
	--KEEPIDENTITY,
	TABLOCK
);