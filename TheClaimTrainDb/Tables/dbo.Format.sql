CREATE TABLE [dbo].[Format]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Description] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Format] ADD CONSTRAINT [PK__Format__3214EC07F11E47B9] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
