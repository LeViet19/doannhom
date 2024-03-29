USE [QUANLYLINHKIEN]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 22/05/2021 7:28:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[mahoadon] [nvarchar](50) NOT NULL,
	[makh] [nvarchar](50) NULL,
	[manv] [nvarchar](50) NULL,
	[matb] [nvarchar](50) NULL,
	[soluong] [int] NULL,
	[dongia] [float] NULL,
	[thanhtien] [float] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[mahoadon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 22/05/2021 7:28:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[makh] [nvarchar](50) NOT NULL,
	[tenkh] [nvarchar](50) NULL,
	[phai] [nvarchar](50) NULL,
	[sdt] [nvarchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
	[thongtin] [nvarchar](50) NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[makh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LOAITHIETBI]    Script Date: 22/05/2021 7:28:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAITHIETBI](
	[maloai] [nvarchar](50) NOT NULL,
	[tenloai] [nvarchar](50) NULL,
	[thongtinloai] [nvarchar](50) NULL,
 CONSTRAINT [PK_LOAITHIETBI] PRIMARY KEY CLUSTERED 
(
	[maloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NGUOIDUNG]    Script Date: 22/05/2021 7:28:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGUOIDUNG](
	[taikhoan] [nvarchar](50) NULL,
	[matkhau] [nvarchar](50) NULL,
	[quyen] [tinyint] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 22/05/2021 7:28:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[mancc] [nvarchar](50) NOT NULL,
	[tenncc] [nvarchar](50) NULL,
	[thongtinncc] [nvarchar](50) NULL,
 CONSTRAINT [PK_NHACUNGCAP] PRIMARY KEY CLUSTERED 
(
	[mancc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 22/05/2021 7:28:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[manv] [nvarchar](50) NOT NULL,
	[tennv] [nvarchar](50) NULL,
	[phai] [nvarchar](50) NOT NULL,
	[sdt] [nvarchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
	[thongtin] [nvarchar](50) NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[manv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHIEUKIEM]    Script Date: 22/05/2021 7:28:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUKIEM](
	[mapk] [nvarchar](50) NOT NULL,
	[tenpk] [nvarchar](50) NULL,
	[matb] [nvarchar](50) NULL,
	[manv] [nvarchar](50) NULL,
	[soluongthietbi] [int] NULL,
	[tinhtrang] [nvarchar](50) NULL,
	[ngaylapphieu] [datetime] NULL,
	[ghichu] [nvarchar](50) NULL,
 CONSTRAINT [PK_PHIEUKIEM] PRIMARY KEY CLUSTERED 
(
	[mapk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[THIETBI]    Script Date: 22/05/2021 7:28:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THIETBI](
	[matb] [nvarchar](50) NOT NULL,
	[tentb] [nvarchar](50) NULL,
	[mancc] [nvarchar](50) NULL,
	[maloai] [nvarchar](50) NULL,
	[thongtinthietbi] [nvarchar](50) NULL,
 CONSTRAINT [PK_THIETBI] PRIMARY KEY CLUSTERED 
(
	[matb] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[HOADON] ([mahoadon], [makh], [manv], [matb], [soluong], [dongia], [thanhtien]) VALUES (N'HD1', N'KH1', N'NV1', N'MTB1', 2, 50000, 100000)
INSERT [dbo].[HOADON] ([mahoadon], [makh], [manv], [matb], [soluong], [dongia], [thanhtien]) VALUES (N'HD3', N'KH2', N'NV2', N'MTB2', 200000, 1, 200000)
INSERT [dbo].[KHACHHANG] ([makh], [tenkh], [phai], [sdt], [diachi], [thongtin]) VALUES (N'KH1', N'Phan Tấn Đạt', N'Nam', N'11215115', N'an giang', N'Lê Thị Kim Xoan')
INSERT [dbo].[KHACHHANG] ([makh], [tenkh], [phai], [sdt], [diachi], [thongtin]) VALUES (N'KH2', N'Đinh Văn Thọ', N'Nam', N'121212', N'An Giang', N'FB. Vo Tienn')
INSERT [dbo].[LOAITHIETBI] ([maloai], [tenloai], [thongtinloai]) VALUES (N'ML1', N'Tai Nghe', N'không dây')
INSERT [dbo].[LOAITHIETBI] ([maloai], [tenloai], [thongtinloai]) VALUES (N'ML2', N'Sạc dự phòng', N'20000A')
INSERT [dbo].[LOAITHIETBI] ([maloai], [tenloai], [thongtinloai]) VALUES (N'ML3', N'Cáp Sạc', N'sạc nhanh')
INSERT [dbo].[NGUOIDUNG] ([taikhoan], [matkhau], [quyen]) VALUES (N'admin', N'e3afed0047b08059d0fada10f400c1e5', 1)
INSERT [dbo].[NGUOIDUNG] ([taikhoan], [matkhau], [quyen]) VALUES (N'user', N'ee11cbb19052e40b07aac0ca060c23ee', 2)
INSERT [dbo].[NHACUNGCAP] ([mancc], [tenncc], [thongtinncc]) VALUES (N'NCC1', N'Oppo', N'Đt')
INSERT [dbo].[NHACUNGCAP] ([mancc], [tenncc], [thongtinncc]) VALUES (N'NCC2', N'SumSung', N'Tai Nghe')
INSERT [dbo].[NHACUNGCAP] ([mancc], [tenncc], [thongtinncc]) VALUES (N'NCC3', N'Iphone', N'Sạc')
INSERT [dbo].[NHANVIEN] ([manv], [tennv], [phai], [sdt], [diachi], [thongtin]) VALUES (N'NV1', N'Kiên', N'Nam', N'0125426361', N'An Giang', N'Vippro')
INSERT [dbo].[NHANVIEN] ([manv], [tennv], [phai], [sdt], [diachi], [thongtin]) VALUES (N'NV2', N'Quang', N'Nam', N'012546925', N'Long Xuyên', N'Pro')
INSERT [dbo].[NHANVIEN] ([manv], [tennv], [phai], [sdt], [diachi], [thongtin]) VALUES (N'NV4', N'Khoa', N'Nam', N'44121', N'An Ginag', N'9 nhgo')
INSERT [dbo].[PHIEUKIEM] ([mapk], [tenpk], [matb], [manv], [soluongthietbi], [tinhtrang], [ngaylapphieu], [ghichu]) VALUES (N'MPK1', N'Kiem Tai nghe', N'MTB1', N'NV2', 10, N'TB', CAST(N'2021-05-05 00:00:00.000' AS DateTime), N'tot')
INSERT [dbo].[PHIEUKIEM] ([mapk], [tenpk], [matb], [manv], [soluongthietbi], [tinhtrang], [ngaylapphieu], [ghichu]) VALUES (N'MPK15', N'Phiếu Kiểm Qu55ạt', N'MTB1', N'NV1', 6, N'Tốt', CAST(N'2021-05-05 00:00:00.000' AS DateTime), N'Tốt')
INSERT [dbo].[THIETBI] ([matb], [tentb], [mancc], [maloai], [thongtinthietbi]) VALUES (N'MTB1', N'Tai Nghe', N'NCC1', N'ML1', N'OKe')
INSERT [dbo].[THIETBI] ([matb], [tentb], [mancc], [maloai], [thongtinthietbi]) VALUES (N'MTB2', N'Sạc Dự Phòng', N'NCC2', N'ML2', N'OKe')
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_KHACHHANG] FOREIGN KEY([makh])
REFERENCES [dbo].[KHACHHANG] ([makh])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_KHACHHANG]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_NHANVIEN] FOREIGN KEY([manv])
REFERENCES [dbo].[NHANVIEN] ([manv])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_NHANVIEN]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_THIETBI] FOREIGN KEY([matb])
REFERENCES [dbo].[THIETBI] ([matb])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_THIETBI]
GO
ALTER TABLE [dbo].[PHIEUKIEM]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUKIEM_NHANVIEN] FOREIGN KEY([manv])
REFERENCES [dbo].[NHANVIEN] ([manv])
GO
ALTER TABLE [dbo].[PHIEUKIEM] CHECK CONSTRAINT [FK_PHIEUKIEM_NHANVIEN]
GO
ALTER TABLE [dbo].[PHIEUKIEM]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUKIEM_THIETBI] FOREIGN KEY([matb])
REFERENCES [dbo].[THIETBI] ([matb])
GO
ALTER TABLE [dbo].[PHIEUKIEM] CHECK CONSTRAINT [FK_PHIEUKIEM_THIETBI]
GO
ALTER TABLE [dbo].[THIETBI]  WITH CHECK ADD  CONSTRAINT [FK_THIETBI_LOAITHIETBI] FOREIGN KEY([maloai])
REFERENCES [dbo].[LOAITHIETBI] ([maloai])
GO
ALTER TABLE [dbo].[THIETBI] CHECK CONSTRAINT [FK_THIETBI_LOAITHIETBI]
GO
ALTER TABLE [dbo].[THIETBI]  WITH CHECK ADD  CONSTRAINT [FK_THIETBI_NHACUNGCAP] FOREIGN KEY([mancc])
REFERENCES [dbo].[NHACUNGCAP] ([mancc])
GO
ALTER TABLE [dbo].[THIETBI] CHECK CONSTRAINT [FK_THIETBI_NHACUNGCAP]
GO
