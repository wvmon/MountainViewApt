CREATE TABLE [dbo].[Contract]
(
	[ContractId] INT IDENTITY (1, 1) NOT NULL,
	[StartDate]        DATETIME NULL,
	[EndDate]     DATETIME NULL,
	[MonthlyRent]    FLOAT NULL,
	[AptId]	INT NOT NULL,
	[TenantId] INT NOT NULL,
	PRIMARY KEY CLUSTERED ([ContractId] ASC),
	CONSTRAINT [FK_dbo.Contract_dbo.Apartment_AptId] FOREIGN KEY ([AptId]) 
		REFERENCES [dbo].[Apartment] ([AptId]) ON DELETE CASCADE,
	CONSTRAINT [FK_dbo.Contract_dbo.Tenant_TenantId] FOREIGN KEY ([TenantId]) 
		REFERENCES [dbo].[Tenant] ([TenantId]) ON DELETE CASCADE
)
