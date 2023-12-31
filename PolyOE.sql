USE [master]
GO
/****** Object:  Database [PolyOE]    Script Date: 1/28/2021 10:00:01 AM ******/
CREATE DATABASE [PolyOE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PolyOE', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\PolyOE.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PolyOE_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\PolyOE_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [PolyOE] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PolyOE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PolyOE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PolyOE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PolyOE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PolyOE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PolyOE] SET ARITHABORT OFF 
GO
ALTER DATABASE [PolyOE] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PolyOE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PolyOE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PolyOE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PolyOE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PolyOE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PolyOE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PolyOE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PolyOE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PolyOE] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PolyOE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PolyOE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PolyOE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PolyOE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PolyOE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PolyOE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PolyOE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PolyOE] SET RECOVERY FULL 
GO
ALTER DATABASE [PolyOE] SET  MULTI_USER 
GO
ALTER DATABASE [PolyOE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PolyOE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PolyOE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PolyOE] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PolyOE] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'PolyOE', N'ON'
GO
ALTER DATABASE [PolyOE] SET QUERY_STORE = OFF
GO
USE [PolyOE]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [PolyOE]
GO
/****** Object:  Table [dbo].[CUSTOMER_MASTER1]    Script Date: 1/28/2021 10:00:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMER_MASTER1](
	[CUSTOMER_ID] [int] IDENTITY(1,1) NOT NULL,
	[FIRST_NAME] [nvarchar](50) NULL,
	[LAST_NAME] [nvarchar](50) NULL,
	[EMAIL] [nvarchar](50) NULL,
	[MOBILE] [nvarchar](50) NULL,
 CONSTRAINT [PK_CUSTOMER_MASTER1] PRIMARY KEY CLUSTERED 
(
	[CUSTOMER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favorites]    Script Date: 1/28/2021 10:00:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorites](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[VideoId] [char](11) NULL,
	[UserId] [nvarchar](20) NULL,
	[LikeDate] [date] NULL,
 CONSTRAINT [PK_Favorites] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 1/28/2021 10:00:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration](
	[username] [varchar](20) NOT NULL,
	[password] [varchar](20) NOT NULL,
	[lastname] [varchar](20) NULL,
	[isAdmin] [bit] NULL,
	[image] [varchar](50) NULL,
 CONSTRAINT [PK_Registration] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 1/28/2021 10:00:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[Fullname] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Admin] [bit] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Videos]    Script Date: 1/28/2021 10:00:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Videos](
	[Id] [char](11) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Poster] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[Active] [bit] NULL,
	[Views] [int] NULL,
 CONSTRAINT [PK_Videos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CUSTOMER_MASTER1] ON 

CREATE TABLE Share (
    [Id] [bigint] IDENTITY(1,1) NOT NULL,
	[VideoId] [char](11) NULL,
	[UserId] [nvarchar](20) NULL,
    [Email]     NCHAR (30)    NULL,
    [ShareDate] DATE          NULL,
    PRIMARY KEY (ID)
);

ALTER TABLE Share
ADD CONSTRAINT fk3 FOREIGN KEY (UserID) REFERENCES Users(ID),
    CONSTRAINT fk4 FOREIGN KEY (VideoID) REFERENCES Videos(ID)

INSERT [dbo].[CUSTOMER_MASTER1] ([CUSTOMER_ID], [FIRST_NAME], [LAST_NAME], [EMAIL], [MOBILE]) VALUES (1, N'Teo', N'Le Van', N'teolv@gmail.com', N'0903414749')
INSERT [dbo].[CUSTOMER_MASTER1] ([CUSTOMER_ID], [FIRST_NAME], [LAST_NAME], [EMAIL], [MOBILE]) VALUES (2, N'Phu', N'Nguyen Thanh', N'phungsts@gmail.com', N'0903414749')
INSERT [dbo].[CUSTOMER_MASTER1] ([CUSTOMER_ID], [FIRST_NAME], [LAST_NAME], [EMAIL], [MOBILE]) VALUES (1002, N'Gai', N'Nguye Thi', N'gai@gmail.com', N'0909999999')
INSERT [dbo].[CUSTOMER_MASTER1] ([CUSTOMER_ID], [FIRST_NAME], [LAST_NAME], [EMAIL], [MOBILE]) VALUES (1003, N'Cu', N'Ng Van', N'cung@gmail.com', N'0903333333')
INSERT [dbo].[CUSTOMER_MASTER1] ([CUSTOMER_ID], [FIRST_NAME], [LAST_NAME], [EMAIL], [MOBILE]) VALUES (1004, N'Dat', N'Le Thanh', N'dat@gmail.com', N'0903454545')
SET IDENTITY_INSERT [dbo].[CUSTOMER_MASTER1] OFF
SET IDENTITY_INSERT [dbo].[Favorites] ON 

INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (1, N'vd1        ', N'teolv', CAST(N'2021-01-23' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (2, N'vd1        ', N'gaint', CAST(N'2021-01-03' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (4, N'vd2        ', N'teolv', CAST(N'2021-05-01' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (5, N'vd3        ', N'ti', CAST(N'2021-01-22' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (6, N'vd1        ', N'ti', CAST(N'2021-01-26' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES (7, N'vd3        ', N'teolv', CAST(N'2021-01-28' AS Date))
INSERT [dbo].[Favorites] ([Id], [VideoId], [UserId], [LikeDate]) VALUES ( N'1OJQdxT6WHE', N'220278', CAST(N'2022-01-28' AS Date))
SET IDENTITY_INSERT [dbo].[Favorites] OFF
INSERT [dbo].[Registration] ([username], [password], [lastname], [isAdmin], [image]) VALUES (N'bich', N'321', N'phan thi ngoc', 0, N'images1.jpg')
INSERT [dbo].[Registration] ([username], [password], [lastname], [isAdmin], [image]) VALUES (N'fpt', N'123', N'Nguyen Van', 1, N'images2.jpg')
INSERT [dbo].[Registration] ([username], [password], [lastname], [isAdmin], [image]) VALUES (N'gai', N'123', N'le thi', 1, N'images3.jpg')
INSERT [dbo].[Registration] ([username], [password], [lastname], [isAdmin], [image]) VALUES (N'hieu', N'123', N'nguyen thi bao', 0, N'images4.jpg')
INSERT [dbo].[Registration] ([username], [password], [lastname], [isAdmin], [image]) VALUES (N'hoa', N'abc', N'ng van', 1, N'Nonbo.jpg')
INSERT [dbo].[Registration] ([username], [password], [lastname], [isAdmin], [image]) VALUES (N'kien', N'123', N'le thi', 1, N'images5.jpg')
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Email], [Admin]) VALUES (N'cu', N'123', N'phan van', N'cupv@gmail.com', 0)
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Email], [Admin]) VALUES (N'gaint', N'abc', N'nguyen thi', N'gaint@gmail.com', 0)
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Email], [Admin]) VALUES (N'teolv', N'123', N'le van teo', N'teolv@gmail.com', 1)
INSERT [dbo].[Users] ([Id], [Password], [Fullname], [Email], [Admin]) VALUES (N'ti', N'321', N'phan van', N'tipv@gmail.com', 0)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Active], [Views]) VALUES (N'vd1        ', N'Nhac Xuan', N'Mung Xuan 2021', N'Nam moi Mung Xuan', 1, 3)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Active], [Views]) VALUES (N'vd2        ', N'Nhac Tet', N'Mung Tet 2021', N'Chuc Mung Nam Moi', 1, 5)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Active], [Views]) VALUES (N'vd3        ', N'Tinh yeu', N'Tinh Yeu Dau doi', N'tinh yeu tuoi moi lon', 0, 5)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Active], [Views]) VALUES (N'vd4        ', N'Ngoc Son Bolero', N'Bolero Ky Niem', N'Tuyen tap ca khuc hay ', 1, 10)
INSERT [dbo].[Videos] ([Id], [Title], [Poster], [Description], [Active], [Views]) VALUES (N'vd5        ', N'Ngoc Son Bolero', N'0yHtYPeK2Jg', N'Tuyen tap ca khuc hay ', 1, 10)
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FK_Favorites_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FK_Favorites_Users]
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FK_Favorites_Videos] FOREIGN KEY([VideoId])
REFERENCES [dbo].[Videos] ([Id])
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FK_Favorites_Videos]
GO
USE [master]
GO
ALTER DATABASE [PolyOE] SET  READ_WRITE 
GO
select * from Users

create procedure sp_FindByEmail(@Email nvarchar(50))  
as  
begin  
 select * from Users where email like @Email  
end

CREATE OR ALTER PROC spFavoriteByYear(@Year INT)
AS
BEGIN
SELECT
v.Title AS 'Group',
count(f.Id) AS 'Likes',
max(f.LikeDate) AS 'Newest',
min(f.LikeDate) AS 'Oldest'
FROM Favorites f JOIN Videos v ON v.Id = f.VideoId
WHERE year(f.LikeDate) = @Year
GROUP BY v.Title
END

exec spFavoriteByYear 2021
select*from Videos
DELETE * from Share 
select * from Favorites

select count(*) from Videos
Chương
1OJQdxT6WHE
select * from Share
select * from Users

INSERT Share(VideoID,UserID,Email,Emailr,ShareDate) VALUES('vd4','22027','hoangchuong.nguyen2811@gmail.com','hoangchuong2811@gmail.com', CAST(N'2023-04-9' AS Date))

CREATE OR ALTER PROC spFavoriteByTilte(@Title CHAR(50))
as  
begin 
select u.Fullname, s.Email, s.Emailr, s.ShareDate from Share s join Users u on s.UserID =  u.ID join Videos v on s.VideoId = v.ID
WHERE v.Title = @Title
END

exec spFavoriteByTilte 'Vi Anh Dau Co Biet'

select * from Products
INSERT INTO Products (Available, CreateDate, image, name, Price, CategoryId)
VALUES (0, '2023-4-30', null, 'Macbook', 355.7, 2);
select * from Categories
