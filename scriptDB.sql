USE [master]
GO
/****** Object:  Database [HouseBooking]    Script Date: 6/15/2022 1:03:13 PM ******/
CREATE DATABASE [HouseBooking]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HouseBooking', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\HouseBooking.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HouseBooking_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\HouseBooking_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [HouseBooking] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HouseBooking].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HouseBooking] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HouseBooking] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HouseBooking] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HouseBooking] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HouseBooking] SET ARITHABORT OFF 
GO
ALTER DATABASE [HouseBooking] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [HouseBooking] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HouseBooking] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HouseBooking] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HouseBooking] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HouseBooking] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HouseBooking] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HouseBooking] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HouseBooking] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HouseBooking] SET  ENABLE_BROKER 
GO
ALTER DATABASE [HouseBooking] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HouseBooking] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HouseBooking] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HouseBooking] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HouseBooking] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HouseBooking] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HouseBooking] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HouseBooking] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HouseBooking] SET  MULTI_USER 
GO
ALTER DATABASE [HouseBooking] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HouseBooking] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HouseBooking] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HouseBooking] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HouseBooking] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HouseBooking] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [HouseBooking] SET QUERY_STORE = OFF
GO
USE [HouseBooking]
GO
/****** Object:  Table [dbo].[Additional_service]    Script Date: 6/15/2022 1:03:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Additional_service](
	[add_serviceId] [varchar](20) NOT NULL,
	[add_serviceName] [nvarchar](max) NULL,
	[add_serviceDesc] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[add_serviceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 6/15/2022 1:03:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[bill_id] [varchar](20) NOT NULL,
	[date] [date] NULL,
	[total] [float] NULL,
	[status] [nvarchar](50) NULL,
	[user_id] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[bill_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill_detail]    Script Date: 6/15/2022 1:03:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill_detail](
	[bill_id] [varchar](20) NOT NULL,
	[room_id] [varchar](20) NOT NULL,
	[start_date] [date] NULL,
	[end_date] [date] NULL,
	[price] [float] NULL,
	[note] [nvarchar](max) NULL,
	[expense] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[bill_id] ASC,
	[room_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Building]    Script Date: 6/15/2022 1:03:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Building](
	[building_id] [varchar](20) NOT NULL,
	[building_desc] [nvarchar](max) NULL,
	[building_type] [varchar](20) NULL,
	[building_number] [varchar](20) NULL,
	[street_id] [varchar](20) NULL,
	[user_id] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[building_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Building_Additional_service]    Script Date: 6/15/2022 1:03:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Building_Additional_service](
	[building_id] [varchar](20) NOT NULL,
	[add_serviceId] [varchar](20) NOT NULL,
	[add_service_status] [bit] NULL,
	[add_service_price] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[building_id] ASC,
	[add_serviceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Building_Rules]    Script Date: 6/15/2022 1:03:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Building_Rules](
	[building_id] [varchar](20) NOT NULL,
	[ruleId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[building_id] ASC,
	[ruleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 6/15/2022 1:03:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[city_id] [varchar](20) NOT NULL,
	[city_name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[city_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Convenient]    Script Date: 6/15/2022 1:03:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Convenient](
	[convenient_id] [varchar](20) NOT NULL,
	[convenient_name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[convenient_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[District]    Script Date: 6/15/2022 1:03:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[District](
	[district_id] [varchar](20) NOT NULL,
	[district_name] [nvarchar](100) NOT NULL,
	[city_id] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[district_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 6/15/2022 1:03:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[feedback_id] [varchar](20) NOT NULL,
	[comment] [nvarchar](max) NULL,
	[rating] [int] NULL,
	[status] [nvarchar](20) NULL,
	[feedback_date] [date] NULL,
	[report] [int] NULL,
	[room_id] [varchar](20) NULL,
	[user_id] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[feedback_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 6/15/2022 1:03:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[room_id] [varchar](20) NOT NULL,
	[room_name] [nvarchar](100) NOT NULL,
	[room_status] [nvarchar](100) NULL,
	[room_desc] [nvarchar](max) NULL,
	[room_price] [float] NOT NULL,
	[type_id] [varchar](20) NULL,
	[building_id] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[room_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room_Convenient]    Script Date: 6/15/2022 1:03:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room_Convenient](
	[room_id] [varchar](20) NOT NULL,
	[convenient_id] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[room_id] ASC,
	[convenient_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room_Images]    Script Date: 6/15/2022 1:03:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room_Images](
	[room_id] [varchar](20) NOT NULL,
	[image_link] [varchar](200) NOT NULL,
	[image_name] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[room_id] ASC,
	[image_link] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rules]    Script Date: 6/15/2022 1:03:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rules](
	[ruleId] [int] NOT NULL,
	[rule_content] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ruleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 6/15/2022 1:03:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[street_id] [varchar](20) NOT NULL,
	[street_name] [nvarchar](100) NOT NULL,
	[district_id] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[street_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type_Of_Room]    Script Date: 6/15/2022 1:03:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type_Of_Room](
	[type_id] [varchar](20) NOT NULL,
	[type_name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 6/15/2022 1:03:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[user_id] [varchar](20) NOT NULL,
	[user_name] [nvarchar](100) NULL,
	[avatar] [varchar](max) NULL,
	[role] [varchar](30) NOT NULL,
	[username] [varchar](20) NULL,
	[password] [varchar](20) NULL,
	[phone] [varchar](10) NULL,
	[email] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_Users]
GO
ALTER TABLE [dbo].[Bill_detail]  WITH CHECK ADD  CONSTRAINT [FK_Bill_datail_Bill] FOREIGN KEY([bill_id])
REFERENCES [dbo].[Bill] ([bill_id])
GO
ALTER TABLE [dbo].[Bill_detail] CHECK CONSTRAINT [FK_Bill_datail_Bill]
GO
ALTER TABLE [dbo].[Bill_detail]  WITH CHECK ADD  CONSTRAINT [FK_Bill_detail_Room] FOREIGN KEY([room_id])
REFERENCES [dbo].[Room] ([room_id])
GO
ALTER TABLE [dbo].[Bill_detail] CHECK CONSTRAINT [FK_Bill_detail_Room]
GO
ALTER TABLE [dbo].[Building]  WITH CHECK ADD  CONSTRAINT [FK_Building_Street] FOREIGN KEY([street_id])
REFERENCES [dbo].[Street] ([street_id])
GO
ALTER TABLE [dbo].[Building] CHECK CONSTRAINT [FK_Building_Street]
GO
ALTER TABLE [dbo].[Building]  WITH CHECK ADD  CONSTRAINT [FK_Building_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Building] CHECK CONSTRAINT [FK_Building_User]
GO
ALTER TABLE [dbo].[Building_Additional_service]  WITH CHECK ADD  CONSTRAINT [FK_Building_Additional_service_Additional_service] FOREIGN KEY([add_serviceId])
REFERENCES [dbo].[Additional_service] ([add_serviceId])
GO
ALTER TABLE [dbo].[Building_Additional_service] CHECK CONSTRAINT [FK_Building_Additional_service_Additional_service]
GO
ALTER TABLE [dbo].[Building_Additional_service]  WITH CHECK ADD  CONSTRAINT [FK_Building_Additional_service_Building] FOREIGN KEY([building_id])
REFERENCES [dbo].[Building] ([building_id])
GO
ALTER TABLE [dbo].[Building_Additional_service] CHECK CONSTRAINT [FK_Building_Additional_service_Building]
GO
ALTER TABLE [dbo].[Building_Rules]  WITH CHECK ADD  CONSTRAINT [FK_Building_Rules_Building] FOREIGN KEY([building_id])
REFERENCES [dbo].[Building] ([building_id])
GO
ALTER TABLE [dbo].[Building_Rules] CHECK CONSTRAINT [FK_Building_Rules_Building]
GO
ALTER TABLE [dbo].[Building_Rules]  WITH CHECK ADD  CONSTRAINT [FK_Building_Rules_Rules] FOREIGN KEY([ruleId])
REFERENCES [dbo].[Rules] ([ruleId])
GO
ALTER TABLE [dbo].[Building_Rules] CHECK CONSTRAINT [FK_Building_Rules_Rules]
GO
ALTER TABLE [dbo].[District]  WITH CHECK ADD  CONSTRAINT [FK_District_City] FOREIGN KEY([city_id])
REFERENCES [dbo].[City] ([city_id])
GO
ALTER TABLE [dbo].[District] CHECK CONSTRAINT [FK_District_City]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Room] FOREIGN KEY([room_id])
REFERENCES [dbo].[Room] ([room_id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Room]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Users]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_Building] FOREIGN KEY([building_id])
REFERENCES [dbo].[Building] ([building_id])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_Building]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_TypeOfRoom] FOREIGN KEY([type_id])
REFERENCES [dbo].[Type_Of_Room] ([type_id])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_TypeOfRoom]
GO
ALTER TABLE [dbo].[Room_Convenient]  WITH CHECK ADD  CONSTRAINT [FK_Room_Convenient_Convenient] FOREIGN KEY([convenient_id])
REFERENCES [dbo].[Convenient] ([convenient_id])
GO
ALTER TABLE [dbo].[Room_Convenient] CHECK CONSTRAINT [FK_Room_Convenient_Convenient]
GO
ALTER TABLE [dbo].[Room_Convenient]  WITH CHECK ADD  CONSTRAINT [FK_Room_Convenient_Room] FOREIGN KEY([room_id])
REFERENCES [dbo].[Room] ([room_id])
GO
ALTER TABLE [dbo].[Room_Convenient] CHECK CONSTRAINT [FK_Room_Convenient_Room]
GO
ALTER TABLE [dbo].[Room_Images]  WITH CHECK ADD  CONSTRAINT [FK_Room_Images_Room] FOREIGN KEY([room_id])
REFERENCES [dbo].[Room] ([room_id])
GO
ALTER TABLE [dbo].[Room_Images] CHECK CONSTRAINT [FK_Room_Images_Room]
GO
ALTER TABLE [dbo].[Street]  WITH CHECK ADD  CONSTRAINT [FK_Street_District] FOREIGN KEY([district_id])
REFERENCES [dbo].[District] ([district_id])
GO
ALTER TABLE [dbo].[Street] CHECK CONSTRAINT [FK_Street_District]
GO
USE [master]
GO
ALTER DATABASE [HouseBooking] SET  READ_WRITE 
GO
