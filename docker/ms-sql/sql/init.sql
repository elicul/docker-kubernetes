IF NOT EXISTS (SELECT 'Prime' FROM master.dbo.sysdatabases WHERE name = N'Prime')
    BEGIN
        CREATE DATABASE [Prime]
    END
GO