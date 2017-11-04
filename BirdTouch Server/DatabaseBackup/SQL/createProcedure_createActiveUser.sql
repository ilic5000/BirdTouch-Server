USE [birdtouch]
GO

/****** Object:  StoredProcedure [dbo].[createActiveUser]    Script Date: 4.11.2017. 18.51.41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[createActiveUser]
       @user_id                     INT, 
       @latitude                    DECIMAL(11,8), 
       @longitude                   DECIMAL(11,8), 
       @active_mode                 INT        
               
AS 
BEGIN 
     SET NOCOUNT ON 

     INSERT INTO [birdtouch].[dbo].[active_users]
          ( 
            user_id                   ,
            location_latitude         ,
            location_longitude        ,
            active_mode               ,
            datetime_last_update      
                                                 
          ) 
     VALUES 
          ( 
            @user_id                   ,
            @latitude                    ,
            @longitude                  ,
            @active_mode                ,
            GETDATE()                       
          ) 

END 

GO

