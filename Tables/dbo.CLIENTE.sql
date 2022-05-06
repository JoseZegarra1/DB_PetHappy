CREATE TABLE [dbo].[CLIENTE]
(
[IDCLI] [int] NOT NULL IDENTITY(1, 1),
[NOMCLI] [varchar] (50) COLLATE Modern_Spanish_CI_AS NOT NULL,
[APECLI] [varchar] (50) COLLATE Modern_Spanish_CI_AS NOT NULL,
[DNICLI] [char] (8) COLLATE Modern_Spanish_CI_AS NOT NULL,
[DIRCLI] [varchar] (100) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CELCLI] [char] (9) COLLATE Modern_Spanish_CI_AS NOT NULL,
[EMACLI] [varchar] (100) COLLATE Modern_Spanish_CI_AS NOT NULL,
[ESTCLI] [char] (1) COLLATE Modern_Spanish_CI_AS NOT NULL,
[CODUBI] [char] (6) COLLATE Modern_Spanish_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CLIENTE] ADD CONSTRAINT [CLIENTE_pk] PRIMARY KEY CLUSTERED  ([IDCLI]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CLIENTE] ADD CONSTRAINT [CLIENTE_UBIGEO] FOREIGN KEY ([CODUBI]) REFERENCES [dbo].[UBIGEO] ([CODUBI])
GO