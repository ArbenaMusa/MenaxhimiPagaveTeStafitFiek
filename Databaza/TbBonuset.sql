CREATE TABLE [dbo].[Bonuset] (
    [Id]							INT				NOT NULL,
    [UserId]						INT				NOT NULL,
    [OretShtese]					DECIMAL (18, 4) NULL,
    [QmimiPerOreShtese]				DECIMAL (18, 4)	NULL,
	[OrePuneNeJave]					DECIMAL (18, 4)	NULL,
    [QmimiPerOrePune]				DECIMAL (18, 4)	NULL,
	[TemeDiplomeBachelor]			INT				NULL,
    [QmimiPerTemeDiplomeBachelor]	DECIMAL (18, 4)	NULL,
	[TemeDiplomeMaster]				INT				NULL,
    [QmimiPerTemeDiplomeMaster]		DECIMAL (18, 4)	NULL,
    [ProvimeMaster]					INT				NULL,
    [QmimiPerProvimeMaster]			DECIMAL (18, 4)	NULL
    CONSTRAINT [PK_Bonuset_Id] PRIMARY KEY CLUSTERED ([Id] ASC) WITH (FILLFACTOR = 90),
	CONSTRAINT [FK_Bonuset_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id]),
    );