CREATE PROCEDURE [dbo].[WM_GetGuidDataByGuid]
	@Guid UNIQUEIDENTIFIER
AS
BEGIN
	SELECT [Guid], [User], [Expire], [DateInserted],[InsertedBy],[DateUpdated],[UpdatedBy] FROM dbo.GuidData WHERE [Guid] = @Guid;
END