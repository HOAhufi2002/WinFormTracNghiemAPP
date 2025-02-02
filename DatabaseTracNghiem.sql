USE [tracnghiem]
GO
/****** Object:  Table [dbo].[BaiThi]    Script Date: 06/09/2024 8:08:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiThi](
	[MaBaiThi] [int] IDENTITY(1,1) NOT NULL,
	[MaNguoiDung] [int] NOT NULL,
	[ThoiGianBatDau] [datetime] NOT NULL,
	[ThoiGianKetThuc] [datetime] NULL,
	[Diem] [decimal](5, 2) NULL,
	[DaXoa] [bit] NULL,
	[MaCaThi] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBaiThi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CaThi]    Script Date: 06/09/2024 8:08:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaThi](
	[MaCaThi] [int] IDENTITY(1,1) NOT NULL,
	[TenCaThi] [nvarchar](255) NOT NULL,
	[ThoiGianBatDau] [datetime] NOT NULL,
	[ThoiGianKetThuc] [datetime] NOT NULL,
	[TrangThai] [bit] NULL,
	[DaXoa] [bit] NULL,
	[MaNguoiDung] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCaThi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CauHoi]    Script Date: 06/09/2024 8:08:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CauHoi](
	[MaCauHoi] [int] IDENTITY(1,1) NOT NULL,
	[NoiDung] [nvarchar](max) NOT NULL,
	[LuaChonA] [nvarchar](255) NOT NULL,
	[LuaChonB] [nvarchar](255) NOT NULL,
	[LuaChonC] [nvarchar](255) NOT NULL,
	[LuaChonD] [nvarchar](255) NOT NULL,
	[DapAnDung] [char](1) NOT NULL,
	[DaXoa] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCauHoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CauHoiTrongBaiThi]    Script Date: 06/09/2024 8:08:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CauHoiTrongBaiThi](
	[MaCauHoiTrongBaiThi] [int] IDENTITY(1,1) NOT NULL,
	[MaBaiThi] [int] NOT NULL,
	[MaCauHoi] [int] NOT NULL,
	[CauTraLoiNguoiDung] [char](1) NULL,
	[DapAnDung] [bit] NULL,
	[DaXoa] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCauHoiTrongBaiThi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KetQua]    Script Date: 06/09/2024 8:08:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KetQua](
	[MaKetQua] [int] IDENTITY(1,1) NOT NULL,
	[MaBaiThi] [int] NOT NULL,
	[SoCauDung] [int] NOT NULL,
	[SoCauSai] [int] NOT NULL,
	[Diem] [decimal](5, 2) NOT NULL,
	[DaXoa] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKetQua] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 06/09/2024 8:08:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[MaNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[MatKhau] [nvarchar](255) NOT NULL,
	[DaXoa] [bit] NULL,
	[VaiTro] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BaiThi] ON 

INSERT [dbo].[BaiThi] ([MaBaiThi], [MaNguoiDung], [ThoiGianBatDau], [ThoiGianKetThuc], [Diem], [DaXoa], [MaCaThi]) VALUES (2, 2, CAST(N'2024-09-04T23:58:46.257' AS DateTime), CAST(N'2024-09-04T23:58:54.930' AS DateTime), CAST(0.43 AS Decimal(5, 2)), 0, NULL)
INSERT [dbo].[BaiThi] ([MaBaiThi], [MaNguoiDung], [ThoiGianBatDau], [ThoiGianKetThuc], [Diem], [DaXoa], [MaCaThi]) VALUES (3, 2, CAST(N'2024-09-05T00:06:34.960' AS DateTime), CAST(N'2024-09-05T00:06:41.703' AS DateTime), CAST(0.43 AS Decimal(5, 2)), 0, NULL)
INSERT [dbo].[BaiThi] ([MaBaiThi], [MaNguoiDung], [ThoiGianBatDau], [ThoiGianKetThuc], [Diem], [DaXoa], [MaCaThi]) VALUES (4, 2, CAST(N'2024-09-05T20:42:37.310' AS DateTime), CAST(N'2024-09-05T20:43:12.463' AS DateTime), CAST(0.21 AS Decimal(5, 2)), 0, NULL)
INSERT [dbo].[BaiThi] ([MaBaiThi], [MaNguoiDung], [ThoiGianBatDau], [ThoiGianKetThuc], [Diem], [DaXoa], [MaCaThi]) VALUES (5, 2, CAST(N'2024-09-05T21:23:19.357' AS DateTime), CAST(N'2024-09-05T21:23:35.883' AS DateTime), CAST(0.22 AS Decimal(5, 2)), 0, NULL)
INSERT [dbo].[BaiThi] ([MaBaiThi], [MaNguoiDung], [ThoiGianBatDau], [ThoiGianKetThuc], [Diem], [DaXoa], [MaCaThi]) VALUES (6, 2, CAST(N'2024-09-06T16:42:19.983' AS DateTime), CAST(N'2024-09-06T16:42:33.347' AS DateTime), CAST(0.43 AS Decimal(5, 2)), 0, NULL)
INSERT [dbo].[BaiThi] ([MaBaiThi], [MaNguoiDung], [ThoiGianBatDau], [ThoiGianKetThuc], [Diem], [DaXoa], [MaCaThi]) VALUES (7, 3, CAST(N'2024-09-06T20:03:28.973' AS DateTime), CAST(N'2024-09-06T20:03:37.093' AS DateTime), CAST(0.43 AS Decimal(5, 2)), 0, NULL)
SET IDENTITY_INSERT [dbo].[BaiThi] OFF
GO
SET IDENTITY_INSERT [dbo].[CaThi] ON 

INSERT [dbo].[CaThi] ([MaCaThi], [TenCaThi], [ThoiGianBatDau], [ThoiGianKetThuc], [TrangThai], [DaXoa], [MaNguoiDung]) VALUES (1, N'Ca thi tháng 9 - Lần 1', CAST(N'2024-09-15T08:00:00.000' AS DateTime), CAST(N'2024-09-15T10:00:00.000' AS DateTime), 1, 0, 1)
INSERT [dbo].[CaThi] ([MaCaThi], [TenCaThi], [ThoiGianBatDau], [ThoiGianKetThuc], [TrangThai], [DaXoa], [MaNguoiDung]) VALUES (2, N'Ca thi tháng 9 - Lần 2', CAST(N'2024-09-20T14:00:00.000' AS DateTime), CAST(N'2024-09-20T16:00:00.000' AS DateTime), 1, 0, 1)
INSERT [dbo].[CaThi] ([MaCaThi], [TenCaThi], [ThoiGianBatDau], [ThoiGianKetThuc], [TrangThai], [DaXoa], [MaNguoiDung]) VALUES (3, N'Ca thi test', CAST(N'2024-09-05T20:20:24.000' AS DateTime), CAST(N'2024-09-06T20:20:24.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[CaThi] ([MaCaThi], [TenCaThi], [ThoiGianBatDau], [ThoiGianKetThuc], [TrangThai], [DaXoa], [MaNguoiDung]) VALUES (4, N'ca thi thử', CAST(N'2024-09-05T21:29:49.710' AS DateTime), CAST(N'2024-09-06T21:29:49.000' AS DateTime), 1, 0, 1)
SET IDENTITY_INSERT [dbo].[CaThi] OFF
GO
SET IDENTITY_INSERT [dbo].[CauHoi] ON 

INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (21, N'Nhập nội dung...', N'Đáp án A', N'Đáp án B', N'Đáp án C', N'Đáp án D', N'C', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (41, N'Số nguyên tố nhỏ nhất là số nào?', N'1', N'2', N'3', N'5', N'B', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (42, N'Tác giả của tác phẩm “Truyện Kiều” là ai?', N'Nguyễn Du', N'Nguyễn Trãi', N'Hồ Xuân Hương', N'Phan Bội Châu', N'A', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (43, N'Công thức hóa học của nước là gì?', N'H2O', N'O2', N'CO2', N'N2', N'A', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (44, N'Chiến tranh thế giới thứ hai kết thúc vào năm nào?', N'1945', N'1939', N'1940', N'1946', N'A', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (45, N'Tốc độ ánh sáng trong chân không là bao nhiêu?', N'3.0 x 10^6 m/s', N'3.0 x 10^8 m/s', N'3.0 x 10^10 m/s', N'3.0 x 10^5 m/s', N'B', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (46, N'Người phát minh ra bóng đèn là ai?', N'Alexander Graham Bell', N'Thomas Edison', N'Nikola Tesla', N'Albert Einstein', N'B', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (47, N'Sông nào dài nhất thế giới?', N'Sông Nile', N'Sông Amazon', N'Sông Mississippi', N'Sông Yangtze', N'A', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (48, N'Nguyên tử được cấu tạo từ những hạt nào?', N'Proton, Electron, Neutron', N'Proton và Electron', N'Neutron và Electron', N'Proton và Neutron', N'A', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (49, N'Tác phẩm "Lão Hạc" là của nhà văn nào?', N'Nam Cao', N'Nguyễn Công Hoan', N'Nguyễn Đình Thi', N'Tô Hoài', N'A', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (50, N'Đại dương lớn nhất thế giới là gì?', N'Thái Bình Dương', N'Đại Tây Dương', N'Ấn Độ Dương', N'Bắc Băng Dương', N'A', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (51, N'Quốc gia nào có diện tích lớn nhất trên thế giới?', N'Trung Quốc', N'Nga', N'Mỹ', N'Canada', N'B', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (52, N'Nhiệt độ đóng băng của nước là bao nhiêu độ C?', N'0 độ C', N'100 độ C', N'-10 độ C', N'32 độ C', N'A', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (53, N'Ai là người đã đưa ra thuyết tương đối?', N'Isaac Newton', N'Albert Einstein', N'Galileo Galilei', N'Stephen Hawking', N'B', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (54, N'Thành phần chính của khí quyển là khí gì?', N'Oxy', N'Nitơ', N'Carbon Dioxide', N'Helium', N'B', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (55, N'Vật chất có mấy trạng thái cơ bản?', N'2', N'3', N'4', N'5', N'C', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (56, N'Kim loại nào dẫn điện tốt nhất?', N'Sắt', N'Vàng', N'Đồng', N'Bạc', N'D', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (57, N'Trong hệ Mặt Trời, hành tinh nào gần Mặt Trời nhất?', N'Sao Hỏa', N'Sao Thổ', N'Sao Thủy', N'Sao Kim', N'C', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (58, N'Bộ phim "Titanic" ra mắt vào năm nào?', N'1995', N'1997', N'2000', N'1999', N'B', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (59, N'Tế bào thực vật có thành phần nào mà tế bào động vật không có?', N'Ribosome', N'Thành tế bào', N'Ty thể', N'Nhân tế bào', N'B', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (60, N'Quốc gia nào vô địch FIFA World Cup 2018?', N'Brazil', N'Pháp', N'Argentina', N'Đức', N'B', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (61, N'Số học trò của thầy giáo trong tác phẩm "Tắt đèn" của Ngô Tất Tố là bao nhiêu?', N'30', N'40', N'50', N'60', N'B', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (62, N'Kim tự tháp Giza nằm ở quốc gia nào?', N'Jordan', N'Maroc', N'Ấn Độ', N'Ai Cập', N'D', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (63, N'Tác phẩm "Những người khốn khổ" của ai?', N'Victor Hugo', N'Ernest Hemingway', N'Lev Tolstoy', N'F. Scott Fitzgerald', N'A', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (64, N'Người chiến thắng trong cuộc đua Marathon Olympic 2008 là ai?', N'Usain Bolt', N'Haile Gebrselassie', N'Samuel Wanjiru', N'Mo Farah', N'C', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (65, N'Cuộc chiến tranh Đông Dương lần thứ nhất kết thúc vào năm nào?', N'1950', N'1954', N'1960', N'1963', N'B', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (66, N'Thành phố nào được gọi là "thành phố ngàn hoa" ở Việt Nam?', N'Hà Nội', N'Sài Gòn', N'Đà Lạt', N'Huế', N'C', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (67, N'Quốc gia nào có mật độ dân số cao nhất thế giới?', N'Monaco', N'Vatican', N'Singapore', N'Thụy Sĩ', N'A', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (68, N'Vịnh Hạ Long nằm ở tỉnh nào của Việt Nam?', N'Quảng Bình', N'Quảng Ninh', N'Ninh Bình', N'Thanh Hóa', N'B', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (69, N'Số nguyên tố lớn nhất nhỏ hơn 20 là bao nhiêu?', N'17', N'19', N'13', N'11', N'B', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (70, N'Hiệp hội các quốc gia Đông Nam Á viết tắt là gì?', N'NAFTA', N'UNESCO', N'ASEAN', N'EU', N'C', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (71, N'Nguyên tố nào có ký hiệu là "Au"?', N'Vàng', N'Bạc', N'Đồng', N'Sắt', N'A', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (72, N'Quốc gia nào đã phát minh ra mì spaghetti?', N'Nhật Bản', N'Ý', N'Hàn Quốc', N'Trung Quốc', N'B', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (73, N'Cuộc cách mạng công nghiệp đầu tiên diễn ra ở quốc gia nào?', N'Mỹ', N'Anh', N'Pháp', N'Đức', N'B', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (74, N'Hành tinh nào có tên tiếng Anh là "Mars"?', N'Sao Hỏa', N'Sao Kim', N'Sao Mộc', N'Sao Thủy', N'A', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (75, N'Thành phố nào là thủ đô của Úc?', N'Sydney', N'Melbourne', N'Canberra', N'Perth', N'C', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (76, N'Bộ phim nào đã giành giải Oscar Phim hay nhất năm 1994?', N'Forrest Gump', N'Schindler’s List', N'Titanic', N'Saving Private Ryan', N'A', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (77, N'Ai là người lãnh đạo quân đội trong trận Điện Biên Phủ?', N'Võ Nguyên Giáp', N'Hồ Chí Minh', N'Phạm Văn Đồng', N'Tôn Đức Thắng', N'A', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (78, N'Tổng thống Mỹ nào bị ám sát vào năm 1963?', N'John F. Kennedy', N'Abraham Lincoln', N'Thomas Jefferson', N'Teddy Roosevelt', N'A', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (79, N'Hai vị thần nào cai quản biển cả trong thần thoại Hy Lạp?', N'Zeus và Poseidon', N'Poseidon và Apollo', N'Ares và Hades', N'Athena và Hermes', N'B', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (80, N'Stalin là tên của nhà lãnh đạo nước nào?', N'Mỹ', N'Liên Xô', N'Pháp', N'Trung Quốc', N'B', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (81, N'Ai là người phát hiện ra trọng lực khi táo rơi?', N'Isaac Newton', N'Albert Einstein', N'Galileo Galilei', N'Archimedes', N'A', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (82, N'Cuộc chiến tranh nào kéo dài từ năm 1955 đến 1975?', N'Chiến tranh thế giới thứ hai', N'Chiến tranh lạnh', N'Chiến tranh Việt Nam', N'Chiến tranh Triều Tiên', N'C', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (83, N'Món ăn nổi tiếng phở có nguồn gốc từ quốc gia nào?', N'Việt Nam', N'Trung Quốc', N'Hàn Quốc', N'Nhật Bản', N'A', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (84, N'Ngọn núi cao nhất thế giới là gì?', N'K2', N'Everest', N'Kangchenjunga', N'Lhotse', N'B', 0)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (85, N'Khu bảo tồn rừng nhiệt đới lớn nhất thế giới là gì?', N'Amazon', N'Congo', N'Sundarbans', N'Daintree', N'A', 1)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (86, N'Ai là người đầu tiên đặt chân lên Mặt Trăng?', N'Yuri Gagarin', N'Neil Armstrong', N'Michael Collins', N'Buzz Aldrin', N'B', 1)
INSERT [dbo].[CauHoi] ([MaCauHoi], [NoiDung], [LuaChonA], [LuaChonB], [LuaChonC], [LuaChonD], [DapAnDung], [DaXoa]) VALUES (87, N'1+1 ', N'2', N'3', N'4', N'5', N'A', 0)
SET IDENTITY_INSERT [dbo].[CauHoi] OFF
GO
SET IDENTITY_INSERT [dbo].[CauHoiTrongBaiThi] ON 

INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (1, 3, 80, N'B', 1, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (2, 3, 44, N'A', 1, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (3, 3, 72, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (4, 3, 69, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (5, 3, 57, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (6, 3, 78, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (7, 3, 61, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (8, 3, 49, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (9, 3, 52, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (10, 3, 43, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (11, 3, 62, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (12, 3, 84, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (13, 3, 56, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (14, 3, 60, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (15, 3, 83, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (16, 3, 63, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (17, 3, 82, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (18, 3, 42, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (19, 3, 47, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (20, 3, 85, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (21, 3, 74, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (22, 3, 41, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (23, 3, 53, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (24, 3, 76, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (25, 3, 67, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (26, 3, 79, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (27, 3, 77, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (28, 3, 50, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (29, 3, 66, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (30, 3, 59, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (31, 3, 46, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (32, 3, 70, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (33, 3, 73, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (34, 3, 68, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (35, 3, 21, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (36, 3, 55, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (37, 3, 58, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (38, 3, 81, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (39, 3, 65, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (40, 3, 75, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (41, 3, 51, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (42, 3, 64, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (43, 3, 71, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (44, 3, 45, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (45, 3, 54, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (46, 3, 48, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (47, 3, 86, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (48, 4, 41, N'A', 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (49, 4, 61, N'A', 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (50, 4, 45, N'B', 1, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (51, 4, 56, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (52, 4, 75, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (53, 4, 52, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (54, 4, 77, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (55, 4, 85, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (56, 4, 59, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (57, 4, 21, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (58, 4, 82, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (59, 4, 73, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (60, 4, 68, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (61, 4, 70, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (62, 4, 43, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (63, 4, 64, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (64, 4, 54, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (65, 4, 71, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (66, 4, 69, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (67, 4, 58, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (68, 4, 49, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (69, 4, 65, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (70, 4, 48, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (71, 4, 46, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (72, 4, 81, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (73, 4, 66, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (74, 4, 57, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (75, 4, 62, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (76, 4, 55, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (77, 4, 79, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (78, 4, 76, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (79, 4, 44, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (80, 4, 74, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (81, 4, 72, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (82, 4, 67, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (83, 4, 51, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (84, 4, 78, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (85, 4, 42, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (86, 4, 86, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (87, 4, 47, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (88, 4, 60, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (89, 4, 53, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (90, 4, 83, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (91, 4, 80, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (92, 4, 84, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (93, 4, 50, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (94, 4, 63, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (95, 5, 57, N'A', 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (96, 5, 58, N'A', 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (97, 5, 42, N'B', 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (98, 5, 82, N'A', 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (99, 5, 66, N'C', 1, 0)
GO
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (100, 5, 80, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (101, 5, 78, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (102, 5, 76, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (103, 5, 65, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (104, 5, 79, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (105, 5, 64, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (106, 5, 54, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (107, 5, 77, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (108, 5, 41, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (109, 5, 53, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (110, 5, 73, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (111, 5, 48, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (112, 5, 69, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (113, 5, 63, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (114, 5, 67, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (115, 5, 59, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (116, 5, 51, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (117, 5, 43, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (118, 5, 84, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (119, 5, 45, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (120, 5, 74, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (121, 5, 47, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (122, 5, 50, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (123, 5, 44, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (124, 5, 70, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (125, 5, 46, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (126, 5, 72, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (127, 5, 60, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (128, 5, 61, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (129, 5, 75, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (130, 5, 83, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (131, 5, 52, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (132, 5, 81, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (133, 5, 56, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (134, 5, 68, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (135, 5, 55, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (136, 5, 71, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (137, 5, 21, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (138, 5, 62, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (139, 5, 49, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (140, 6, 81, N'A', 1, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (141, 6, 43, N'B', 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (142, 6, 72, N'A', 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (143, 6, 75, N'C', 1, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (144, 6, 52, N'B', 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (145, 6, 44, N'D', 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (146, 6, 66, N'B', 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (147, 6, 74, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (148, 6, 47, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (149, 6, 83, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (150, 6, 42, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (151, 6, 46, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (152, 6, 65, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (153, 6, 41, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (154, 6, 54, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (155, 6, 58, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (156, 6, 61, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (157, 6, 59, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (158, 6, 78, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (159, 6, 70, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (160, 6, 57, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (161, 6, 80, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (162, 6, 73, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (163, 6, 51, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (164, 6, 77, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (165, 6, 64, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (166, 6, 49, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (167, 6, 63, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (168, 6, 56, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (169, 6, 21, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (170, 6, 69, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (171, 6, 62, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (172, 6, 68, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (173, 6, 50, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (174, 6, 55, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (175, 6, 84, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (176, 6, 45, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (177, 6, 87, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (178, 6, 60, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (179, 6, 48, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (180, 6, 53, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (181, 6, 71, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (182, 6, 82, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (183, 6, 79, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (184, 6, 76, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (185, 6, 67, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (186, 7, 87, N'A', 1, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (187, 7, 62, N'C', 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (188, 7, 76, N'A', 1, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (189, 7, 83, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (190, 7, 51, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (191, 7, 58, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (192, 7, 43, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (193, 7, 55, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (194, 7, 65, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (195, 7, 80, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (196, 7, 67, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (197, 7, 74, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (198, 7, 54, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (199, 7, 73, NULL, 0, 0)
GO
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (200, 7, 75, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (201, 7, 57, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (202, 7, 60, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (203, 7, 59, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (204, 7, 81, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (205, 7, 49, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (206, 7, 70, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (207, 7, 63, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (208, 7, 56, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (209, 7, 45, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (210, 7, 84, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (211, 7, 61, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (212, 7, 44, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (213, 7, 78, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (214, 7, 52, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (215, 7, 41, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (216, 7, 53, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (217, 7, 64, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (218, 7, 42, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (219, 7, 79, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (220, 7, 71, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (221, 7, 82, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (222, 7, 50, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (223, 7, 21, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (224, 7, 72, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (225, 7, 69, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (226, 7, 47, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (227, 7, 46, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (228, 7, 77, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (229, 7, 68, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (230, 7, 66, NULL, 0, 0)
INSERT [dbo].[CauHoiTrongBaiThi] ([MaCauHoiTrongBaiThi], [MaBaiThi], [MaCauHoi], [CauTraLoiNguoiDung], [DapAnDung], [DaXoa]) VALUES (231, 7, 48, NULL, 0, 0)
SET IDENTITY_INSERT [dbo].[CauHoiTrongBaiThi] OFF
GO
SET IDENTITY_INSERT [dbo].[KetQua] ON 

INSERT [dbo].[KetQua] ([MaKetQua], [MaBaiThi], [SoCauDung], [SoCauSai], [Diem], [DaXoa]) VALUES (1, 2, 2, 45, CAST(10.00 AS Decimal(5, 2)), 0)
INSERT [dbo].[KetQua] ([MaKetQua], [MaBaiThi], [SoCauDung], [SoCauSai], [Diem], [DaXoa]) VALUES (2, 3, 2, 45, CAST(9.00 AS Decimal(5, 2)), 0)
INSERT [dbo].[KetQua] ([MaKetQua], [MaBaiThi], [SoCauDung], [SoCauSai], [Diem], [DaXoa]) VALUES (3, 4, 1, 46, CAST(8.00 AS Decimal(5, 2)), 0)
INSERT [dbo].[KetQua] ([MaKetQua], [MaBaiThi], [SoCauDung], [SoCauSai], [Diem], [DaXoa]) VALUES (4, 5, 1, 44, CAST(7.00 AS Decimal(5, 2)), 0)
INSERT [dbo].[KetQua] ([MaKetQua], [MaBaiThi], [SoCauDung], [SoCauSai], [Diem], [DaXoa]) VALUES (5, 6, 2, 44, CAST(6.00 AS Decimal(5, 2)), 0)
INSERT [dbo].[KetQua] ([MaKetQua], [MaBaiThi], [SoCauDung], [SoCauSai], [Diem], [DaXoa]) VALUES (6, 7, 2, 44, CAST(0.43 AS Decimal(5, 2)), 0)
SET IDENTITY_INSERT [dbo].[KetQua] OFF
GO
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([MaNguoiDung], [HoTen], [Email], [MatKhau], [DaXoa], [VaiTro]) VALUES (1, N'Nguyen Van A', N'gv', N'1', 0, N'giaovien')
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [HoTen], [Email], [MatKhau], [DaXoa], [VaiTro]) VALUES (2, N'Le Thi B', N'hs', N'1', 0, N'hocsinh')
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [HoTen], [Email], [MatKhau], [DaXoa], [VaiTro]) VALUES (3, N'nguyễn minh hòa', N'hoa', N'1', 0, N'hocsinh')
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [HoTen], [Email], [MatKhau], [DaXoa], [VaiTro]) VALUES (4, N'học sinh a', N'hoahuit@gmail.com', N'123', 0, N'hocsinh')
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NguoiDun__A9D10534277A724C]    Script Date: 06/09/2024 8:08:20 CH ******/
ALTER TABLE [dbo].[NguoiDung] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BaiThi] ADD  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[CaThi] ADD  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[CaThi] ADD  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[CauHoi] ADD  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[CauHoiTrongBaiThi] ADD  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[KetQua] ADD  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[NguoiDung] ADD  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[NguoiDung] ADD  DEFAULT ('hocsinh') FOR [VaiTro]
GO
ALTER TABLE [dbo].[BaiThi]  WITH CHECK ADD  CONSTRAINT [FK_BaiThi_CaThi] FOREIGN KEY([MaCaThi])
REFERENCES [dbo].[CaThi] ([MaCaThi])
GO
ALTER TABLE [dbo].[BaiThi] CHECK CONSTRAINT [FK_BaiThi_CaThi]
GO
ALTER TABLE [dbo].[BaiThi]  WITH CHECK ADD  CONSTRAINT [FK_BaiThi_NguoiDung] FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[BaiThi] CHECK CONSTRAINT [FK_BaiThi_NguoiDung]
GO
ALTER TABLE [dbo].[CaThi]  WITH CHECK ADD  CONSTRAINT [FK_CaThi_NguoiDung] FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[CaThi] CHECK CONSTRAINT [FK_CaThi_NguoiDung]
GO
ALTER TABLE [dbo].[CauHoiTrongBaiThi]  WITH CHECK ADD  CONSTRAINT [FK_CauHoiTrongBaiThi_BaiThi] FOREIGN KEY([MaBaiThi])
REFERENCES [dbo].[BaiThi] ([MaBaiThi])
GO
ALTER TABLE [dbo].[CauHoiTrongBaiThi] CHECK CONSTRAINT [FK_CauHoiTrongBaiThi_BaiThi]
GO
ALTER TABLE [dbo].[CauHoiTrongBaiThi]  WITH CHECK ADD  CONSTRAINT [FK_CauHoiTrongBaiThi_CauHoi] FOREIGN KEY([MaCauHoi])
REFERENCES [dbo].[CauHoi] ([MaCauHoi])
GO
ALTER TABLE [dbo].[CauHoiTrongBaiThi] CHECK CONSTRAINT [FK_CauHoiTrongBaiThi_CauHoi]
GO
ALTER TABLE [dbo].[KetQua]  WITH CHECK ADD  CONSTRAINT [FK_KetQua_BaiThi] FOREIGN KEY([MaBaiThi])
REFERENCES [dbo].[BaiThi] ([MaBaiThi])
GO
ALTER TABLE [dbo].[KetQua] CHECK CONSTRAINT [FK_KetQua_BaiThi]
GO
