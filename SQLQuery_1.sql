-- Create a new database called 'ProgrammingSchool'
-- Connect to the 'master' database to run this snippet
USE master
GO
-- Create the new database if it does not exist already
IF NOT EXISTS (
    SELECT [name]
        FROM sys.databases
        WHERE [name] = N'ProgrammingSchool'
)

CREATE DATABASE ProgrammingSchool
GO

use ProgrammingSchool

CREATE TABLE Student (
[First Name] VARCHAR(10),
[Age] INTEGER
)
SELECT * from dbo.Student;

insert into Student ([First Name],[Age]) VALUES ('Henok',20);
SELECT * from Student

use master
Go

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student]') AND type in (N'U'))
DROP TABLE [dbo].[Student]
GO


use ProgrammingSchool
Go

SELECT * from Student;