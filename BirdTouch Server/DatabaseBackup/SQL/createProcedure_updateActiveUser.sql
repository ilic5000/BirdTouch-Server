USE [birdtouch]
GO

/****** Object:  StoredProcedure [dbo].[updateActiveUser]    Script Date: 4.11.2017. 18.52.03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[updateActiveUser]
       @user_id                     INT, 
       @latitude                    DECIMAL(11,8), 
       @longitude                   DECIMAL(11,8), 
       @active_mode                 INT        
               
AS 
BEGIN 
     SET NOCOUNT ON 

	 UPDATE [birdtouch].[dbo].[active_users] SET 
	 location_latitude = @latitude
	,location_longitude = @longitude,
	datetime_last_update = GETDATE()
	WHERE user_id = @user_id AND active_mode = @active_mode
END 

GO

