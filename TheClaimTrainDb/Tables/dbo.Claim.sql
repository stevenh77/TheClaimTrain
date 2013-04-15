CREATE TABLE [dbo].[Claim]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[PersonId] [int] NOT NULL,
[CompanyId] [int] NOT NULL,
[StationFrom] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[StationTo] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ExpectedTime] [time] NOT NULL,
[ActualTime] [time] NOT NULL,
[TicketUrl] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Claim] ADD CONSTRAINT [PK__Claim__3214EC07A3BE105E] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Claim] ADD CONSTRAINT [FK_Claim_Company] FOREIGN KEY ([CompanyId]) REFERENCES [dbo].[Company] ([Id])
GO
ALTER TABLE [dbo].[Claim] ADD CONSTRAINT [FK_Claim_Person] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([Id])
GO
