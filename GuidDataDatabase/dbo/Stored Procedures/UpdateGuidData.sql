CREATE PROCEDURE [dbo].[WM_UpdateGuidData]
	@Guid UNIQUEIDENTIFIER,
	@User NVARCHAR(255),
	@Expire BIGINT
AS
BEGIN
	UPDATE dbo.GuidData
	SET [User] = ISNULL(@User, [User]), [Expire] = ISNULL(@Expire, Expire), [DateUpdated] = GETDATE(), [UpdatedBy] = USER
	WHERE Guid = @Guid;

	SELECT [Guid], [User], [Expire], [DateInserted],[InsertedBy],[DateUpdated],[UpdatedBy] FROM dbo.GuidData WHERE [Guid] = @Guid;
END