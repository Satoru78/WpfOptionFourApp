USE [Option4]
GO
/****** Object:  Table [dbo].[Agent]    Script Date: 11.02.2022 15:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agent](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](50) NOT NULL,
	[IDAgentType] [int] NOT NULL,
	[Adress] [nvarchar](50) NOT NULL,
	[INN] [int] NOT NULL,
	[KPP] [int] NOT NULL,
	[FIODirector] [nvarchar](100) NOT NULL,
	[Phone] [nchar](30) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Logotype] [nvarchar](1000) NULL,
	[IDPriority] [nchar](1) NOT NULL,
	[IDPointsOfSale] [int] NOT NULL,
	[IDRole] [nchar](1) NOT NULL,
 CONSTRAINT [PK_Agent] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgentType]    Script Date: 11.02.2022 15:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgentType](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_AgentType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 11.02.2022 15:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[SeriasPassport] [int] NOT NULL,
	[NumderPassport] [int] NOT NULL,
	[IssuedBy] [nvarchar](50) NOT NULL,
	[PlaceResidence] [nvarchar](100) NOT NULL,
	[BankDetails] [int] NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manager]    Script Date: 11.02.2022 15:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager](
	[ID] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Phone] [char](30) NOT NULL,
	[IDRole] [nchar](1) NOT NULL,
 CONSTRAINT [PK_Manager] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materials]    Script Date: 11.02.2022 15:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materials](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[IDMaterialType] [int] NOT NULL,
	[Image] [nvarchar](1000) NULL,
	[Cost] [money] NOT NULL,
	[QuantityStock] [int] NOT NULL,
	[Minimum] [int] NOT NULL,
	[AmountPackage] [int] NOT NULL,
	[IDUnit] [int] NOT NULL,
 CONSTRAINT [PK_Materials] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialsSupplier]    Script Date: 11.02.2022 15:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialsSupplier](
	[ID] [int] NOT NULL,
	[IDMaterial] [int] NOT NULL,
	[IDSupplier] [int] NOT NULL,
 CONSTRAINT [PK_MaterialsSupplier] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialType]    Script Date: 11.02.2022 15:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialType](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MaterialType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PointsOfSales]    Script Date: 11.02.2022 15:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PointsOfSales](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PointsOfSales] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Priority]    Script Date: 11.02.2022 15:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Priority](
	[Code] [nchar](1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Priority] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 11.02.2022 15:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Code] [nchar](1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 11.02.2022 15:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[IDSuppliersType] [int] NOT NULL,
	[INN] [int] NOT NULL,
	[QualityRating] [int] NOT NULL,
	[StartDate] [date] NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SuppliersType]    Script Date: 11.02.2022 15:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuppliersType](
	[ID] [int] NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SuppliersType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 11.02.2022 15:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 11.02.2022 15:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[IDRole] [nchar](1) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Agent] ON 

INSERT [dbo].[Agent] ([ID], [CompanyName], [IDAgentType], [Adress], [INN], [KPP], [FIODirector], [Phone], [Email], [Logotype], [IDPriority], [IDPointsOfSale], [IDRole]) VALUES (4, N'SDAF', 1, N'fgsfsdf', 56463, 345653, N'sdfgsdfgsrfsdfg', N'32546563                      ', N'fgsdfhsdghe', NULL, N'y', 1, N'g')
SET IDENTITY_INSERT [dbo].[Agent] OFF
GO
INSERT [dbo].[AgentType] ([ID], [Title]) VALUES (1, N'OAO')
INSERT [dbo].[AgentType] ([ID], [Title]) VALUES (2, N'Самозанятый')
INSERT [dbo].[AgentType] ([ID], [Title]) VALUES (3, N'OO')
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Patronymic], [DateOfBirth], [SeriasPassport], [NumderPassport], [IssuedBy], [PlaceResidence], [BankDetails]) VALUES (1, N'апфпы', N'ыапаывп', N'ывапывап', CAST(N'2001-11-11' AS Date), 356456, 4563456, N'вапрвапрывап', N'ывапывавп', 35653435)
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
INSERT [dbo].[Manager] ([ID], [FirstName], [LastName], [Phone], [IDRole]) VALUES (1, N'бульбуль', N'ывавыв', N'456346                        ', N'm')
GO
SET IDENTITY_INSERT [dbo].[Materials] ON 

INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (2, N'Резина 1x3', 1, N'\materials\material_15.jpeg', 8334.0000, 77, 44, 3, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (3, N'Краска 2x3', 2, N'\materials\material_16.jpeg', 24447.0000, 414, 33, 8, 2)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (4, N'Резина 3x3', 1, N'\materials\picture.png', 42751.0000, 727, 46, 8, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (5, N'Краска 1x4', 2, N'\materials\picture.png', 52716.0000, 576, 7, 9, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (6, N'Резина 1x37', 1, N'\materials\picture.png', 1053.0000, 110, 47, 8, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (7, N'Резина 2x0', 1, N'\materials\picture.png', 46084.0000, 129, 11, 3, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (8, N'Резина 1x14', 1, N'\materials\picture.png', 17063.0000, 7, 9, 5, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (9, N'Силикон 3x33', 3, N'\materials\picture.png', 54740.0000, 687, 45, 7, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (10, N'Резина 3x22', 1, N'\materials\picture.png', 27626.0000, 672, 14, 6, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (11, N'Резина 2x1', 1, N'\materials\material_13.jpeg', 36226.0000, 886, 7, 10, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (12, N'Краска 1x2', 2, N'\materials\picture.png', 48813.0000, 801, 28, 9, 2)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (13, N'Резина 2x3', 1, N'\materials\picture.png', 52328.0000, 50, 11, 9, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (14, N'Силикон 1x27', 3, N'\materials\picture.png', 6286.0000, 950, 14, 8, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (15, N'Краска 3x14', 2, N'\materials\material_8.jpeg', 38060.0000, 34, 13, 5, 2)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (16, N'Краска 2x5', 2, N'\materials\picture.png', 29855.0000, 542, 32, 9, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (17, N'Силикон 3x15', 3, N'\materials\material_14.jpeg', 40057.0000, 856, 17, 7, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (18, N'Силикон 3x39', 3, N'\materials\picture.png', 31438.0000, 858, 8, 9, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (19, N'Силикон 1x2', 3, N'\materials\material_19.jpeg', 24120.0000, 469, 50, 7, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (20, N'Силикон 3x28', 3, N'\materials\picture.png', 37171.0000, 92, 47, 7, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (21, N'Силикон 0x18', 3, N'\materials\picture.png', 15243.0000, 631, 8, 2, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (22, N'Силикон 0x0', 3, N'\materials\picture.png', 17974.0000, 929, 37, 5, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (23, N'Краска 3x31', 2, N'\materials\picture.png', 30698.0000, 365, 32, 3, 2)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (24, N'Резина 1x5', 1, N'\materials\picture.png', 42602.0000, 481, 11, 2, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (25, N'Силикон 0x12', 3, N'\materials\picture.png', 5588.0000, 610, 12, 6, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (26, N'Силикон 3x2', 3, N'\materials\material_20.jpeg', 55673.0000, 863, 32, 8, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (27, N'Резина 1x9', 1, N'\materials\picture.png', 10774.0000, 587, 48, 10, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (28, N'Краска 3x35', 2, N'\materials\picture.png', 6825.0000, 479, 31, 4, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (29, N'Краска 2x31', 2, N'\materials\picture.png', 32610.0000, 771, 14, 1, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (30, N'Резина 3x25', 1, N'\materials\picture.png', 9652.0000, 199, 5, 6, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (31, N'Краска 4x0', 2, N'\materials\material_9.jpeg', 55038.0000, 713, 22, 9, 2)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (32, N'Краска 2x4', 2, N'\materials\material_6.jpeg', 35636.0000, 761, 49, 10, 2)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (33, N'Резина 1x0', 1, N'\materials\picture.png', 469.0000, 459, 22, 10, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (34, N'Краска 3x2', 2, N'\materials\picture.png', 44456.0000, 922, 35, 10, 2)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (35, N'Краска 3x0', 2, N'\materials\picture.png', 41707.0000, 921, 20, 7, 2)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (36, N'Краска 2x29', 2, N'\materials\picture.png', 37812.0000, 465, 30, 7, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (37, N'Силикон 3x14', 3, N'\materials\picture.png', 38935.0000, 324, 19, 7, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (38, N'Силикон 3x3', 3, N'\materials\picture.png', 2870.0000, 870, 6, 10, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (39, N'Силикон 3x18', 3, N'\materials\picture.png', 40196.0000, 978, 24, 5, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (40, N'Резина 3x37', 1, N'\materials\picture.png', 18158.0000, 870, 43, 10, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (41, N'Краска 0x4', 2, N'\materials\material_7.jpeg', 31475.0000, 3, 45, 10, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (42, N'Краска 2x1', 2, N'\materials\material_2.jpeg', 48799.0000, 2, 5, 4, 2)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (43, N'Резина 0x0', 1, N'\materials\picture.png', 18283.0000, 897, 20, 8, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (44, N'Краска 4x3', 2, N'\materials\picture.png', 42215.0000, 218, 27, 2, 2)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (45, N'Резина 11x0', 1, N'\materials\picture.png', 39297.0000, 402, 17, 5, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (46, N'Резина 0x2', 1, N'\materials\picture.png', 46929.0000, 577, 38, 9, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (47, N'Краска 0x5', 2, N'\materials\picture.png', 36762.0000, 559, 50, 7, 2)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (48, N'Резина 3x2', 1, N'\materials\picture.png', 12723.0000, 131, 31, 4, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (49, N'Силикон 1x22', 3, N'\materials\picture.png', 31182.0000, 649, 48, 7, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (50, N'Краска 2x0', 2, N'\materials\material_1.jpeg', 28464.0000, 595, 27, 3, 2)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (51, N'Краска 0x2', 2, N'\materials\picture.png', 20629.0000, 235, 15, 9, 2)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (52, N'Силикон 2x2', 3, N'\materials\material_3.jpeg', 42856.0000, 46, 42, 8, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (53, N'Резина 0x13', 1, N'\materials\picture.png', 54301.0000, 376, 48, 6, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (54, N'Резина 0x78', 1, N'\materials\picture.png', 38768.0000, 593, 48, 3, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (55, N'Краска 2x2', 2, N'\materials\material_21.jpeg', 45084.0000, 787, 16, 2, 2)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (56, N'Силикон 0x2', 3, N'\materials\picture.png', 9098.0000, 669, 43, 2, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (57, N'Резина 0x10', 1, N'\materials\picture.png', 47481.0000, 354, 22, 3, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (58, N'Резина 3x23', 1, N'\materials\picture.png', 23578.0000, 167, 45, 7, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (59, N'Резина 2x35', 1, N'\materials\picture.png', 30798.0000, 271, 13, 7, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (60, N'Силикон 0x3', 3, N'\materials\picture.png', 4589.0000, 117, 21, 1, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (61, N'Резина 2x2', 1, N'\materials\picture.png', 44820.0000, 851, 7, 3, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (62, N'Краска 0x3', 2, N'\materials\picture.png', 8487.0000, 646, 5, 2, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (63, N'Резина 0x12', 1, N'\materials\material_4.jpeg', 14110.0000, 380, 13, 1, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (64, N'Краска 3x27', 2, N'\materials\picture.png', 14606.0000, 568, 37, 3, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (65, N'Резина 2x27', 1, N'\materials\picture.png', 47429.0000, 434, 32, 6, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (66, N'Силикон 0x28', 3, N'\materials\picture.png', 43526.0000, 144, 34, 8, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (67, N'Резина 1x1', 1, N'\materials\picture.png', 8906.0000, 244, 43, 2, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (68, N'Резина 0x30', 1, N'\materials\picture.png', 21180.0000, 143, 48, 1, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (69, N'Силикон 0x23', 3, N'\materials\picture.png', 9412.0000, 753, 10, 9, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (70, N'Силикон 2x13', 3, N'\materials\picture.png', 19429.0000, 423, 5, 3, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (71, N'Резина 0x3', 1, N'\materials\picture.png', 11310.0000, 340, 16, 6, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (72, N'Краска 4x04', 2, N'\materials\picture.png', 54177.0000, 657, 25, 9, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (73, N'Резина 1x32', 1, N'\materials\picture.png', 36799.0000, 709, 45, 9, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (74, N'Силикон 1x1', 3, N'\materials\picture.png', 10649.0000, 110, 10, 1, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (75, N'Резина 3x1', 1, N'\materials\picture.png', 24002.0000, 713, 27, 6, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (76, N'Резина 0x65', 1, N'\materials\picture.png', 9263.0000, 133, 34, 1, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (77, N'Силикон 0x11', 3, N'\materials\picture.png', 34946.0000, 465, 11, 9, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (78, N'Краска 0x0', 2, N'\materials\picture.png', 35754.0000, 318, 28, 8, 2)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (79, N'Краска 2x24', 2, N'\materials\material_22.jpeg', 26008.0000, 797, 23, 2, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (80, N'Краска 0x1', 2, N'\materials\picture.png', 13666.0000, 228, 14, 7, 2)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (81, N'Резина 3x38', 1, N'\materials\material_17.jpeg', 11039.0000, 892, 9, 10, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (82, N'Резина 3x28', 1, N'\materials\picture.png', 54007.0000, 395, 43, 8, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (83, N'Краска 3x18', 2, N'\materials\material_10.jpeg', 20504.0000, 128, 5, 10, 2)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (84, N'Силикон 0x1', 3, N'\materials\picture.png', 29767.0000, 401, 9, 3, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (85, N'Краска 1x0', 2, N'\materials\material_18.jpeg', 51511.0000, 12, 49, 5, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (86, N'Краска 3x1', 2, N'\materials\picture.png', 10299.0000, 729, 21, 3, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (87, N'Силикон 3x0', 3, N'\materials\material_5.jpeg', 23681.0000, 901, 48, 9, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (88, N'Силикон 3x35', 3, N'\materials\picture.png', 3326.0000, 610, 32, 2, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (89, N'Краска 1x1', 2, N'\materials\material_11.jpeg', 19485.0000, 281, 20, 2, 2)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (90, N'Силикон 2x17', 3, N'\materials\picture.png', 12158.0000, 409, 16, 1, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (91, N'Резина 0x1', 1, N'\materials\picture.png', 24135.0000, 986, 18, 3, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (92, N'Силикон 3x1', 3, N'\materials\material_12.jpeg', 33602.0000, 16, 17, 9, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (93, N'Силикон 2x1', 3, N'\materials\picture.png', 19352.0000, 461, 13, 6, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (94, N'Резина 0x37', 1, N'\materials\picture.png', 33541.0000, 764, 26, 9, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (95, N'Силикон 3x37', 3, N'\materials\picture.png', 489.0000, 680, 41, 9, 3)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (96, N'Краска 5x0', 2, N'\materials\picture.png', 43028.0000, 844, 24, 10, 2)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (97, N'Резина 3x34', 1, N'\materials\picture.png', 42162.0000, 218, 47, 4, 1)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (98, N'Краска 3x13', 2, N'\materials\picture.png', 41211.0000, 851, 6, 3, 2)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (99, N'Краска 3x4', 2, N'\materials\picture.png', 21211.0000, 83, 41, 5, 2)
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (100, N'Краска 1x3', 2, N'\materials\picture.png', 46354.0000, 91, 50, 6, 2)
GO
INSERT [dbo].[Materials] ([ID], [Title], [IDMaterialType], [Image], [Cost], [QuantityStock], [Minimum], [AmountPackage], [IDUnit]) VALUES (101, N'Краска 2x28', 2, N'\materials\picture.png', 9273.0000, 916, 42, 4, 2)
SET IDENTITY_INSERT [dbo].[Materials] OFF
GO
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (1, 73, 31)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (2, 28, 47)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (3, 73, 16)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (4, 73, 29)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (5, 88, 30)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (6, 55, 38)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (8, 54, 44)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (9, 54, 41)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (10, 78, 45)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (11, 66, 31)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (12, 66, 23)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (14, 90, 1)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (16, 83, 38)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (18, 49, 31)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (20, 47, 42)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (22, 41, 33)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (23, 100, 14)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (24, 41, 25)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (25, 47, 5)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (26, 41, 21)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (28, 44, 2)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (29, 84, 5)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (31, 14, 47)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (32, 84, 40)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (33, 84, 8)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (34, 7, 16)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (35, 44, 47)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (37, 44, 48)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (38, 44, 17)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (39, 14, 36)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (40, 14, 20)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (41, 7, 20)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (42, 44, 6)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (44, 74, 1)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (45, 92, 35)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (46, 24, 45)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (48, 92, 48)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (49, 92, 16)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (51, 92, 47)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (52, 18, 2)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (53, 36, 37)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (54, 18, 16)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (55, 16, 16)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (56, 36, 14)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (57, 18, 19)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (58, 57, 47)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (59, 36, 32)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (60, 18, 7)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (61, 57, 33)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (63, 25, 19)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (64, 5, 33)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (66, 3, 29)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (67, 25, 12)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (68, 2, 22)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (69, 2, 7)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (72, 11, 5)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (73, 91, 31)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (74, 86, 25)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (76, 86, 37)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (77, 30, 37)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (78, 86, 11)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (79, 86, 40)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (80, 11, 10)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (81, 11, 14)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (82, 30, 48)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (86, 86, 6)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (87, 82, 42)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (88, 33, 34)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (89, 32, 35)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (90, 10, 19)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (91, 82, 45)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (92, 32, 11)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (93, 10, 28)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (94, 10, 1)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (95, 82, 7)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (96, 37, 46)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (97, 10, 6)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (98, 31, 17)
INSERT [dbo].[MaterialsSupplier] ([ID], [IDMaterial], [IDSupplier]) VALUES (99, 31, 32)
GO
INSERT [dbo].[MaterialType] ([ID], [Title]) VALUES (1, N'Резина')
INSERT [dbo].[MaterialType] ([ID], [Title]) VALUES (2, N'Краска')
INSERT [dbo].[MaterialType] ([ID], [Title]) VALUES (3, N'Силикон')
GO
INSERT [dbo].[PointsOfSales] ([ID], [Title]) VALUES (1, N'розничные магазины')
INSERT [dbo].[PointsOfSales] ([ID], [Title]) VALUES (2, N'интернет магазины')
GO
INSERT [dbo].[Priority] ([Code], [Title]) VALUES (N'n', N'нет')
INSERT [dbo].[Priority] ([Code], [Title]) VALUES (N'y', N'есть')
GO
INSERT [dbo].[Role] ([Code], [Title]) VALUES (N'a', N'admin')
INSERT [dbo].[Role] ([Code], [Title]) VALUES (N'g', N'agent')
INSERT [dbo].[Role] ([Code], [Title]) VALUES (N'm', N'manager')
GO
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (1, N'ГаражТелекомГор', 1, 1718185951, 18, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (2, N'Компания Омск', 2, 1878504395, 49, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (3, N'ГорМонтаж', 4, 1564667734, 39, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (5, N'Электро', 3, 1755853973, 43, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (6, N'Компания Мотор', 4, 1429908355, 85, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (7, N'Асбоцем', 5, 1944834477, 23, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (8, N'ВостокМети', 4, 1488487851, 51, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (10, N'Софт', 1, 1036521658, 84, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (11, N'Компания СервисМикроО', 4, 1178826599, 27, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (12, N'ИнфоГазМотор', 2, 1954050214, 92, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (13, N'Монтаж', 2, 1163880101, 66, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (14, N'ЭлектроХром', 2, 1654184411, 13, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (15, N'Компания НефтьITИнф', 4, 1685247455, 56, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (16, N'ТомскНефть', 4, 1002996016, 44, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (17, N'ТомскТяжРеч', 5, 1102143492, 59, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (19, N'ВодРыб', 3, 1113468466, 38, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (20, N'УралСервисМон', 1, 1892306757, 77, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (21, N'Казань', 2, 1965011544, 77, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (22, N'Cиб', 2, 1949139718, 89, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (23, N'ГаражГазМ', 2, 1740623312, 99, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (24, N'МобайлДизайнОмск', 4, 1014490629, 99, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (25, N'ЖелДорГаз', 5, 1255275062, 25, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (28, N'ГаражГлав', 1, 1404774111, 1, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (29, N'Компания К', 6, 1468114280, 54, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (30, N'ТяжЛифтВостокС', 2, 1032089879, 70, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (31, N'Компания Во', 6, 2027005945, 23, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (32, N'МоторКаз', 2, 1076279398, 37, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (33, N'Сервис', 2, 2031832854, 5, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (34, N'ЮпитерТомс', 6, 1551173338, 11, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (35, N'Мор', 1, 1906157177, 38, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (36, N'СеверТехВостокЛизинг', 4, 1846812080, 34, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (37, N'ЦементОбл', 4, 2021607106, 46, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (38, N'Компания КазаньАвтоCиб', 1, 1371692583, 72, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (40, N'Компания МорМетал', 4, 1947163072, 93, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (41, N'ГлавРыб', 5, 1426268088, 59, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (42, N'CибCибОрио', 4, 1988313615, 1, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (44, N'ГлавАвтоГазТрест', 5, 2059691335, 28, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (45, N'ТяжКазаньБашкир', 6, 1794419510, 55, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (46, N'Асбоцемент', 5, 1650212184, 32, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (47, N'Мотор', 6, 1019917089, 59, NULL)
INSERT [dbo].[Supplier] ([ID], [Title], [IDSuppliersType], [INN], [QualityRating], [StartDate]) VALUES (48, N'МорФинансФинансМаш', 4, 1549496316, 50, NULL)
GO
INSERT [dbo].[SuppliersType] ([ID], [Type]) VALUES (1, N'МКК')
INSERT [dbo].[SuppliersType] ([ID], [Type]) VALUES (2, N'ОАО')
INSERT [dbo].[SuppliersType] ([ID], [Type]) VALUES (3, N'ЗАО')
INSERT [dbo].[SuppliersType] ([ID], [Type]) VALUES (4, N'ООО')
INSERT [dbo].[SuppliersType] ([ID], [Type]) VALUES (5, N'МФО')
INSERT [dbo].[SuppliersType] ([ID], [Type]) VALUES (6, N'ПАО')
GO
INSERT [dbo].[Unit] ([ID], [Title]) VALUES (1, N'м')
INSERT [dbo].[Unit] ([ID], [Title]) VALUES (2, N'л')
INSERT [dbo].[Unit] ([ID], [Title]) VALUES (3, N'кг')
GO
INSERT [dbo].[User] ([ID], [Username], [Password], [IDRole]) VALUES (1, N'admin', N'admin', N'a')
INSERT [dbo].[User] ([ID], [Username], [Password], [IDRole]) VALUES (2, N'manager', N'manager', N'm')
INSERT [dbo].[User] ([ID], [Username], [Password], [IDRole]) VALUES (3, N'agent', N'agent', N'g')
GO
ALTER TABLE [dbo].[Agent]  WITH CHECK ADD  CONSTRAINT [FK_Agent_AgentType] FOREIGN KEY([IDAgentType])
REFERENCES [dbo].[AgentType] ([ID])
GO
ALTER TABLE [dbo].[Agent] CHECK CONSTRAINT [FK_Agent_AgentType]
GO
ALTER TABLE [dbo].[Agent]  WITH CHECK ADD  CONSTRAINT [FK_Agent_PointsOfSales] FOREIGN KEY([IDPointsOfSale])
REFERENCES [dbo].[PointsOfSales] ([ID])
GO
ALTER TABLE [dbo].[Agent] CHECK CONSTRAINT [FK_Agent_PointsOfSales]
GO
ALTER TABLE [dbo].[Agent]  WITH CHECK ADD  CONSTRAINT [FK_Agent_Priority] FOREIGN KEY([IDPriority])
REFERENCES [dbo].[Priority] ([Code])
GO
ALTER TABLE [dbo].[Agent] CHECK CONSTRAINT [FK_Agent_Priority]
GO
ALTER TABLE [dbo].[Agent]  WITH CHECK ADD  CONSTRAINT [FK_Agent_Role] FOREIGN KEY([IDRole])
REFERENCES [dbo].[Role] ([Code])
GO
ALTER TABLE [dbo].[Agent] CHECK CONSTRAINT [FK_Agent_Role]
GO
ALTER TABLE [dbo].[Manager]  WITH CHECK ADD  CONSTRAINT [FK_Manager_Role] FOREIGN KEY([IDRole])
REFERENCES [dbo].[Role] ([Code])
GO
ALTER TABLE [dbo].[Manager] CHECK CONSTRAINT [FK_Manager_Role]
GO
ALTER TABLE [dbo].[Materials]  WITH CHECK ADD  CONSTRAINT [FK_Materials_MaterialType] FOREIGN KEY([IDMaterialType])
REFERENCES [dbo].[MaterialType] ([ID])
GO
ALTER TABLE [dbo].[Materials] CHECK CONSTRAINT [FK_Materials_MaterialType]
GO
ALTER TABLE [dbo].[Materials]  WITH CHECK ADD  CONSTRAINT [FK_Materials_Unit] FOREIGN KEY([IDUnit])
REFERENCES [dbo].[Unit] ([ID])
GO
ALTER TABLE [dbo].[Materials] CHECK CONSTRAINT [FK_Materials_Unit]
GO
ALTER TABLE [dbo].[MaterialsSupplier]  WITH CHECK ADD  CONSTRAINT [FK_MaterialsSupplier_Materials] FOREIGN KEY([IDMaterial])
REFERENCES [dbo].[Materials] ([ID])
GO
ALTER TABLE [dbo].[MaterialsSupplier] CHECK CONSTRAINT [FK_MaterialsSupplier_Materials]
GO
ALTER TABLE [dbo].[MaterialsSupplier]  WITH CHECK ADD  CONSTRAINT [FK_MaterialsSupplier_Supplier] FOREIGN KEY([IDSupplier])
REFERENCES [dbo].[Supplier] ([ID])
GO
ALTER TABLE [dbo].[MaterialsSupplier] CHECK CONSTRAINT [FK_MaterialsSupplier_Supplier]
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_SuppliersType] FOREIGN KEY([IDSuppliersType])
REFERENCES [dbo].[SuppliersType] ([ID])
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [FK_Supplier_SuppliersType]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([IDRole])
REFERENCES [dbo].[Role] ([Code])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
