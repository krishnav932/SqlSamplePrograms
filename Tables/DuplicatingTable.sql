--right click table > script table as > create to > new query editor window
USE [master]
GO

/****** Object:  Table [dbo].[example]    Script Date: 12-05-2021 15:48:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[xample](
	[nvarchartype] [nvarchar](20) NULL,
	[varchartype] [varchar](20) NULL,
	[chartype] [char](20) NULL,
	[nchartype] [nchar](20) NULL
) ON [PRIMARY]
GO

select * from xample
--------------------------
--another way of doing
--duplicating an old table into new table with all the rows and columns as it is.


SELECT * INTO datatyp FROM  tblDataTypes

select * from datatyp
--------------------------
--duplicating an old table into new table with only the structure and not with the data
SELECT * INTO datatypes FROM  tblDataTypes where 1=2

select * from datatypes
