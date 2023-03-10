USE [master]
GO
/****** Object:  Database [perfectstudio]    Script Date: 3/22/2022 10:31:29 AM ******/
CREATE DATABASE [perfectstudio]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'perfectstudio', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\perfectstudio.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'perfectstudio_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\perfectstudio_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [perfectstudio] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [perfectstudio].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [perfectstudio] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [perfectstudio] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [perfectstudio] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [perfectstudio] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [perfectstudio] SET ARITHABORT OFF 
GO
ALTER DATABASE [perfectstudio] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [perfectstudio] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [perfectstudio] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [perfectstudio] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [perfectstudio] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [perfectstudio] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [perfectstudio] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [perfectstudio] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [perfectstudio] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [perfectstudio] SET  DISABLE_BROKER 
GO
ALTER DATABASE [perfectstudio] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [perfectstudio] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [perfectstudio] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [perfectstudio] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [perfectstudio] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [perfectstudio] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [perfectstudio] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [perfectstudio] SET RECOVERY FULL 
GO
ALTER DATABASE [perfectstudio] SET  MULTI_USER 
GO
ALTER DATABASE [perfectstudio] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [perfectstudio] SET DB_CHAINING OFF 
GO
ALTER DATABASE [perfectstudio] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [perfectstudio] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [perfectstudio] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'perfectstudio', N'ON'
GO
USE [perfectstudio]
GO
/****** Object:  Table [dbo].[booking]    Script Date: 3/22/2022 10:31:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[booking](
	[username] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[contact] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[services] [varchar](50) NULL,
	[date] [varchar](50) NULL,
	[day] [int] NULL,
	[location] [varchar](50) NULL,
	[shooting] [varchar](50) NULL,
	[clothes] [varchar](50) NULL,
	[package] [varchar](50) NULL,
	[amount] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[contact]    Script Date: 3/22/2022 10:31:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[contact](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[subject] [varchar](50) NULL,
	[message] [varchar](50) NULL,
 CONSTRAINT [PK_contact] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[image]    Script Date: 3/22/2022 10:31:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[image](
	[id] [int] NULL,
	[image] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[userdata]    Script Date: 3/22/2022 10:31:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[userdata](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[contactno] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[cpassword] [varchar](50) NULL,
	[roll] [varchar](50) NULL,
 CONSTRAINT [PK_registration] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[venders]    Script Date: 3/22/2022 10:31:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[venders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[main_cat] [varchar](50) NULL,
	[photo_p] [varchar](50) NULL,
	[video_p] [varchar](50) NULL,
	[album_p] [varchar](50) NULL,
	[image] [varchar](50) NULL,
	[cinematic_video] [varchar](50) NULL,
	[location] [varchar](50) NULL,
	[detail] [varchar](50) NULL,
 CONSTRAINT [PK_venders_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[booking] ([username], [email], [contact], [address], [services], [date], [day], [location], [shooting], [clothes], [package], [amount]) VALUES (N'puja patel', N'patelpooja6240@gmail.com', N'9876543215', N'Mendarda', N'Wedding', N'3/18/2022 12:00:00 AM', 3, N'Junagadh', N'Photography', N'Tradisional', N'Medium  Rs.30000', N'140000')
INSERT [dbo].[booking] ([username], [email], [contact], [address], [services], [date], [day], [location], [shooting], [clothes], [package], [amount]) VALUES (N'Pooja Kachhadiya', N'patelpooja6240@gmail.com', N'9876543210', N'Junagadh', N'Wedding', N'1/1/0001 12:00:00 AM', 3, N'Junagadh', N'Photography', N'Tradisional', N'50000', N'140500')
INSERT [dbo].[booking] ([username], [email], [contact], [address], [services], [date], [day], [location], [shooting], [clothes], [package], [amount]) VALUES (N'Pooja Kachhadiya', N'patelpooja6240@gmail.com', N'9876543210', N'Junagadh', N'Wedding', N'1/1/0001 12:00:00 AM', 3, N'Junagadh', N'Photography', N'Tradisional', N'50000', N'130500')
INSERT [dbo].[booking] ([username], [email], [contact], [address], [services], [date], [day], [location], [shooting], [clothes], [package], [amount]) VALUES (N'Pooja Kachhadiya', N'patelpooja6240@gmail.com', N'9876543210', N'Junagadh', N'Wedding', N'1/1/0001 12:00:00 AM', 3, N'Junagadh', N'Photography', N'Tradisional', N'50000', N'130500')
INSERT [dbo].[booking] ([username], [email], [contact], [address], [services], [date], [day], [location], [shooting], [clothes], [package], [amount]) VALUES (N'Pooja Kachhadiya', N'patelpooja6240@gmail.com', N'9876543210', N'Junagadh', N'Baby Shower', N'4/6/2022 12:00:00 AM', 1, N'Surat', N'Photography', N'Westen', N'30000', N'90400')
INSERT [dbo].[booking] ([username], [email], [contact], [address], [services], [date], [day], [location], [shooting], [clothes], [package], [amount]) VALUES (N'Pooja Kachhadiya', N'patelpooja6240@gmail.com', N'9876543210', N'Junagadh', N'Baby Shower', N'4/6/2022 12:00:00 AM', 1, N'Surat', N'Photography', N'Westen', N'30000', N'90400')
INSERT [dbo].[image] ([id], [image]) VALUES (NULL, N'3de3071e47c5452c94ac6f85b20286f1.jpg')
INSERT [dbo].[image] ([id], [image]) VALUES (NULL, N'about.jpg')
SET IDENTITY_INSERT [dbo].[userdata] ON 

INSERT [dbo].[userdata] ([id], [username], [email], [contactno], [address], [password], [cpassword], [roll]) VALUES (1, N'pooja patel', N'poojapatel09@gmail.com', N'9685749878', N'junagadh', N'pooja123', N'pooja123', N'admin')
INSERT [dbo].[userdata] ([id], [username], [email], [contactno], [address], [password], [cpassword], [roll]) VALUES (2, N'nisha sangani', N'nishapatel22@gmail.com', N'9638527415', N'junagadh', N'nisha123', N'nisha123', N'admin')
INSERT [dbo].[userdata] ([id], [username], [email], [contactno], [address], [password], [cpassword], [roll]) VALUES (3, N'', N'', N'', N'', N'', N'', NULL)
INSERT [dbo].[userdata] ([id], [username], [email], [contactno], [address], [password], [cpassword], [roll]) VALUES (4, N'puja patel', N'patelpooja6240@gmail.com', N'9876543215', N'Mendarda', N'PUJA123', N'PUJA123', N'User')
INSERT [dbo].[userdata] ([id], [username], [email], [contactno], [address], [password], [cpassword], [roll]) VALUES (5, N'puja patel', N'patelpooja6240@gmail.com', N'9876543215', N'Mendarda', N'puja123', N'puja123', N'User')
INSERT [dbo].[userdata] ([id], [username], [email], [contactno], [address], [password], [cpassword], [roll]) VALUES (1004, N'Pooja Kachhadiya', N'patelpooja6240@gmail.com', N'9876543210', N'Junagadh', N'pooja9999', N'123456', N'User')
SET IDENTITY_INSERT [dbo].[userdata] OFF
SET IDENTITY_INSERT [dbo].[venders] ON 

INSERT [dbo].[venders] ([id], [main_cat], [photo_p], [video_p], [album_p], [image], [cinematic_video], [location], [detail]) VALUES (2, N'Wedding', N'5000', N'30000', N'40000', N'w1.jpeg', N'35000', N'Junagadh', NULL)
INSERT [dbo].[venders] ([id], [main_cat], [photo_p], [video_p], [album_p], [image], [cinematic_video], [location], [detail]) VALUES (4, N'Wedding', N'4000', N'30000', N'50000', N'i5.jpg', N'40000', N'Junagadh', NULL)
INSERT [dbo].[venders] ([id], [main_cat], [photo_p], [video_p], [album_p], [image], [cinematic_video], [location], [detail]) VALUES (5, N'Wedding', N'500', N'40000', N'40000', N'w5.jpg', N'50000', N'Surat', NULL)
INSERT [dbo].[venders] ([id], [main_cat], [photo_p], [video_p], [album_p], [image], [cinematic_video], [location], [detail]) VALUES (6, N'Wedding', N'500', N'60000', N'40000', N'punw3.jpg', N'50000', N'Jalandhar', NULL)
INSERT [dbo].[venders] ([id], [main_cat], [photo_p], [video_p], [album_p], [image], [cinematic_video], [location], [detail]) VALUES (1005, N'Pre-Wedding', N'5000', N'10000', N'60000', N'p1.jpg', N'30000', NULL, NULL)
INSERT [dbo].[venders] ([id], [main_cat], [photo_p], [video_p], [album_p], [image], [cinematic_video], [location], [detail]) VALUES (1006, N'Pre-Wedding', N'5000', N'10000', N'60000', N'pwd2.jpg', N'40000', N'Junagadh', NULL)
INSERT [dbo].[venders] ([id], [main_cat], [photo_p], [video_p], [album_p], [image], [cinematic_video], [location], [detail]) VALUES (1009, N'Birthday', N'3000', N'8000', N'10000', N'bd1.jpeg', N'15000', N'Clube', NULL)
INSERT [dbo].[venders] ([id], [main_cat], [photo_p], [video_p], [album_p], [image], [cinematic_video], [location], [detail]) VALUES (1010, N'Baby Shower', N'400', N'50000', N'30000', N'baby2.jpg', N'40000', N'Surat', N'...')
INSERT [dbo].[venders] ([id], [main_cat], [photo_p], [video_p], [album_p], [image], [cinematic_video], [location], [detail]) VALUES (1011, N'Baby Shower', N'400', N'50000', N'40000', N'baby5.jpg', N'60000', N'Rajkot', N'...')
INSERT [dbo].[venders] ([id], [main_cat], [photo_p], [video_p], [album_p], [image], [cinematic_video], [location], [detail]) VALUES (1012, N'Birthday', N'600', N'60000', N'50000', N'bd7.jpg', N'60000', N'Surat', N'baby')
INSERT [dbo].[venders] ([id], [main_cat], [photo_p], [video_p], [album_p], [image], [cinematic_video], [location], [detail]) VALUES (1013, N'Birthday', N'500', N'50000', N'45000', N'bd4.jpg', N'60000', N'Baroda', N'Girl')
SET IDENTITY_INSERT [dbo].[venders] OFF
USE [master]
GO
ALTER DATABASE [perfectstudio] SET  READ_WRITE 
GO
