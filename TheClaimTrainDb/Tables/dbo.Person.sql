CREATE TABLE [dbo].[Person]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[TitleId] [int] NULL,
[FirstName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Address1] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Address2] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Town] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[County] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PostCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PhoneNumber] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EmailAddress] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Person] ADD CONSTRAINT [PK__Person__3214EC070FBC5094] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Person] ADD CONSTRAINT [FK_Person_Title] FOREIGN KEY ([TitleId]) REFERENCES [dbo].[Title] ([Id])
GO
