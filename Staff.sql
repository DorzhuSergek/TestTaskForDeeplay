USE [master]
GO
/****** Object:  Database [Staff]    Script Date: 02.06.2022 15:28:07 ******/
CREATE DATABASE [Staff]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Stuff', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Stuff.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Stuff_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Stuff_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Staff] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Staff].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Staff] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Staff] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Staff] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Staff] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Staff] SET ARITHABORT OFF 
GO
ALTER DATABASE [Staff] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Staff] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Staff] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Staff] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Staff] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Staff] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Staff] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Staff] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Staff] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Staff] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Staff] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Staff] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Staff] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Staff] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Staff] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Staff] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Staff] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Staff] SET RECOVERY FULL 
GO
ALTER DATABASE [Staff] SET  MULTI_USER 
GO
ALTER DATABASE [Staff] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Staff] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Staff] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Staff] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Staff] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Staff] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Staff', N'ON'
GO
ALTER DATABASE [Staff] SET QUERY_STORE = OFF
GO
USE [Staff]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 02.06.2022 15:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FulName] [varchar](50) NULL,
	[DateOfBirth] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[idPosition] [int] NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 02.06.2022 15:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[idSeparation] [int] NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subdivision]    Script Date: 02.06.2022 15:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subdivision](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Text] [varchar](50) NULL,
	[idTypeSeparation] [int] NULL,
 CONSTRAINT [PK_Separation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeSubdivision]    Script Date: 02.06.2022 15:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeSubdivision](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_TypeSeparation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([Id], [FulName], [DateOfBirth], [Gender], [idPosition]) VALUES (1, N'Петров Василий Васильевич', N'2/18/1995 12:00:00 AM', N'Мужской', 1)
INSERT [dbo].[Employees] ([Id], [FulName], [DateOfBirth], [Gender], [idPosition]) VALUES (2, N'Васильев Петр Петрович', N'1995-01-15', N'Мужской', 2)
INSERT [dbo].[Employees] ([Id], [FulName], [DateOfBirth], [Gender], [idPosition]) VALUES (3, N'Иванов Степан Александрович', N'1995-04-26', N'Мужской', 3)
INSERT [dbo].[Employees] ([Id], [FulName], [DateOfBirth], [Gender], [idPosition]) VALUES (4, N'Петрова Елена Васильевна', N'2000-02-24', N'Женский', 4)
INSERT [dbo].[Employees] ([Id], [FulName], [DateOfBirth], [Gender], [idPosition]) VALUES (5, N'Петров', N'6/9/2022 12:00:00 AM', N'Мужской', 1)
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[Position] ON 

INSERT [dbo].[Position] ([id], [Name], [idSeparation]) VALUES (1, N'Директор', 1)
INSERT [dbo].[Position] ([id], [Name], [idSeparation]) VALUES (2, N'Руководитель подразделения', 2)
INSERT [dbo].[Position] ([id], [Name], [idSeparation]) VALUES (3, N'Контролер', 1)
INSERT [dbo].[Position] ([id], [Name], [idSeparation]) VALUES (4, N'Рабочий', 2)
SET IDENTITY_INSERT [dbo].[Position] OFF
GO
SET IDENTITY_INSERT [dbo].[Subdivision] ON 

INSERT [dbo].[Subdivision] ([id], [Text], [idTypeSeparation]) VALUES (1, N'Отдел маркетинга', 1)
INSERT [dbo].[Subdivision] ([id], [Text], [idTypeSeparation]) VALUES (2, N'Отдел продаж', 2)
SET IDENTITY_INSERT [dbo].[Subdivision] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeSubdivision] ON 

INSERT [dbo].[TypeSubdivision] ([id], [Name]) VALUES (1, N'ФИО Руководителя')
INSERT [dbo].[TypeSubdivision] ([id], [Name]) VALUES (2, N'Название подразделеия')
SET IDENTITY_INSERT [dbo].[TypeSubdivision] OFF
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Position] FOREIGN KEY([idPosition])
REFERENCES [dbo].[Position] ([id])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Position]
GO
ALTER TABLE [dbo].[Position]  WITH CHECK ADD  CONSTRAINT [FK_Position_Separation] FOREIGN KEY([idSeparation])
REFERENCES [dbo].[Subdivision] ([id])
GO
ALTER TABLE [dbo].[Position] CHECK CONSTRAINT [FK_Position_Separation]
GO
ALTER TABLE [dbo].[Subdivision]  WITH CHECK ADD  CONSTRAINT [FK_Separation_TypeSeparation] FOREIGN KEY([idTypeSeparation])
REFERENCES [dbo].[TypeSubdivision] ([id])
GO
ALTER TABLE [dbo].[Subdivision] CHECK CONSTRAINT [FK_Separation_TypeSeparation]
GO
USE [master]
GO
ALTER DATABASE [Staff] SET  READ_WRITE 
GO
