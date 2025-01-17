USE [master]
GO
/****** Object:  Database [qlthuviendb]    Script Date: 07/07/2024 1:24:56 PM ******/
CREATE DATABASE [qlthuviendb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'qlthuviendb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\qlthuviendb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'qlthuviendb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\qlthuviendb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [qlthuviendb] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [qlthuviendb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [qlthuviendb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [qlthuviendb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [qlthuviendb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [qlthuviendb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [qlthuviendb] SET ARITHABORT OFF 
GO
ALTER DATABASE [qlthuviendb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [qlthuviendb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [qlthuviendb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [qlthuviendb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [qlthuviendb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [qlthuviendb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [qlthuviendb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [qlthuviendb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [qlthuviendb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [qlthuviendb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [qlthuviendb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [qlthuviendb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [qlthuviendb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [qlthuviendb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [qlthuviendb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [qlthuviendb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [qlthuviendb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [qlthuviendb] SET RECOVERY FULL 
GO
ALTER DATABASE [qlthuviendb] SET  MULTI_USER 
GO
ALTER DATABASE [qlthuviendb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [qlthuviendb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [qlthuviendb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [qlthuviendb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [qlthuviendb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [qlthuviendb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'qlthuviendb', N'ON'
GO
ALTER DATABASE [qlthuviendb] SET QUERY_STORE = ON
GO
ALTER DATABASE [qlthuviendb] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [qlthuviendb]
GO
/****** Object:  Table [dbo].[CHITIETPHIEUMUON]    Script Date: 07/07/2024 1:24:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETPHIEUMUON](
	[MaPM] [int] NOT NULL,
	[STT] [int] NOT NULL,
	[MaSach] [int] NOT NULL,
	[Xoa] [int] NOT NULL,
 CONSTRAINT [PK_CHITIETPHIEUMUON] PRIMARY KEY CLUSTERED 
(
	[MaPM] ASC,
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAIDG]    Script Date: 07/07/2024 1:24:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIDG](
	[MaLDG] [int] IDENTITY(1,1) NOT NULL,
	[TenLDG] [nvarchar](30) NOT NULL,
	[Xoa] [int] NOT NULL,
 CONSTRAINT [PK_LOAIDG] PRIMARY KEY CLUSTERED 
(
	[MaLDG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAINV]    Script Date: 07/07/2024 1:24:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAINV](
	[MaLNV] [int] IDENTITY(1,1) NOT NULL,
	[TenLNV] [nvarchar](30) NOT NULL,
	[Xoa] [int] NOT NULL,
 CONSTRAINT [PK_LOAINV] PRIMARY KEY CLUSTERED 
(
	[MaLNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAISACH]    Script Date: 07/07/2024 1:24:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAISACH](
	[MaLS] [int] IDENTITY(1,1) NOT NULL,
	[TenLS] [nvarchar](30) NOT NULL,
	[Xoa] [int] NOT NULL,
 CONSTRAINT [PK_LOAISACH] PRIMARY KEY CLUSTERED 
(
	[MaLS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 07/07/2024 1:24:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[TenNV] [nvarchar](50) NOT NULL,
	[NgaySinh] [datetime] NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[Email] [varchar](30) NOT NULL,
	[TenDangNhap] [varchar](30) NOT NULL,
	[MatKhau] [varchar](100) NOT NULL,
	[MaLNV] [int] NOT NULL,
	[Xoa] [int] NOT NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUMUON]    Script Date: 07/07/2024 1:24:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUMUON](
	[MaPM] [int] IDENTITY(1,1) NOT NULL,
	[MaDG] [int] NOT NULL,
	[NgayMuon] [datetime] NOT NULL,
	[NgayTra] [datetime] NULL,
	[TienPhat] [float] NOT NULL,
	[Xoa] [int] NOT NULL,
 CONSTRAINT [PK_PHIEUMUON] PRIMARY KEY CLUSTERED 
(
	[MaPM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUYDINH]    Script Date: 07/07/2024 1:24:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUYDINH](
	[MaQD] [int] IDENTITY(1,1) NOT NULL,
	[TenQD] [nvarchar](50) NOT NULL,
	[KieuDL] [nvarchar](10) NOT NULL,
	[GiaTri] [nvarchar](50) NOT NULL,
	[TinhTrang] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_QUYDINH] PRIMARY KEY CLUSTERED 
(
	[MaQD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SACH]    Script Date: 07/07/2024 1:24:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SACH](
	[MaSach] [int] IDENTITY(1,1) NOT NULL,
	[TenSach] [nvarchar](100) NOT NULL,
	[TacGia] [nvarchar](50) NOT NULL,
	[NamXB] [int] NOT NULL,
	[NhaXB] [nvarchar](50) NOT NULL,
	[NgayNhap] [datetime] NOT NULL,
	[TinhTrang] [nvarchar](30) NOT NULL,
	[MaLS] [int] NOT NULL,
	[Xoa] [int] NOT NULL,
 CONSTRAINT [PK_SACH] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THEDOCGIA]    Script Date: 07/07/2024 1:24:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THEDOCGIA](
	[MaDG] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[NgaySinh] [datetime] NOT NULL,
	[Diachi] [nvarchar](100) NOT NULL,
	[Email] [varchar](30) NOT NULL,
	[NgayLT] [datetime] NOT NULL,
	[MaLDG] [int] NOT NULL,
	[Xoa] [int] NOT NULL,
 CONSTRAINT [PK_THEDOCGia] PRIMARY KEY CLUSTERED 
(
	[MaDG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CHITIETPHIEUMUON] ([MaPM], [STT], [MaSach], [Xoa]) VALUES (1, 1, 1, 1)
INSERT [dbo].[CHITIETPHIEUMUON] ([MaPM], [STT], [MaSach], [Xoa]) VALUES (2, 1, 2, 1)
INSERT [dbo].[CHITIETPHIEUMUON] ([MaPM], [STT], [MaSach], [Xoa]) VALUES (3, 1, 3, 1)
INSERT [dbo].[CHITIETPHIEUMUON] ([MaPM], [STT], [MaSach], [Xoa]) VALUES (4, 1, 4, 1)
INSERT [dbo].[CHITIETPHIEUMUON] ([MaPM], [STT], [MaSach], [Xoa]) VALUES (5, 1, 5, 1)
INSERT [dbo].[CHITIETPHIEUMUON] ([MaPM], [STT], [MaSach], [Xoa]) VALUES (6, 1, 6, 1)
INSERT [dbo].[CHITIETPHIEUMUON] ([MaPM], [STT], [MaSach], [Xoa]) VALUES (7, 1, 7, 1)
INSERT [dbo].[CHITIETPHIEUMUON] ([MaPM], [STT], [MaSach], [Xoa]) VALUES (8, 1, 8, 1)
INSERT [dbo].[CHITIETPHIEUMUON] ([MaPM], [STT], [MaSach], [Xoa]) VALUES (9, 1, 9, 1)
INSERT [dbo].[CHITIETPHIEUMUON] ([MaPM], [STT], [MaSach], [Xoa]) VALUES (10, 1, 10, 1)
INSERT [dbo].[CHITIETPHIEUMUON] ([MaPM], [STT], [MaSach], [Xoa]) VALUES (11, 1, 11, 1)
INSERT [dbo].[CHITIETPHIEUMUON] ([MaPM], [STT], [MaSach], [Xoa]) VALUES (12, 1, 12, 1)
INSERT [dbo].[CHITIETPHIEUMUON] ([MaPM], [STT], [MaSach], [Xoa]) VALUES (13, 1, 13, 1)
INSERT [dbo].[CHITIETPHIEUMUON] ([MaPM], [STT], [MaSach], [Xoa]) VALUES (14, 1, 14, 0)
INSERT [dbo].[CHITIETPHIEUMUON] ([MaPM], [STT], [MaSach], [Xoa]) VALUES (15, 1, 14, 1)
INSERT [dbo].[CHITIETPHIEUMUON] ([MaPM], [STT], [MaSach], [Xoa]) VALUES (16, 1, 14, 1)
INSERT [dbo].[CHITIETPHIEUMUON] ([MaPM], [STT], [MaSach], [Xoa]) VALUES (17, 1, 14, 1)
INSERT [dbo].[CHITIETPHIEUMUON] ([MaPM], [STT], [MaSach], [Xoa]) VALUES (18, 1, 14, 1)
INSERT [dbo].[CHITIETPHIEUMUON] ([MaPM], [STT], [MaSach], [Xoa]) VALUES (19, 1, 14, 1)
INSERT [dbo].[CHITIETPHIEUMUON] ([MaPM], [STT], [MaSach], [Xoa]) VALUES (20, 1, 14, 1)
INSERT [dbo].[CHITIETPHIEUMUON] ([MaPM], [STT], [MaSach], [Xoa]) VALUES (1002, 1, 2, 0)
INSERT [dbo].[CHITIETPHIEUMUON] ([MaPM], [STT], [MaSach], [Xoa]) VALUES (1002, 2, 4, 0)
INSERT [dbo].[CHITIETPHIEUMUON] ([MaPM], [STT], [MaSach], [Xoa]) VALUES (1003, 1, 6, 0)
INSERT [dbo].[CHITIETPHIEUMUON] ([MaPM], [STT], [MaSach], [Xoa]) VALUES (1004, 1, 3, 0)
INSERT [dbo].[CHITIETPHIEUMUON] ([MaPM], [STT], [MaSach], [Xoa]) VALUES (1004, 2, 8, 0)
INSERT [dbo].[CHITIETPHIEUMUON] ([MaPM], [STT], [MaSach], [Xoa]) VALUES (2002, 1, 5, 0)
INSERT [dbo].[CHITIETPHIEUMUON] ([MaPM], [STT], [MaSach], [Xoa]) VALUES (2002, 2, 10, 0)
GO
SET IDENTITY_INSERT [dbo].[LOAIDG] ON 

INSERT [dbo].[LOAIDG] ([MaLDG], [TenLDG], [Xoa]) VALUES (1, N'Học sinh', 0)
INSERT [dbo].[LOAIDG] ([MaLDG], [TenLDG], [Xoa]) VALUES (2, N'Giáo viên', 0)
INSERT [dbo].[LOAIDG] ([MaLDG], [TenLDG], [Xoa]) VALUES (3, N'Nhân viên thư viện', 0)
SET IDENTITY_INSERT [dbo].[LOAIDG] OFF
GO
SET IDENTITY_INSERT [dbo].[LOAINV] ON 

INSERT [dbo].[LOAINV] ([MaLNV], [TenLNV], [Xoa]) VALUES (1, N'Thủ thư', 0)
INSERT [dbo].[LOAINV] ([MaLNV], [TenLNV], [Xoa]) VALUES (2, N'Nhân viên', 0)
SET IDENTITY_INSERT [dbo].[LOAINV] OFF
GO
SET IDENTITY_INSERT [dbo].[LOAISACH] ON 

INSERT [dbo].[LOAISACH] ([MaLS], [TenLS], [Xoa]) VALUES (1, N'Văn học', 0)
INSERT [dbo].[LOAISACH] ([MaLS], [TenLS], [Xoa]) VALUES (2, N'Kỹ năng sống', 0)
INSERT [dbo].[LOAISACH] ([MaLS], [TenLS], [Xoa]) VALUES (3, N'Kinh tế', 0)
INSERT [dbo].[LOAISACH] ([MaLS], [TenLS], [Xoa]) VALUES (4, N'Bà mẹ - Em bé', 0)
INSERT [dbo].[LOAISACH] ([MaLS], [TenLS], [Xoa]) VALUES (5, N'Y học', 0)
INSERT [dbo].[LOAISACH] ([MaLS], [TenLS], [Xoa]) VALUES (6, N'Lịch sử', 0)
INSERT [dbo].[LOAISACH] ([MaLS], [TenLS], [Xoa]) VALUES (7, N'Học ngoại ngữ', 0)
SET IDENTITY_INSERT [dbo].[LOAISACH] OFF
GO
SET IDENTITY_INSERT [dbo].[NHANVIEN] ON 

INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [NgaySinh], [DiaChi], [Email], [TenDangNhap], [MatKhau], [MaLNV], [Xoa]) VALUES (1, N'Thủ Thư', CAST(N'2005-06-09T00:00:00.000' AS DateTime), N'Hà Nội', N'ntthu@gmail.com', N'Admin', N'87d9bb400c0634691f0e3baaf1e2fd0d', 1, 0)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [NgaySinh], [DiaChi], [Email], [TenDangNhap], [MatKhau], [MaLNV], [Xoa]) VALUES (2, N'Nhân Viên', CAST(N'1999-01-02T00:00:00.000' AS DateTime), N'Hà Nội', N'nvien@gmail.com', N'NhanVien', N'87d9bb400c0634691f0e3baaf1e2fd0d', 2, 0)
SET IDENTITY_INSERT [dbo].[NHANVIEN] OFF
GO
SET IDENTITY_INSERT [dbo].[PHIEUMUON] ON 

INSERT [dbo].[PHIEUMUON] ([MaPM], [MaDG], [NgayMuon], [NgayTra], [TienPhat], [Xoa]) VALUES (1, 1, CAST(N'2019-02-03T00:00:00.000' AS DateTime), CAST(N'2019-02-04T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[PHIEUMUON] ([MaPM], [MaDG], [NgayMuon], [NgayTra], [TienPhat], [Xoa]) VALUES (2, 2, CAST(N'2019-03-01T00:00:00.000' AS DateTime), CAST(N'2019-03-02T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[PHIEUMUON] ([MaPM], [MaDG], [NgayMuon], [NgayTra], [TienPhat], [Xoa]) VALUES (3, 3, CAST(N'2019-04-01T00:00:00.000' AS DateTime), CAST(N'2019-04-02T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[PHIEUMUON] ([MaPM], [MaDG], [NgayMuon], [NgayTra], [TienPhat], [Xoa]) VALUES (4, 4, CAST(N'2019-05-01T00:00:00.000' AS DateTime), CAST(N'2019-05-02T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[PHIEUMUON] ([MaPM], [MaDG], [NgayMuon], [NgayTra], [TienPhat], [Xoa]) VALUES (5, 5, CAST(N'2019-06-20T00:00:00.000' AS DateTime), CAST(N'2019-06-21T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[PHIEUMUON] ([MaPM], [MaDG], [NgayMuon], [NgayTra], [TienPhat], [Xoa]) VALUES (6, 6, CAST(N'2019-06-18T00:00:00.000' AS DateTime), CAST(N'2019-06-19T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[PHIEUMUON] ([MaPM], [MaDG], [NgayMuon], [NgayTra], [TienPhat], [Xoa]) VALUES (7, 1, CAST(N'2019-06-20T00:00:00.000' AS DateTime), CAST(N'2019-06-21T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[PHIEUMUON] ([MaPM], [MaDG], [NgayMuon], [NgayTra], [TienPhat], [Xoa]) VALUES (8, 2, CAST(N'2019-06-20T00:00:00.000' AS DateTime), CAST(N'2019-06-21T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[PHIEUMUON] ([MaPM], [MaDG], [NgayMuon], [NgayTra], [TienPhat], [Xoa]) VALUES (9, 3, CAST(N'2019-06-20T00:00:00.000' AS DateTime), CAST(N'2019-06-21T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[PHIEUMUON] ([MaPM], [MaDG], [NgayMuon], [NgayTra], [TienPhat], [Xoa]) VALUES (10, 4, CAST(N'2019-06-20T00:00:00.000' AS DateTime), CAST(N'2019-06-21T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[PHIEUMUON] ([MaPM], [MaDG], [NgayMuon], [NgayTra], [TienPhat], [Xoa]) VALUES (11, 5, CAST(N'2019-06-20T00:00:00.000' AS DateTime), CAST(N'2019-06-21T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[PHIEUMUON] ([MaPM], [MaDG], [NgayMuon], [NgayTra], [TienPhat], [Xoa]) VALUES (12, 6, CAST(N'2019-06-20T00:00:00.000' AS DateTime), CAST(N'2019-06-21T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[PHIEUMUON] ([MaPM], [MaDG], [NgayMuon], [NgayTra], [TienPhat], [Xoa]) VALUES (13, 7, CAST(N'2019-06-20T00:00:00.000' AS DateTime), CAST(N'2019-06-21T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[PHIEUMUON] ([MaPM], [MaDG], [NgayMuon], [NgayTra], [TienPhat], [Xoa]) VALUES (14, 1, CAST(N'2019-06-22T00:00:00.000' AS DateTime), CAST(N'2019-06-23T00:00:00.000' AS DateTime), 0, 0)
INSERT [dbo].[PHIEUMUON] ([MaPM], [MaDG], [NgayMuon], [NgayTra], [TienPhat], [Xoa]) VALUES (15, 2, CAST(N'2019-06-22T00:00:00.000' AS DateTime), CAST(N'2019-06-23T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[PHIEUMUON] ([MaPM], [MaDG], [NgayMuon], [NgayTra], [TienPhat], [Xoa]) VALUES (16, 3, CAST(N'2019-06-22T00:00:00.000' AS DateTime), CAST(N'2019-06-23T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[PHIEUMUON] ([MaPM], [MaDG], [NgayMuon], [NgayTra], [TienPhat], [Xoa]) VALUES (17, 4, CAST(N'2019-06-22T00:00:00.000' AS DateTime), CAST(N'2019-06-23T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[PHIEUMUON] ([MaPM], [MaDG], [NgayMuon], [NgayTra], [TienPhat], [Xoa]) VALUES (18, 5, CAST(N'2019-06-22T00:00:00.000' AS DateTime), CAST(N'2019-06-23T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[PHIEUMUON] ([MaPM], [MaDG], [NgayMuon], [NgayTra], [TienPhat], [Xoa]) VALUES (19, 6, CAST(N'2019-06-22T00:00:00.000' AS DateTime), CAST(N'2019-06-23T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[PHIEUMUON] ([MaPM], [MaDG], [NgayMuon], [NgayTra], [TienPhat], [Xoa]) VALUES (20, 7, CAST(N'2019-06-22T00:00:00.000' AS DateTime), CAST(N'2019-06-23T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[PHIEUMUON] ([MaPM], [MaDG], [NgayMuon], [NgayTra], [TienPhat], [Xoa]) VALUES (21, 1, CAST(N'2019-06-19T00:00:00.000' AS DateTime), CAST(N'2024-06-17T21:29:45.813' AS DateTime), 0, 1)
INSERT [dbo].[PHIEUMUON] ([MaPM], [MaDG], [NgayMuon], [NgayTra], [TienPhat], [Xoa]) VALUES (22, 2, CAST(N'2019-06-22T00:00:00.000' AS DateTime), CAST(N'2024-07-04T23:56:09.733' AS DateTime), 0, 0)
INSERT [dbo].[PHIEUMUON] ([MaPM], [MaDG], [NgayMuon], [NgayTra], [TienPhat], [Xoa]) VALUES (1002, 3, CAST(N'2024-06-17T21:31:31.103' AS DateTime), NULL, 130000, 0)
INSERT [dbo].[PHIEUMUON] ([MaPM], [MaDG], [NgayMuon], [NgayTra], [TienPhat], [Xoa]) VALUES (1003, 7, CAST(N'2024-06-17T21:31:43.057' AS DateTime), CAST(N'2024-06-20T20:36:17.167' AS DateTime), 0, 0)
INSERT [dbo].[PHIEUMUON] ([MaPM], [MaDG], [NgayMuon], [NgayTra], [TienPhat], [Xoa]) VALUES (1004, 4, CAST(N'2024-06-20T20:35:54.003' AS DateTime), NULL, 100000, 0)
INSERT [dbo].[PHIEUMUON] ([MaPM], [MaDG], [NgayMuon], [NgayTra], [TienPhat], [Xoa]) VALUES (2002, 6, CAST(N'2024-07-04T23:56:15.630' AS DateTime), NULL, 0, 0)
SET IDENTITY_INSERT [dbo].[PHIEUMUON] OFF
GO
SET IDENTITY_INSERT [dbo].[QUYDINH] ON 

INSERT [dbo].[QUYDINH] ([MaQD], [TenQD], [KieuDL], [GiaTri], [TinhTrang]) VALUES (1, N'Số sách mượn tối đa', N'int', N'5', N'Áp dụng')
INSERT [dbo].[QUYDINH] ([MaQD], [TenQD], [KieuDL], [GiaTri], [TinhTrang]) VALUES (2, N'Số ngày mượn tối đa', N'int', N'4', N'Áp dụng')
INSERT [dbo].[QUYDINH] ([MaQD], [TenQD], [KieuDL], [GiaTri], [TinhTrang]) VALUES (3, N'Số tuổi tối thiểu', N'int', N'18', N'Áp dụng')
INSERT [dbo].[QUYDINH] ([MaQD], [TenQD], [KieuDL], [GiaTri], [TinhTrang]) VALUES (4, N'Số tuổi tối đa', N'int', N'60', N'Áp dụng')
INSERT [dbo].[QUYDINH] ([MaQD], [TenQD], [KieuDL], [GiaTri], [TinhTrang]) VALUES (5, N'Thời hạn năm sản xuất tối đa', N'int', N'20', N'Áp dụng')
INSERT [dbo].[QUYDINH] ([MaQD], [TenQD], [KieuDL], [GiaTri], [TinhTrang]) VALUES (6, N'Thời hạn thẻ độc giả', N'int', N'100', N'Áp dụng')
SET IDENTITY_INSERT [dbo].[QUYDINH] OFF
GO
SET IDENTITY_INSERT [dbo].[SACH] ON 

INSERT [dbo].[SACH] ([MaSach], [TenSach], [TacGia], [NamXB], [NhaXB], [NgayNhap], [TinhTrang], [MaLS], [Xoa]) VALUES (1, N'Tôi là Bêtô', N'Nguyễn Nhật Ánh', 2007, N'NXB Trẻ', CAST(N'2007-12-12T00:00:00.000' AS DateTime), N'Chưa mượn', 1, 0)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [TacGia], [NamXB], [NhaXB], [NgayNhap], [TinhTrang], [MaLS], [Xoa]) VALUES (2, N'Nhà Giả Kim', N'Paulo Coelho', 2013, N'NXB Văn học', CAST(N'2007-12-12T00:00:00.000' AS DateTime), N'Đã mượn', 1, 0)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [TacGia], [NamXB], [NhaXB], [NgayNhap], [TinhTrang], [MaLS], [Xoa]) VALUES (3, N'Sống Thực Tế Giữa Đời Thực Dụng', N'Mễ Mông', 2018, N'NXB Dân Trí', CAST(N'2007-12-12T00:00:00.000' AS DateTime), N'Đã mượn', 2, 0)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [TacGia], [NamXB], [NhaXB], [NgayNhap], [TinhTrang], [MaLS], [Xoa]) VALUES (4, N'Bạn Đắt Giá Bao Nhiêu?', N'Vãn Tình', 2018, N'NXB Thế Giới', CAST(N'2007-12-12T00:00:00.000' AS DateTime), N'Đã mượn', 2, 0)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [TacGia], [NamXB], [NhaXB], [NgayNhap], [TinhTrang], [MaLS], [Xoa]) VALUES (5, N'Đừng Lựa Chọn An Nhàn Khi Còn Trẻ', N'Cảnh Thiên', 2019, N'NXB Thế Giới', CAST(N'2007-12-12T00:00:00.000' AS DateTime), N'Đã mượn', 2, 0)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [TacGia], [NamXB], [NhaXB], [NgayNhap], [TinhTrang], [MaLS], [Xoa]) VALUES (6, N'Đắc Nhân Tâm', N'Dale Carnegie', 2016, N'NXB Tổng hợp TP.HCM', CAST(N'2007-12-12T00:00:00.000' AS DateTime), N'Chưa mượn', 2, 0)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [TacGia], [NamXB], [NhaXB], [NgayNhap], [TinhTrang], [MaLS], [Xoa]) VALUES (7, N'Đọc Vị Bất Kỳ Ai', N'TS. David J. Lieberman', 2018, N'NXB Lao động', CAST(N'2007-12-12T00:00:00.000' AS DateTime), N'Chưa mượn', 3, 0)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [TacGia], [NamXB], [NhaXB], [NgayNhap], [TinhTrang], [MaLS], [Xoa]) VALUES (8, N'Khí Chất Bao Nhiêu, Hạnh Phúc Bấy Nhiêu', N'Vãn Tình', 2018, N'NXB Thế Giới', CAST(N'2007-12-12T00:00:00.000' AS DateTime), N'Đã mượn', 2, 0)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [TacGia], [NamXB], [NhaXB], [NgayNhap], [TinhTrang], [MaLS], [Xoa]) VALUES (9, N'Tony Buổi Sáng - Trên Đường Băng', N'Tony Buổi Sáng', 2017, N'NXB Trẻ', CAST(N'2007-12-12T00:00:00.000' AS DateTime), N'Chưa mượn', 2, 0)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [TacGia], [NamXB], [NhaXB], [NgayNhap], [TinhTrang], [MaLS], [Xoa]) VALUES (10, N'999 Lá Thư Gửi Cho Chính Mình – Mong Bạn Trở Thành Phiên Bản Hoàn Hảo Nhất', N'Miêu Công Tử', 2018, N'NXB Thanh niên', CAST(N'2007-12-12T00:00:00.000' AS DateTime), N'Đã mượn', 2, 0)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [TacGia], [NamXB], [NhaXB], [NgayNhap], [TinhTrang], [MaLS], [Xoa]) VALUES (11, N'Khéo Ăn Nói Sẽ Có Được Thiên Hạ', N'Trác Nhã', 2018, N'NXB Văn học', CAST(N'2007-12-12T00:00:00.000' AS DateTime), N'Chưa mượn', 3, 0)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [TacGia], [NamXB], [NhaXB], [NgayNhap], [TinhTrang], [MaLS], [Xoa]) VALUES (12, N'Không Gia Đình', N'Hector Malot', 2018, N'NXB Văn Hóa - Văn Nghệ', CAST(N'2007-12-12T00:00:00.000' AS DateTime), N'Chưa mượn', 1, 0)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [TacGia], [NamXB], [NhaXB], [NgayNhap], [TinhTrang], [MaLS], [Xoa]) VALUES (13, N'Hành Trình Về Phương Đông', N'Baird T. Spalding', 2015, N'NXB Hồng Đức', CAST(N'2007-12-12T00:00:00.000' AS DateTime), N'Chưa mượn', 2, 0)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [TacGia], [NamXB], [NhaXB], [NgayNhap], [TinhTrang], [MaLS], [Xoa]) VALUES (14, N'Để Con Được Ốm', N'Uyên Bùi - BS. Trí Đoàn', 2016, N'NXB Thế Giới', CAST(N'2007-12-12T00:00:00.000' AS DateTime), N'Chưa mượn', 4, 0)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [TacGia], [NamXB], [NhaXB], [NgayNhap], [TinhTrang], [MaLS], [Xoa]) VALUES (15, N'All The Rule - Sống Bản Lĩnh Theo Cách Một Quý Cô', N'Ellen Fein, Sherrie Schneider', 2019, N'NXB Hà Nội', CAST(N'2007-12-12T00:00:00.000' AS DateTime), N'Chưa mượn', 2, 0)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [TacGia], [NamXB], [NhaXB], [NgayNhap], [TinhTrang], [MaLS], [Xoa]) VALUES (16, N'Đàn Ông Sao Hỏa Đàn Bà Sao Kim', N'John Gray', 2019, N'NXB Hồng Đức', CAST(N'2007-12-12T00:00:00.000' AS DateTime), N'Chưa mượn', 2, 0)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [TacGia], [NamXB], [NhaXB], [NgayNhap], [TinhTrang], [MaLS], [Xoa]) VALUES (17, N'Nhân Tố Enzyme - Phương Thức Sống Lành Mạnh', N'Hiromi Shinya', 2018, N'NXB Lao động', CAST(N'2007-12-12T00:00:00.000' AS DateTime), N'Chưa mượn', 5, 0)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [TacGia], [NamXB], [NhaXB], [NgayNhap], [TinhTrang], [MaLS], [Xoa]) VALUES (18, N'Sapiens: Lược Sử Loài Người', N'Yuval Noah Harari', 2017, N'NXB Tri thức', CAST(N'2007-12-12T00:00:00.000' AS DateTime), N'Chưa mượn', 6, 0)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [TacGia], [NamXB], [NhaXB], [NgayNhap], [TinhTrang], [MaLS], [Xoa]) VALUES (19, N'Tự Học Tiếng Trung Cho Người Mới Bắt Đầu', N'The Zhishi', 2016, N'NXB Đại Học Quốc Gia Hà Nội', CAST(N'2007-12-12T00:00:00.000' AS DateTime), N'Chưa mượn', 7, 0)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [TacGia], [NamXB], [NhaXB], [NgayNhap], [TinhTrang], [MaLS], [Xoa]) VALUES (20, N'Chuyến Tàu Một Chiều Không Trở Lại', N'Kiên Trần', 2019, N'NXB Hồng Đức', CAST(N'2007-12-12T00:00:00.000' AS DateTime), N'Chưa mượn', 2, 0)
SET IDENTITY_INSERT [dbo].[SACH] OFF
GO
SET IDENTITY_INSERT [dbo].[THEDOCGIA] ON 

INSERT [dbo].[THEDOCGIA] ([MaDG], [HoTen], [NgaySinh], [Diachi], [Email], [NgayLT], [MaLDG], [Xoa]) VALUES (1, N'Nguyễn Độc Giả', CAST(N'2000-02-02T00:00:00.000' AS DateTime), N'Hoàng Mai', N'hdGia@gmail.com', CAST(N'2019-01-09T00:00:00.000' AS DateTime), 3, 0)
INSERT [dbo].[THEDOCGIA] ([MaDG], [HoTen], [NgaySinh], [Diachi], [Email], [NgayLT], [MaLDG], [Xoa]) VALUES (2, N'Lê Trung', CAST(N'2003-06-06T00:00:00.000' AS DateTime), N'Hà Nội', N'trung@gmail.com', CAST(N'2021-03-11T00:00:00.000' AS DateTime), 1, 0)
INSERT [dbo].[THEDOCGIA] ([MaDG], [HoTen], [NgaySinh], [Diachi], [Email], [NgayLT], [MaLDG], [Xoa]) VALUES (3, N'Thùy Trang', CAST(N'2003-07-25T00:00:00.000' AS DateTime), N'Hoàng Mai', N'tttrang@gmail.com', CAST(N'2019-02-10T00:00:00.000' AS DateTime), 2, 0)
INSERT [dbo].[THEDOCGIA] ([MaDG], [HoTen], [NgaySinh], [Diachi], [Email], [NgayLT], [MaLDG], [Xoa]) VALUES (4, N'Hoàng Nam', CAST(N'2003-12-19T00:00:00.000' AS DateTime), N'Hà Nội', N'hhnam@gMail.com', CAST(N'2019-02-16T00:00:00.000' AS DateTime), 2, 0)
INSERT [dbo].[THEDOCGIA] ([MaDG], [HoTen], [NgaySinh], [Diachi], [Email], [NgayLT], [MaLDG], [Xoa]) VALUES (5, N'Duy Thành', CAST(N'2003-08-22T00:00:00.000' AS DateTime), N'Hoàng Mai', N'dthanh@gMail.com', CAST(N'2019-03-11T00:00:00.000' AS DateTime), 1, 0)
INSERT [dbo].[THEDOCGIA] ([MaDG], [HoTen], [NgaySinh], [Diachi], [Email], [NgayLT], [MaLDG], [Xoa]) VALUES (6, N'Thành Long', CAST(N'2003-06-03T00:00:00.000' AS DateTime), N'Hà Nam', N'lmqminh@gMail.com', CAST(N'2019-03-11T00:00:00.000' AS DateTime), 1, 0)
INSERT [dbo].[THEDOCGIA] ([MaDG], [HoTen], [NgaySinh], [Diachi], [Email], [NgayLT], [MaLDG], [Xoa]) VALUES (7, N'Vũ Tú', CAST(N'2003-06-19T00:00:00.000' AS DateTime), N'Đống Đa', N'tu@gmail.com', CAST(N'2019-06-15T00:00:00.000' AS DateTime), 1, 0)
INSERT [dbo].[THEDOCGIA] ([MaDG], [HoTen], [NgaySinh], [Diachi], [Email], [NgayLT], [MaLDG], [Xoa]) VALUES (1002, N'Nguyễn Văn A', CAST(N'2002-04-25T00:00:00.000' AS DateTime), N'Hai Bà Trung', N'vana@gmail.com', CAST(N'2019-02-10T00:00:00.000' AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[THEDOCGIA] OFF
GO
ALTER TABLE [dbo].[CHITIETPHIEUMUON]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETPHIEUMUON_PHIEUMUON] FOREIGN KEY([MaPM])
REFERENCES [dbo].[PHIEUMUON] ([MaPM])
GO
ALTER TABLE [dbo].[CHITIETPHIEUMUON] CHECK CONSTRAINT [FK_CHITIETPHIEUMUON_PHIEUMUON]
GO
ALTER TABLE [dbo].[CHITIETPHIEUMUON]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETPHIEUMUON_SACH] FOREIGN KEY([MaSach])
REFERENCES [dbo].[SACH] ([MaSach])
GO
ALTER TABLE [dbo].[CHITIETPHIEUMUON] CHECK CONSTRAINT [FK_CHITIETPHIEUMUON_SACH]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_LOAINV] FOREIGN KEY([MaLNV])
REFERENCES [dbo].[LOAINV] ([MaLNV])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_NHANVIEN_LOAINV]
GO
ALTER TABLE [dbo].[PHIEUMUON]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUMUON_THEDOCGia] FOREIGN KEY([MaDG])
REFERENCES [dbo].[THEDOCGIA] ([MaDG])
GO
ALTER TABLE [dbo].[PHIEUMUON] CHECK CONSTRAINT [FK_PHIEUMUON_THEDOCGia]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [FK_SACH_LOAISACH] FOREIGN KEY([MaLS])
REFERENCES [dbo].[LOAISACH] ([MaLS])
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [FK_SACH_LOAISACH]
GO
ALTER TABLE [dbo].[THEDOCGIA]  WITH CHECK ADD  CONSTRAINT [FK_THEDOCGia_LOAIDG] FOREIGN KEY([MaLDG])
REFERENCES [dbo].[LOAIDG] ([MaLDG])
GO
ALTER TABLE [dbo].[THEDOCGIA] CHECK CONSTRAINT [FK_THEDOCGia_LOAIDG]
GO
USE [master]
GO
ALTER DATABASE [qlthuviendb] SET  READ_WRITE 
GO
