USE [ticketizer]
GO
/****** Object:  Table [dbo].[admins]    Script Date: 3/8/2017 10:14:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admins](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[login_name] [varchar](50) NULL,
	[password] [varchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[articles]    Script Date: 3/8/2017 10:14:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[articles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](255) NULL,
	[date_created] [datetime] NULL,
	[text] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[departments]    Script Date: 3/8/2017 10:14:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[departments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[notes]    Script Date: 3/8/2017 10:14:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[notes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date_created] [datetime] NULL,
	[admin_id] [int] NULL,
	[ticket_id] [int] NULL,
	[text] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tickets]    Script Date: 3/8/2017 10:14:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tickets](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ticket_number] [datetime] NULL,
	[product] [varchar](255) NULL,
	[department_id] [int] NULL,
	[severity] [varchar](255) NULL,
	[description] [text] NULL,
	[user_id] [int] NULL,
	[open_status] [tinyint] NULL,
	[status] [varchar](255) NULL,
	[converted_ticket_number] [varchar](255) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

/****** Object: Table[dbo].[tickets] Attempt at Creating dummy table for testing tickets - Grinil Khanna ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tickets_dummy](
    [id] [int] IDENTITY(1, 1) NOT NULL,
    [ticket_number] [datetime] NULL,
    [product] [varchar](255) NULL,
    [department_id] [int] NULL,
    [severity] [varchar](255) NULL,
    [description] [text] NULL,
    [user_id] [int] NULL,
    [open_status] [tinyint] NULL,
    [status] [varchar](255) NULL,
	[converted_ticket_number] [varchar](255) NULL
) ON [PRIMARY] TextIMAGE_ON [PRIMARY]

GO

INSERT INTO tickets_dummy([ticket_number],[product],[department_id],[severity],[description],[user_id],[open_status],[status]) VALUES('2016-06-26 14:59:10','Computer3','Consumer Products','High','Erratic Touchscreen','7','0','Resolved'),('2016-04-07 11:59:35','BusServer1','Government Contract','High','User Error','2','1','Resolved'),('2016-03-13 09:38:40','NetworkPlan3','Network','Medium','Water Damage','8','1','Closed'),('2016-05-12 07:42:25','Computer4','Consumer Products','Low','User Error','7','0','Flagged'),('2018-02-16 05:53:48','BusServer1','','Low','Failure to Connect to Wifi','8','0',''),('2017-04-17 11:14:49','Computer2','Business Products','Medium','Out of Range error','5','1','Closed'),('2018-03-07 06:48:06','NetworkPlan1','Network','Low','Startup Issues','7','0','Flagged'),('2018-02-18 18:31:26','Tablet2','IT','Low','Connection Indicators','9','1','Resolved'),('2017-11-19 20:55:14','SatCom2','Business Products','','Network Disconnecting','8','1','Closed'),('2016-12-17 14:01:04','NetworkHostOpen','Business Products','Medium','Out of Range error','2','1','Resolved'),('2016-12-26 15:46:53','Tablet1','','Low','Startup Issues','2','1','Resolved'),('2017-04-25 14:15:55','Modem3','Network','','Bulb replacement','6','0','Flagged'),('2016-09-16 21:14:59','Tablet3','Government Contract','High','Fried Motherboard','7','1',''),('2016-05-17 07:13:58','SatCom1','Government Contract','Low','Firewall','8','0',''),('2016-09-06 08:26:07','Computer4','Government Contract','Medium','Out of Range error','2','1',''),('2017-11-16 06:21:25','SatCom2','Consumer Products','High','Erratic Touchscreen','9','1','Unresolved'),('2017-05-22 17:35:50','NetworkHostOpen','Consumer Products','Medium','Failure to Connect to Wifi','1','0',''),('2018-03-07 00:22:40','Tablet2','Government Contract','','Broken','7','0','Closed'),('2017-08-02 01:57:18','Computer1','IT','Low','Location Services','9','1','Resolved'),('2017-03-13 19:32:37','','Business Products','','Location Services','4','1','Closed'),('2017-12-25 00:07:55','NetworkHostBus','Government Contract','','Bulb replacement','7','1','Flagged'),('2016-04-01 13:56:00','Computer4','IT','','Firewall','1','0','Flagged'),('2018-02-02 17:50:25','BusServer1','Consumer Products','High','Hardware Setup','9','0','Resolved'),('2016-07-16 16:12:32','SatCom2','Business Products','','Virus','4','1','Flagged'),('2016-09-22 18:29:43','NetworkPlan2','IT','Medium','Firewall','2','1','Unresolved'),('2017-08-03 11:06:18','NetworkPlan3','Business Products','High','Inaccurate Location','4','1','Flagged'),('2017-10-23 05:21:56','BusServer3','Network','','Network Error','10','0','Closed'),('2016-09-07 02:18:49','BusServer1','Business Products','','Functioning with continuous display of red light','10','0',''),('2016-07-13 00:29:51','NetworkPlan2','','High','','9','0','Closed'),('2016-05-08 07:53:11','BusServer3','IT','High','User Error','1','0','Flagged'),('2017-08-04 02:58:35','Tablet2','Government Contract','High','Warranty','10','1',''),('2016-11-08 18:23:48','NetworkHostBus','Consumer Products','High','Broken','6','1',''),('2017-05-06 00:54:27','Computer3','Business Products','High','Startup Issues','3','1','Flagged'),('2017-03-22 01:40:40','Computer4','Business Products','Low','Water Damage','7','1',''),('2017-04-25 11:39:17','BusServer1','Consumer Products','Medium','Virus','10','1',''),('2016-03-10 12:20:41','Computer1','Consumer Products','','User Error','3','1','Flagged'),('2017-03-11 09:41:26','Computer3','IT','','Firewall','3','1',''),('2017-02-20 14:09:48','Computer2','Business Products','Low','Failure to Load','4','0','Unresolved'),('2017-07-14 03:02:21','SatCom2','Consumer Products','Low','Failure to Connect to Wifi','4','0','Resolved'),('2017-03-09 10:02:13','Tablet2','IT','','Network Disconnecting','8','1','Unresolved'),('2018-01-13 06:49:53','NetworkHostBus','Consumer Products','','Water Damage','10','0','Unresolved'),('2016-09-30 23:12:30','NetworkHostOpen','Network','Medium','Fried Motherboard','6','1','Unresolved'),('2017-04-18 10:57:04','NetworkPlan2','Network','','Inaccurate Location','10','1','Flagged'),('2017-05-17 23:29:30','BusServer3','Consumer Products','High','Failure to Load','7','1','Flagged'),('2017-10-23 04:49:36','NetworkPlan2','Government Contract','Medium','Running Hot','1','1','Resolved'),('2017-10-09 21:16:50','BusServer3','Network','','Network Error','2','1','Resolved'),('2016-08-31 20:37:07','Tablet2','IT','Medium','','5','0','Flagged'),('2017-09-13 10:32:01','Computer1','Business Products','Medium','Functioning with continuous display of red light','9','0','Flagged'),('2016-05-22 11:02:11','NetworkHostOpen','Consumer Products','','Running Hot','8','1','Unresolved'),('2017-09-12 06:25:04','NetworkPlan2','','Medium','Broken','10','0',''),('2017-12-18 21:20:46','NetworkHostOpen','Government Contract','Low','Firewall','6','1',''),('2017-03-04 19:44:53','Tablet3','Business Products','High','Functioning with continuous display of red light','10','1','Closed'),('2017-06-05 03:31:17','NetworkPlan1','IT','High','Cracked','8','1',''),('2017-10-24 15:11:01','NetworkPlan1','IT','High','Cracked','4','1',''),('2018-02-04 05:20:57','SatCom2','IT','Medium','User Error','3','1',''),('2017-01-28 06:12:18','Computer2','IT','High','Network Error','9','0','Closed'),('2016-03-30 11:19:45','NetworkPlan1','IT','Low','Intermittent Shutdown','4','1','Unresolved'),('2017-11-05 21:51:52','SatCom1','','','Running Hot','9','0','Flagged'),('2016-04-12 03:24:10','SatCom1','','High','Erratic Touchscreen','6','0','Resolved'),('2017-05-21 03:27:57','','','Low','Virus','1','0','Flagged'),('2018-01-28 02:37:48','NetworkHostBus','Government Contract','Low','Intermittent Shutdown','5','0','Resolved'),('2017-02-24 23:01:22','BusServer1','Government Contract','High','Failure to Connect to Wifi','3','0','Closed'),('2016-05-13 04:10:01','Modem3','','Low','Startup Issues','3','1','Closed'),('2016-07-20 15:07:09','','Consumer Products','Medium','Password/Login Issues','3','0','Closed'),('2016-06-11 21:03:48','BusServer3','Business Products','Low','Password/Login Issues','10','0',''),('2016-10-12 14:43:39','SatCom1','IT','','Failure to Connect to Wifi','7','0','Closed'),('2017-09-05 00:20:36','Tablet1','Consumer Products','','','6','1','Flagged'),('2016-07-05 18:05:14','BusServer2','','High','Running Hot','3','1','Flagged'),('2016-06-09 08:04:14','BusServer2','Network','','Intermittent Shutdown','8','1','Unresolved'),('2017-12-04 17:56:56','Computer1','Network','Medium','Intermittent Shutdown','3','0','Unresolved'),('2017-01-15 11:25:40','NetworkPlan2','Government Contract','High','Network Error','7','0',''),('2016-10-16 13:15:51','Computer5','Business Products','','Failure to Load','5','1','Flagged'),('2017-01-04 06:03:42','NetworkPlan2','Government Contract','Low','Fried Motherboard','5','0','Unresolved'),('2017-11-04 12:56:07','NetworkPlan2','','High','Functioning with continuous display of red light','5','0','Resolved'),('2016-09-30 13:55:36','Computer1','','High','Warranty','7','0',''),('2016-09-21 05:08:18','SatCom2','Government Contract','Low','Bulb replacement','10','0','Flagged'),('2016-03-08 08:46:42','SatCom1','IT','High','Encryption Glitches','10','1','Resolved'),('2017-05-26 12:04:01','BusServer2','IT','','','2','0',''),('2017-12-02 00:49:52','Computer1','Business Products','Medium','Encryption Glitches','4','1','Flagged'),('2017-02-20 00:58:07','Computer1','Network','Low','Connection Indicators','1','0','Closed'),('2018-01-27 05:11:11','SatCom1','Network','Low','Startup Issues','7','0','Flagged'),('2016-05-14 05:34:00','NetworkHostBus','Government Contract','Medium','Dimming','2','0','Flagged'),('2016-06-26 21:46:34','BusServer3','Consumer Products','High','Virus','8','0','Resolved'),('2017-02-10 13:29:34','BusServer1','Network','','Failure to Connect to Wifi','9','1',''),('2017-07-24 12:33:41','Tablet3','Consumer Products','Medium','Connection Indicators','7','0',''),('2018-01-12 15:22:57','Modem2','Business Products','High','Bulb replacement','7','0','Flagged'),('2017-07-02 08:52:59','Computer1','Network','Medium','Inaccurate Location','5','0',''),('2017-06-03 04:20:56','Computer2','','Medium','Encryption Glitches','10','0','Closed'),('2016-11-05 18:17:13','Tablet1','IT','Medium','Broken','8','1','Unresolved'),('2017-12-25 16:14:32','SatCom1','','High','Hardware Setup','6','1','Unresolved'),('2018-01-08 16:45:11','NetworkPlan1','Network','','Inaccurate Location','9','1','Flagged'),('2017-12-05 12:08:01','Computer3','','High','Cracked','10','0','Unresolved'),('2016-07-26 03:52:04','','IT','High','Virus','2','0','Flagged'),('2016-05-13 06:08:05','Computer5','Government Contract','Low','Water Damage','3','1','Flagged'),('2018-01-24 13:49:19','SatCom2','','High','Failure to Load','2','0',''),('2017-05-25 10:25:48','NetworkHostBus','Network','Medium','Erratic Touchscreen','5','1',''),('2017-07-11 01:58:19','BusServer3','Network','Low','Connection Indicators','1','0','Unresolved'),('2017-08-11 02:11:14','Computer2','Business Products','','User Error','4','1','Resolved'),('2016-07-03 17:56:44','NetworkPlan2','Consumer Products','High','Cracked','7','0','Closed'),('2017-12-02 23:33:30','Tablet3','Government Contract','High','Inaccurate Location','10','0','Flagged');

GO
/****** Object:  Table [dbo].[tickets_admins]    Script Date: 3/8/2017 10:14:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tickets_admins](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ticket_id] [int] NULL,
	[admin_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tickets_articles]    Script Date: 3/8/2017 10:14:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tickets_articles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ticket_id] [int] NULL,
	[article_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[users]    Script Date: 3/8/2017 10:14:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[address] [varchar](255) NULL,
	[phone] [varchar](255) NULL,
	[email] [varchar](255) NULL
) ON [PRIMARY]

GO
