USE [master]
GO
/****** Object:  Database [BangDiemCTK44B]    Script Date: 1/20/2022 1:17:36 PM ******/
CREATE DATABASE [BangDiemCTK44B]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BangDiemCTK44B', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BangDiemCTK44B.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BangDiemCTK44B_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BangDiemCTK44B_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BangDiemCTK44B] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BangDiemCTK44B].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BangDiemCTK44B] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BangDiemCTK44B] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BangDiemCTK44B] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BangDiemCTK44B] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BangDiemCTK44B] SET ARITHABORT OFF 
GO
ALTER DATABASE [BangDiemCTK44B] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BangDiemCTK44B] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BangDiemCTK44B] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BangDiemCTK44B] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BangDiemCTK44B] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BangDiemCTK44B] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BangDiemCTK44B] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BangDiemCTK44B] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BangDiemCTK44B] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BangDiemCTK44B] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BangDiemCTK44B] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BangDiemCTK44B] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BangDiemCTK44B] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BangDiemCTK44B] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BangDiemCTK44B] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BangDiemCTK44B] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BangDiemCTK44B] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BangDiemCTK44B] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BangDiemCTK44B] SET  MULTI_USER 
GO
ALTER DATABASE [BangDiemCTK44B] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BangDiemCTK44B] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BangDiemCTK44B] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BangDiemCTK44B] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BangDiemCTK44B] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BangDiemCTK44B] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BangDiemCTK44B] SET QUERY_STORE = OFF
GO
USE [BangDiemCTK44B]
GO
/****** Object:  Table [dbo].[ThongTinSinhVien]    Script Date: 1/20/2022 1:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinSinhVien](
	[MSSV] [nchar](20) NOT NULL,
	[TenSV] [nchar](50) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[GioiTinh] [nchar](10) NOT NULL,
	[QueQuan] [nchar](50) NOT NULL,
	[Diem] [float] NOT NULL,
 CONSTRAINT [PK_ThongTinSinhVien] PRIMARY KEY CLUSTERED 
(
	[MSSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ThongTinSinhVien] ([MSSV], [TenSV], [NgaySinh], [GioiTinh], [QueQuan], [Diem]) VALUES (N'2011402             ', N'Dương Mỹ Lộc                                      ', CAST(N'2002-04-04' AS Date), N'Nam       ', N'Lâm Đồng                                          ', 8.7)
INSERT [dbo].[ThongTinSinhVien] ([MSSV], [TenSV], [NgaySinh], [GioiTinh], [QueQuan], [Diem]) VALUES (N'2012254             ', N'Trần Nhật Duật                                    ', CAST(N'2002-08-07' AS Date), N'Nam       ', N'Thanh Hóa                                         ', 8)
INSERT [dbo].[ThongTinSinhVien] ([MSSV], [TenSV], [NgaySinh], [GioiTinh], [QueQuan], [Diem]) VALUES (N'2014492             ', N'Vũ Quang Thanh                                    ', CAST(N'2002-06-30' AS Date), N'Nam       ', N'Lâm Đồng                                          ', 7.5)
INSERT [dbo].[ThongTinSinhVien] ([MSSV], [TenSV], [NgaySinh], [GioiTinh], [QueQuan], [Diem]) VALUES (N'2014509             ', N'Nguyễn Lê Vy                                      ', CAST(N'2002-09-13' AS Date), N'Nữ        ', N'Lâm Đồng                                          ', 7.5)
INSERT [dbo].[ThongTinSinhVien] ([MSSV], [TenSV], [NgaySinh], [GioiTinh], [QueQuan], [Diem]) VALUES (N'2015597             ', N'Đoàn Quang Huy                                    ', CAST(N'2002-02-13' AS Date), N'Nam       ', N'Ninh Thuận                                        ', 8.5)
INSERT [dbo].[ThongTinSinhVien] ([MSSV], [TenSV], [NgaySinh], [GioiTinh], [QueQuan], [Diem]) VALUES (N'2015618             ', N'Lâm Ngọc Yến                                      ', CAST(N'2002-01-23' AS Date), N'Nữ        ', N'Lâm Đồng                                          ', 8.5)
INSERT [dbo].[ThongTinSinhVien] ([MSSV], [TenSV], [NgaySinh], [GioiTinh], [QueQuan], [Diem]) VALUES (N'2015795             ', N'Lê Đại Hải Nam                                    ', CAST(N'1998-07-21' AS Date), N'Nam       ', N'Lâm Đồng                                          ', 8)
GO
USE [master]
GO
ALTER DATABASE [BangDiemCTK44B] SET  READ_WRITE 
GO
