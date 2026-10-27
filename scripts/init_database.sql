/*
==========================================

Create Database & Schemas 

==========================================

Script Purpose : 
	This script creates a new database named 'EcommDB' after chekcing if it 
	already exists . if the database exists  ,it is dropped and recreated .
	Additionally , the script sets up three schemas within the database : 
	'bronze' , 'silver' and 'gold'


WARNING :

	Running this script will drop the entire 'EcommDB' database if it exists 
	All data in the database will be permanently deleted. Proceed with caution and 
	ensure you have proper backups before running this script.


*/


USE MASTER;
GO

-- Drop and recreate the 'EcommDB' database 
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'EcommDB')

BEGIN
	ALTER DATABASE EcommDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE ;
	DROP DATABASE EcommDB
END ;
GO 

-- Create the 'EcommDB' Database 

CREATE DATABASE EcommDB; 
GO


USE EcommDB ; 
GO 

-- Create Schemas : 

CREATE SCHEMA bronze ;
GO

CREATE SCHEMA silver ;
GO

CREATE SCHEMA gold   ;
GO
