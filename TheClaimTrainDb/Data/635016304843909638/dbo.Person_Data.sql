SET IDENTITY_INSERT [dbo].[Person] ON
INSERT INTO [dbo].[Person] ([Id], [TitleId], [FirstName], [LastName], [Address1], [Address2], [Town], [County], [PostCode], [PhoneNumber], [EmailAddress]) VALUES (1, 1, 'Steven', 'Hollidge', '1 Underhill', NULL, 'Croydon', 'Surrey', 'CRX XXX', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Person] OFF
