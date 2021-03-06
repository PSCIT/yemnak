USE [master]
GO
/****** Object:  Database [YemnakDB]    Script Date: 10/5/2017 3:12:23 PM ******/
CREATE DATABASE [YemnakDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'YemnakDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\YemnakDB.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'YemnakDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\YemnakDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [YemnakDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [YemnakDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [YemnakDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [YemnakDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [YemnakDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [YemnakDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [YemnakDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [YemnakDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [YemnakDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [YemnakDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [YemnakDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [YemnakDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [YemnakDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [YemnakDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [YemnakDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [YemnakDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [YemnakDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [YemnakDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [YemnakDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [YemnakDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [YemnakDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [YemnakDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [YemnakDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [YemnakDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [YemnakDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [YemnakDB] SET RECOVERY FULL 
GO
ALTER DATABASE [YemnakDB] SET  MULTI_USER 
GO
ALTER DATABASE [YemnakDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [YemnakDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [YemnakDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [YemnakDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [YemnakDB]
GO
/****** Object:  User [PSC\ssalumberwala]    Script Date: 10/5/2017 3:12:23 PM ******/
CREATE USER [PSC\ssalumberwala] FOR LOGIN [PSC\ssalumberwala] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [PSC\ssalumberwala]
GO
/****** Object:  Table [dbo].[ChildrenTb]    Script Date: 10/5/2017 3:12:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChildrenTb](
	[ChildId] [int] IDENTITY(1,1) NOT NULL,
	[ParentCardID] [int] NOT NULL,
	[ChildName] [nvarchar](50) NULL,
	[ChildCivilId] [nvarchar](max) NULL,
	[ChildBOD] [date] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_ChildrenTb] PRIMARY KEY CLUSTERED 
(
	[ChildId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClassicTb]    Script Date: 10/5/2017 3:12:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClassicTb](
	[CardId] [int] IDENTITY(1,1) NOT NULL,
	[HolderName] [nvarchar](max) NULL,
	[HolderPhone] [nvarchar](50) NULL,
	[HolderEmail] [varchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[CivilId] [nvarchar](max) NULL,
	[BOD] [date] NULL,
	[IsValid] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_ClassicTb] PRIMARY KEY CLUSTERED 
(
	[CardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderTb]    Script Date: 10/5/2017 3:12:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderTb](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[OrderTitle] [nvarchar](50) NULL,
	[CardId] [int] NULL,
	[CardName] [nvarchar](max) NULL,
	[CardPhone] [nvarchar](50) NULL,
	[CivilID] [nvarchar](max) NULL,
	[Succeded] [bit] NULL,
	[Pending] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[OrderDate] [datetime] NULL,
 CONSTRAINT [PK_OrderTb] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PartnerTb]    Script Date: 10/5/2017 3:12:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerTb](
	[PartnerID] [int] IDENTITY(1,1) NOT NULL,
	[CrdHolderID] [int] NULL,
	[PartnerName] [nvarchar](max) NULL,
	[PartnerPhone] [nvarchar](50) NULL,
	[PartnerEmail] [nvarchar](max) NULL,
	[PartnerAddress] [nvarchar](max) NULL,
	[PartnerCivilId] [nvarchar](max) NULL,
	[PartnerBOD] [date] NULL,
	[IsValid] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_PartnerTb] PRIMARY KEY CLUSTERED 
(
	[PartnerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PlatinumTb]    Script Date: 10/5/2017 3:12:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PlatinumTb](
	[CardId] [int] IDENTITY(1,1) NOT NULL,
	[HolderName] [nvarchar](max) NULL,
	[HolderPhone] [nvarchar](50) NULL,
	[HolderEmail] [varchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[CivilId] [nvarchar](max) NULL,
	[BOD] [date] NULL,
	[IsValid] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[HolderGender] [nvarchar](50) NULL,
	[PartnerName] [nvarchar](max) NULL,
	[PartnerPhone] [nvarchar](50) NULL,
	[PartnerEmail] [varchar](max) NULL,
	[PartnerCivilID] [nvarchar](max) NULL,
	[PartnerBOD] [date] NULL,
 CONSTRAINT [PK_PlatinumTb] PRIMARY KEY CLUSTERED 
(
	[CardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PremierTb]    Script Date: 10/5/2017 3:12:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PremierTb](
	[CardId] [int] IDENTITY(1,1) NOT NULL,
	[HolderName] [nvarchar](max) NULL,
	[HolderPhone] [nvarchar](50) NULL,
	[HolderEmail] [varchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[CivilId] [nvarchar](max) NULL,
	[BOD] [date] NULL,
	[IsValid] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_PremierTb] PRIMARY KEY CLUSTERED 
(
	[CardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PrestigeTb]    Script Date: 10/5/2017 3:12:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PrestigeTb](
	[CardId] [int] IDENTITY(1,1) NOT NULL,
	[HolderName] [nvarchar](max) NULL,
	[HolderPhone] [nvarchar](50) NULL,
	[HolderEmail] [varchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[CivilId] [nvarchar](max) NULL,
	[BOD] [date] NULL,
	[IsValid] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[HolderGender] [nvarchar](50) NULL,
	[PartnerName] [nvarchar](max) NULL,
	[PartnerPhone] [nvarchar](50) NULL,
	[PartnerEmail] [varchar](max) NULL,
	[PartnerCivilID] [nvarchar](max) NULL,
	[PartnerBOD] [date] NULL,
 CONSTRAINT [PK_PrestigeTb] PRIMARY KEY CLUSTERED 
(
	[CardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UsersTb]    Script Date: 10/5/2017 3:12:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersTb](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[userName] [nvarchar](50) NULL,
	[userPassword] [nvarchar](50) NULL,
	[IsDeleted] [bit] NULL,
	[IsAdmin] [bit] NULL,
 CONSTRAINT [PK_UsersTb] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [YemnakDB] SET  READ_WRITE 
GO
