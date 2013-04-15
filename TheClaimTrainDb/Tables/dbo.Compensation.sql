CREATE TABLE [dbo].[Compensation]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[CompanyId] [int] NOT NULL,
[DurationId] [int] NOT NULL,
[Percentage] [int] NOT NULL,
[FormatId] [int] NOT NULL,
[FinePrint] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Compensation] ADD CONSTRAINT [PK__Compensa__3214EC0763B350C5] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Compensation] ADD CONSTRAINT [FK_Compensation_Company] FOREIGN KEY ([CompanyId]) REFERENCES [dbo].[Company] ([Id])
GO
ALTER TABLE [dbo].[Compensation] ADD CONSTRAINT [FK_Compensation_Duration] FOREIGN KEY ([DurationId]) REFERENCES [dbo].[Duration] ([Id])
GO
ALTER TABLE [dbo].[Compensation] ADD CONSTRAINT [FK_Compensation_Format] FOREIGN KEY ([FormatId]) REFERENCES [dbo].[Format] ([Id])
GO
