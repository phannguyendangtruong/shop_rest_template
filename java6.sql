USE [J6Store]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 8/21/2022 7:40:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authorities]    Script Date: 8/21/2022 7:40:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authorities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[RoleId] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 8/21/2022 7:40:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [char](4) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 8/21/2022 7:40:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [bigint] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 8/21/2022 7:40:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[Confirm] [bit] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 8/21/2022 7:40:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](50) NOT NULL,
	[Price] [float] NOT NULL,
	[CreateDate] [date] NOT NULL,
	[Available] [bit] NOT NULL,
	[CategoryId] [char](4) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 8/21/2022 7:40:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 8/21/2022 7:40:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[email] [nvarchar](50) NOT NULL,
	[fullname] [nvarchar](50) NOT NULL,
	[marks] [float] NOT NULL,
	[gender] [bit] NOT NULL,
	[country] [nvarchar](2) NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'ALFKI', N'alfki', N'Maria Anders', N'alfki@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'ANATR', N'anatr', N'Ana Trujillo', N'anatr@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'ANTON', N'anton', N'Antonio Moreno', N'anton@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'AROUT', N'arout', N'Thomas Hardy', N'arout@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'BERGS', N'bergs', N'Christina Berglund', N'bergs@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'BLAUS', N'blaus', N'Hanna Moos', N'blaus@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'BLONP', N'blonp', N'Frédérique Citeaux', N'blonp@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'BOLID', N'bolid', N'Martín Sommer', N'bolid@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'BONAP', N'bonap', N'Laurence Lebihan', N'bonap@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'BOTTM', N'bottm', N'Elizabeth Lincoln', N'bottm@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'BSBEV', N'bsbev', N'Victoria Ashworth', N'bsbev@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'CACTU', N'cactu', N'Patricio Simpson', N'cactu@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'CENTC', N'centc', N'Francisco Chang', N'centc@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'CHOPS', N'chops', N'Yang Wang', N'chops@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'COMMI', N'commi', N'Pedro Afonso', N'commi@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'CONSH', N'consh', N'Elizabeth Brown', N'consh@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'customer', N'123', N'Nguyễn Văn Tèo', N'teonv@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'director', N'123', N'Nguyễn Chí Phèo', N'pheonc@fpt.edu.vn', N'-1407968806.jpg', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'DRACD', N'dracd', N'Sven Ottlieb', N'dracd@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'DUMON', N'dumon', N'Janine Labrune', N'dumon@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'EASTC', N'eastc', N'Ann Devon', N'eastc@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'ERNSH', N'ernsh', N'Roland Mendel', N'ernsh@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'FAMIA', N'famia', N'Aria Cruz', N'famia@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'FISSA', N'fissa', N'Diego Roel', N'fissa@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'FOLIG', N'folig', N'Martine Rancé', N'folig@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'FOLKO', N'folko', N'Maria Larsson', N'folko@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'FRANK', N'frank', N'Peter Franken', N'frank@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'FRANR', N'franr', N'Carine Schmitt', N'franr@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'FRANS', N'frans', N'Paolo Accorti', N'frans@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'FURIB', N'furib', N'Lino Rodriguez', N'furib@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'GALED', N'galed', N'Eduardo Saavedra', N'galed@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'GODOS', N'godos', N'José Pedro Freyre', N'godos@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'GOURL', N'gourl', N'André Fonseca', N'gourl@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'GREAL', N'greal', N'Howard Snyder', N'greal@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'GROSR', N'grosr', N'Manuel Pereira', N'grosr@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'HANAR', N'hanar', N'Mario Pontes', N'hanar@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'HILAA', N'hilaa', N'Carlos Hernández', N'hilaa@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'HUNGC', N'hungc', N'Yoshi Latimer', N'hungc@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'HUNGO', N'hungo', N'Patricia McKenna', N'hungo@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'ISLAT', N'islat', N'Helen Bennett', N'islat@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'KOENE', N'koene', N'Philip Cramer', N'koene@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'LACOR', N'lacor', N'Daniel Tonini', N'lacor@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'LAMAI', N'lamai', N'Annette Roulet', N'lamai@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'LAUGB', N'laugb', N'Yoshi Tannamuri', N'laugb@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'LAZYK', N'lazyk', N'John Steel', N'lazyk@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'LEHMS', N'lehms', N'Renate Messner', N'lehms@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'LETSS', N'letss', N'Jaime Yorres', N'letss@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'LILAS', N'lilas', N'Carlos González', N'lilas@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'LINOD', N'linod', N'Felipe Izquierdo', N'linod@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'LONEP', N'lonep', N'Fran Wilson', N'lonep@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'MAGAA', N'magaa', N'Giovanni Rovelli', N'magaa@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'MAISD', N'maisd', N'Catherine Dewey', N'maisd@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'MEREP', N'merep', N'Jean Fresnière', N'merep@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'MORGK', N'morgk', N'Alexander Feuer', N'morgk@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'NORTS', N'norts', N'Simon Crowther', N'norts@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'OCEAN', N'ocean', N'Yvonne Moncada', N'ocean@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'OLDWO', N'oldwo', N'Rene Phillips', N'oldwo@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'OTTIK', N'ottik', N'Henriette Pfalzheim', N'ottik@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'PARIS', N'paris', N'Marie Bertrand', N'paris@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'PERIC', N'peric', N'Guillermo Fernández', N'peric@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'PICCO', N'picco', N'Georg Pipps', N'picco@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'PRINI', N'prini', N'Isabel de Castro', N'prini@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'QUEDE', N'quede', N'Bernardo Batista', N'quede@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'QUEEN', N'queen', N'Lúcia Carvalho', N'queen@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'QUICK', N'quick', N'Horst Kloss', N'quick@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'RANCH', N'ranch', N'Sergio Gutiérrez', N'ranch@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'RATTC', N'rattc', N'Paula Wilson', N'rattc@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'REGGC', N'reggc', N'Maurizio Moroni', N'reggc@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'RICAR', N'ricar', N'Janete Limeira', N'ricar@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'RICSU', N'ricsu', N'Michael Holz', N'ricsu@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'ROMEY', N'romey', N'Alejandra Camino', N'romey@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'SANTG', N'santg', N'Jonas Bergulfsen', N'santg@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'SAVEA', N'savea', N'Jose Pavarotti', N'savea@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'SEVES', N'seves', N'Hari Kumar', N'seves@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'SIMOB', N'simob', N'Jytte Petersen', N'simob@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'SPECD', N'specd', N'Dominique Perrier', N'specd@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'SPLIR', N'splir', N'Art Braunschweiger', N'splir@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'staff', N'123', N'Phạm Thị Nở', N'nopt@gmail.com', N'user.png', N'')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'SUPRD', N'suprd', N'Pascale Cartrain', N'suprd@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'THEBI', N'thebi', N'Liz Nixon', N'thebi@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'THECR', N'thecr', N'Liu Wong', N'thecr@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'TOMSP', N'tomsp', N'Karin Josephs', N'tomsp@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'TORTU', N'tortu', N'Miguel Angel Paolino', N'tortu@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'TRADH', N'tradh', N'Anabela Domingues', N'tradh@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'TRAIH', N'traih', N'Helvetius Nagy', N'traih@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'truong', N'123', N'Phan Nguyễn Đăng Trường', N'truong@gmail.com', N'truong.jpg', N'1072 Lê Đức Thọ phường 13 quận Gò Vấp')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'VAFFE', N'vaffe', N'Palle Ibsen', N'vaffe@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'VICTE', N'victe', N'Mary Saveley', N'victe@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'VINET', N'vinet', N'Paul Henriot', N'vinet@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'WANDK', N'wandk', N'Rita Müller', N'wandk@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'WARTH', N'warth', N'Pirkko Koskitalo', N'warth@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'WELLI', N'welli', N'Paula Parente', N'welli@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'WHITC', N'whitc', N'Karl Jablonski', N'whitc@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'WILMK', N'wilmk', N'Matti Karttunen', N'wilmk@gmail.com', N'user.png', NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address]) VALUES (N'WOLZA', N'wolza', N'Zbyszek Piestrzeniewicz', N'wolza@gmail.com', N'user.png', NULL)
GO
SET IDENTITY_INSERT [dbo].[Authorities] ON 

INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (2, N'ALFKI', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (3, N'ANATR', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (4, N'ANTON', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (5, N'AROUT', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (6, N'BERGS', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (7, N'BLAUS', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (8, N'BLONP', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (9, N'BOLID', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (10, N'BONAP', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (11, N'BOTTM', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (12, N'BSBEV', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (13, N'CACTU', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (14, N'CENTC', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (15, N'CHOPS', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (16, N'COMMI', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (17, N'CONSH', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (80, N'customer', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (7109, N'director', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (98, N'director', N'DIRE')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (2103, N'director', N'STAF')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (18, N'DRACD', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (19, N'DUMON', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (20, N'EASTC', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (21, N'ERNSH', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (22, N'FAMIA', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (23, N'FISSA', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (24, N'FOLIG', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (25, N'FOLKO', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (26, N'FRANK', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (27, N'FRANR', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (28, N'FRANS', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (29, N'FURIB', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (30, N'GALED', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (31, N'GODOS', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (32, N'GOURL', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (33, N'GREAL', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (34, N'GROSR', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (35, N'HANAR', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (36, N'HILAA', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (37, N'HUNGC', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (38, N'HUNGO', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (39, N'ISLAT', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (40, N'KOENE', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (41, N'LACOR', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (42, N'LAMAI', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (43, N'LAUGB', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (44, N'LAZYK', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (45, N'LEHMS', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (46, N'LETSS', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (47, N'LILAS', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (48, N'LINOD', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (49, N'LONEP', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (50, N'MAGAA', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (51, N'MAISD', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (52, N'MEREP', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (53, N'MORGK', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (55, N'NORTS', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (56, N'OCEAN', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (57, N'OLDWO', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (58, N'OTTIK', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (59, N'PARIS', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (60, N'PERIC', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (61, N'PICCO', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (62, N'PRINI', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (63, N'QUEDE', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (64, N'QUEEN', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (65, N'QUICK', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (66, N'RANCH', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (67, N'RATTC', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (68, N'REGGC', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (69, N'RICAR', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (70, N'RICSU', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (71, N'ROMEY', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (72, N'SANTG', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (74, N'SAVEA', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (75, N'SEVES', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (76, N'SIMOB', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (77, N'SPECD', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (78, N'SPLIR', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (7103, N'staff', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (7107, N'staff', N'DIRE')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (100, N'staff', N'STAF')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (79, N'SUPRD', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (82, N'THEBI', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (83, N'THECR', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (84, N'TOMSP', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (85, N'TORTU', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (86, N'TRADH', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (87, N'TRAIH', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (7110, N'truong', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (89, N'VAFFE', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (90, N'VICTE', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (91, N'VINET', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (92, N'WANDK', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (93, N'WARTH', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (94, N'WELLI', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (95, N'WHITC', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (96, N'WILMK', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (97, N'WOLZA', N'CUST')
GO
SET IDENTITY_INSERT [dbo].[Authorities] OFF
GO
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1000', N'Đồng hồ đeo tay')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1001', N'Máy tính xách tay')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1002', N'Máy ảnh')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1003', N'Điện thoại')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1004', N'Nước hoa')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1005', N'Nữ trang')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1006', N'Nón thời trang')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1007', N'Túi xách du lịch')
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212554, 121256, 1004, 22, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212555, 121256, 1006, 25, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212562, 121262, 1024, 4.5, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212563, 121262, 1002, 19, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212564, 121263, 1006, 25, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212565, 121264, 1058, 13.25, 3)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212566, 121264, 1008, 40, 2)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212567, 121265, 1059, 55, 4)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212568, 121265, 1011, 21, 2)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212569, 121266, 1083, 97, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212570, 121266, 1009, 97, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212581, 121278, 1024, 4.5, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212582, 121278, 1031, 12.5, 1)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Confirm]) VALUES (121256, N'staff', CAST(N'2022-08-10T00:00:00.000' AS DateTime), N'1072 Lê Đức Thọ phường 13, quận Gò Vấp', 1)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Confirm]) VALUES (121262, N'truong', CAST(N'2022-08-10T00:00:00.000' AS DateTime), N'1072 Lê Đức Thọ phường 13 quận Gò Vấp', 1)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Confirm]) VALUES (121263, N'truong', CAST(N'2022-08-10T00:00:00.000' AS DateTime), N'1072 Lê Đức Thọ phường 13 quận Gò Vấp', 1)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Confirm]) VALUES (121264, N'truong', CAST(N'2022-08-10T00:00:00.000' AS DateTime), N'1072 Lê Đức Thọ phường 13 quận Gò Vấp', 1)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Confirm]) VALUES (121265, N'truong', CAST(N'2022-08-10T00:00:00.000' AS DateTime), N'1072 Lê Đức Thọ phường 13 quận Gò Vấp', 1)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Confirm]) VALUES (121266, N'truong', CAST(N'2022-08-10T00:00:00.000' AS DateTime), N'1072 Lê Đức Thọ phường 13 quận Gò Vấp', 1)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Confirm]) VALUES (121278, N'staff', CAST(N'2022-08-17T00:00:00.000' AS DateTime), N'', NULL)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1002, N'Change', N'1002.jpg', 19, CAST(N'1982-12-18' AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1003, N'Aniseed Syrup', N'1003.jpg', 10, CAST(N'1973-06-14' AS Date), 1, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1004, N'Chef Anton''s Cajun Seasoning', N'1004.jpg', 22, CAST(N'1976-03-10' AS Date), 0, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1005, N'Chef Anton''s Gumbo Mix', N'1005.jpg', 21.35, CAST(N'1978-12-06' AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1006, N'Grandma''s Boysenberry Spread', N'1006.jpg', 25, CAST(N'1981-09-03' AS Date), 0, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1007, N'Uncle Bob''s Organic Dried Pears', N'1007.jpg', 30, CAST(N'1983-03-13' AS Date), 0, N'1006')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1008, N'Northwoods Cranberry Sauce', N'1008.jpg', 40, CAST(N'1972-02-26' AS Date), 0, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1009, N'Mishi Kobe Niku', N'1009.jpg', 97, CAST(N'1985-12-10' AS Date), 0, N'1005')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1010, N'Ikura', N'1010.jpg', 31, CAST(N'1994-03-23' AS Date), 0, N'1007')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1011, N'Queso Cabrales', N'1011.jpg', 21, CAST(N'1985-11-28' AS Date), 0, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1012, N'Queso Manchego La Pastora', N'1012.jpg', 38, CAST(N'1988-08-27' AS Date), 1, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1013, N'Konbu', N'1013.jpg', 6, CAST(N'2002-07-01' AS Date), 0, N'1007')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1014, N'Tofu', N'1014.jpg', 23.25, CAST(N'2002-06-24' AS Date), 1, N'1006')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1015, N'Genen Shouyu', N'1015.jpg', 15.5, CAST(N'1991-05-04' AS Date), 0, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1016, N'Pavlova', N'1016.jpg', 17.45, CAST(N'1996-11-09' AS Date), 0, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1017, N'Alice Mutton', N'1017.jpg', 39, CAST(N'2007-12-15' AS Date), 1, N'1005')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1018, N'Carnarvon Tigers', N'1018.jpg', 62.5, CAST(N'2011-04-13' AS Date), 1, N'1007')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1019, N'Teatime Chocolate Biscuits', N'1019.jpg', 9.2, CAST(N'2005-02-02' AS Date), 0, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1020, N'Sir Rodney''s Marmalade', N'1020.jpg', 81, CAST(N'2007-11-01' AS Date), 0, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1021, N'Sir Rodney''s Scones', N'1021.jpg', 10, CAST(N'2010-07-29' AS Date), 0, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1022, N'Gustaf flower', N'1022.jpg', 21, CAST(N'2008-12-01' AS Date), 1, N'1004')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1023, N'Tunnbr Korea', N'1023.jpg', 9, CAST(N'2011-08-31' AS Date), 1, N'1004')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1024, N'Guarana¡ Fanta¡stica', N'1024.jpg', 4.5, CAST(N'2008-03-13' AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1025, N'NuNuCa Nuaa-Nougat-Creme', N'1025.jpg', 14, CAST(N'2011-07-20' AS Date), 0, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1026, N'Gumbar Gummibarchen', N'1026.jpg', 31.23, CAST(N'2009-04-17' AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1027, N'Schoggi Schokolade', N'1027.jpg', 43.9, CAST(N'2007-01-14' AS Date), 0, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1028, N'Russle Sauerkraut', N'1028.jpg', 45.6, CAST(N'2011-01-14' AS Date), 1, N'1006')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1029, N'Tharinger Rostbratwurst', N'1029.jpg', 123.79, CAST(N'2010-12-21' AS Date), 0, N'1005')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1030, N'Nord-Ost Matjeshering', N'1030.jpg', 25.89, CAST(N'2011-05-14' AS Date), 0, N'1007')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1031, N'Gorgonzola Telino', N'1031.jpg', 12.5, CAST(N'2010-10-30' AS Date), 0, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1032, N'Mascarpone Fabioli', N'1032.jpg', 32, CAST(N'2011-07-30' AS Date), 0, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1033, N'Geitost', N'1033.png', 2.5, CAST(N'2010-04-29' AS Date), 0, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1034, N'Sasquatch Ale', N'1034.jpg', 14, CAST(N'2010-07-30' AS Date), 1, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1035, N'Steeleye Stout', N'1035.jpg', 18, CAST(N'2011-04-25' AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1036, N'Inlagd Sill', N'1036.jpg', 19, CAST(N'1980-11-28' AS Date), 0, N'1007')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1037, N'Gravad lax', N'1037.jpg', 26, CAST(N'1983-08-31' AS Date), 0, N'1007')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1038, N'Cate de Blaye', N'1038.jpg', 263.5, CAST(N'1981-07-12' AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1039, N'Chartreuse verte', N'1039.jpg', 18, CAST(N'1984-04-08' AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1040, N'Boston Crab Meat', N'1040.jpg', 18.4, CAST(N'1976-12-08' AS Date), 0, N'1007')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1041, N'Jack''s New England Clam Chowder', N'1041.jpg', 9.65, CAST(N'1979-09-10' AS Date), 0, N'1007')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1042, N'Singaporean Hokkien Fried Mee', N'1042.jpg', 14, CAST(N'1973-11-21' AS Date), 0, N'1004')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1043, N'Ipoh Coffee', N'1043.jpg', 46, CAST(N'1980-03-20' AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1044, N'Gula Malacca', N'1044.jpg', 19.45, CAST(N'1970-10-25' AS Date), 0, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1045, N'Rogede sild', N'1045.jpg', 9.5, CAST(N'1990-09-21' AS Date), 1, N'1007')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1046, N'Spegesild', N'1046.jpg', 12, CAST(N'1993-06-23' AS Date), 0, N'1007')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1047, N'Zaanse koeken', N'1047.jpg', 9.5, CAST(N'1981-11-25' AS Date), 0, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1048, N'Chocolade', N'1048.jpg', 12.75, CAST(N'1984-08-24' AS Date), 0, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1049, N'Maxilaku', N'1049.jpg', 20, CAST(N'1987-05-23' AS Date), 0, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1050, N'Valkoinen suklaa', N'1050.jpg', 16.25, CAST(N'1990-02-17' AS Date), 0, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1051, N'Manjimup Dried Apples', N'1051.jpg', 53, CAST(N'2004-05-22' AS Date), 0, N'1006')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1052, N'Filo Mix', N'1052.jpg', 7, CAST(N'2001-05-20' AS Date), 0, N'1004')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1053, N'Perth Pasties', N'1053.jpg', 32.8, CAST(N'2007-01-06' AS Date), 0, N'1005')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1054, N'Tourtiare', N'1054.jpg', 7.45, CAST(N'2009-10-07' AS Date), 1, N'1005')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1055, N'Pacta chinois', N'1055.jpg', 24, CAST(N'2007-07-08' AS Date), 0, N'1005')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1056, N'Gnocchi di nonna Alice', N'1056.jpg', 38, CAST(N'2007-05-18' AS Date), 0, N'1004')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1057, N'Ravioli Angelo', N'1057.jpg', 19.5, CAST(N'2010-02-16' AS Date), 0, N'1004')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1058, N'Escargots de Bourgogne', N'1058.jpg', 13.25, CAST(N'2011-07-26' AS Date), 0, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1059, N'Raclette Courdavault', N'1059.jpg', 55, CAST(N'2007-09-22' AS Date), 0, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1060, N'Camembert Pierrot', N'1060.jpg', 34, CAST(N'2010-06-20' AS Date), 0, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1061, N'Sirop d''aOrable', N'1061.jpg', 28.5, CAST(N'2007-05-29' AS Date), 0, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1062, N'Tarte au sucre', N'1062.jpg', 49.3, CAST(N'2008-01-21' AS Date), 0, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1063, N'Vegie-spread', N'1063.jpg', 43.9, CAST(N'2007-11-21' AS Date), 0, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1064, N'Wimmers gute Semmelknadel', N'1064.jpg', 33.25, CAST(N'2009-05-15' AS Date), 0, N'1004')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1065, N'Louisiana Fiery Hot Pepper Sauce', N'1065.jpg', 21.05, CAST(N'2008-05-15' AS Date), 0, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1066, N'Louisiana Hot Spiced Okra', N'1066.jpg', 17, CAST(N'2011-02-10' AS Date), 1, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1067, N'Laughing Lumberjack Lager', N'1067.jpg', 14, CAST(N'2010-12-05' AS Date), 1, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1068, N'Scottish Longbreads', N'1068.jpg', 12.5, CAST(N'2009-07-08' AS Date), 0, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1069, N'Gudbrandsdalsost', N'1069.jpg', 36, CAST(N'2011-03-09' AS Date), 0, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1070, N'Outback Lager', N'1070.jpg', 15, CAST(N'2009-02-21' AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1071, N'Flotemysost', N'1071.jpg', 21.5, CAST(N'1980-09-04' AS Date), 1, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1072, N'Mozzarella di Giovanni', N'1072.jpg', 34.8, CAST(N'1983-06-03' AS Date), 0, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1073, N'Rad Kaviar', N'1073.jpg', 15, CAST(N'1982-12-03' AS Date), 0, N'1007')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1074, N'Longlife Tofu', N'1074.jpg', 10, CAST(N'1982-09-27' AS Date), 0, N'1006')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1075, N'RhanbrAu Klosterbier', N'1075.jpg', 7.75, CAST(N'1982-10-31' AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1076, N'Lakkalik AAri', N'1076.jpg', 18, CAST(N'1970-07-28' AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1077, N'Original Frankfurter grane Soae', N'1077.gif', 13, CAST(N'1976-04-04' AS Date), 0, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1081, N'Chai', N'1081.jpg', 19, CAST(N'1984-04-04' AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1083, N'Mishi Kobe Niku', N'1083.jpg', 97, CAST(N'1989-07-23' AS Date), 0, N'1005')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1085, N'adasd', N'../images/download.jpg', 111, CAST(N'2022-08-10' AS Date), 0, N'1000')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'CUST', N'Customers')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'DIRE', N'Directors')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'STAF', N'Staffs')
GO
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'anhntps10770@fpt.edu.vn', N'Nguyễn Tiến Anh', 10, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'chaulnnps10835@fpt.edu.vn', N'Lê Nguyễn Ngọc Châu', 7, 0, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'cuonglcps10817@fpt.edu.vn', N'Lý Chí Cường', 6, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'datnvps10930@fpt.edu.vn', N'Nguyễn Vũ Đạt', 6, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'dobps10723@fpt.edu.vn', N'Bùi Đỏ', 10, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'ducnpps10800@fpt.edu.vn', N'Nguyễn Phúc Đức', 7, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'duytkps10303@fpt.edu.vn', N'Trần Khánh Duy', 6, 1, N'US')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'huyntps10808@fpt.edu.vn', N'Nguyễn Thanh Huy', 4, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'khaihcps10763@fpt.edu.vn', N'Hoàng Cao Khải', 5, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'luudpps10344@fpt.edu.vn', N'Đào Phong Lưu', 8, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'manhbdps09585@fpt.edu.vn', N'Bùi Đức Mạnh', 5, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'phatltps10691@fpt.edu.vn', N'Lê Tấn Phát', 9, 1, N'US')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'phucpbps10710@fpt.edu.vn', N'Phạm Bá Phúc', 6, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'phuongntdps09013@fpt.edu.vn', N'Nguyễn Thị Diễm Phương', 8, 0, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'quangnmps10741@fpt.edu.vn', N'Nguyễn Minh Quang', 6, 1, N'US')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'quangvvtps09851@fpt.edu.vn', N'Võ Văn Thanh Quang', 5, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'sangntps10356@fpt.edu.vn', N'Nguyễn Tống Sang', 5, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'sonntps10858@fpt.edu.vn', N'Nguyễn Thanh Sơn', 9, 1, N'US')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'suotlvmps10970@fpt.edu.vn', N'Lê Vương Minh Suốt', 7, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'thachnhps10818@fpt.edu.vn', N'Nguyễn Hữu Thạch', 8, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'thangtvps10394@fpt.edu.vn', N'Trằn Văn Thắng', 9, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'trangntpps10956@fpt.edu.vn', N'Nguyễn Thị Phương Trang', 4, 0, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'trungdvps10716@fpt.edu.vn', N'Đặng Văn Trung', 6, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'tuanncqps10850@fpt.edu.vn', N'Nguyễn Cửu Quang Tuấn', 6, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'tuannnps10819@fpt.edu.vn', N'Nguyễn Ngọc Tuấn', 10, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'vinhptps09842@fpt.edu.vn', N'Phạm Thế Vinh', 10, 1, N'VN')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UKhtk0tjw6uf67w0vkhy5n3j1oq]    Script Date: 8/21/2022 7:40:46 PM ******/
ALTER TABLE [dbo].[Authorities] ADD  CONSTRAINT [UKhtk0tjw6uf67w0vkhy5n3j1oq] UNIQUE NONCLUSTERED 
(
	[Username] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Accounts] ADD  CONSTRAINT [DF_Customers_Photo]  DEFAULT (N'Photo.gif') FOR [Photo]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_Order_Details_UnitPrice]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_Order_Details_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_OrderDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_Confirm]  DEFAULT ((0)) FOR [Confirm]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Image]  DEFAULT (N'Product.gif') FOR [Image]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_UnitPrice]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_ProductDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Available]  DEFAULT ((1)) FOR [Available]
GO
ALTER TABLE [dbo].[Students] ADD  CONSTRAINT [DF_Students_gender]  DEFAULT ((1)) FOR [gender]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_UserRoles_Roles]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Users] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_UserRoles_Users]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FKevi9708lm1k06pa4dugc91k7v] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FKevi9708lm1k06pa4dugc91k7v]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FKlw0sapcjvuxfa1kvyjw7jml88] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FKlw0sapcjvuxfa1kvyjw7jml88]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FKaltatpxipsjtcih4d1h6bn0xr] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FKaltatpxipsjtcih4d1h6bn0xr]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FKj4gc2ja2otvwemf4rho2lp3s8] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FKj4gc2ja2otvwemf4rho2lp3s8]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FKk3cjfcgb621qhahps1tre43e4] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FKk3cjfcgb621qhahps1tre43e4]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK1krrsjgcawsfg8k8u4hm5gi8q] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK1krrsjgcawsfg8k8u4hm5gi8q]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK3ess0s7i9qs6sim1pf9kxhkpq] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK3ess0s7i9qs6sim1pf9kxhkpq]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã khách hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mật khẩu đăng nhập' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Họ và tên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Fullname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hình ảnh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Photo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên tiếng Việt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã chi tiết' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hóa đơn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'OrderId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'ProductId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đơn giá bán' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số lượng mua' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hóa đơn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã khách hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày đặt hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Địa chỉ nhận' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hình ảnh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Image'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đơn giá' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày sản xuất' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đang kinh doanh ?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Available'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại, FK' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CategoryId'
GO
