Use master
Go

PRINT '';
PRINT '*** Dropping Database';
GO

IF EXISTS (SELECT [name] FROM [master].[sys].[databases] WHERE [name] = 'US_AdultIncome_DW')
DROP DATABASE US_AdultIncome_DW;
GO

PRINT '';
PRINT '*** Creating Database';
GO

Create database US_AdultIncome_DW
Go

Use US_AdultIncome_DW
Go

PRINT '';
PRINT '*** Creating Table DimAge';
GO

Create table DimAge
(
Age_ID int primary key identity,
Age_Years int not null,
Age_Bracket varchar(8),
Age_Category varchar(20),
Retirement_Age_Identifier varchar(3)
)
Go

PRINT '';
PRINT '*** Creating Table DimGender';
GO

Create table DimGender
(
Gender_ID int primary key identity,
Gender varchar(10),
)
Go

PRINT '';
PRINT '*** Creating Table DimRace';
GO

Create table DimRace
(
Race_ID int primary key identity,
Race varchar(20),
)
Go

PRINT '';
PRINT '*** Creating Table DimNativeCountry';
GO

Create table DimNativeCountry
(
Country_ID int primary key identity,
Country_Code varchar(6),
Country varchar(30),
Region varchar(30),
Developed_Developing_Identifier varchar(15),
)
Go

PRINT '';
PRINT '*** Creating Table DimEducation';
GO

Create table DimEducation
(
Education_ID int primary key identity,
Qualification varchar(20),
Institution varchar(30),
Education_Level varchar(20),
Graduated_HighSchool_Identifier varchar(3),
)
Go

PRINT '';
PRINT '*** Creating Table DimOccupation';
GO

Create table DimOccupation
(
Occupation_ID int primary key identity,
Occupation varchar(20),
)
Go

PRINT '';
PRINT '*** Creating Table DimMaritalStatus';
GO

Create table DimMaritalStatus
(
Marital_Status_ID int primary key identity,
Marital_Status varchar(30),
Married_Unmarried_Identifier varchar(10),
)
Go

PRINT '';
PRINT '*** Creating Table FactAdultIncome';
GO

Create table FactAdultIncome
(
Person_ID bigint primary key identity,
Age_ID int not null,
Gender_ID int not null,
Race_ID int not null,
Country_ID int not null,
Education_ID int not null,
Occupation_ID int not null,
Marital_Status_ID int not null,
Income_Bracket varchar(10),
Capital_Gain money,
Capital_Loss money,
Hours_per_week int,
fnlwgt int,
)
Go

PRINT '';
PRINT '*** Add relation between fact table foreign keys to Primary keys of Dimensions';
GO

ALTER TABLE FactAdultIncome ADD CONSTRAINT
FK_Age_ID FOREIGN KEY (Age_ID)REFERENCES DimAge(Age_ID);
ALTER TABLE FactAdultIncome ADD CONSTRAINT
FK_Gender_ID FOREIGN KEY (Gender_ID)REFERENCES DimGender(Gender_ID);
ALTER TABLE FactAdultIncome ADD CONSTRAINT
FK_Race_ID FOREIGN KEY (Race_ID)REFERENCES DimRace(Race_ID);
ALTER TABLE FactAdultIncome ADD CONSTRAINT
FK_Country_ID FOREIGN KEY (Country_ID)REFERENCES DimNativeCountry(Country_ID);
ALTER TABLE FactAdultIncome ADD CONSTRAINT
FK_Education_ID FOREIGN KEY (Education_ID)REFERENCES DimEducation(Education_ID);
ALTER TABLE FactAdultIncome ADD CONSTRAINT
FK_Occupation_ID FOREIGN KEY (Occupation_ID)REFERENCES DimOccupation(Occupation_ID);
ALTER TABLE FactAdultIncome ADD CONSTRAINT
FK_Marital_Status_ID FOREIGN KEY (Marital_Status_ID)REFERENCES DimMaritalStatus(Marital_Status_ID);