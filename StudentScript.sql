USE [StudKurs]
GO
/****** Object:  Table [dbo].[Gruppa]    Script Date: 06.04.2025 18:50:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gruppa](
	[IdGr] [int] NOT NULL,
	[NameGr] [nchar](10) NULL,
 CONSTRAINT [PK_Gruppa] PRIMARY KEY CLUSTERED 
(
	[IdGr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 06.04.2025 18:50:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[IdStudent] [int] NOT NULL,
	[Fam] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Otchestvo] [nvarchar](max) NULL,
	[IdGr] [int] NULL,
	[DR] [date] NULL,
	[Adres] [nvarchar](max) NULL,
	[isDelete] [bit] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[IdStudent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 06.04.2025 18:50:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[IdUser] [int] IDENTITY(1,1) NOT NULL,
	[Parol] [nchar](10) NULL,
	[Login] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[IdUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Gruppa] ([IdGr], [NameGr]) VALUES (3, N'324       ')
INSERT [dbo].[Gruppa] ([IdGr], [NameGr]) VALUES (4, N'932       ')
GO
INSERT [dbo].[Student] ([IdStudent], [Fam], [Name], [Otchestvo], [IdGr], [DR], [Adres], [isDelete]) VALUES (1, N'Вафина', N'Алия', N'Азалевна', 4, CAST(N'2006-02-09' AS Date), N'Казань', 1)
INSERT [dbo].[Student] ([IdStudent], [Fam], [Name], [Otchestvo], [IdGr], [DR], [Adres], [isDelete]) VALUES (2, N'Набиуллин', N'Ильсаф', N'Вахизович', 4, CAST(N'2006-03-21' AS Date), N'Казань', 1)
INSERT [dbo].[Student] ([IdStudent], [Fam], [Name], [Otchestvo], [IdGr], [DR], [Adres], [isDelete]) VALUES (3, N'Сухарева', N'Ксения', N'Борисовна', 3, CAST(N'2007-06-11' AS Date), N'Казань', 1)
INSERT [dbo].[Student] ([IdStudent], [Fam], [Name], [Otchestvo], [IdGr], [DR], [Adres], [isDelete]) VALUES (4, N'Родионова', N'Арина', N'Михайловна', 3, CAST(N'2007-03-14' AS Date), N'Казань', 1)
INSERT [dbo].[Student] ([IdStudent], [Fam], [Name], [Otchestvo], [IdGr], [DR], [Adres], [isDelete]) VALUES (5, N'Фарухшина', N'Алина', N'Ринатовна', 4, CAST(N'2003-08-07' AS Date), N'Пермь', 0)
INSERT [dbo].[Student] ([IdStudent], [Fam], [Name], [Otchestvo], [IdGr], [DR], [Adres], [isDelete]) VALUES (6, N'Филлипова', N'Полина ', N'Мксимовна', 3, CAST(N'2007-03-14' AS Date), N'Казань', 0)
INSERT [dbo].[Student] ([IdStudent], [Fam], [Name], [Otchestvo], [IdGr], [DR], [Adres], [isDelete]) VALUES (7, N'Залялиев', N'Айнур', N'Айдарович', 4, CAST(N'2006-08-04' AS Date), N'Казань', 0)
INSERT [dbo].[Student] ([IdStudent], [Fam], [Name], [Otchestvo], [IdGr], [DR], [Adres], [isDelete]) VALUES (8, N'Габдрахманова', N'Гульнур', N'Гамировна', 4, CAST(N'2006-06-15' AS Date), N'Азнакаево', 0)
INSERT [dbo].[Student] ([IdStudent], [Fam], [Name], [Otchestvo], [IdGr], [DR], [Adres], [isDelete]) VALUES (9, N'Сухинина ', N'Дарья', N'Вячеславовна', 3, CAST(N'2007-01-02' AS Date), N'Казань', 0)
INSERT [dbo].[Student] ([IdStudent], [Fam], [Name], [Otchestvo], [IdGr], [DR], [Adres], [isDelete]) VALUES (10, N'Мустафин', N'Анвар', N'Айдарович', 4, CAST(N'2006-08-21' AS Date), N'Богатые Сабы', 0)
INSERT [dbo].[Student] ([IdStudent], [Fam], [Name], [Otchestvo], [IdGr], [DR], [Adres], [isDelete]) VALUES (11, N'S', N'Alex', N'GH', 4, CAST(N'2004-04-04' AS Date), N'Kazan', 1)
INSERT [dbo].[Student] ([IdStudent], [Fam], [Name], [Otchestvo], [IdGr], [DR], [Adres], [isDelete]) VALUES (23, N'dfg', N'dfg', N'dfg', 4, CAST(N'2004-04-04' AS Date), N'Kazan', 0)
INSERT [dbo].[Student] ([IdStudent], [Fam], [Name], [Otchestvo], [IdGr], [DR], [Adres], [isDelete]) VALUES (56, N'п', N'про', N'иьб', 3, CAST(N'0203-07-07' AS Date), N'Казань', 0)
INSERT [dbo].[Student] ([IdStudent], [Fam], [Name], [Otchestvo], [IdGr], [DR], [Adres], [isDelete]) VALUES (789, N'bjk', N'blknj', N'vhjn ', 4, CAST(N'2009-07-06' AS Date), N'hl', 0)
INSERT [dbo].[Student] ([IdStudent], [Fam], [Name], [Otchestvo], [IdGr], [DR], [Adres], [isDelete]) VALUES (5679, N'cnfgn', N' c;blkfg', N'n;mhkmhl', 4, CAST(N'2005-09-07' AS Date), N'dhfg', 0)
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([IdUser], [Parol], [Login]) VALUES (1, N'H768Gp    ', 12567)
INSERT [dbo].[User] ([IdUser], [Parol], [Login]) VALUES (20, N'B045Kl    ', 80475)
INSERT [dbo].[User] ([IdUser], [Parol], [Login]) VALUES (30, N'd890KJ    ', 39646)
INSERT [dbo].[User] ([IdUser], [Parol], [Login]) VALUES (40, N'T734Tt    ', 67789)
INSERT [dbo].[User] ([IdUser], [Parol], [Login]) VALUES (50, N'O089dN    ', 56737)
INSERT [dbo].[User] ([IdUser], [Parol], [Login]) VALUES (60, N'Ee567e    ', 23457)
INSERT [dbo].[User] ([IdUser], [Parol], [Login]) VALUES (70, N'kK907k    ', 23568)
INSERT [dbo].[User] ([IdUser], [Parol], [Login]) VALUES (80, N'f456FF    ', 76878)
INSERT [dbo].[User] ([IdUser], [Parol], [Login]) VALUES (90, N'N890NN    ', 34575)
INSERT [dbo].[User] ([IdUser], [Parol], [Login]) VALUES (100, N'Sc5678    ', 87454)
INSERT [dbo].[User] ([IdUser], [Parol], [Login]) VALUES (101, NULL, NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Gruppa] FOREIGN KEY([IdGr])
REFERENCES [dbo].[Gruppa] ([IdGr])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Gruppa]
GO
