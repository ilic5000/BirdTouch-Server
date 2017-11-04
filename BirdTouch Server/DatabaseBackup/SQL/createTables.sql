
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/04/2017 19:00:38
-- Generated from EDMX file: C:\Users\NELEX\Documents\Visual Studio 2015 projects\BirdTouch Server\BirdTouch Server\EntityFrameworkModels\BirdTouchDatabaseModelSQLServer.edmx
-- --------------------------------------------------

CREATE DATABASE birdtouch;

SET QUOTED_IDENTIFIER OFF;
GO
USE [birdtouch];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[active_users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[active_users];
GO
IF OBJECT_ID(N'[dbo].[business_info]', 'U') IS NOT NULL
    DROP TABLE [dbo].[business_info];
GO
IF OBJECT_ID(N'[dbo].[saved_business]', 'U') IS NOT NULL
    DROP TABLE [dbo].[saved_business];
GO
IF OBJECT_ID(N'[dbo].[saved_private]', 'U') IS NOT NULL
    DROP TABLE [dbo].[saved_private];
GO
IF OBJECT_ID(N'[dbo].[user_info]', 'U') IS NOT NULL
    DROP TABLE [dbo].[user_info];
GO
IF OBJECT_ID(N'[dbo].[users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[users];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'business_info'
CREATE TABLE [dbo].[business_info] (
    [id_business_owner] int IDENTITY(1,1) NOT NULL,
    [companyname] nvarchar(50)  NULL,
    [email] nvarchar(50)  NULL,
    [phonenumber] nvarchar(50)  NULL,
    [website] nvarchar(50)  NULL,
    [adress] nvarchar(50)  NULL,
    [profilepicturedata] varbinary(max)  NULL
);
GO

-- Creating table 'user_info'
CREATE TABLE [dbo].[user_info] (
    [id_user_private] int IDENTITY(1,1) NOT NULL,
    [firstName] nvarchar(50)  NULL,
    [lastName] nvarchar(50)  NULL,
    [email] nvarchar(50)  NULL,
    [phoneNumber] nvarchar(50)  NULL,
    [dateOfBirth] nvarchar(50)  NULL,
    [adress] nvarchar(50)  NULL,
    [fbLink] nvarchar(50)  NULL,
    [twLink] nvarchar(50)  NULL,
    [gPlusLink] nvarchar(50)  NULL,
    [linkedInLink] nvarchar(50)  NULL,
    [profilePictureData] varbinary(max)  NULL
);
GO

-- Creating table 'users'
CREATE TABLE [dbo].[users] (
    [id] int IDENTITY(1,1) NOT NULL,
    [username] varchar(45)  NOT NULL,
    [password] varchar(45)  NOT NULL
);
GO

-- Creating table 'active_users'
CREATE TABLE [dbo].[active_users] (
    [id] int IDENTITY(1,1) NOT NULL,
    [user_id] int  NULL,
    [location_latitude] decimal(11,8)  NULL,
    [location_longitude] decimal(11,8)  NULL,
    [active_mode] int  NULL,
    [datetime_last_update] datetime  NOT NULL
);
GO

-- Creating table 'saved_private'
CREATE TABLE [dbo].[saved_private] (
    [id] int IDENTITY(1,1) NOT NULL,
    [user_id] int  NOT NULL,
    [saved_contact_id] int  NOT NULL,
    [description] nvarchar(200)  NULL
);
GO

-- Creating table 'saved_business'
CREATE TABLE [dbo].[saved_business] (
    [id] int IDENTITY(1,1) NOT NULL,
    [user_id] int  NOT NULL,
    [saved_contact_id] int  NOT NULL,
    [description] nvarchar(200)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [id_business_owner] in table 'business_info'
ALTER TABLE [dbo].[business_info]
ADD CONSTRAINT [PK_business_info]
    PRIMARY KEY CLUSTERED ([id_business_owner] ASC);
GO

-- Creating primary key on [id_user_private] in table 'user_info'
ALTER TABLE [dbo].[user_info]
ADD CONSTRAINT [PK_user_info]
    PRIMARY KEY CLUSTERED ([id_user_private] ASC);
GO

-- Creating primary key on [id] in table 'users'
ALTER TABLE [dbo].[users]
ADD CONSTRAINT [PK_users]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'active_users'
ALTER TABLE [dbo].[active_users]
ADD CONSTRAINT [PK_active_users]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'saved_private'
ALTER TABLE [dbo].[saved_private]
ADD CONSTRAINT [PK_saved_private]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'saved_business'
ALTER TABLE [dbo].[saved_business]
ADD CONSTRAINT [PK_saved_business]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------