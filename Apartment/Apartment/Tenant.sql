CREATE TABLE [dbo].[Tenant]
(
	[TenantId] INT           IDENTITY (1, 1) NOT NULL,
	[FirstName]    NVARCHAR (50) NULL,
	[LastName]  NVARCHAR(50)           NULL,
	[Phone] BIGINT NULL, 
	[Email] NVARCHAR(50) NULL,
	PRIMARY KEY CLUSTERED ([TenantId] ASC)
)
