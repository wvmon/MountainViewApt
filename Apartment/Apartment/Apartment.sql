CREATE TABLE [dbo].[Apartment]
(
	[AptId] INT           IDENTITY (1, 1) NOT NULL,
	[AptAddress]    NVARCHAR (50) NULL,
	[SqFootage]  INT           NULL,
	[MonthUtilityFee] FLOAT NULL, 
	[MonthParkfee] FLOAT NULL, 
	[LastCleanDate] DATETIME NULL, 
	[IsVacant] INT NULL, 
	PRIMARY KEY CLUSTERED ([AptId] ASC)
)
