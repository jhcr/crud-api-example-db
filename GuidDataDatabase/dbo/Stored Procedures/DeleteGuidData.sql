﻿CREATE PROCEDURE [dbo].[WM_DeleteGuidData]
	@Guid UNIQUEIDENTIFIER
AS
BEGIN
DELETE FROM dbo.GuidData WHERE Guid = @Guid;
END