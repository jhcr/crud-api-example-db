CREATE PROCEDURE [dbo].[CreateGuidData]
	@Guid UNIQUEIDENTIFIER,
	@User NVARCHAR(255),
	@Expire BIGINT
AS
BEGIN
INSERT INTO dbo.GuidData ([Guid], [User], [Expire], [DateInserted],[InsertedBy],[DateUpdated],[UpdatedBy])
VALUES(@Guid, @User, @Expire, GETDATE(),USER,GETDATE(),USER);

SELECT [Guid], [User], [Expire], [DateInserted],[InsertedBy],[DateUpdated],[UpdatedBy] FROM dbo.GuidData WHERE [Guid] = @Guid;
END