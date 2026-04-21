/*
===================================================
Create Database and Schemas
===================================================
Script Purpose:
  This script checks if a database named 'DataWarehouse' exists. If one exists, it is dropped and recreated. If it does not, then it will be created normally
  Additionally, the script sets up three schemas within the database: 'bronze', 'silver', and 'gold'. 

WARNING: 
  Running this script will drop the entirety of 'DataWarehouse' if it exists. All data in the database will be permanently delted 
*/



-- Create Database "Data Warehouse"
USE master;
GO 

-- Drop and recreate the database 'DataWarehouse'
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
END;
GO

--Create the database 'DataWarehouse'
CREATE DATABASE DataWarehouse;

--Use the branch
USE DataWarehouse;

--Create Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold
GO
