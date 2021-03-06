USE [ShopCongNghe]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 8/20/2017 2:05:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[CartID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[ProductID] [int] NULL,
	[Quantity] [smallint] NULL,
	[IsInCart] [bit] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[CartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 8/20/2017 2:05:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](20) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 8/20/2017 2:05:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[UnitPrice] [float] NULL,
	[Quantity] [smallint] NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[UserID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 8/20/2017 2:05:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[OrderDate] [datetime] NULL,
	[OrderStatus] [bit] NULL,
	[ShippedDate] [datetime] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 8/20/2017 2:05:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[SupplierID] [int] NULL,
	[ProductName] [varchar](50) NULL,
	[Picture] [varchar](50) NULL,
	[ProductStatus] [bit] NULL,
	[Description] [varchar](500) NULL,
	[Price] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 8/20/2017 2:05:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](50) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 8/20/2017 2:05:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[SupplierName] [varchar](20) NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 8/20/2017 2:05:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NULL,
	[FName] [varchar](10) NULL,
	[LName] [varchar](10) NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varchar](15) NULL,
	[Username] [varchar](10) NULL,
	[Password] [varchar](50) NULL,
	[Status] [bit] NULL,
	[Address] [ntext] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (1, N'Laptop')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (2, N'Mouse')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (3, N'Keyboard')
SET IDENTITY_INSERT [dbo].[Categories] OFF
INSERT [dbo].[OrderDetails] ([OrderID], [UserID], [ProductID], [UnitPrice], [Quantity]) VALUES (1, 3, 1, 1549, 1)
INSERT [dbo].[OrderDetails] ([OrderID], [UserID], [ProductID], [UnitPrice], [Quantity]) VALUES (1, 3, 6, 1549, 1)
INSERT [dbo].[OrderDetails] ([OrderID], [UserID], [ProductID], [UnitPrice], [Quantity]) VALUES (2, 3, 6, 1549, 1)
INSERT [dbo].[OrderDetails] ([OrderID], [UserID], [ProductID], [UnitPrice], [Quantity]) VALUES (3, 3, 14, 19, 1)
INSERT [dbo].[OrderDetails] ([OrderID], [UserID], [ProductID], [UnitPrice], [Quantity]) VALUES (4, 3, 6, 1549, 1)
INSERT [dbo].[OrderDetails] ([OrderID], [UserID], [ProductID], [UnitPrice], [Quantity]) VALUES (4, 3, 11, 414, 3)
INSERT [dbo].[OrderDetails] ([OrderID], [UserID], [ProductID], [UnitPrice], [Quantity]) VALUES (4, 3, 12, 240, 5)
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderID], [UserID], [OrderDate], [OrderStatus], [ShippedDate]) VALUES (1, 3, CAST(0x0000A7D50018DF78 AS DateTime), 0, CAST(0x0000A7D5001D6C06 AS DateTime))
INSERT [dbo].[Orders] ([OrderID], [UserID], [OrderDate], [OrderStatus], [ShippedDate]) VALUES (2, 3, CAST(0x0000A7D5001BA291 AS DateTime), 1, NULL)
INSERT [dbo].[Orders] ([OrderID], [UserID], [OrderDate], [OrderStatus], [ShippedDate]) VALUES (3, 3, CAST(0x0000A7D500204F26 AS DateTime), 1, NULL)
INSERT [dbo].[Orders] ([OrderID], [UserID], [OrderDate], [OrderStatus], [ShippedDate]) VALUES (4, 3, CAST(0x0000A7D5002095F7 AS DateTime), 1, NULL)
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [CategoryID], [SupplierID], [ProductName], [Picture], [ProductStatus], [Description], [Price]) VALUES (1, 1, 1, N'MSI GF62', N'~/Admin/Uploads/GSSeries.jpg', 1, N'New-100%', 1549)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [SupplierID], [ProductName], [Picture], [ProductStatus], [Description], [Price]) VALUES (2, 1, 2, N'Asus Chromebook', N'~/Admin/Uploads/ASUSChromebook.jpg', 1, N'New-100%', 499)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [SupplierID], [ProductName], [Picture], [ProductStatus], [Description], [Price]) VALUES (3, 1, 2, N'Asus GL 552', N'~/Admin/Uploads/AsusGL552.jpeg', 1, N'New-100%', 981)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [SupplierID], [ProductName], [Picture], [ProductStatus], [Description], [Price]) VALUES (4, 1, 2, N'Asus Rog', N'~/Admin/Uploads/ASUSROG.jpg', 1, N'New-100%', 1249)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [SupplierID], [ProductName], [Picture], [ProductStatus], [Description], [Price]) VALUES (5, 2, 4, N'Logitech G403 - Prodigy - Wireless', N'~/Admin/Uploads/g403-prodigy-wireless.png', 1, N'New-100%', 59)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [SupplierID], [ProductName], [Picture], [ProductStatus], [Description], [Price]) VALUES (6, 1, 1, N'MSI GS Series Stealth Pro', N'~/Admin/Uploads/GSSeries.jpg', 1, N'Laptop - Intel Core i7 - 16GB Memory - NVIDIA GeForce GTX 1060 - 1TB HDD + 256GB SSD', 1549)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [SupplierID], [ProductName], [Picture], [ProductStatus], [Description], [Price]) VALUES (7, 2, 4, N'Logitech G502', N'~/Admin/Uploads/LogitechG502.jpg', 1, N'New-100%', 50)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [SupplierID], [ProductName], [Picture], [ProductStatus], [Description], [Price]) VALUES (8, 3, 4, N'Logitech G910', N'~/Admin/Uploads/LogitechG910.jpg', 1, N'New-100%', 129)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [SupplierID], [ProductName], [Picture], [ProductStatus], [Description], [Price]) VALUES (9, 1, 1, N'MSI GL 62', N'~/Admin/Uploads/MSIGL62.png', 1, N'Laptop - Intel Core i7 - 16GB Memory - NVIDIA GeForce GTX 1050 - 1TB Hard Drive', 999)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [SupplierID], [ProductName], [Picture], [ProductStatus], [Description], [Price]) VALUES (10, 3, 3, N'Razer BlackWidow', N'~/Admin/Uploads/RazerBlackWidow.jpg', 1, N'New-100%', 64)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [SupplierID], [ProductName], [Picture], [ProductStatus], [Description], [Price]) VALUES (11, 3, 3, N'Razer BlackWidow Chroma', N'~/Admin/Uploads/razer-blackwidow-chroma.png', 1, N'New-100%', 138)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [SupplierID], [ProductName], [Picture], [ProductStatus], [Description], [Price]) VALUES (12, 2, 3, N'Razer DeathAdder', N'~/Admin/Uploads/RazerDeathAdder.jpg', 1, N'New-100%', 48)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [SupplierID], [ProductName], [Picture], [ProductStatus], [Description], [Price]) VALUES (13, 3, 3, N'Razer Deathstalker', N'~/Admin/Uploads/Razer-Deathstalker.jpg', 1, N'New-100%', 69)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [SupplierID], [ProductName], [Picture], [ProductStatus], [Description], [Price]) VALUES (14, 2, 1, N'MSI-DS-B1', N'~/Admin/Uploads/MSI-DS-B1.jpg', 1, N'New-100%', 19)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (1, N'admin')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (2, N'user')
SET IDENTITY_INSERT [dbo].[Roles] OFF
SET IDENTITY_INSERT [dbo].[Suppliers] ON 

INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName]) VALUES (1, N'MSI')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName]) VALUES (2, N'Asus')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName]) VALUES (3, N'Razer')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName]) VALUES (4, N'Logitech')
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserID], [RoleID], [FName], [LName], [Email], [Phone], [Username], [Password], [Status], [Address]) VALUES (2, 1, NULL, NULL, NULL, NULL, N'admin', N'123abc', 1, NULL)
INSERT [dbo].[Users] ([UserID], [RoleID], [FName], [LName], [Email], [Phone], [Username], [Password], [Status], [Address]) VALUES (3, 2, N'tuan', N'mai', N'maichungtuan@gmail.com', N'123456789', N'mctuan', N'123abc', 1, N'688 Hood Avenue')
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Products]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Users]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Users]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [CategoryID_FK] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [CategoryID_FK]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [SupplierID_FK] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Suppliers] ([SupplierID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [SupplierID_FK]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [RoleID_FK] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([RoleID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [RoleID_FK]
GO
