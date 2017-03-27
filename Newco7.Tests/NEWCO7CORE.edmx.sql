
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/28/2017 05:11:48
-- Generated from EDMX file: C:\Users\Mark Dias\iCloudDrive\Documents\Visual Studio 2017\Projects\Newco7\Newco7.Tests\NEWCO7CORE.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [mddias_Shared_Tenant_1];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_UserLeads]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users_Leads] DROP CONSTRAINT [FK_UserLeads];
GO
IF OBJECT_ID(N'[dbo].[FK_UserSalesUsers]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users_SalesUsers] DROP CONSTRAINT [FK_UserSalesUsers];
GO
IF OBJECT_ID(N'[dbo].[FK_Leads_inherits_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users_Leads] DROP CONSTRAINT [FK_Leads_inherits_User];
GO
IF OBJECT_ID(N'[dbo].[FK_SalesUsers_inherits_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users_SalesUsers] DROP CONSTRAINT [FK_SalesUsers_inherits_User];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO
IF OBJECT_ID(N'[dbo].[Users_Leads]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users_Leads];
GO
IF OBJECT_ID(N'[dbo].[Users_SalesUsers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users_SalesUsers];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [UserId] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [MiddleName] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Passwords'
CREATE TABLE [dbo].[Passwords] (
    [PasswordId] int IDENTITY(1,1) NOT NULL,
    [UserUserId] int  NOT NULL
);
GO

-- Creating table 'SecurityAccessByModules'
CREATE TABLE [dbo].[SecurityAccessByModules] (
    [SecurityAccessByModuleId] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'SecurityLevels'
CREATE TABLE [dbo].[SecurityLevels] (
    [SecurityLevelId] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'Users_Leads'
CREATE TABLE [dbo].[Users_Leads] (
    [UserUserId] int  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'Users_SalesUsers'
CREATE TABLE [dbo].[Users_SalesUsers] (
    [UserUserId] int  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [UserId] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([UserId] ASC);
GO

-- Creating primary key on [PasswordId] in table 'Passwords'
ALTER TABLE [dbo].[Passwords]
ADD CONSTRAINT [PK_Passwords]
    PRIMARY KEY CLUSTERED ([PasswordId] ASC);
GO

-- Creating primary key on [SecurityAccessByModuleId] in table 'SecurityAccessByModules'
ALTER TABLE [dbo].[SecurityAccessByModules]
ADD CONSTRAINT [PK_SecurityAccessByModules]
    PRIMARY KEY CLUSTERED ([SecurityAccessByModuleId] ASC);
GO

-- Creating primary key on [SecurityLevelId] in table 'SecurityLevels'
ALTER TABLE [dbo].[SecurityLevels]
ADD CONSTRAINT [PK_SecurityLevels]
    PRIMARY KEY CLUSTERED ([SecurityLevelId] ASC);
GO

-- Creating primary key on [UserId] in table 'Users_Leads'
ALTER TABLE [dbo].[Users_Leads]
ADD CONSTRAINT [PK_Users_Leads]
    PRIMARY KEY CLUSTERED ([UserId] ASC);
GO

-- Creating primary key on [UserId] in table 'Users_SalesUsers'
ALTER TABLE [dbo].[Users_SalesUsers]
ADD CONSTRAINT [PK_Users_SalesUsers]
    PRIMARY KEY CLUSTERED ([UserId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [UserUserId] in table 'Users_Leads'
ALTER TABLE [dbo].[Users_Leads]
ADD CONSTRAINT [FK_UserLeads]
    FOREIGN KEY ([UserUserId])
    REFERENCES [dbo].[Users]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserLeads'
CREATE INDEX [IX_FK_UserLeads]
ON [dbo].[Users_Leads]
    ([UserUserId]);
GO

-- Creating foreign key on [UserUserId] in table 'Users_SalesUsers'
ALTER TABLE [dbo].[Users_SalesUsers]
ADD CONSTRAINT [FK_UserSalesUsers]
    FOREIGN KEY ([UserUserId])
    REFERENCES [dbo].[Users]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserSalesUsers'
CREATE INDEX [IX_FK_UserSalesUsers]
ON [dbo].[Users_SalesUsers]
    ([UserUserId]);
GO

-- Creating foreign key on [UserUserId] in table 'Passwords'
ALTER TABLE [dbo].[Passwords]
ADD CONSTRAINT [FK_UserPasswords]
    FOREIGN KEY ([UserUserId])
    REFERENCES [dbo].[Users]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserPasswords'
CREATE INDEX [IX_FK_UserPasswords]
ON [dbo].[Passwords]
    ([UserUserId]);
GO

-- Creating foreign key on [UserId] in table 'Users_Leads'
ALTER TABLE [dbo].[Users_Leads]
ADD CONSTRAINT [FK_Leads_inherits_User]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([UserId])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [UserId] in table 'Users_SalesUsers'
ALTER TABLE [dbo].[Users_SalesUsers]
ADD CONSTRAINT [FK_SalesUsers_inherits_User]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([UserId])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------