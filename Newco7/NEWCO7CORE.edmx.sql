
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/29/2017 14:54:55
-- Generated from EDMX file: C:\Users\Mark Dias\iCloudDrive\Documents\Visual Studio 2017\Projects\Newco7\Newco7\NEWCO7CORE.edmx
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
IF OBJECT_ID(N'[dbo].[FK_UserPasswords]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Passwords] DROP CONSTRAINT [FK_UserPasswords];
GO
IF OBJECT_ID(N'[dbo].[FK_UserTeam_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserTeam] DROP CONSTRAINT [FK_UserTeam_User];
GO
IF OBJECT_ID(N'[dbo].[FK_UserTeam_Team]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserTeam] DROP CONSTRAINT [FK_UserTeam_Team];
GO
IF OBJECT_ID(N'[dbo].[FK_ProjectTasksProjects]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tasks_ProjectTasks] DROP CONSTRAINT [FK_ProjectTasksProjects];
GO
IF OBJECT_ID(N'[dbo].[FK_JobsJobTasks]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tasks_JobTasks] DROP CONSTRAINT [FK_JobsJobTasks];
GO
IF OBJECT_ID(N'[dbo].[FK_TeamAssociations]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Teams] DROP CONSTRAINT [FK_TeamAssociations];
GO
IF OBJECT_ID(N'[dbo].[FK_AssociationsProjects]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Projects] DROP CONSTRAINT [FK_AssociationsProjects];
GO
IF OBJECT_ID(N'[dbo].[FK_AssociationsJobs]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Jobs] DROP CONSTRAINT [FK_AssociationsJobs];
GO
IF OBJECT_ID(N'[dbo].[FK_AssociationsServices]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Services] DROP CONSTRAINT [FK_AssociationsServices];
GO
IF OBJECT_ID(N'[dbo].[FK_AssociationsProducts]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_AssociationsProducts];
GO
IF OBJECT_ID(N'[dbo].[FK_AssociationsAccounts]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Accounts] DROP CONSTRAINT [FK_AssociationsAccounts];
GO
IF OBJECT_ID(N'[dbo].[FK_AssociationsSubscribers]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Subscribers] DROP CONSTRAINT [FK_AssociationsSubscribers];
GO
IF OBJECT_ID(N'[dbo].[FK_AssociationsOpportunities]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Opportunities] DROP CONSTRAINT [FK_AssociationsOpportunities];
GO
IF OBJECT_ID(N'[dbo].[FK_AssociationsReports]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Reports] DROP CONSTRAINT [FK_AssociationsReports];
GO
IF OBJECT_ID(N'[dbo].[FK_AssociationsSegmentations]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Segmentations] DROP CONSTRAINT [FK_AssociationsSegmentations];
GO
IF OBJECT_ID(N'[dbo].[FK_CustomersReferrals]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Referrals] DROP CONSTRAINT [FK_CustomersReferrals];
GO
IF OBJECT_ID(N'[dbo].[FK_AssociationsCampaigns]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Campaigns] DROP CONSTRAINT [FK_AssociationsCampaigns];
GO
IF OBJECT_ID(N'[dbo].[FK_Leads_inherits_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users_Leads] DROP CONSTRAINT [FK_Leads_inherits_User];
GO
IF OBJECT_ID(N'[dbo].[FK_SalesUsers_inherits_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users_SalesUsers] DROP CONSTRAINT [FK_SalesUsers_inherits_User];
GO
IF OBJECT_ID(N'[dbo].[FK_ProjectTasks_inherits_Tasks]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tasks_ProjectTasks] DROP CONSTRAINT [FK_ProjectTasks_inherits_Tasks];
GO
IF OBJECT_ID(N'[dbo].[FK_JobTasks_inherits_Tasks]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tasks_JobTasks] DROP CONSTRAINT [FK_JobTasks_inherits_Tasks];
GO
IF OBJECT_ID(N'[dbo].[FK_Customers_inherits_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users_Customers] DROP CONSTRAINT [FK_Customers_inherits_User];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO
IF OBJECT_ID(N'[dbo].[Passwords]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Passwords];
GO
IF OBJECT_ID(N'[dbo].[Projects]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Projects];
GO
IF OBJECT_ID(N'[dbo].[Jobs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Jobs];
GO
IF OBJECT_ID(N'[dbo].[Campaigns]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Campaigns];
GO
IF OBJECT_ID(N'[dbo].[Referrals]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Referrals];
GO
IF OBJECT_ID(N'[dbo].[Teams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Teams];
GO
IF OBJECT_ID(N'[dbo].[Products]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Products];
GO
IF OBJECT_ID(N'[dbo].[Services]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Services];
GO
IF OBJECT_ID(N'[dbo].[Accounts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Accounts];
GO
IF OBJECT_ID(N'[dbo].[Subscribers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Subscribers];
GO
IF OBJECT_ID(N'[dbo].[Opportunities]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Opportunities];
GO
IF OBJECT_ID(N'[dbo].[Reports]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Reports];
GO
IF OBJECT_ID(N'[dbo].[Segmentations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Segmentations];
GO
IF OBJECT_ID(N'[dbo].[Tasks]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tasks];
GO
IF OBJECT_ID(N'[dbo].[Associations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Associations];
GO
IF OBJECT_ID(N'[dbo].[Users_Leads]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users_Leads];
GO
IF OBJECT_ID(N'[dbo].[Users_SalesUsers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users_SalesUsers];
GO
IF OBJECT_ID(N'[dbo].[Tasks_ProjectTasks]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tasks_ProjectTasks];
GO
IF OBJECT_ID(N'[dbo].[Tasks_JobTasks]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tasks_JobTasks];
GO
IF OBJECT_ID(N'[dbo].[Users_Customers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users_Customers];
GO
IF OBJECT_ID(N'[dbo].[UserTeam]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserTeam];
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

-- Creating table 'Projects'
CREATE TABLE [dbo].[Projects] (
    [ProjectId] int IDENTITY(1,1) NOT NULL,
    [AssociationsAssociationId] int  NOT NULL
);
GO

-- Creating table 'Jobs'
CREATE TABLE [dbo].[Jobs] (
    [JobId] int IDENTITY(1,1) NOT NULL,
    [AssociationsAssociationId] int  NOT NULL
);
GO

-- Creating table 'Campaigns'
CREATE TABLE [dbo].[Campaigns] (
    [CampaignId] int IDENTITY(1,1) NOT NULL,
    [AssociationsAssociationId] int  NULL,
    [AssociationsAssociationId1] int  NOT NULL
);
GO

-- Creating table 'Referrals'
CREATE TABLE [dbo].[Referrals] (
    [ReferralId] int IDENTITY(1,1) NOT NULL,
    [CustomersUserId] int  NOT NULL
);
GO

-- Creating table 'Teams'
CREATE TABLE [dbo].[Teams] (
    [TeamId] int IDENTITY(1,1) NOT NULL,
    [Association_AssociationId] int  NOT NULL
);
GO

-- Creating table 'Products'
CREATE TABLE [dbo].[Products] (
    [ProductId] int IDENTITY(1,1) NOT NULL,
    [AssociationsAssociationId] int  NOT NULL
);
GO

-- Creating table 'Services'
CREATE TABLE [dbo].[Services] (
    [ServiceId] int IDENTITY(1,1) NOT NULL,
    [AssociationsAssociationId] int  NOT NULL
);
GO

-- Creating table 'Accounts'
CREATE TABLE [dbo].[Accounts] (
    [AccountId] int IDENTITY(1,1) NOT NULL,
    [AssociationsAssociationId] int  NOT NULL
);
GO

-- Creating table 'Subscribers'
CREATE TABLE [dbo].[Subscribers] (
    [SubscriberId] int IDENTITY(1,1) NOT NULL,
    [AssociationsAssociationId] int  NOT NULL
);
GO

-- Creating table 'Opportunities'
CREATE TABLE [dbo].[Opportunities] (
    [OpportunityId] int IDENTITY(1,1) NOT NULL,
    [AssociationsAssociationId] int  NOT NULL
);
GO

-- Creating table 'Reports'
CREATE TABLE [dbo].[Reports] (
    [ReportId] int IDENTITY(1,1) NOT NULL,
    [AssociationsAssociationId] int  NOT NULL
);
GO

-- Creating table 'Segmentations'
CREATE TABLE [dbo].[Segmentations] (
    [SegmentationId] int IDENTITY(1,1) NOT NULL,
    [AssociationsAssociationId] int  NOT NULL
);
GO

-- Creating table 'Tasks'
CREATE TABLE [dbo].[Tasks] (
    [TaskId] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'Associations'
CREATE TABLE [dbo].[Associations] (
    [AssociationId] int IDENTITY(1,1) NOT NULL,
    [AssociationName] nvarchar(max)  NOT NULL,
    [AssociationModificationDate] datetime  NOT NULL,
    [AssociationActive] bit  NOT NULL
);
GO

-- Creating table 'CostCodeOfAccounts'
CREATE TABLE [dbo].[CostCodeOfAccounts] (
    [CoCAccountId] int IDENTITY(1,1) NOT NULL,
    [CoCAccountName] nvarchar(max)  NOT NULL,
    [CoCAccountDescription] nvarchar(max)  NOT NULL,
    [CostCodeOfAccountsCoCAccountId] int  NOT NULL
);
GO

-- Creating table 'ScopeChanges'
CREATE TABLE [dbo].[ScopeChanges] (
    [ScopeChangeId] int IDENTITY(1,1) NOT NULL,
    [ProjectsProjectId] int  NOT NULL
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

-- Creating table 'Tasks_ProjectTasks'
CREATE TABLE [dbo].[Tasks_ProjectTasks] (
    [ProjectTaskId] int IDENTITY(1,1) NOT NULL,
    [ProjectsProjectId] int  NULL,
    [TaskId] int  NOT NULL
);
GO

-- Creating table 'Tasks_JobTasks'
CREATE TABLE [dbo].[Tasks_JobTasks] (
    [JobsJobId] int  NULL,
    [TaskId] int  NOT NULL
);
GO

-- Creating table 'Users_Customers'
CREATE TABLE [dbo].[Users_Customers] (
    [CustomerId] int IDENTITY(1,1) NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'UserTeam'
CREATE TABLE [dbo].[UserTeam] (
    [Users_UserId] int  NOT NULL,
    [Teams_TeamId] int  NOT NULL
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

-- Creating primary key on [ProjectId] in table 'Projects'
ALTER TABLE [dbo].[Projects]
ADD CONSTRAINT [PK_Projects]
    PRIMARY KEY CLUSTERED ([ProjectId] ASC);
GO

-- Creating primary key on [JobId] in table 'Jobs'
ALTER TABLE [dbo].[Jobs]
ADD CONSTRAINT [PK_Jobs]
    PRIMARY KEY CLUSTERED ([JobId] ASC);
GO

-- Creating primary key on [CampaignId] in table 'Campaigns'
ALTER TABLE [dbo].[Campaigns]
ADD CONSTRAINT [PK_Campaigns]
    PRIMARY KEY CLUSTERED ([CampaignId] ASC);
GO

-- Creating primary key on [ReferralId] in table 'Referrals'
ALTER TABLE [dbo].[Referrals]
ADD CONSTRAINT [PK_Referrals]
    PRIMARY KEY CLUSTERED ([ReferralId] ASC);
GO

-- Creating primary key on [TeamId] in table 'Teams'
ALTER TABLE [dbo].[Teams]
ADD CONSTRAINT [PK_Teams]
    PRIMARY KEY CLUSTERED ([TeamId] ASC);
GO

-- Creating primary key on [ProductId] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [PK_Products]
    PRIMARY KEY CLUSTERED ([ProductId] ASC);
GO

-- Creating primary key on [ServiceId] in table 'Services'
ALTER TABLE [dbo].[Services]
ADD CONSTRAINT [PK_Services]
    PRIMARY KEY CLUSTERED ([ServiceId] ASC);
GO

-- Creating primary key on [AccountId] in table 'Accounts'
ALTER TABLE [dbo].[Accounts]
ADD CONSTRAINT [PK_Accounts]
    PRIMARY KEY CLUSTERED ([AccountId] ASC);
GO

-- Creating primary key on [SubscriberId] in table 'Subscribers'
ALTER TABLE [dbo].[Subscribers]
ADD CONSTRAINT [PK_Subscribers]
    PRIMARY KEY CLUSTERED ([SubscriberId] ASC);
GO

-- Creating primary key on [OpportunityId] in table 'Opportunities'
ALTER TABLE [dbo].[Opportunities]
ADD CONSTRAINT [PK_Opportunities]
    PRIMARY KEY CLUSTERED ([OpportunityId] ASC);
GO

-- Creating primary key on [ReportId] in table 'Reports'
ALTER TABLE [dbo].[Reports]
ADD CONSTRAINT [PK_Reports]
    PRIMARY KEY CLUSTERED ([ReportId] ASC);
GO

-- Creating primary key on [SegmentationId] in table 'Segmentations'
ALTER TABLE [dbo].[Segmentations]
ADD CONSTRAINT [PK_Segmentations]
    PRIMARY KEY CLUSTERED ([SegmentationId] ASC);
GO

-- Creating primary key on [TaskId] in table 'Tasks'
ALTER TABLE [dbo].[Tasks]
ADD CONSTRAINT [PK_Tasks]
    PRIMARY KEY CLUSTERED ([TaskId] ASC);
GO

-- Creating primary key on [AssociationId] in table 'Associations'
ALTER TABLE [dbo].[Associations]
ADD CONSTRAINT [PK_Associations]
    PRIMARY KEY CLUSTERED ([AssociationId] ASC);
GO

-- Creating primary key on [CoCAccountId] in table 'CostCodeOfAccounts'
ALTER TABLE [dbo].[CostCodeOfAccounts]
ADD CONSTRAINT [PK_CostCodeOfAccounts]
    PRIMARY KEY CLUSTERED ([CoCAccountId] ASC);
GO

-- Creating primary key on [ScopeChangeId] in table 'ScopeChanges'
ALTER TABLE [dbo].[ScopeChanges]
ADD CONSTRAINT [PK_ScopeChanges]
    PRIMARY KEY CLUSTERED ([ScopeChangeId] ASC);
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

-- Creating primary key on [TaskId] in table 'Tasks_ProjectTasks'
ALTER TABLE [dbo].[Tasks_ProjectTasks]
ADD CONSTRAINT [PK_Tasks_ProjectTasks]
    PRIMARY KEY CLUSTERED ([TaskId] ASC);
GO

-- Creating primary key on [TaskId] in table 'Tasks_JobTasks'
ALTER TABLE [dbo].[Tasks_JobTasks]
ADD CONSTRAINT [PK_Tasks_JobTasks]
    PRIMARY KEY CLUSTERED ([TaskId] ASC);
GO

-- Creating primary key on [UserId] in table 'Users_Customers'
ALTER TABLE [dbo].[Users_Customers]
ADD CONSTRAINT [PK_Users_Customers]
    PRIMARY KEY CLUSTERED ([UserId] ASC);
GO

-- Creating primary key on [Users_UserId], [Teams_TeamId] in table 'UserTeam'
ALTER TABLE [dbo].[UserTeam]
ADD CONSTRAINT [PK_UserTeam]
    PRIMARY KEY CLUSTERED ([Users_UserId], [Teams_TeamId] ASC);
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

-- Creating foreign key on [Users_UserId] in table 'UserTeam'
ALTER TABLE [dbo].[UserTeam]
ADD CONSTRAINT [FK_UserTeam_User]
    FOREIGN KEY ([Users_UserId])
    REFERENCES [dbo].[Users]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Teams_TeamId] in table 'UserTeam'
ALTER TABLE [dbo].[UserTeam]
ADD CONSTRAINT [FK_UserTeam_Team]
    FOREIGN KEY ([Teams_TeamId])
    REFERENCES [dbo].[Teams]
        ([TeamId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserTeam_Team'
CREATE INDEX [IX_FK_UserTeam_Team]
ON [dbo].[UserTeam]
    ([Teams_TeamId]);
GO

-- Creating foreign key on [ProjectsProjectId] in table 'Tasks_ProjectTasks'
ALTER TABLE [dbo].[Tasks_ProjectTasks]
ADD CONSTRAINT [FK_ProjectTasksProjects]
    FOREIGN KEY ([ProjectsProjectId])
    REFERENCES [dbo].[Projects]
        ([ProjectId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProjectTasksProjects'
CREATE INDEX [IX_FK_ProjectTasksProjects]
ON [dbo].[Tasks_ProjectTasks]
    ([ProjectsProjectId]);
GO

-- Creating foreign key on [JobsJobId] in table 'Tasks_JobTasks'
ALTER TABLE [dbo].[Tasks_JobTasks]
ADD CONSTRAINT [FK_JobsJobTasks]
    FOREIGN KEY ([JobsJobId])
    REFERENCES [dbo].[Jobs]
        ([JobId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_JobsJobTasks'
CREATE INDEX [IX_FK_JobsJobTasks]
ON [dbo].[Tasks_JobTasks]
    ([JobsJobId]);
GO

-- Creating foreign key on [Association_AssociationId] in table 'Teams'
ALTER TABLE [dbo].[Teams]
ADD CONSTRAINT [FK_TeamAssociations]
    FOREIGN KEY ([Association_AssociationId])
    REFERENCES [dbo].[Associations]
        ([AssociationId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TeamAssociations'
CREATE INDEX [IX_FK_TeamAssociations]
ON [dbo].[Teams]
    ([Association_AssociationId]);
GO

-- Creating foreign key on [AssociationsAssociationId] in table 'Projects'
ALTER TABLE [dbo].[Projects]
ADD CONSTRAINT [FK_AssociationsProjects]
    FOREIGN KEY ([AssociationsAssociationId])
    REFERENCES [dbo].[Associations]
        ([AssociationId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AssociationsProjects'
CREATE INDEX [IX_FK_AssociationsProjects]
ON [dbo].[Projects]
    ([AssociationsAssociationId]);
GO

-- Creating foreign key on [AssociationsAssociationId] in table 'Jobs'
ALTER TABLE [dbo].[Jobs]
ADD CONSTRAINT [FK_AssociationsJobs]
    FOREIGN KEY ([AssociationsAssociationId])
    REFERENCES [dbo].[Associations]
        ([AssociationId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AssociationsJobs'
CREATE INDEX [IX_FK_AssociationsJobs]
ON [dbo].[Jobs]
    ([AssociationsAssociationId]);
GO

-- Creating foreign key on [AssociationsAssociationId] in table 'Services'
ALTER TABLE [dbo].[Services]
ADD CONSTRAINT [FK_AssociationsServices]
    FOREIGN KEY ([AssociationsAssociationId])
    REFERENCES [dbo].[Associations]
        ([AssociationId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AssociationsServices'
CREATE INDEX [IX_FK_AssociationsServices]
ON [dbo].[Services]
    ([AssociationsAssociationId]);
GO

-- Creating foreign key on [AssociationsAssociationId] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [FK_AssociationsProducts]
    FOREIGN KEY ([AssociationsAssociationId])
    REFERENCES [dbo].[Associations]
        ([AssociationId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AssociationsProducts'
CREATE INDEX [IX_FK_AssociationsProducts]
ON [dbo].[Products]
    ([AssociationsAssociationId]);
GO

-- Creating foreign key on [AssociationsAssociationId] in table 'Accounts'
ALTER TABLE [dbo].[Accounts]
ADD CONSTRAINT [FK_AssociationsAccounts]
    FOREIGN KEY ([AssociationsAssociationId])
    REFERENCES [dbo].[Associations]
        ([AssociationId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AssociationsAccounts'
CREATE INDEX [IX_FK_AssociationsAccounts]
ON [dbo].[Accounts]
    ([AssociationsAssociationId]);
GO

-- Creating foreign key on [AssociationsAssociationId] in table 'Subscribers'
ALTER TABLE [dbo].[Subscribers]
ADD CONSTRAINT [FK_AssociationsSubscribers]
    FOREIGN KEY ([AssociationsAssociationId])
    REFERENCES [dbo].[Associations]
        ([AssociationId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AssociationsSubscribers'
CREATE INDEX [IX_FK_AssociationsSubscribers]
ON [dbo].[Subscribers]
    ([AssociationsAssociationId]);
GO

-- Creating foreign key on [AssociationsAssociationId] in table 'Opportunities'
ALTER TABLE [dbo].[Opportunities]
ADD CONSTRAINT [FK_AssociationsOpportunities]
    FOREIGN KEY ([AssociationsAssociationId])
    REFERENCES [dbo].[Associations]
        ([AssociationId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AssociationsOpportunities'
CREATE INDEX [IX_FK_AssociationsOpportunities]
ON [dbo].[Opportunities]
    ([AssociationsAssociationId]);
GO

-- Creating foreign key on [AssociationsAssociationId] in table 'Reports'
ALTER TABLE [dbo].[Reports]
ADD CONSTRAINT [FK_AssociationsReports]
    FOREIGN KEY ([AssociationsAssociationId])
    REFERENCES [dbo].[Associations]
        ([AssociationId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AssociationsReports'
CREATE INDEX [IX_FK_AssociationsReports]
ON [dbo].[Reports]
    ([AssociationsAssociationId]);
GO

-- Creating foreign key on [AssociationsAssociationId] in table 'Segmentations'
ALTER TABLE [dbo].[Segmentations]
ADD CONSTRAINT [FK_AssociationsSegmentations]
    FOREIGN KEY ([AssociationsAssociationId])
    REFERENCES [dbo].[Associations]
        ([AssociationId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AssociationsSegmentations'
CREATE INDEX [IX_FK_AssociationsSegmentations]
ON [dbo].[Segmentations]
    ([AssociationsAssociationId]);
GO

-- Creating foreign key on [CustomersUserId] in table 'Referrals'
ALTER TABLE [dbo].[Referrals]
ADD CONSTRAINT [FK_CustomersReferrals]
    FOREIGN KEY ([CustomersUserId])
    REFERENCES [dbo].[Users_Customers]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CustomersReferrals'
CREATE INDEX [IX_FK_CustomersReferrals]
ON [dbo].[Referrals]
    ([CustomersUserId]);
GO

-- Creating foreign key on [AssociationsAssociationId1] in table 'Campaigns'
ALTER TABLE [dbo].[Campaigns]
ADD CONSTRAINT [FK_AssociationsCampaigns]
    FOREIGN KEY ([AssociationsAssociationId1])
    REFERENCES [dbo].[Associations]
        ([AssociationId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AssociationsCampaigns'
CREATE INDEX [IX_FK_AssociationsCampaigns]
ON [dbo].[Campaigns]
    ([AssociationsAssociationId1]);
GO

-- Creating foreign key on [ProjectsProjectId] in table 'ScopeChanges'
ALTER TABLE [dbo].[ScopeChanges]
ADD CONSTRAINT [FK_ScopeChangesProjects]
    FOREIGN KEY ([ProjectsProjectId])
    REFERENCES [dbo].[Projects]
        ([ProjectId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ScopeChangesProjects'
CREATE INDEX [IX_FK_ScopeChangesProjects]
ON [dbo].[ScopeChanges]
    ([ProjectsProjectId]);
GO

-- Creating foreign key on [CostCodeOfAccountsCoCAccountId] in table 'CostCodeOfAccounts'
ALTER TABLE [dbo].[CostCodeOfAccounts]
ADD CONSTRAINT [FK_CostCodeOfAccountsCostCodeOfAccounts]
    FOREIGN KEY ([CostCodeOfAccountsCoCAccountId])
    REFERENCES [dbo].[CostCodeOfAccounts]
        ([CoCAccountId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CostCodeOfAccountsCostCodeOfAccounts'
CREATE INDEX [IX_FK_CostCodeOfAccountsCostCodeOfAccounts]
ON [dbo].[CostCodeOfAccounts]
    ([CostCodeOfAccountsCoCAccountId]);
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

-- Creating foreign key on [TaskId] in table 'Tasks_ProjectTasks'
ALTER TABLE [dbo].[Tasks_ProjectTasks]
ADD CONSTRAINT [FK_ProjectTasks_inherits_Tasks]
    FOREIGN KEY ([TaskId])
    REFERENCES [dbo].[Tasks]
        ([TaskId])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [TaskId] in table 'Tasks_JobTasks'
ALTER TABLE [dbo].[Tasks_JobTasks]
ADD CONSTRAINT [FK_JobTasks_inherits_Tasks]
    FOREIGN KEY ([TaskId])
    REFERENCES [dbo].[Tasks]
        ([TaskId])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [UserId] in table 'Users_Customers'
ALTER TABLE [dbo].[Users_Customers]
ADD CONSTRAINT [FK_Customers_inherits_User]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([UserId])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------