USE [master]
GO
/****** Object:  Database [ShopOnline]    Script Date: 04/23/2017 21:42:04 ******/
CREATE DATABASE [ShopOnline] ON  PRIMARY 
( NAME = N'ShopOnline', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\ShopOnline.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ShopOnline_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\ShopOnline_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ShopOnline] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShopOnline].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShopOnline] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [ShopOnline] SET ANSI_NULLS OFF
GO
ALTER DATABASE [ShopOnline] SET ANSI_PADDING OFF
GO
ALTER DATABASE [ShopOnline] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [ShopOnline] SET ARITHABORT OFF
GO
ALTER DATABASE [ShopOnline] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [ShopOnline] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [ShopOnline] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [ShopOnline] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [ShopOnline] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [ShopOnline] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [ShopOnline] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [ShopOnline] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [ShopOnline] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [ShopOnline] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [ShopOnline] SET  DISABLE_BROKER
GO
ALTER DATABASE [ShopOnline] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [ShopOnline] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [ShopOnline] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [ShopOnline] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [ShopOnline] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [ShopOnline] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [ShopOnline] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [ShopOnline] SET  READ_WRITE
GO
ALTER DATABASE [ShopOnline] SET RECOVERY SIMPLE
GO
ALTER DATABASE [ShopOnline] SET  MULTI_USER
GO
ALTER DATABASE [ShopOnline] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [ShopOnline] SET DB_CHAINING OFF
GO
USE [ShopOnline]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 04/23/2017 21:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [nvarchar](10) NOT NULL,
	[MaLoaiSanPham] [nvarchar](10) NULL,
	[MaNhaSanXuat] [nvarchar](10) NULL,
	[TenSanPham] [nvarchar](max) NULL,
	[CauHinh] [nvarchar](max) NULL,
	[HinhChinh] [nvarchar](50) NULL,
	[Hinh1] [nvarchar](50) NULL,
	[Hinh2] [nvarchar](50) NULL,
	[Hinh3] [nvarchar](50) NULL,
	[Hinh4] [nvarchar](50) NULL,
	[Gia] [int] NULL,
	[SoLuongDaBan] [int] NULL,
	[LuotView] [int] NULL,
	[TinhTrang] [nchar](10) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP01', N'LSP01', N'NSX01', N'Iphone 1', N'Chưa xác định', N'1.png', NULL, NULL, NULL, NULL, 0, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP010', N'LSP02', N'NSX03', N'Oppo 2', N'Chưa xác định', N'10.png', NULL, NULL, NULL, NULL, 0, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP011', N'LSP03', N'NSX03', N'Oppo 3', N'Chưa xác định', N'11.png', NULL, NULL, NULL, NULL, 0, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP012', N'LSP04', N'NSX03', N'Oppo 4', N'Chưa xác định', N'12.png', NULL, NULL, NULL, NULL, 0, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP02', N'LSP02', N'NSX01', N'Iphone 2', N'Chưa xác định', N'2.png', NULL, NULL, NULL, NULL, 0, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP03', N'LSP03', N'NSX01', N'Iphone 3', N'Chưa xác định', N'3.png', NULL, NULL, NULL, NULL, 0, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP04', N'LSP04', N'NSX01', N'Iphone 4', N'Chưa xác định', N'4.png', NULL, NULL, NULL, NULL, 0, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP05', N'LSP01', N'NSX02', N'Samsung 1', N'Chưa xác định', N'5.png', NULL, NULL, NULL, NULL, 0, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP06', N'LSP02', N'NSX02', N'Samsung 2', N'Chưa xác định', N'6.png', NULL, NULL, NULL, NULL, 0, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP07', N'LSP03', N'NSX02', N'Samsung 3', N'Chưa xác định', N'7.png', NULL, NULL, NULL, NULL, 0, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP08', N'LSP04', N'NSX02', N'Samsung 4', N'Chưa xác định', N'8.png', NULL, NULL, NULL, NULL, 0, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP09', N'LSP01', N'NSX03', N'Oppo 1', N'Chưa xác định', N'9.png', NULL, NULL, NULL, NULL, 0, 0, 0, N'0         ')
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 04/23/2017 21:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNhaSanXuat] [nvarchar](10) NULL,
	[TenNhaSanXuat] [nvarchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'NSX01', N'Iphone')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'NSX02', N'SamSung')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'NSX03', N'Oppo')
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 04/23/2017 21:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSanPham] [nvarchar](10) NULL,
	[TenLoaiSanPham] [nvarchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'LSP01', N'Cao Cấp')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'LSP02', N'Trung Bình')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'LSP03', N'Sang Chảnh')
/****** Object:  Default [DF_SanPham_Gia]    Script Date: 04/23/2017 21:42:04 ******/
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_Gia]  DEFAULT ((0)) FOR [Gia]
GO
/****** Object:  Default [DF_SanPham_SoLuongDaBan]    Script Date: 04/23/2017 21:42:04 ******/
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_SoLuongDaBan]  DEFAULT ((0)) FOR [SoLuongDaBan]
GO
/****** Object:  Default [DF_SanPham_LuotView]    Script Date: 04/23/2017 21:42:04 ******/
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_LuotView]  DEFAULT ((0)) FOR [LuotView]
GO
/****** Object:  Default [DF_SanPham_TinhTrang]    Script Date: 04/23/2017 21:42:04 ******/
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_TinhTrang]  DEFAULT ((0)) FOR [TinhTrang]
GO
