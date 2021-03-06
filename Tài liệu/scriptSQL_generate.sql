USE [master]
GO
/****** Object:  Database [NhaSach_online]    Script Date: 6/16/2019 5:50:05 PM ******/
CREATE DATABASE [NhaSach_online]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NhaSach_online', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\NhaSach_online.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'NhaSach_online_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\NhaSach_online_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [NhaSach_online] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NhaSach_online].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NhaSach_online] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NhaSach_online] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NhaSach_online] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NhaSach_online] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NhaSach_online] SET ARITHABORT OFF 
GO
ALTER DATABASE [NhaSach_online] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NhaSach_online] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NhaSach_online] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NhaSach_online] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NhaSach_online] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NhaSach_online] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NhaSach_online] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NhaSach_online] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NhaSach_online] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NhaSach_online] SET  ENABLE_BROKER 
GO
ALTER DATABASE [NhaSach_online] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NhaSach_online] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NhaSach_online] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NhaSach_online] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NhaSach_online] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NhaSach_online] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NhaSach_online] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NhaSach_online] SET RECOVERY FULL 
GO
ALTER DATABASE [NhaSach_online] SET  MULTI_USER 
GO
ALTER DATABASE [NhaSach_online] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NhaSach_online] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NhaSach_online] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NhaSach_online] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [NhaSach_online] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'NhaSach_online', N'ON'
GO
USE [NhaSach_online]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 6/16/2019 5:50:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[email] [varchar](255) NULL,
	[username] [varchar](255) NULL,
	[password] [varchar](1000) NULL,
	[imageName] [varchar](max) NULL,
	[url] [varchar](max) NULL,
	[isRemove] [bit] NULL,
	[confirmPassword] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Book]    Script Date: 6/16/2019 5:50:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Book](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[price] [float] NULL,
	[kind] [nvarchar](100) NULL,
	[author] [nvarchar](255) NULL,
	[stock] [int] NULL,
	[state] [bit] NULL,
	[isRemove] [bit] NULL,
	[imageName] [varchar](max) NULL,
	[url] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BookReport]    Script Date: 6/16/2019 5:50:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookReport](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[oldStock] [int] NULL,
	[nowStock] [int] NULL,
	[additionalStock] [int] NULL,
 CONSTRAINT [PK_BookReport] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer]    Script Date: 6/16/2019 5:50:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [nvarchar](255) NULL,
	[lastName] [nvarchar](255) NULL,
	[phone] [varchar](50) NULL,
	[email] [varchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[username] [varchar](255) NULL,
	[password] [varchar](1000) NULL,
	[oldDept] [float] NULL,
	[url] [varchar](max) NULL,
	[imageName] [varchar](max) NULL,
	[isRemove] [bit] NULL,
	[nowDept] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DeptReport]    Script Date: 6/16/2019 5:50:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeptReport](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[oldDept] [float] NULL,
	[nowDept] [float] NULL,
	[additionalDept] [float] NULL,
 CONSTRAINT [PK_DeptReport] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Input]    Script Date: 6/16/2019 5:50:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Input](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[isRemove] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InputDetail]    Script Date: 6/16/2019 5:50:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InputDetail](
	[stt] [int] NOT NULL,
	[inputId] [int] NOT NULL,
	[bookId] [int] NOT NULL,
	[amount] [int] NULL,
 CONSTRAINT [PK_InputDetail] PRIMARY KEY CLUSTERED 
(
	[stt] ASC,
	[inputId] ASC,
	[bookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Receipt]    Script Date: 6/16/2019 5:50:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receipt](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customerId] [int] NULL,
	[dateCreated] [datetime] NULL,
	[customerPaid] [float] NULL,
	[isRemove] [bit] NULL,
	[total] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sale]    Script Date: 6/16/2019 5:50:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customerId] [int] NULL,
	[dateCreated] [datetime] NULL,
	[isRemove] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SaleDetail]    Script Date: 6/16/2019 5:50:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleDetail](
	[stt] [int] NOT NULL,
	[saleId] [int] NOT NULL,
	[bookId] [int] NOT NULL,
	[amount] [int] NULL,
	[totalPrice] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[stt] ASC,
	[saleId] ASC,
	[bookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[InputDetail]  WITH CHECK ADD  CONSTRAINT [FK_InputDetail_Book] FOREIGN KEY([bookId])
REFERENCES [dbo].[Book] ([id])
GO
ALTER TABLE [dbo].[InputDetail] CHECK CONSTRAINT [FK_InputDetail_Book]
GO
ALTER TABLE [dbo].[InputDetail]  WITH CHECK ADD  CONSTRAINT [FK_InputDetail_Input] FOREIGN KEY([inputId])
REFERENCES [dbo].[Input] ([id])
GO
ALTER TABLE [dbo].[InputDetail] CHECK CONSTRAINT [FK_InputDetail_Input]
GO
ALTER TABLE [dbo].[Receipt]  WITH CHECK ADD  CONSTRAINT [FK_Receipt_Customer] FOREIGN KEY([customerId])
REFERENCES [dbo].[Customer] ([id])
GO
ALTER TABLE [dbo].[Receipt] CHECK CONSTRAINT [FK_Receipt_Customer]
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sale_Customer] FOREIGN KEY([customerId])
REFERENCES [dbo].[Customer] ([id])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sale_Customer]
GO
ALTER TABLE [dbo].[SaleDetail]  WITH CHECK ADD  CONSTRAINT [FK_SaleDetail_Book] FOREIGN KEY([bookId])
REFERENCES [dbo].[Book] ([id])
GO
ALTER TABLE [dbo].[SaleDetail] CHECK CONSTRAINT [FK_SaleDetail_Book]
GO
ALTER TABLE [dbo].[SaleDetail]  WITH CHECK ADD  CONSTRAINT [FK_SaleDetail_Sale] FOREIGN KEY([saleId])
REFERENCES [dbo].[Sale] ([id])
GO
ALTER TABLE [dbo].[SaleDetail] CHECK CONSTRAINT [FK_SaleDetail_Sale]
GO
USE [master]
GO
ALTER DATABASE [NhaSach_online] SET  READ_WRITE 
GO
