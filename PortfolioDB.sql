USE [master]
GO
CREATE DATABASE [DetailsMag]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DetailsMag', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DetailsMag.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DetailsMag_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DetailsMag_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DetailsMag] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DetailsMag].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DetailsMag] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DetailsMag] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DetailsMag] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DetailsMag] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DetailsMag] SET ARITHABORT OFF 
GO
ALTER DATABASE [DetailsMag] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DetailsMag] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DetailsMag] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DetailsMag] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DetailsMag] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DetailsMag] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DetailsMag] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DetailsMag] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DetailsMag] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DetailsMag] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DetailsMag] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DetailsMag] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DetailsMag] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DetailsMag] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DetailsMag] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DetailsMag] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DetailsMag] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DetailsMag] SET RECOVERY FULL 
GO
ALTER DATABASE [DetailsMag] SET  MULTI_USER 
GO
ALTER DATABASE [DetailsMag] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DetailsMag] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DetailsMag] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DetailsMag] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DetailsMag] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DetailsMag', N'ON'
GO
ALTER DATABASE [DetailsMag] SET QUERY_STORE = OFF
GO
USE [DetailsMag]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2021/04/09 00:34:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contactDetails]    Script Date: 2021/04/09 00:34:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contactDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Number] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
 CONSTRAINT [PK_contactDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Education]    Script Date: 2021/04/09 00:34:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Education](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DateStarted] [datetime2](7) NOT NULL,
	[DateEnded] [datetime2](7) NOT NULL,
	[Institution] [nvarchar](max) NULL,
	[Qualification] [nvarchar](max) NULL,
 CONSTRAINT [PK_Education] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Experiences]    Script Date: 2021/04/09 00:34:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Experiences](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Company] [nvarchar](max) NULL,
	[Position] [nvarchar](max) NULL,
	[DateStarted] [datetime2](7) NOT NULL,
	[DateEnded] [datetime2](7) NOT NULL,
	[Responsibility] [nvarchar](max) NULL,
 CONSTRAINT [PK_Experiences] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedbacks]    Script Date: 2021/04/09 00:34:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedbacks](
	[FeedbackId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[ContactMe] [nvarchar](max) NULL,
 CONSTRAINT [PK_Feedbacks] PRIMARY KEY CLUSTERED 
(
	[FeedbackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[References]    Script Date: 2021/04/09 00:34:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[References](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Number] [nvarchar](max) NULL,
	[Company] [nvarchar](max) NULL,
	[Capacity] [nvarchar](max) NULL,
 CONSTRAINT [PK_References] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skills]    Script Date: 2021/04/09 00:34:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skills](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SkillName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Skills] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Socials]    Script Date: 2021/04/09 00:34:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Socials](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Platform] [nvarchar](max) NULL,
	[URL] [nvarchar](max) NULL,
 CONSTRAINT [PK_Socials] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stacks]    Script Date: 2021/04/09 00:34:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stacks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Language] [nvarchar](max) NULL,
	[Proficiency] [int] NOT NULL,
 CONSTRAINT [PK_Stacks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [DetailsMag] SET  READ_WRITE 
GO
