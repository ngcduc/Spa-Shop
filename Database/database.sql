USE [master]
GO
/****** Object:  Database [SalonManagement]    Script Date: 3/21/2022 12:23:47 AM ******/
CREATE DATABASE [SalonManagement]

GO
USE [SalonManagement]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/21/2022 12:23:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[accountID] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](150) NOT NULL,
	[password] [nvarchar](150) NOT NULL,
	[displayname] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[accountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryProduct]    Script Date: 3/21/2022 12:23:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryProduct](
	[categoryPID] [int] NOT NULL,
	[categoryname] [nvarchar](300) NOT NULL,
 CONSTRAINT [PK_CategoryProduct] PRIMARY KEY CLUSTERED 
(
	[categoryPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryService]    Script Date: 3/21/2022 12:23:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryService](
	[categorySID] [int] NOT NULL,
	[categoryname] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_CategoryService] PRIMARY KEY CLUSTERED 
(
	[categorySID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 3/21/2022 12:23:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[customerID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[address] [nvarchar](300) NOT NULL,
	[phone] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[customerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer Advise]    Script Date: 3/21/2022 12:23:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer Advise](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customerID] [int] NULL,
	[employeeID] [int] NULL,
	[categorySID] [int] NULL,
 CONSTRAINT [PK_Customer Advise] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 3/21/2022 12:23:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[employeeID] [int] IDENTITY(1,1) NOT NULL,
	[employeename] [nvarchar](150) NOT NULL,
	[phonenumber] [nvarchar](150) NOT NULL,
	[address] [nvarchar](150) NOT NULL,
	[accountID] [int] NULL,
	[image] [nvarchar](150) NULL,
	[facebook] [nvarchar](150) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[employeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee Position]    Script Date: 3/21/2022 12:23:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee Position](
	[employeeID] [int] NOT NULL,
	[positionID] [int] NOT NULL,
 CONSTRAINT [PK_Employee Position] PRIMARY KEY CLUSTERED 
(
	[employeeID] ASC,
	[positionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order Details]    Script Date: 3/21/2022 12:23:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order Details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[orderID] [int] NULL,
	[productID] [int] NULL,
	[serviceID] [int] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_Order Details_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/21/2022 12:23:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[orderID] [int] IDENTITY(1,1) NOT NULL,
	[customerID] [int] NOT NULL,
	[employeeID] [int] NULL,
	[Orderdate] [date] NULL,
	[note] [nvarchar](max) NULL,
	[totalprice] [float] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 3/21/2022 12:23:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[positionID] [int] NOT NULL,
	[positionname] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[positionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/21/2022 12:23:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[productID] [int] IDENTITY(1,1) NOT NULL,
	[productname] [nvarchar](200) NOT NULL,
	[image] [nvarchar](300) NOT NULL,
	[price] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[categoryPID] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 3/21/2022 12:23:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[serviceID] [int] NOT NULL,
	[servicename] [nvarchar](200) NOT NULL,
	[price] [float] NOT NULL,
	[categorySID] [int] NOT NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[serviceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([accountID], [username], [password], [displayname]) VALUES (1, N'daochung', N'123', N'Đào Thị Chung')
INSERT [dbo].[Account] ([accountID], [username], [password], [displayname]) VALUES (2, N'luuly', N'123', N'Lưu Thị Ly')
INSERT [dbo].[Account] ([accountID], [username], [password], [displayname]) VALUES (3, N'luutuyet', N'123', N'Lưu Thị Tuyết')
INSERT [dbo].[Account] ([accountID], [username], [password], [displayname]) VALUES (4, N'trinhhang', N'123', N'Trịnh Thúy Hằng')
INSERT [dbo].[Account] ([accountID], [username], [password], [displayname]) VALUES (5, N'trinhnga', N'123', N'Trịnh Thị Nga')
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
INSERT [dbo].[CategoryProduct] ([categoryPID], [categoryname]) VALUES (1, N'Kem trị mụn')
INSERT [dbo].[CategoryProduct] ([categoryPID], [categoryname]) VALUES (2, N'Kem trị nám')
INSERT [dbo].[CategoryProduct] ([categoryPID], [categoryname]) VALUES (3, N'Kem dưỡng da')
INSERT [dbo].[CategoryProduct] ([categoryPID], [categoryname]) VALUES (4, N'Sữa rửa mặt')
INSERT [dbo].[CategoryProduct] ([categoryPID], [categoryname]) VALUES (5, N'Serum')
INSERT [dbo].[CategoryProduct] ([categoryPID], [categoryname]) VALUES (6, N'Son')
INSERT [dbo].[CategoryProduct] ([categoryPID], [categoryname]) VALUES (7, N'Dầu gội')
GO
INSERT [dbo].[CategoryService] ([categorySID], [categoryname]) VALUES (1, N'Chăm sóc da')
INSERT [dbo].[CategoryService] ([categorySID], [categoryname]) VALUES (2, N'Chăm sóc tóc')
INSERT [dbo].[CategoryService] ([categorySID], [categoryname]) VALUES (3, N'Triệt lông')
INSERT [dbo].[CategoryService] ([categorySID], [categoryname]) VALUES (4, N'Chăm sóc móng')
INSERT [dbo].[CategoryService] ([categorySID], [categoryname]) VALUES (5, N'Chăm sóc mi')
INSERT [dbo].[CategoryService] ([categorySID], [categoryname]) VALUES (6, N'Phun săm thẩm mỹ')
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([customerID], [name], [address], [phone]) VALUES (9, N'abc', N'11wwe', N'12345678')
INSERT [dbo].[Customer] ([customerID], [name], [address], [phone]) VALUES (10, N'abc', N'11wwe', N'12345678')
INSERT [dbo].[Customer] ([customerID], [name], [address], [phone]) VALUES (11, N'abc', N'11wwe', N'12345678')
INSERT [dbo].[Customer] ([customerID], [name], [address], [phone]) VALUES (12, N'abc', N'11wwe', N'12345678')
INSERT [dbo].[Customer] ([customerID], [name], [address], [phone]) VALUES (13, N'123', N'1122', N'1234')
INSERT [dbo].[Customer] ([customerID], [name], [address], [phone]) VALUES (14, N'11a', N'11c', N'11b')
INSERT [dbo].[Customer] ([customerID], [name], [address], [phone]) VALUES (15, N'11a', N'11c', N'11b')
INSERT [dbo].[Customer] ([customerID], [name], [address], [phone]) VALUES (16, N'11a', N'11c', N'11b')
INSERT [dbo].[Customer] ([customerID], [name], [address], [phone]) VALUES (17, N'11a', N'11c', N'11b')
INSERT [dbo].[Customer] ([customerID], [name], [address], [phone]) VALUES (18, N'thanhcong', N'bbbbbbbbbb', N'aaaaaa')
INSERT [dbo].[Customer] ([customerID], [name], [address], [phone]) VALUES (19, N'Lê Việt', N'Kiến Hưng, Hà Đông, Hà Nội, Việt Nam', N'0123444')
INSERT [dbo].[Customer] ([customerID], [name], [address], [phone]) VALUES (20, N'', N'', N'')
INSERT [dbo].[Customer] ([customerID], [name], [address], [phone]) VALUES (21, N'Lê Việt', N'Kiến Hưng, Hà Đông, Hà Nội, Việt Nam', N'12233')
INSERT [dbo].[Customer] ([customerID], [name], [address], [phone]) VALUES (22, N'Lê Việt-update', N'Kiến Hưng, Hà Đông, Hà Nội, Việt Nam', N'12233')
INSERT [dbo].[Customer] ([customerID], [name], [address], [phone]) VALUES (23, N'Lê an', N'Kiến Hưng, Hà Đông, Hà Nội, Việt Nam', N'0114')
INSERT [dbo].[Customer] ([customerID], [name], [address], [phone]) VALUES (24, N'Lê an', N'Kiến Hưng, Hà Đông, Hà Nội, Việt Nam', N'0114')
INSERT [dbo].[Customer] ([customerID], [name], [address], [phone]) VALUES (25, N'Lê an', N'Kiến Hưng, Hà Đông, Hà Nội, Việt Nam', N'0114')
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer Advise] ON 

INSERT [dbo].[Customer Advise] ([id], [customerID], [employeeID], [categorySID]) VALUES (1, 23, NULL, 4)
INSERT [dbo].[Customer Advise] ([id], [customerID], [employeeID], [categorySID]) VALUES (2, 24, NULL, 4)
INSERT [dbo].[Customer Advise] ([id], [customerID], [employeeID], [categorySID]) VALUES (3, 25, NULL, 6)
SET IDENTITY_INSERT [dbo].[Customer Advise] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([employeeID], [employeename], [phonenumber], [address], [accountID], [image], [facebook]) VALUES (1, N'Đào Thị Chung ', N'0963170199', N'Khu công nghiệp Định Liên, Yên Định, Thanh Hóa', 1, N'/Img/daochung.jpg', N'https://www.facebook.com/profile.php?id=100021489111584')
INSERT [dbo].[Employee] ([employeeID], [employeename], [phonenumber], [address], [accountID], [image], [facebook]) VALUES (2, N'Trịnh Thị Hằng', N'0396750664', N'Khu công nghiệp Định Liên, Yên Định, Thanh Hóa', 4, N'/Img/thuyhang.jpg', N'https://www.facebook.com/xule.girk')
INSERT [dbo].[Employee] ([employeeID], [employeename], [phonenumber], [address], [accountID], [image], [facebook]) VALUES (3, N'Trịnh Thị Nga', N'0865041398', N'Yên Lạc, Yên Định, Thanh Hóa', 5, N'/Img/nhanvientrinhnga.jpg', N'https://www.facebook.com/profile.php?id=100074209774385')
INSERT [dbo].[Employee] ([employeeID], [employeename], [phonenumber], [address], [accountID], [image], [facebook]) VALUES (4, N'Lưu Thị Ly', N'0374445509', N'Định Công, Yên Định, Thanh Hóa', 2, N'/Img/nhanvienluuly.jpg', N'https://www.facebook.com/ly.luu.33671')
INSERT [dbo].[Employee] ([employeeID], [employeename], [phonenumber], [address], [accountID], [image], [facebook]) VALUES (5, N'Lưu Thị Tuyết', N'0399769645', N'Yên Giang, Yên Định, Thanh Hóa', 3, N'/Img/nhanvienluutuyet.jpg', N'https://www.facebook.com/profile.php?id=100035317620321')
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
INSERT [dbo].[Employee Position] ([employeeID], [positionID]) VALUES (1, 1)
INSERT [dbo].[Employee Position] ([employeeID], [positionID]) VALUES (2, 1)
INSERT [dbo].[Employee Position] ([employeeID], [positionID]) VALUES (3, 2)
INSERT [dbo].[Employee Position] ([employeeID], [positionID]) VALUES (4, 2)
INSERT [dbo].[Employee Position] ([employeeID], [positionID]) VALUES (5, 2)
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([orderID], [customerID], [employeeID], [Orderdate], [note], [totalprice]) VALUES (3, 17, NULL, CAST(N'2022-03-13' AS Date), N'11d', 0)
INSERT [dbo].[Orders] ([orderID], [customerID], [employeeID], [Orderdate], [note], [totalprice]) VALUES (4, 18, NULL, CAST(N'2022-03-14' AS Date), N'amen', 625000)
INSERT [dbo].[Orders] ([orderID], [customerID], [employeeID], [Orderdate], [note], [totalprice]) VALUES (5, 19, NULL, CAST(N'2022-03-14' AS Date), N'ship cẩn thận', 625000)
INSERT [dbo].[Orders] ([orderID], [customerID], [employeeID], [Orderdate], [note], [totalprice]) VALUES (6, 20, NULL, CAST(N'2022-03-14' AS Date), N'', 1490000)
INSERT [dbo].[Orders] ([orderID], [customerID], [employeeID], [Orderdate], [note], [totalprice]) VALUES (7, 21, NULL, CAST(N'2022-03-15' AS Date), N'abc', 0)
INSERT [dbo].[Orders] ([orderID], [customerID], [employeeID], [Orderdate], [note], [totalprice]) VALUES (8, 22, NULL, CAST(N'2022-03-15' AS Date), N'abc', 330000)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
INSERT [dbo].[Position] ([positionID], [positionname]) VALUES (1, N'Quản Lý')
INSERT [dbo].[Position] ([positionID], [positionname]) VALUES (2, N'Nhân Viên')
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([productID], [productname], [image], [price], [quantity], [categoryPID]) VALUES (1, N'Tinh chất mụn Magic Skin ', N'/Img/kemtrimunMagic.jpg', 330000, 50, 1)
INSERT [dbo].[Product] ([productID], [productname], [image], [price], [quantity], [categoryPID]) VALUES (2, N'Huyết thanh đen', N'/Img/huyetthanhden.jpg', 200000, 50, 1)
INSERT [dbo].[Product] ([productID], [productname], [image], [price], [quantity], [categoryPID]) VALUES (3, N'Cao nám hoàng cung Magic Skin ', N'/Img/caonamhoangcung.jpg', 295000, 60, 2)
INSERT [dbo].[Product] ([productID], [productname], [image], [price], [quantity], [categoryPID]) VALUES (4, N'Điều trị nám Hàn Quốc Dongsung', N'/Img/kemtrinam.jpg', 900000, 50, 2)
INSERT [dbo].[Product] ([productID], [productname], [image], [price], [quantity], [categoryPID]) VALUES (5, N'Kem dưỡng đêm Forencos Peptide  Hàn Quốc ', N'/Img/kemduongdaForencos.jpg', 400000, 70, 3)
INSERT [dbo].[Product] ([productID], [productname], [image], [price], [quantity], [categoryPID]) VALUES (6, N'Sữa rửa mặt sáng da Magic Skin', N'/Img/suaruamatMagic.jpg', 299000, 60, 4)
INSERT [dbo].[Product] ([productID], [productname], [image], [price], [quantity], [categoryPID]) VALUES (7, N'Sữa rửa mặt trà xanh Benew', N'/Img/srmtraxanh.jpg', 100000, 70, 4)
INSERT [dbo].[Product] ([productID], [productname], [image], [price], [quantity], [categoryPID]) VALUES (8, N'Sữa rửa mặt nha đam Benew', N'/Img/srmnhadam.jpg', 100000, 70, 4)
INSERT [dbo].[Product] ([productID], [productname], [image], [price], [quantity], [categoryPID]) VALUES (9, N'Sữa rửa mặt nhân sâm Benew', N'/Img/srmnhansam.jpg', 100000, 70, 4)
INSERT [dbo].[Product] ([productID], [productname], [image], [price], [quantity], [categoryPID]) VALUES (10, N'Sữa rửa mặt Cám Gạo BeNew', N'/Img/srmcamgao.jpg', 100000, 70, 4)
INSERT [dbo].[Product] ([productID], [productname], [image], [price], [quantity], [categoryPID]) VALUES (11, N'Sữa rửa mặt than hoạt tính BeNew', N'/Img/srmthan.jpg', 100000, 70, 4)
INSERT [dbo].[Product] ([productID], [productname], [image], [price], [quantity], [categoryPID]) VALUES (12, N'Serum yến căng bóng Magic Skin', N'/Img/serum01.jpg', 350000, 60, 5)
INSERT [dbo].[Product] ([productID], [productname], [image], [price], [quantity], [categoryPID]) VALUES (13, N'VitaminB5', N'/Img/serumb5.jpg', 600000, 70, 5)
INSERT [dbo].[Product] ([productID], [productname], [image], [price], [quantity], [categoryPID]) VALUES (14, N'Son dưỡng Benew', N'/Img/sonduong.jpg', 250000, 30, 6)
INSERT [dbo].[Product] ([productID], [productname], [image], [price], [quantity], [categoryPID]) VALUES (15, N'Son màu BeNew', N'/Img/sonmau.jpg', 250000, 30, 6)
INSERT [dbo].[Product] ([productID], [productname], [image], [price], [quantity], [categoryPID]) VALUES (16, N'Son lì BeNew', N'/Img/sonli.jpg', 190000, 30, 6)
INSERT [dbo].[Product] ([productID], [productname], [image], [price], [quantity], [categoryPID]) VALUES (17, N'Dầu gội đầu HaChi (500ml)
Size to
', N'/Img/daugoimax.jpg', 450000, 20, 7)
INSERT [dbo].[Product] ([productID], [productname], [image], [price], [quantity], [categoryPID]) VALUES (18, N'Dầu gội đầu HaChi(350ml
)
Size nhỏ
', N'/Img/daugoimin.jpg', 350000, 20, 7)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[Service] ([serviceID], [servicename], [price], [categorySID]) VALUES (1, N'Chăm sóc da cơ bản', 150000, 1)
INSERT [dbo].[Service] ([serviceID], [servicename], [price], [categorySID]) VALUES (2, N'Nặn mụn', 200000, 1)
INSERT [dbo].[Service] ([serviceID], [servicename], [price], [categorySID]) VALUES (3, N'Thải chì da', 250000, 1)
INSERT [dbo].[Service] ([serviceID], [servicename], [price], [categorySID]) VALUES (4, N'Cấy trắng lụa Nano', 300000, 1)
INSERT [dbo].[Service] ([serviceID], [servicename], [price], [categorySID]) VALUES (5, N'Trẻ hóa da', 500000, 1)
INSERT [dbo].[Service] ([serviceID], [servicename], [price], [categorySID]) VALUES (6, N'Nâng cơ, xóa nhăn', 700000, 1)
INSERT [dbo].[Service] ([serviceID], [servicename], [price], [categorySID]) VALUES (7, N'Nhuộm tóc', 450000, 2)
INSERT [dbo].[Service] ([serviceID], [servicename], [price], [categorySID]) VALUES (8, N'Ép tóc', 400000, 2)
INSERT [dbo].[Service] ([serviceID], [servicename], [price], [categorySID]) VALUES (9, N'Gội đầu', 40000, 2)
INSERT [dbo].[Service] ([serviceID], [servicename], [price], [categorySID]) VALUES (10, N'Triệt lông tay', 2000000, 3)
INSERT [dbo].[Service] ([serviceID], [servicename], [price], [categorySID]) VALUES (11, N'Triệt lông chân', 3000000, 3)
INSERT [dbo].[Service] ([serviceID], [servicename], [price], [categorySID]) VALUES (12, N'Triệt lông mặt', 1000000, 3)
INSERT [dbo].[Service] ([serviceID], [servicename], [price], [categorySID]) VALUES (13, N'Rẻ móng-Sơn Gel', 80000, 4)
INSERT [dbo].[Service] ([serviceID], [servicename], [price], [categorySID]) VALUES (14, N'Đính đá', 300000, 4)
INSERT [dbo].[Service] ([serviceID], [servicename], [price], [categorySID]) VALUES (15, N'Đắp bột', 500000, 4)
INSERT [dbo].[Service] ([serviceID], [servicename], [price], [categorySID]) VALUES (16, N'Mi katun', 150000, 5)
INSERT [dbo].[Service] ([serviceID], [servicename], [price], [categorySID]) VALUES (17, N'Mi classic', 200000, 5)
INSERT [dbo].[Service] ([serviceID], [servicename], [price], [categorySID]) VALUES (18, N'Mi volume', 200000, 5)
INSERT [dbo].[Service] ([serviceID], [servicename], [price], [categorySID]) VALUES (19, N'Nối mi', 150000, 5)
INSERT [dbo].[Service] ([serviceID], [servicename], [price], [categorySID]) VALUES (20, N'Điêu khắc chân mày', 1000000, 6)
INSERT [dbo].[Service] ([serviceID], [servicename], [price], [categorySID]) VALUES (21, N'Phun mày dải hạt', 800000, 6)
INSERT [dbo].[Service] ([serviceID], [servicename], [price], [categorySID]) VALUES (22, N'Phun mi mở tròng', 1000000, 6)
INSERT [dbo].[Service] ([serviceID], [servicename], [price], [categorySID]) VALUES (23, N'Phun môi', 1500000, 6)
INSERT [dbo].[Service] ([serviceID], [servicename], [price], [categorySID]) VALUES (24, N'Phun môi collagen tươi', 2000000, 6)
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_Orderdate]  DEFAULT (getdate()) FOR [Orderdate]
GO
ALTER TABLE [dbo].[Customer Advise]  WITH CHECK ADD  CONSTRAINT [FK_Customer Advise_CategoryService] FOREIGN KEY([categorySID])
REFERENCES [dbo].[CategoryService] ([categorySID])
GO
ALTER TABLE [dbo].[Customer Advise] CHECK CONSTRAINT [FK_Customer Advise_CategoryService]
GO
ALTER TABLE [dbo].[Customer Advise]  WITH CHECK ADD  CONSTRAINT [FK_Customer Advise_Customer] FOREIGN KEY([customerID])
REFERENCES [dbo].[Customer] ([customerID])
GO
ALTER TABLE [dbo].[Customer Advise] CHECK CONSTRAINT [FK_Customer Advise_Customer]
GO
ALTER TABLE [dbo].[Customer Advise]  WITH CHECK ADD  CONSTRAINT [FK_Customer Advise_Employee] FOREIGN KEY([employeeID])
REFERENCES [dbo].[Employee] ([employeeID])
GO
ALTER TABLE [dbo].[Customer Advise] CHECK CONSTRAINT [FK_Customer Advise_Employee]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Account] FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Account]
GO
ALTER TABLE [dbo].[Employee Position]  WITH CHECK ADD  CONSTRAINT [FK_Employee Position_Employee] FOREIGN KEY([employeeID])
REFERENCES [dbo].[Employee] ([employeeID])
GO
ALTER TABLE [dbo].[Employee Position] CHECK CONSTRAINT [FK_Employee Position_Employee]
GO
ALTER TABLE [dbo].[Employee Position]  WITH CHECK ADD  CONSTRAINT [FK_Employee Position_Position] FOREIGN KEY([positionID])
REFERENCES [dbo].[Position] ([positionID])
GO
ALTER TABLE [dbo].[Employee Position] CHECK CONSTRAINT [FK_Employee Position_Position]
GO
ALTER TABLE [dbo].[Order Details]  WITH CHECK ADD  CONSTRAINT [FK_Order Details_Orders1] FOREIGN KEY([orderID])
REFERENCES [dbo].[Orders] ([orderID])
GO
ALTER TABLE [dbo].[Order Details] CHECK CONSTRAINT [FK_Order Details_Orders1]
GO
ALTER TABLE [dbo].[Order Details]  WITH CHECK ADD  CONSTRAINT [FK_Order Details_Product] FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([productID])
GO
ALTER TABLE [dbo].[Order Details] CHECK CONSTRAINT [FK_Order Details_Product]
GO
ALTER TABLE [dbo].[Orders]  WITH NOCHECK ADD  CONSTRAINT [FK_Orders_Customer] FOREIGN KEY([customerID])
REFERENCES [dbo].[Customer] ([customerID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Orders] NOCHECK CONSTRAINT [FK_Orders_Customer]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Employee1] FOREIGN KEY([employeeID])
REFERENCES [dbo].[Employee] ([employeeID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Employee1]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_CategoryProduct] FOREIGN KEY([categoryPID])
REFERENCES [dbo].[CategoryProduct] ([categoryPID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_CategoryProduct]
GO
ALTER TABLE [dbo].[Service]  WITH CHECK ADD  CONSTRAINT [FK_Service_CategoryService] FOREIGN KEY([categorySID])
REFERENCES [dbo].[CategoryService] ([categorySID])
GO
ALTER TABLE [dbo].[Service] CHECK CONSTRAINT [FK_Service_CategoryService]
GO
USE [master]
GO
ALTER DATABASE [SalonManagement] SET  READ_WRITE 
GO
