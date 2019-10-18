CREATE TABLE [dbo].[GuidData] (
    [Guid]         UNIQUEIDENTIFIER NOT NULL,
    [User]         NVARCHAR (255)   NULL,
    [Expire]       BIGINT           NOT NULL,
    [DateInserted] DATETIME         NOT NULL,
    [InsertedBy]   NVARCHAR (255)   NOT NULL,
    [DateUpdated]  DATETIME         NOT NULL,
    [UpdatedBy]    NVARCHAR (255)   NOT NULL,
    CONSTRAINT [PK_GuidData] PRIMARY KEY CLUSTERED ([Guid] ASC)
);