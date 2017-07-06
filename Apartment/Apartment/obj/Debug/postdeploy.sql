/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

MERGE INTO Tenant AS Target 
USING (VALUES 
(1, 'Joseph', 'Green', 2085554678, 'josephG@mymail.com'),
(2, 'Donald', 'Copeland', 2085554683, 'webdragon@mymail.com'),
(3, 'Erika', 'Martinez', 2085554725, 'Erikamartinez@mymail.com'),
(4, 'Ross', 'Larsen', 2085554689, 'rosstheboss@mymail.com'),
(5, 'Freddie', 'Estrada', 2085554687, 'freddiestrada@mymail.com'),
(6, 'Paek', 'Jun-Seo', 2085554688, 'paekjunseo@mymail.com'),
(7, 'Ray', 'Bolger', 2085554694, 'scarecrow@mymail.com'),
(8, 'Guadalupe', 'Chavez', 2085554714, 'lupechavez@mymail.com'),
(9, 'Lindsay', 'Page', 2085554707, 'lindsaypage752@mymail.com'),
(10, 'Kurt', 'Evans', 2085554691, 'kevans@mymail.com'),
(11, 'Thurman', 'Howell', 2085554693, 'thurmanhowellthethird@mymail.com'),
(12, 'Calvin', 'Price', 2085554680, 'calvinpriceless@mymail.com')

) 
AS Source (TenantId, FirstName, LastName, Phone, Email) 
ON Target.TenantId = Source.TenantId 
WHEN NOT MATCHED BY TARGET THEN 
INSERT (FirstName, LastName, Phone, Email) 
VALUES (FirstName, LastName, Phone, Email);

MERGE INTO Apartment AS Target
USING (VALUES 
(1, '2401 Alpine St', 1100, 95, 10, 3/14/2017, 0),
(2, '2402 Alpine St', 890, 75, 5, 5/30/2017, 0),
(3, '2403 Alpine St', 690, 60, 5, 4/1/2017, 0),
(4, '2404 Alpine St', 1100, 95, 5, 3/31/2017, 0),
(5, '2405 Alpine St', 890, 75, 10, 5/31/2017, 0),
(6, '2406 Alpine St', 690, 60, 0, 5/30/2017, 0),
(7, '2407 Alpine St', 1100, 95, 10, 4/15/2017, 0),
(8, '2408 Alpine St', 890, 75, 5, 5/22/2017, 0),
(9, '2409 Alpine St', 690, 60, 10, 4/28/2017, 0),
(10, '2410 Alpine St', 1100, 95, 10, 3/2/2017, 0),
(11, '2411 Alpine St', 890, 75, 10, 4/3/2017, 0),
(12, '2412 Alpine St', 690, 60, 5, 6/19/2017, 0)

)
AS Source (AptId, AptAddress, SqFootage, MonthUtilityFee, MonthParkfee, LastCleanDate, IsVacant)
ON Target.AptId = Source.AptId
WHEN NOT MATCHED BY TARGET THEN
INSERT (AptAddress, SqFootage, MonthUtilityFee, MonthParkfee, LastCleanDate, IsVacant)
VALUES (AptAddress, SqFootage, MonthUtilityFee, MonthParkfee, LastCleanDate, IsVacant);

MERGE INTO Contract AS Target
USING (VALUES 
(1, 1/1/2017, 12/31/2017, 960, 1, 1),
(2, 4/1/2017, 8/31/2017, 800, 2, 2),
(3, 6/1/2017, 3/31/2018, 750, 3, 3),
(4, 3/21/2017, 3/1/2018, 960, 4, 4),
(5, 2/5/2017, 2/4/2018, 800, 5, 5),
(6, 5/30/2017, 8/31/2017, 750, 6, 6),
(7, 9/1/2016, 8/31/2017, 960, 7, 7),
(8, 8/22/2016, 8/21/2017, 800, 8, 8),
(9, 4/3/2017, 10/10/2017, 750, 9, 9),
(10, 9/2/2016, 9/1/2017, 960, 10, 10),
(11, 1/3/2017, 1/2/2018, 800, 11, 11),
(12, 3/20/2017, 3/21/2018, 750, 12, 12)

)
AS Source (ContractId, StartDate, EndDate, MonthlyRent, AptId, TenantId)
ON Target.ContractId = Source.ContractId
WHEN NOT MATCHED BY TARGET THEN
INSERT (StartDate, EndDate, MonthlyRent, AptId, TenantId)
VALUES (StartDate, EndDate, MonthlyRent, AptId, TenantId);
GO
