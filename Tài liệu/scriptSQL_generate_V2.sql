USE [master]
GO
/****** Object:  Database [NhaSach_online]    Script Date: 6/18/2019 8:46:16 PM ******/
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
/****** Object:  Table [dbo].[Admin]    Script Date: 6/18/2019 8:46:16 PM ******/
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
/****** Object:  Table [dbo].[Book]    Script Date: 6/18/2019 8:46:16 PM ******/
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
/****** Object:  Table [dbo].[BookReport]    Script Date: 6/18/2019 8:46:16 PM ******/
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
/****** Object:  Table [dbo].[Customer]    Script Date: 6/18/2019 8:46:16 PM ******/
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
	[confirmPassword] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DeptReport]    Script Date: 6/18/2019 8:46:16 PM ******/
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
/****** Object:  Table [dbo].[Input]    Script Date: 6/18/2019 8:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Input](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stt] [int] NULL,
	[bookId] [int] NULL,
	[amount] [int] NULL,
	[isRemove] [bit] NULL,
 CONSTRAINT [PK_Input] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Receipt]    Script Date: 6/18/2019 8:46:16 PM ******/
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
/****** Object:  Table [dbo].[Sale]    Script Date: 6/18/2019 8:46:16 PM ******/
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
/****** Object:  Table [dbo].[SaleDetail]    Script Date: 6/18/2019 8:46:16 PM ******/
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
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([id], [name], [email], [username], [password], [imageName], [url], [isRemove], [confirmPassword]) VALUES (1, N'System admin', N'huynhthanhdang77@gmail.com', N'root', N'8BE64875D187CE458B5565072E92762EBE34D1DE', N'1_root.png', N'https://localhost:44329/Admins/1_root.png', 0, NULL)
INSERT [dbo].[Admin] ([id], [name], [email], [username], [password], [imageName], [url], [isRemove], [confirmPassword]) VALUES (2, N'System admin', N'huynhthanhdang77@gmail.com', N'root2', N'83DDE70B50FA44DE2D760FA0E2D7DD8A94B042DB', N'2_user2.png', N'https://localhost:44329/Admins/2_user2.png', 0, NULL)
INSERT [dbo].[Admin] ([id], [name], [email], [username], [password], [imageName], [url], [isRemove], [confirmPassword]) VALUES (3, N'System admin', N'huynhthanhdang77@gmail.com', N'root3', N'601F1889667EFAEBB33B8C12572835DA3F027F78', N'3_user3.png', N'https://localhost:44329/Admins/3_user3.png', 0, NULL)
INSERT [dbo].[Admin] ([id], [name], [email], [username], [password], [imageName], [url], [isRemove], [confirmPassword]) VALUES (4, N'System admin', N'huynhthanhdang77@gmail.com', N'root4', N'83DDE70B50FA44DE2D760FA0E2D7DD8A94B042DB', N'4_user4.png', N'https://localhost:44329/Admins/4_user4.png', 0, NULL)
INSERT [dbo].[Admin] ([id], [name], [email], [username], [password], [imageName], [url], [isRemove], [confirmPassword]) VALUES (5, N'Huỳnh Thanh Đàng', N'huynhthanhdang77@gmail.com', N'admin', N'123123', N'5_user4.png', N'https://localhost:44329/Admins/5_user4.png', 1, NULL)
INSERT [dbo].[Admin] ([id], [name], [email], [username], [password], [imageName], [url], [isRemove], [confirmPassword]) VALUES (6, N'Huỳnh Thanh Đàng', N'huynhthanhdang77@gmail.com', N'test', N'123123', N'6_user4.png', N'https://localhost:44329/Admins/6_user4.png', 1, NULL)
SET IDENTITY_INSERT [dbo].[Admin] OFF
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([id], [name], [price], [kind], [author], [stock], [state], [isRemove], [imageName], [url]) VALUES (1, N'Ha Thám tử lừng danh Conan (tập 95)', 25000, N'Truyện tranh', N'Huỳnh Thanh Đàng', 200, 1, 0, N'1_1.jpg', N'https://localhost:44329/Books/1_1.jpg')
INSERT [dbo].[Book] ([id], [name], [price], [kind], [author], [stock], [state], [isRemove], [imageName], [url]) VALUES (2, N'Ha Thám tử lừng danh Conan (tập 88)', 25000, N'Truyện tranh', N'HuỳnhTTh', 575, 1, 1, N'2_4.jpg', N'https://localhost:44329/Books/2_4.jpg')
INSERT [dbo].[Book] ([id], [name], [price], [kind], [author], [stock], [state], [isRemove], [imageName], [url]) VALUES (3, N'Thám tử lừng danh Conan (tập 91)', 25000, N'Truyện tranh', N'Huỳnh TD', 160, 1, 1, N'3_b-1.jpg', N'https://localhost:44329/Books/3_b-1.jpg')
INSERT [dbo].[Book] ([id], [name], [price], [kind], [author], [stock], [state], [isRemove], [imageName], [url]) VALUES (4, N'Thám tử lừng danh Conan (tập 92)', 25000, N'Truyện tranh', N'Huỳnh TD', 150, 1, 1, N'4_3.jpg', N'https://localhost:44329/Books/4_3.jpg')
INSERT [dbo].[Book] ([id], [name], [price], [kind], [author], [stock], [state], [isRemove], [imageName], [url]) VALUES (5, N'Ha Thần đồng Đất Việt (tập 200)', 25000, N'Truyện tranh', N'Huỳnh TD', 100, 1, 0, N'a', N'a')
INSERT [dbo].[Book] ([id], [name], [price], [kind], [author], [stock], [state], [isRemove], [imageName], [url]) VALUES (6, N'Ha Thần đồng Đất Việt (tập 201)', 25000, N'Truyện tranh', N'Huỳnh TD', 100, 1, 1, N'a', N'a')
INSERT [dbo].[Book] ([id], [name], [price], [kind], [author], [stock], [state], [isRemove], [imageName], [url]) VALUES (7, N'Thần đồng Đất Việt (tập 220)', 25000, N'Truyện tranh', N'Huỳnh TD', 100, 1, 0, N'a', N'a')
INSERT [dbo].[Book] ([id], [name], [price], [kind], [author], [stock], [state], [isRemove], [imageName], [url]) VALUES (8, N'Thần đồng Đất Việt (tập 225)', 25000, N'Truyện tranh', N'Huỳnh TD', 100, 1, 0, N'a', N'a')
INSERT [dbo].[Book] ([id], [name], [price], [kind], [author], [stock], [state], [isRemove], [imageName], [url]) VALUES (9, N'Truyện cổ tích Việt Nam được yêu thích nhất (Phần 1)', 100000, N'Truyện tranh', N'Huỳnh TD', 100, 1, 0, N'a', N'a')
INSERT [dbo].[Book] ([id], [name], [price], [kind], [author], [stock], [state], [isRemove], [imageName], [url]) VALUES (10, N'Truyện cổ tích Việt Nam được yêu thích nhất (Phần 2)', 100000, N'Truyện tranh', N'Huỳnh TD', 100, 1, 0, N'a', N'a')
INSERT [dbo].[Book] ([id], [name], [price], [kind], [author], [stock], [state], [isRemove], [imageName], [url]) VALUES (11, N'Truyện cổ tích Việt Nam được yêu thích nhất (Phần 3)', 100000, N'Truyện tranh', N'Huỳnh TD', 100, 1, 1, N'a', N'a')
INSERT [dbo].[Book] ([id], [name], [price], [kind], [author], [stock], [state], [isRemove], [imageName], [url]) VALUES (12, N'Truyện cổ tích Việt Nam được yêu thích nhất (Phần 4)', 100000, N'Truyện tranh', N'Huỳnh TD', 100, 1, 1, N'a', N'a')
INSERT [dbo].[Book] ([id], [name], [price], [kind], [author], [stock], [state], [isRemove], [imageName], [url]) VALUES (13, N'Ha Công chúa và chàng ếch (Tập 1)', 100000, N'Truyện tranh', N'Huỳnh TD', 100, 1, 1, N'a', N'a')
INSERT [dbo].[Book] ([id], [name], [price], [kind], [author], [stock], [state], [isRemove], [imageName], [url]) VALUES (14, N'Ha Công chúa và chàng ếch (Tập 2)', 50000, N'Truyện tranh', N'Huỳnh TD', 100, 1, 1, N'a', N'a')
INSERT [dbo].[Book] ([id], [name], [price], [kind], [author], [stock], [state], [isRemove], [imageName], [url]) VALUES (15, N'Công chúa và chàng ếch (Tập 3)', 50000, N'Truyện tranh', N'Huỳnh TD', 100, 1, 1, N'a', N'a')
INSERT [dbo].[Book] ([id], [name], [price], [kind], [author], [stock], [state], [isRemove], [imageName], [url]) VALUES (16, N'Công chúa và chàng ếch (Tập 4)', 50000, N'Truyện tranh', N'Huỳnh TD', 100, 1, 1, N'a', N'a')
SET IDENTITY_INSERT [dbo].[Book] OFF
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([id], [firstName], [lastName], [phone], [email], [address], [username], [password], [oldDept], [url], [imageName], [isRemove], [nowDept], [confirmPassword]) VALUES (1, N'2A', N'Lys', N'123123123', N'ls@gmail.com', N'18/8 Phan Văn Trị', N'customer01', N'601F1889667EFAEBB33B8C12572835DA3F027F78', 15000, N'https://localhost:44329/Customers/1_user3.png', N'1_user3.png', 0, 0, NULL)
INSERT [dbo].[Customer] ([id], [firstName], [lastName], [phone], [email], [address], [username], [password], [oldDept], [url], [imageName], [isRemove], [nowDept], [confirmPassword]) VALUES (2, N'Tâm', N'Trần Thanh', N'123456789', N'thd@gmail.com', N'154 Nguyễn Chí Thanh', N'user02', N'CBCCE4EBCF0E63F32A3D6904397792720F7E40BA', 10000, N'https://localhost:44329/Customers/2_user4.png', N'2_user4.png', 0, 0, NULL)
INSERT [dbo].[Customer] ([id], [firstName], [lastName], [phone], [email], [address], [username], [password], [oldDept], [url], [imageName], [isRemove], [nowDept], [confirmPassword]) VALUES (3, N'Ly', N'Trần Thanh', N'0132658479', N'thd@gmail.com', N'154 Nguyễn Chí Thanh', N'user3', N'601f1889667efaebb33b8c12572835da3f027f78', 5000, NULL, NULL, 0, 0, NULL)
INSERT [dbo].[Customer] ([id], [firstName], [lastName], [phone], [email], [address], [username], [password], [oldDept], [url], [imageName], [isRemove], [nowDept], [confirmPassword]) VALUES (4, N'Nam', N'Trần Thanh', N'0132658479', N'thd@gmail.com', N'154 Nguyễn Chí Thanh', N'user4', N'601f1889667efaebb33b8c12572835da3f027f78', 20000, NULL, NULL, 0, 0, NULL)
INSERT [dbo].[Customer] ([id], [firstName], [lastName], [phone], [email], [address], [username], [password], [oldDept], [url], [imageName], [isRemove], [nowDept], [confirmPassword]) VALUES (5, N'Trung', N'Trần Thanh', N'0132658479', N'thd@gmail.com', N'154 Nguyễn Chí Thanh', N'user5', N'601f1889667efaebb33b8c12572835da3f027f78', 25000, NULL, NULL, 0, 0, NULL)
INSERT [dbo].[Customer] ([id], [firstName], [lastName], [phone], [email], [address], [username], [password], [oldDept], [url], [imageName], [isRemove], [nowDept], [confirmPassword]) VALUES (6, N'Thanh', N'Trần Thanh', N'0132658479', N'thd@gmail.com', N'154 Nguyễn Chí Thanh', N'user6', N'601f1889667efaebb33b8c12572835da3f027f78', 10000, NULL, NULL, 0, 0, NULL)
INSERT [dbo].[Customer] ([id], [firstName], [lastName], [phone], [email], [address], [username], [password], [oldDept], [url], [imageName], [isRemove], [nowDept], [confirmPassword]) VALUES (7, N'Thành', N'Trần Thanh', N'0132658479', N'thd@gmail.com', N'154 Nguyễn Chí Thanh', N'user7', N'601f1889667efaebb33b8c12572835da3f027f78', 5000, NULL, NULL, 0, 0, NULL)
INSERT [dbo].[Customer] ([id], [firstName], [lastName], [phone], [email], [address], [username], [password], [oldDept], [url], [imageName], [isRemove], [nowDept], [confirmPassword]) VALUES (8, N'Tú', N'Trần Thanh', N'0132658479', N'thd@gmail.com', N'154 Nguyễn Chí Thanh', N'admin1', N'ccbe91b1f19bd31a1365363870c0eec2296a61c1', 5000, NULL, NULL, 1, 0, NULL)
INSERT [dbo].[Customer] ([id], [firstName], [lastName], [phone], [email], [address], [username], [password], [oldDept], [url], [imageName], [isRemove], [nowDept], [confirmPassword]) VALUES (9, N'Xuân', N'Trần Thanh', N'0132658479', N'thd@gmail.com', N'154 Nguyễn Chí Thanh', N'admin2', N'ccbe91b1f19bd31a1365363870c0eec2296a61c1', 0, NULL, NULL, 0, 0, NULL)
INSERT [dbo].[Customer] ([id], [firstName], [lastName], [phone], [email], [address], [username], [password], [oldDept], [url], [imageName], [isRemove], [nowDept], [confirmPassword]) VALUES (10, N'Tuấn', N'Trần Thanh', N'0132658479', N'thd@gmail.com', N'154 Nguyễn Chí Thanh', N'adminN', N'C8F9B98678A420B6E5249417DD3A5EFB5863198F', 0, N'https://localhost:44327/Data/10_cus_root.png', N'10_cus_root.png', 1, 0, NULL)
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[Input] ON 

INSERT [dbo].[Input] ([id], [stt], [bookId], [amount], [isRemove]) VALUES (1, 1, 2, 15, 0)
INSERT [dbo].[Input] ([id], [stt], [bookId], [amount], [isRemove]) VALUES (2, 1, 3, 15, 0)
INSERT [dbo].[Input] ([id], [stt], [bookId], [amount], [isRemove]) VALUES (3, 1, 1, 15, 0)
INSERT [dbo].[Input] ([id], [stt], [bookId], [amount], [isRemove]) VALUES (4, 1, 7, 10, 0)
INSERT [dbo].[Input] ([id], [stt], [bookId], [amount], [isRemove]) VALUES (5, 2, 5, 10, 0)
INSERT [dbo].[Input] ([id], [stt], [bookId], [amount], [isRemove]) VALUES (6, 2, 6, 12, 0)
INSERT [dbo].[Input] ([id], [stt], [bookId], [amount], [isRemove]) VALUES (7, 2, 7, 13, 0)
INSERT [dbo].[Input] ([id], [stt], [bookId], [amount], [isRemove]) VALUES (8, 3, 4, 20, 1)
INSERT [dbo].[Input] ([id], [stt], [bookId], [amount], [isRemove]) VALUES (9, 3, 5, 15, 1)
INSERT [dbo].[Input] ([id], [stt], [bookId], [amount], [isRemove]) VALUES (10, 4, 6, 8, 0)
SET IDENTITY_INSERT [dbo].[Input] OFF
SET IDENTITY_INSERT [dbo].[Receipt] ON 

INSERT [dbo].[Receipt] ([id], [customerId], [dateCreated], [customerPaid], [isRemove], [total]) VALUES (1, 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime), 250000, 0, 0)
INSERT [dbo].[Receipt] ([id], [customerId], [dateCreated], [customerPaid], [isRemove], [total]) VALUES (2, 2, CAST(N'2020-01-02 00:00:00.000' AS DateTime), 300000, 0, 0)
INSERT [dbo].[Receipt] ([id], [customerId], [dateCreated], [customerPaid], [isRemove], [total]) VALUES (3, 3, CAST(N'2020-01-03 00:00:00.000' AS DateTime), 150000, 0, 0)
INSERT [dbo].[Receipt] ([id], [customerId], [dateCreated], [customerPaid], [isRemove], [total]) VALUES (4, 4, CAST(N'2020-01-04 00:00:00.000' AS DateTime), 50000, 0, 0)
SET IDENTITY_INSERT [dbo].[Receipt] OFF
SET IDENTITY_INSERT [dbo].[Sale] ON 

INSERT [dbo].[Sale] ([id], [customerId], [dateCreated], [isRemove]) VALUES (1, 1, CAST(N'2019-12-12 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Sale] ([id], [customerId], [dateCreated], [isRemove]) VALUES (2, 2, CAST(N'2019-12-11 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Sale] ([id], [customerId], [dateCreated], [isRemove]) VALUES (3, 3, CAST(N'2019-12-10 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Sale] ([id], [customerId], [dateCreated], [isRemove]) VALUES (4, 4, CAST(N'2019-12-09 00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Sale] OFF
INSERT [dbo].[SaleDetail] ([stt], [saleId], [bookId], [amount], [totalPrice]) VALUES (1, 1, 1, 1, 25000)
INSERT [dbo].[SaleDetail] ([stt], [saleId], [bookId], [amount], [totalPrice]) VALUES (1, 2, 6, 2, 50000)
INSERT [dbo].[SaleDetail] ([stt], [saleId], [bookId], [amount], [totalPrice]) VALUES (1, 3, 4, 1, 25000)
INSERT [dbo].[SaleDetail] ([stt], [saleId], [bookId], [amount], [totalPrice]) VALUES (1, 4, 15, 1, 50000)
INSERT [dbo].[SaleDetail] ([stt], [saleId], [bookId], [amount], [totalPrice]) VALUES (2, 1, 2, 1, 25000)
INSERT [dbo].[SaleDetail] ([stt], [saleId], [bookId], [amount], [totalPrice]) VALUES (2, 2, 4, 1, 25000)
INSERT [dbo].[SaleDetail] ([stt], [saleId], [bookId], [amount], [totalPrice]) VALUES (2, 3, 2, 1, 25000)
INSERT [dbo].[SaleDetail] ([stt], [saleId], [bookId], [amount], [totalPrice]) VALUES (2, 4, 16, 1, 50000)
INSERT [dbo].[SaleDetail] ([stt], [saleId], [bookId], [amount], [totalPrice]) VALUES (3, 1, 6, 1, 25000)
INSERT [dbo].[SaleDetail] ([stt], [saleId], [bookId], [amount], [totalPrice]) VALUES (3, 2, 9, 1, 100000)
INSERT [dbo].[SaleDetail] ([stt], [saleId], [bookId], [amount], [totalPrice]) VALUES (3, 4, 5, 1, 25000)
INSERT [dbo].[SaleDetail] ([stt], [saleId], [bookId], [amount], [totalPrice]) VALUES (4, 1, 8, 1, 25000)
ALTER TABLE [dbo].[Input]  WITH CHECK ADD  CONSTRAINT [FK_Input_Book] FOREIGN KEY([bookId])
REFERENCES [dbo].[Book] ([id])
GO
ALTER TABLE [dbo].[Input] CHECK CONSTRAINT [FK_Input_Book]
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
