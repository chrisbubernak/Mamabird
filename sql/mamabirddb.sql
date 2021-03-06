/****** Object:  Table [dbo].[Coach]    Script Date: 4/26/2014 11:15:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coach](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PersonId] [bigint] NOT NULL,
	[TeamId] [bigint] NOT NULL,
 CONSTRAINT [PK_Coach] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Game]    Script Date: 4/26/2014 11:15:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Game](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Team1] [nvarchar](max) NOT NULL,
	[Score1] [nvarchar](64) NOT NULL,
	[Team2] [nvarchar](max) NOT NULL,
	[Score2] [nvarchar](64) NOT NULL,
	[TournamentId] [bigint] NOT NULL,
 CONSTRAINT [PK_Game] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Person]    Script Date: 4/26/2014 11:15:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Height] [nvarchar](10) NULL,
	[Weight] [nvarchar](10) NULL,
	[Hometown] [nvarchar](50) NULL,
	[HighSchool] [nvarchar](50) NULL,
	[Major] [nvarchar](50) NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Player]    Script Date: 4/26/2014 11:15:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Player](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PersonId] [bigint] NOT NULL,
	[TeamId] [bigint] NOT NULL,
	[Year] [nvarchar](10) NULL,
	[Experience] [int] NULL,
	[Number] [int] NULL,
	[Captain] [bit] NULL,
 CONSTRAINT [PK_Player] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Team]    Script Date: 4/26/2014 11:15:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Team](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Year] [int] NOT NULL,
 CONSTRAINT [PK_Team] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Tournament]    Script Date: 4/26/2014 11:15:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tournament](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Location] [nvarchar](max) NOT NULL,
	[Date] [datetime] NOT NULL,
	[TeamId] [bigint] NOT NULL,
	[Url] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tournament] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
SET IDENTITY_INSERT [dbo].[Coach] ON 

INSERT [dbo].[Coach] ([Id], [PersonId], [TeamId]) VALUES (1, 55, 1)
INSERT [dbo].[Coach] ([Id], [PersonId], [TeamId]) VALUES (2, 55, 2)
INSERT [dbo].[Coach] ([Id], [PersonId], [TeamId]) VALUES (3, 55, 3)
INSERT [dbo].[Coach] ([Id], [PersonId], [TeamId]) VALUES (4, 55, 4)
INSERT [dbo].[Coach] ([Id], [PersonId], [TeamId]) VALUES (5, 56, 1)
INSERT [dbo].[Coach] ([Id], [PersonId], [TeamId]) VALUES (6, 56, 2)
INSERT [dbo].[Coach] ([Id], [PersonId], [TeamId]) VALUES (7, 56, 3)
INSERT [dbo].[Coach] ([Id], [PersonId], [TeamId]) VALUES (8, 55, 5)
INSERT [dbo].[Coach] ([Id], [PersonId], [TeamId]) VALUES (10002, 55, 10005)
INSERT [dbo].[Coach] ([Id], [PersonId], [TeamId]) VALUES (10003, 10047, 10006)
INSERT [dbo].[Coach] ([Id], [PersonId], [TeamId]) VALUES (10004, 10047, 10007)
SET IDENTITY_INSERT [dbo].[Coach] OFF
SET IDENTITY_INSERT [dbo].[Game] ON 

INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (1, N'Colorado', N'13', N'California-Santa Cruz', N'6', 1)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (2, N'Colorado', N'13', N'California-San Diego', N'11', 1)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (3, N'Colorado', N'13', N'Cincinnati', N'6', 1)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (4, N'Colorado', N'14', N'Vermont', N'12', 1)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (5, N'Colorado', N'15', N'Colorado College', N'10', 1)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (6, N'Colorado', N'13', N'Washington', N'12', 1)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (7, N'Colorado', N'15', N'Cincinnati', N'7', 1)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (8, N'Colorado', N'9', N'Arizona', N'14', 1)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (9, N'Colorado', N'15', N'California-Davis', N'12', 1)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (10, N'Colorado', N'7', N'Wisconsin', N'13', 2)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (11, N'Colorado', N'9', N'Central Florida', N'13', 2)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (12, N'Colorado', N'13', N'Whitman', N'9', 2)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (13, N'Colorado', N'13', N'North Carolina', N'8', 2)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (14, N'Colorado', N'10', N'Tufts', N'15', 2)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (15, N'Colorado', N'15', N'Texas A&M', N'12', 2)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (16, N'Colorado', N'12', N'Wisconsin', N'15', 2)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (17, N'Colorado', N'12', N'Pittsburgh', N'15', 3)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (18, N'Colorado', N'17', N'Florida State', N'16', 3)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (19, N'Colorado', N'15', N'North Carolina-Wilmington', N'9', 3)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (20, N'Colorado', N'11', N'Dartmouth', N'15', 3)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (21, N'Colorado', N'15', N'Tufts', N'11', 3)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (22, N'Colorado', N'12', N'Wisconsin', N'8', 3)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (23, N'Colorado', N'8', N'Minnesota', N'15', 3)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (24, N'Colorado', N'15', N'Colorado State', N'10', 4)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (25, N'Colorado', N'15', N'Northern Colorado', N'4', 4)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (27, N'Colorado', N'15', N'Colorado-B', N'2', 4)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (28, N'Colorado', N'15', N'Colorado College', N'12', 4)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (29, N'Colorado', N'15', N'St Louis', N'8', 6)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (30, N'Colorado', N'15', N'Missouri', N'9', 6)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (31, N'Colorado', N'15', N'Texas A&M', N'13', 6)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (32, N'Colorado', N'15', N'Texas A&M', N'11', 6)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (33, N'Colorado', N'12', N'Texas', N'15', 6)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (34, N'Colorado', N'14', N'Oregon', N'15', 7)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (35, N'Colorado', N'12', N'Georgia', N'10', 7)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (36, N'Colorado', N'15', N'Washington', N'9', 7)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (37, N'Colorado', N'15', N'Dartmouth', N'8', 7)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (38, N'Colorado', N'11', N'North Carolina-Wilmington', N'15', 7)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (39, N'Colorado', N'8', N'Arizona', N'11', 8)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (40, N'Colorado', N'13', N'Minnesota-Duluth', N'5', 8)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (41, N'Colorado', N'13', N'Carleton College', N'9', 8)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (42, N'Colorado', N'13', N'Kansas State', N'5', 8)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (43, N'Colorado', N'13', N'Eastern Michigan', N'11', 8)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (44, N'Colorado', N'12', N'Minnesota', N'7', 8)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (45, N'Colorado', N'W', N'Carleton College', N'F', 8)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (46, N'Colorado', N'7', N'Pittsburgh', N'11', 8)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (47, N'Colorado', N'12', N'Texas A&M', N'14', 9)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (48, N'Colorado', N'13', N'Northern Iowa', N'6', 9)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (49, N'Colorado', N'13', N'Minnesota', N'5', 9)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (50, N'Colorado', N'13', N'Carleton College', N'7', 9)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (51, N'Colorado', N'13', N'Washington University', N'6', 9)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (52, N'Colorado', N'13', N'Carleton College', N'6', 9)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (53, N'Colorado', N'W', N'Texas A&M', N'L', 9)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (54, N'Colorado', N'13', N'Illinois', N'6', 9)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (55, N'Colorado', N'13', N'Northern Arizona', N'11', 10)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (56, N'Colorado', N'14', N'California-Davis', N'12', 10)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (57, N'Colorado', N'15', N'Oklahoma', N'8', 10)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (58, N'Colorado', N'15', N'Washington', N'11', 10)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (59, N'Colorado', N'13', N'Victoria', N'6', 10)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (60, N'Colorado', N'13', N'California', N'7', 10)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (61, N'Colorado', N'15', N'California-Santa Barbara', N'6', 10)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (62, N'Colorado', N'15', N'British Columbia', N'5', 10)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (63, N'Colorado', N'15', N'Oregon', N'11', 10)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (64, N'Colorado', N'13', N'California-San Diego', N'8', 11)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (65, N'Colorado', N'9', N'Georgia', N'6', 11)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (66, N'Colorado', N'13', N'Wisconsin', N'8', 11)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (67, N'Colorado', N'12', N'North Carolina', N'13', 11)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (68, N'Colorado', N'12', N'Stanford', N'15', 11)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (69, N'Colorado', N'15', N'British Columbia', N'5', 13)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (70, N'Colorado', N'15', N'Northern Iowa', N'11', 13)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (71, N'Colorado', N'15', N'Texas A&M', N'11', 13)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (72, N'Colorado', N'15', N'Iowa State', N'8', 13)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (73, N'Colorado', N'15', N'Wisconsin', N'7', 13)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (74, N'Colorado', N'15', N'LSU', N'10', 13)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (75, N'Colorado', N'15', N'Texas A&M', N'6', 13)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (76, N'Colorado', N'16', N'Sonoma State', N'14', 14)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (77, N'Colorado', N'15', N'San Diego State', N'9', 14)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (78, N'Colorado', N'15', N'Brown', N'4', 14)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (79, N'Colorado', N'15', N'UCLA', N'7', 14)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (80, N'Colorado', N'12', N'Washington', N'14', 14)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (81, N'Colorado', N'15', N'Vermont', N'10', 14)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (82, N'Colorado', N'15', N'San Diego State', N'7', 14)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (83, N'Colorado', N'13', N'Harvard', N'7', 15)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (84, N'Colorado', N'12', N'California-Santa Barbara', N'14', 15)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (85, N'Colorado', N'11', N'Wisconsin', N'13', 15)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (86, N'Colorado', N'14', N'Florida', N'12', 15)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (87, N'Colorado', N'12', N'Pittsburgh', N'14', 15)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (88, N'Colorado', N'15', N'Whitman', N'12', 15)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (89, N'Colorado', N'7', N'California', N'13', 15)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (90, N'Colorado', N'10', N'Oregon', N'13', 16)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (91, N'Colorado', N'11', N'Michigan State', N'7', 16)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (92, N'Colorado', N'13', N'Washington', N'8', 16)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (93, N'Colorado', N'8', N'Luther', N'12', 16)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (94, N'Colorado', N'13', N'Iowa', N'11', 16)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (95, N'Colorado', N'9', N'Wisconsin', N'12', 16)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (96, N'Colorado', N'8', N'Texas', N'10', 16)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (97, N'Colorado', N'13', N'Colorado State', N'9', 17)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (98, N'Colorado', N'13', N'Colorado College', N'5', 17)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (99, N'Colorado', N'13', N'Colorado-B', N'4', 17)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (100, N'Colorado', N'13', N'Metro State College of Denver', N'3', 17)
GO
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (101, N'Colorado', N'13', N'Northern Colorado', N'2', 17)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (102, N'Colorado', N'13', N'Colorado-B', N'5', 17)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (103, N'Colorado', N'13', N'Colorado College', N'5', 17)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (104, N'Colorado', N'15', N'Oklahoma', N'7', 19)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (105, N'Colorado', N'15', N'Texas-B', N'6', 19)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (106, N'Colorado', N'15', N'Washington University', N'5', 19)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (107, N'Colorado', N'12', N'Kansas', N'7', 19)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (108, N'Colorado', N'15', N'Texas', N'11', 19)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (109, N'Colorado', N'15', N'Cornell', N'7', 20)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (110, N'Colorado', N'15', N'Washington', N'13', 20)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (111, N'Colorado', N'11', N'Carleton College', N'13', 20)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (112, N'Colorado', N'9', N'Tufts', N'15', 20)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (113, N'Colorado', N'9', N'Luther', N'14', 20)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (114, N'Colorado', N'15', N'Georgia Tech', N'6', 20)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (115, N'Colorado', N'15', N'Texas', N'13', 20)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (116, N'Colorado', N'8', N'Michigan', N'9', 21)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (117, N'Colorado', N'9', N'Missouri', N'10', 21)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (118, N'Colorado', N'13', N'Illinois', N'6', 21)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (119, N'Colorado', N'6', N'Wisconsin', N'11', 21)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (120, N'Colorado', N'9', N'Colorado College', N'6', 21)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (121, N'Colorado', N'8', N'Minnesota', N'9', 21)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (122, N'Colorado', N'9', N'Michigan State', N'8', 21)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (123, N'Colorado', N'5', N'Carleton College', N'6', 21)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (124, N'Colorado', N'9', N'Minnesota', N'10', 22)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (125, N'Colorado', N'11', N'Illinois', N'3', 22)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (126, N'Colorado', N'11', N'Iowa', N'7', 22)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (127, N'Colorado', N'11', N'Carleton College-GOP', N'2', 22)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (128, N'Colorado', N'13', N'Harding', N'6', 22)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (129, N'Colorado', N'13', N'Wisconsin-Whitewater', N'10', 22)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (130, N'Colorado', N'13', N'Carleton College', N'5', 22)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (131, N'Colorado', N'13', N'Wisconsin', N'6', 22)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (132, N'Colorado', N'13', N'North Carolina-Wilmington', N'6', 23)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (133, N'Colorado', N'13', N'Harvard', N'7', 23)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (134, N'Colorado', N'13', N'South Florida', N'3', 23)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (135, N'Colorado', N'13', N'Wisconsin', N'8', 23)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (136, N'Colorado', N'13', N'Cornell', N'8', 23)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (137, N'Colorado', N'13', N'Florida', N'5', 23)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (138, N'Colorado', N'11', N'Carleton College', N'13', 23)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (139, N'Colorado', N'10', N'Virginia', N'13', 23)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (140, N'Colorado', N'12', N'Carleton College', N'14', 23)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (141, N'Colorado', N'13', N'Florida', N'10', 23)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (142, N'Colorado', N'13', N'Washington', N'11', 24)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (143, N'Colorado', N'13', N'Whitman', N'4', 24)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (144, N'Colorado', N'13', N'California-Davis', N'7', 24)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (145, N'Colorado', N'13', N'Harvard', N'9', 24)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (146, N'Colorado', N'15', N'California-Santa Cruz', N'8', 24)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (147, N'Colorado', N'13', N'Pittsburgh', N'14', 24)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (148, N'Colorado', N'9', N'Carleton College', N'15', 26)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (149, N'Colorado', N'7', N'Michigan', N'13', 26)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (150, N'Colorado', N'15', N'Georgia', N'5', 26)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (151, N'Colorado', N'14', N'Wisconsin', N'13', 26)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (152, N'Colorado', N'11', N'Virginia', N'9', 26)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (153, N'Colorado', N'13', N'Pittsburgh', N'15', 26)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (154, N'Colorado', N'15', N'Oregon', N'8', 26)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (155, N'Colorado', N'7', N'Harvard', N'6', 26)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (156, N'Colorado', N'11', N'Denver', N'0', 28)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (157, N'Colorado', N'11', N'Wyoming', N'2', 28)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (158, N'Colorado', N'11', N'Colorado-B', N'0', 28)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (159, N'Colorado', N'11', N'Metro State College of Denver', N'0', 28)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (160, N'Colorado', N'11', N'Colorado State', N'0', 28)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (161, N'Colorado', N'13', N'Missouri State', N'2', 29)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (162, N'Colorado', N'13', N'Texas-B', N'1', 29)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (163, N'Colorado', N'13', N'North Texas', N'9', 29)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (164, N'Colorado', N'15', N'Texas', N'11', 29)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (165, N'Colorado', N'15', N'Texas State', N'0', 29)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (166, N'Colorado', N'15', N'Oklahoma', N'6', 29)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (167, N'Colorado', N'15', N'Colorado College', N'13', 29)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (168, N'Colorado', N'13', N'Stanford', N'9', 31)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (169, N'Colorado', N'15', N'Oregon', N'8', 31)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (170, N'Colorado', N'15', N'Virginia', N'9', 31)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (171, N'Colorado', N'8', N'Texas', N'15', 31)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (172, N'Colorado', N'12', N'Pittsburgh', N'7', 31)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (173, N'Colorado', N'10', N'Wisconsin', N'14', 31)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (174, N'Colorado', N'8', N'Winona State', N'10', 32)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (175, N'Colorado', N'L', N'Minnesota', N'W', 32)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (176, N'Colorado', N'L', N'Wisconsin-Y', N'W', 32)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (177, N'Colorado', N'10', N'Northwesetern', N'7', 32)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (178, N'Colorado', N'L', N'Iowa-X', N'W', 32)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (179, N'Colorado', N'W', N'Wisconsin-Whitewater', N'L', 32)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (180, N'Colorado', N'9', N'Minnesota', N'10', 33)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (181, N'Colorado', N'12', N'Iowa', N'8', 33)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (182, N'Colorado', N'13', N'Kansas', N'8', 33)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (183, N'Colorado', N'10', N'Carleton College', N'11', 33)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (184, N'Colorado', N'13', N'Luther', N'1', 33)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (185, N'Colorado', N'11', N'Wisconsin', N'10', 33)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (186, N'Colorado', N'9', N'Illinois', N'8', 33)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (187, N'Colorado', N'11', N'Minnesota', N'8', 33)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (188, N'Colorado', N'9', N'California-Davis', N'6', 35)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (189, N'Colorado', N'10', N'UCLA', N'8', 35)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (190, N'Colorado', N'11', N'Stanford', N'10', 35)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (191, N'Colorado', N'13', N'San Diego State', N'5', 35)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (192, N'Colorado', N'11', N'California-San Diego', N'10', 35)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (193, N'Colorado', N'11', N'California', N'10', 35)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (194, N'Colorado', N'13', N'Cornell', N'8', 36)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (195, N'Colorado', N'13', N'Virginia', N'6', 36)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (196, N'Colorado', N'13', N'Carleton College', N'12', 36)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (197, N'Colorado', N'10', N'Oregon', N'13', 37)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (198, N'Colorado', N'10', N'Florida', N'13', 37)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (199, N'Colorado', N'13', N'Stanford', N'5', 37)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (200, N'Colorado', N'13', N'Brown', N'8', 37)
GO
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (201, N'Colorado', N'13', N'Georgia', N'9', 37)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (202, N'Colorado', N'13', N'Pittsburgh', N'15', 37)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (203, N'Colorado', N'8', N'Carleton College', N'13', 37)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (205, N'Colorado', N'12', N'Texas State', N'11', 38)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (206, N'Colorado', N'12', N'Iowa', N'11', 38)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (207, N'Colorado', N'10', N'Michigan', N'11', 38)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (208, N'Colorado', N'9', N'Illinois', N'6', 38)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (209, N'Colorado', N'12', N'Harvard', N'11', 38)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (210, N'Colorado', N'12', N'Minnesota', N'9', 38)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (211, N'Colorado', N'8', N'Oregon', N'15', 38)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (212, N'Colorado', N'13', N'Colorado-B', N'3', 39)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (213, N'Colorado', N'13', N'Air Force', N'6', 39)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (214, N'Colorado', N'13', N'Colorado State', N'5', 39)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (215, N'Colorado', N'13', N'Denver', N'2', 39)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (216, N'Colorado', N'10', N'Colorado College', N'7', 39)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (217, N'Colorado', N'13', N'Wyoming', N'4', 39)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (218, N'Colorado', N'13', N'Air Force', N'2', 39)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (219, N'Colorado', N'15', N'Colorado State', N'3', 40)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (220, N'Colorado', N'15', N'California-Irvine', N'8', 40)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (221, N'Colorado', N'15', N'California-San Diego', N'11', 40)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (222, N'Colorado', N'15', N'California-Santa Barbara', N'5', 40)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (223, N'Colorado', N'13', N'Wisconsin', N'11', 41)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (224, N'Colorado', N'15', N'Texas State', N'11', 41)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (225, N'Colorado', N'9', N'Pittsburgh', N'15', 41)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (226, N'Colorado', N'13', N'Michigan', N'11', 41)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (227, N'Colorado', N'11', N'North Carolina-Wilmington', N'15', 41)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (228, N'Colorado', N'11', N'Middlebury', N'12', 41)
INSERT [dbo].[Game] ([Id], [Team1], [Score1], [Team2], [Score2], [TournamentId]) VALUES (229, N'Colorado', N'15', N'Harvard', N'10', 41)
SET IDENTITY_INSERT [dbo].[Game] OFF
SET IDENTITY_INSERT [dbo].[Person] ON 

INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (1, N'Pawel', N'Janas', N'5''10"', N'165', N'Zielona Gora, Poland', N'Boulder High School', N'Applied Math')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (2, N'Mark', N'Rauls', N'5''6"', N'135', N'Atlanta, Georgia', N'East High School', N'MCDB')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (3, N'Stanley', N'Peterson', N'6''1"', N'165', N'Gig Harbor, Washington', N'Charles Wright Academy', N'Economics')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (4, N'Oak', N'Nelson', N'6''0"', N'160', N'Boulder, Colorado', N'Boulder High School', N'Engineering Physics')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (5, N'Jesse', N'Fisher', N'6''0"', N'165', N'Lyons, Colorado', N'Lyons High School', N'Communication')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (6, N'Jeremy', N'Harker', N'6''2"', N'185', N'Salt Lake City, Utah', N'East High School', N'Environmental Studies')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (7, N'Dennison', N'Bechis', N'5''8"', N'150', N'Princeton, New Jersey', N'Pennsbury High School', N' Chemistry')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (8, N'Chris', N'Bubernak', N'6''1"', N'185', N'Superior, Colorado', N'Monarch High School', N'Computer Science')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (9, N'Joshua', N'Crane', N'6''0"', N'160', N'Montpelier, Vermont', N'Montpelier High School', N'Engineering')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (10, N'Peter', N'Gleason', N'6''1"', N'150', N'Westminster, Colorado', N'Broomfield High School', N'Engineering')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (11, N'J Wesley', N'Chow', N'5''10"', N'155', N'Amherst, Massachusetts', N'Amherst Regional High School', N'Mechanical Engineering')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (12, N'Tristan', N'Voss', N'6''0"', N'180', N'Broomfield, Colorado', N'Broomfield High School', N'Political Science/ Computer Science')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (13, N'Jack', N'Barrow', N'6''0"', N'170', N'Atlanta, Georgia', N'Paideia School', N'Biology')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (14, N'Todd', N'Wolma', N'6''1"', N'160', N'Littleton, Colorado', N'D''Evelyn High School', N'Civil Engineering')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (15, N'Matt', N'Bubernak', N'5''8"', N'165', N'Superior, Colorado', N'Monarch High School', N'Computer Science')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (16, N'Zach', N'Krieger', N'6''1"', N'170', N'Greeley, Colorado', N'Greeley Central High School', N'Math')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (17, N'Joey', N'Carrara', N'6''0"', N'170', N'Charlotte, Vermont', N'Vermont Commons ', NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (18, N'Andrew', N'Commander', N'6''1"', N'165', N'Superior, Colorado', N'Monarch High School', N'Environmental Science')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (19, N'Matt', N'Gleason', N'5''9"', N'160', N'Westminster, Colorado', N'Broomfield High School', N'Communication ')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (20, N'Jimmy', N'Mickle', N'6''3"', N'210', N'Golden, Colorado', N'Lakewood High School', N'Chemical and Biological Engineering')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (21, N'Tim', N'Morrissy', N'5''11"', N'170', N'South Orange, New Jersey', N'Columbia High School', N'Sociology')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (22, N'Phil', N'Sun', N'5''10"', N'180', N'Palo Alto, California', N'Gunn High School', N'International Affairs/ Asian Studies')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (23, N'Hidde', N'Snieder', N'6''1"', N'180', N'Golden, Colorado', N'Lakewood High School', N'Biology')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (24, N'Matt', N'Robinson', NULL, NULL, NULL, N'Cherry Creek High School', NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (25, N'Stu', N'Barnes', NULL, NULL, N'Seattle, Washington', NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (26, N'Noah', N'Baker', NULL, NULL, N'Seattle, Washington', NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (27, N'Zach', N'Zebarth', NULL, NULL, NULL, N'Lakewood High School', NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (28, N'Jackson', N'Kloor', NULL, NULL, N'Boulder, Colorado', N'Fairview High School', NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (29, N'Kevin', N'Johnson', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (30, N'Gabe', N'Stump', NULL, NULL, N'Littleton, Colorado', N'Heritage High School', NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (31, N'Brian', N'McDonald', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (32, N'James', N'Mitchell', N'6''2"', NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (33, N'John', N'Kearns', NULL, NULL, N'Boulder, Colorado', N'Boulder High School', NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (34, N'Zach', N'Nager', NULL, NULL, N'Boulder, Colorado', N'Boulder High School', NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (35, N'Max', N'Schein', N'5''10"', NULL, N'Athens, Georgia', NULL, N'Advertising')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (36, N'Austin', N'Killien', N'6''0"', NULL, N'Seattle, Washington', NULL, N'Civil Engineering')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (37, N'Li', N'Quan', N'5''5"', NULL, N'Beijing, China', N'Fairview High School', N'Finance')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (38, N'David', N'Fridland', N'5''10"', NULL, N'Boulder, Colorado', N'Fairview High School', N'Political Science')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (39, N'Jeffrey', N'Grundtisch', N'6''3"', NULL, N'Buffalo, New York', NULL, N'Aerospace Engineering')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (40, N'Wil', N'St. Charles', N'5''11"', NULL, N'Shoreview, Minnesota', NULL, N'Computer Science')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (41, N'Timmy', N'Beatty', N'6''0"', NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (42, N'Calvin', N'Delamere', N'6''0"', NULL, N'Boulder, Colorado', N'Boulder High School', N'Computer Science')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (43, N'Caleb', N'Denecour', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (44, N'Jon', N'Figueroa', N'5''10"', NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (45, N'Cody', N'Yeaman', N'5''10"', NULL, N'Littleton, Colorado', N'Heritage High School', NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (46, N'Marty', N'Freeman', N'6''2"', NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (47, N'Evan', N'Padget', N'5''11"', NULL, NULL, N'Columbia High School', NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (48, N'Matty', N'Zemel', N'5''9"', NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (49, N'Jack', N'McShane', N'6''0"', NULL, NULL, N'Broomfield High School', NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (50, N'David', N'Barnes', N'6''1"', NULL, NULL, N'Fairview High School', NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (51, N'Zander', N'Padget', N'6''0"', NULL, NULL, N'Columbia High School', NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (52, N'Dailey', N'Kluck', N'5''10"', NULL, N'Boulder, Colorado', N'Boulder High School', NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (53, N'Hylke', N'Snieder', N'6''5"', NULL, NULL, N'Lakewood High School', NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (54, N'Dan', N'Gruber', N'5''10"', NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (55, N'Jim', N'Schoettler', N'6''4"', N'190', N'Parker, Colorado', NULL, N'Chemistry')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (56, N'Brent', N'Zionic', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (57, N'Joe', N'Riedel', N'6''0"', NULL, NULL, N'Paideia School', NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (58, N'Campbell', N'Morrissy', N'6''0"', NULL, N'South Orange, New Jersey', N'Columbia High School', NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (59, N'James', N'Moses', N'5''10"', NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (60, N'Shea', N'Anderson', N'5''10"', NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (61, N'Andrew', N'Guinn', N'6''0"', NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (62, N'Max', N'Trotter', N'5''8"', N'140', N'Highland Park, Illinois', N'Highland Park High School', N'Psychology')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (10035, N'Harrison', N'Fast', N'6''1"', NULL, NULL, N'Cherry Creek High School', NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (10036, N'Brian', N'Holligan', N'6''2"', NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (10037, N'Craig', N'Manahan', N'5''8"', NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (10038, N'Kevin', N'Schipper', N'5''8"', NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (10039, N'Jared', N'Winegrad', N'6''3"', NULL, NULL, N'Cherry Creek High School', NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (10040, N'Brian', N'Clarkson', N'6''2"', NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (10041, N'Mac', N'Taylor', N'6''3"', NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (10042, N'Jonathan', N'White', N'6''3"', NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (10043, N'Ted', N'Philips', N'6''0"', NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (10044, N'Michael', N'Charrier', N'5''8"', NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (10045, N'Jacob', N'Coate', N'6''5"', NULL, N'Seattle, Washington', N'Nathan Hale High School', NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (10047, N'Catt', N'Wilson', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (10048, N'Daniel', N'West', N'6''3"', NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (10049, N'Matt', N'Rogers', N'6''0"', NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (10050, N'Brian', N'Ferguson', N'6''1"', NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (10051, N'Martin', N'Cochran', N'5''11"', NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (10052, N'Anthony', N'Duff', N'5''9"', NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (10053, N'Craig', N'Hogle', N'5''4"', NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (10054, N'Eli', N'Weber', N'5''8"', NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (10055, N'Chris', N'Wicus', N'6''3"', NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (10056, N'Jolian', N'Dahl', N'6''3"', NULL, NULL, N'Paideia School', NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (10057, N'Sage', N'Buckner', N'5''8"', NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (10058, N'Clark', N'Bishop', N'5''8"', NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (10059, N'Pat', N'Bevins', N'5''8"', NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (10060, N'John', N'Rudolph', N'5''8"', NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (10061, N'Michael', N'Davidson', N'5''10"', NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (10062, N'Justin', N'Salvia', N'5''3"', NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (10063, N'Beau', N'Kittridge', N'6''0"', NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (10064, N'Geoffrey', N'Mitchell', N'5''10"', NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (10065, N'Adam', N'Smith', N'5''2"', NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (10066, N'Andrew', N'Graham', N'5''8"', NULL, NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (10067, N'Tom', N'Higginbotham', N'5''11"', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Person] OFF
SET IDENTITY_INSERT [dbo].[Player] ON 

INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (1, 1, 1, N'Junior', 3, 8, 1)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (2, 2, 1, N'Sophomore', 2, 0, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (3, 3, 1, N'Junior', 3, 26, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (4, 4, 1, N'Sophomore', 2, 28, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (5, 5, 1, N'Junior', 3, 44, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (6, 6, 1, N'Sophomore', 2, 80, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (7, 7, 1, N'Graduate', 2, 15, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (8, 8, 2, N'Graduate', 3, 2, 1)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (9, 1, 2, N'Sophomore', 2, 8, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10, 3, 2, N'Sophomore', 2, 26, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (11, 5, 2, N'Sophomore', 2, 44, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (12, 6, 2, N'Freshman', 1, 80, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (13, 8, 3, N'Senior', 2, 2, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (14, 8, 4, N'Junior', 1, 2, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (15, 9, 1, N'Sophomore', 2, 11, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (16, 10, 1, N'Senior', 3, 9, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (17, 11, 1, N'Sophomore', 2, 21, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (18, 12, 1, N'Junior', 3, 17, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (19, 13, 1, N'5th Year', 5, 20, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (20, 14, 1, N'5th Year', 5, 35, 1)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (21, 15, 1, N'Junior', 3, 24, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (22, 16, 1, N'Junior', 1, 2, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (23, 17, 1, N'Sophomore', 1, 92, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (24, 18, 1, N'Junior', 3, 27, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (25, 19, 1, N'Junior', 3, 29, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (26, 20, 1, N'5th Year', 5, 23, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (27, 21, 1, N'5th Year', 5, 12, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (28, 22, 1, N'5th Year', 4, 18, 1)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (29, 23, 1, N'5th Year', 5, 7, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (30, 2, 2, N'Freshman', 1, 0, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (31, 24, 2, N'Sophomore', 2, 1, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (32, 23, 2, N'Senior', 4, 5, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (33, 25, 2, N'Senior', 4, 6, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (34, 26, 2, N'5th Year', 4, 7, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (35, 10, 2, N'Junior', 2, 9, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (36, 9, 2, N'Freshman', 1, 11, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (37, 21, 2, N'Senior', 4, 12, 1)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (38, 7, 2, N'Senior', 1, 15, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (39, 12, 2, N'Sophomore', 2, 17, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (40, 22, 2, N'Senior', 3, 18, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (41, 13, 2, N'Senior', 4, 20, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (42, 11, 2, N'Freshman', 1, 21, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (43, 27, 2, N'Senior', 2, 22, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (44, 20, 2, N'Senior', 4, 23, 1)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (45, 28, 2, N'5th Year', 5, 24, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (46, 18, 2, N'Sophomore', 2, 27, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (47, 4, 2, N'Freshman', 1, 28, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (48, 19, 2, N'Sophomore', 2, 29, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (49, 29, 2, N'Junior', 1, 32, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (50, 14, 2, N'Senior', 4, 35, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (51, 30, 2, N'5th Year', 3, 36, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (52, 15, 2, N'Sophomore', 2, 42, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (53, 31, 2, N'Graduate', 2, 45, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (54, 32, 2, N'5th Year', 5, 63, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (55, 33, 2, N'Graduate', 1, 77, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (56, 34, 2, N'Senior', 3, 83, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (57, 35, 3, N'Sophomore', 2, 0, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (58, 36, 3, N'Junior', 2, 4, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (59, 23, 3, N'Junior', 3, 5, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (60, 25, 3, N'Junior', 3, 6, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (61, 26, 3, N'Senior', 3, 7, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (62, 1, 3, N'Freshman', 1, 8, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (63, 10, 3, N'Sophomore', 1, 9, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (64, 37, 3, N'Senior', 1, 11, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (65, 21, 3, N'Junior', 3, 12, 1)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (66, 5, 3, N'Freshman', 1, 15, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (67, 12, 3, N'Freshman', 1, 17, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (68, 38, 3, N'Senior', 1, 18, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (69, 13, 3, N'Junior', 3, 20, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (70, 30, 3, N'Senior', 2, 21, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (71, 27, 3, N'Junior', 1, 22, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (72, 20, 3, N'Junior', 3, 23, 1)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (73, 28, 3, N'Senior', 4, 24, 1)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (74, 3, 3, N'Freshman', 1, 26, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (75, 18, 3, N'Freshman', 1, 27, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (76, 19, 3, N'Freshman', 1, 19, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (77, 29, 3, N'Sophomore', 1, 32, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (78, 14, 3, N'Junior', 3, 36, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (79, 22, 3, N'Junior', 2, 41, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (80, 15, 3, N'Freshman', 1, 42, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (81, 39, 3, N'Graduate', 1, 56, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (82, 32, 3, N'Senior', 4, 63, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (83, 34, 3, N'Junior', 2, 83, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (84, 24, 3, N'Freshman', 1, 84, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (85, 40, 3, N'Graduate', 1, 88, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (86, 41, 4, N'Graduate', 1, 22, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (87, 42, 4, N'5th Year', 2, 85, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (88, 43, 4, NULL, 1, 49, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (89, 44, 4, N'Graduate', 1, NULL, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (90, 36, 4, N'Sophomore', 1, 4, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (91, 31, 4, N'Graduate', 1, NULL, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (92, 34, 4, N'Sophomore', 1, 83, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (93, 30, 4, N'Junior', 1, 36, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (94, 45, 4, N'Junior', 2, 3, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (95, 46, 4, N'5th Year', 5, 5, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (96, 25, 4, N'Sophomore', 2, 6, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (97, 26, 4, N'Junior', 2, 7, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (98, 47, 4, N'5th Year', 5, 11, 1)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (99, 21, 4, N'Sophomore', 2, 12, NULL)
GO
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (100, 48, 4, N'Senior', 4, 13, 1)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (101, 23, 4, N'Sophomore', 2, 15, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (102, 49, 4, N'5th Year', 3, 17, 1)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (103, 50, 4, N'5th Year', 4, 20, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (104, 51, 4, N'Junior', 3, 21, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (105, 20, 4, N'Sophomore', 2, 23, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (106, 52, 4, N'Sophomore', 2, 25, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (107, 28, 4, N'Junior', 3, 28, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (108, 53, 4, N'Senior', 4, 30, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (109, 14, 4, N'Sophomore', 2, 35, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (110, 32, 4, N'Junior', 3, 63, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (111, 54, 4, N'Senior', 4, 99, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (112, 22, 4, N'Sophomore', 1, NULL, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (113, 35, 4, N'Freshman', 1, 0, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (114, 45, 5, N'Sophomore', 1, 3, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (115, 46, 5, N'Senior', 4, 5, 1)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (116, 25, 5, N'Freshman', 1, 6, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (117, 26, 5, N'Sophomore', 1, 7, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (118, 57, 5, N'Freshman', 1, 8, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (119, 47, 5, N'Senior', 4, 11, 1)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (120, 21, 5, N'Freshman', 1, 12, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (121, 48, 5, N'Junior', 3, 13, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (122, 58, 5, N'Senior', 2, 14, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (123, 23, 5, N'Freshman', 1, 15, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (124, 49, 5, N'Senior', 2, 17, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (125, 59, 5, N'Senior', 2, 19, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (126, 50, 5, N'Senior', 3, 20, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (127, 51, 5, N'Sophomore', 2, 21, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (128, 20, 5, N'Freshman', 1, 23, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (129, 52, 5, N'Freshman', 1, 25, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (130, 28, 5, N'Sophomore', 2, 28, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (131, 60, 5, N'Graduate', 1, 29, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (132, 53, 5, N'Junior', 3, 30, 1)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (133, 61, 5, N'Graduate', 1, 31, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (134, 14, 5, N'Freshman', 1, 35, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (135, 32, 5, N'Sophomore', 2, 36, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (136, 54, 5, N'Junior', 3, 99, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (137, 62, 1, N'Senior', 1, 10, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10057, 10035, 10005, N'Junior', 1, 4, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10058, 46, 10005, N'Junior', 3, 5, 1)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10059, 10036, 10005, N'Senior', 2, 6, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10060, 50, 10005, N'Junior', 2, 7, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10061, 10037, 10005, N'Senior', 1, 10, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10062, 47, 10005, N'Junior', 3, 11, 1)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10063, 48, 10005, N'Sophomore', 1, 13, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10064, 10038, 10005, N'5th Year', 3, 16, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10065, 49, 10005, N'Junior', 1, 17, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10066, 59, 10005, N'Junior', 1, 19, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10067, 51, 10005, N'Freshman', 1, 21, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10068, 10039, 10005, N'Sophomore', 1, 23, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10069, 10040, 10005, N'Senior', 4, 24, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10070, 28, 10005, N'Freshman', 1, 28, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10071, 53, 10005, N'Sophomore', 2, 30, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10072, 32, 10005, N'Freshman', 1, 36, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10073, 10041, 10005, N'5th Year', 5, 40, 1)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10074, 10042, 10005, N'Freshman', 1, 42, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10075, 10043, 10005, N'Senior', 3, 46, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10076, 10044, 10005, N'Senior', 4, 63, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10077, 10045, 10005, N'Freshman', 1, 65, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10078, 42, 10005, N'Junior', 1, 85, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10079, 54, 10005, N'Sophomore', 2, 99, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10080, 10048, 10006, N'Senior', 1, 0, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10081, 46, 10006, N'Sophomore', 2, 5, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10082, 10036, 10006, N'Junior', 1, 6, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10083, 50, 10006, N'Sophomore', 1, 7, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10084, 10049, 10006, N'Senior', 4, 9, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10085, 47, 10006, N'Sophomore', 2, 11, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10086, 10050, 10006, N'Freshman', 1, 15, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10087, 10038, 10006, N'Senior', 2, 16, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10088, 10051, 10006, N'Graduate', 4, 17, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10089, 10052, 10006, N'5th Year', 4, 21, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10090, 10040, 10006, N'Senior', 4, 24, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10091, 10053, 10006, N'Graduate', 1, 18, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10092, 10054, 10006, N'Senior', 1, 26, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10093, 53, 10006, N'Freshman', 1, 30, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10094, 10055, 10006, N'Graduate', 3, 34, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10095, 10041, 10006, N'Senior', 4, 40, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10096, 10043, 10006, N'Junior', 2, 46, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10097, 10056, 10006, N'5th Year', 5, 60, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10098, 10044, 10006, N'Junior', 3, 63, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10099, 10057, 10006, N'Junior', 1, 82, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10100, 54, 10006, N'Freshman', 1, 99, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10101, 10058, 10007, N'5th Year', 5, 3, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10102, 10049, 10007, N'Junior', 3, 9, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10103, 10059, 10007, N'Senior', 2, 11, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10104, 10043, 10007, N'Sophomore', 1, 12, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10105, 58, 10007, N'Sophomore', 1, 14, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10106, 10060, 10007, N'Freshman', 1, 14, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10107, 10061, 10007, N'5th Year', 5, 15, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10108, 10038, 10007, N'Junior', 1, 16, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10109, 10051, 10007, N'Graduate', 3, 17, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10110, 10052, 10007, N'Senior', 3, 21, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10111, 46, 10007, N'Freshman', 1, 22, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10112, 10040, 10007, N'Junior', 3, 24, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10113, 10062, 10007, N'5th Year', 5, 25, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10114, 47, 10007, N'Freshman', 1, 28, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10115, 10055, 10007, N'Senior', 2, 34, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10116, 10041, 10007, N'Junior', 3, 40, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10117, 10063, 10007, N'Senior', 4, 50, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10118, 10064, 10007, N'Junior', 1, 51, NULL)
GO
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10119, 10065, 10007, N'5th Year', 5, 53, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10120, 10066, 10007, N'Junior', 2, 55, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10121, 10056, 10007, N'Senior', 4, 60, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10122, 10044, 10007, N'Sophomore', 2, 63, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (10123, 10067, 10007, N'Sophomore', 1, 70, NULL)
SET IDENTITY_INSERT [dbo].[Player] OFF
SET IDENTITY_INSERT [dbo].[Team] ON 

INSERT [dbo].[Team] ([Id], [Year]) VALUES (1, 2014)
INSERT [dbo].[Team] ([Id], [Year]) VALUES (2, 2013)
INSERT [dbo].[Team] ([Id], [Year]) VALUES (3, 2012)
INSERT [dbo].[Team] ([Id], [Year]) VALUES (4, 2011)
INSERT [dbo].[Team] ([Id], [Year]) VALUES (5, 2010)
INSERT [dbo].[Team] ([Id], [Year]) VALUES (10005, 2009)
INSERT [dbo].[Team] ([Id], [Year]) VALUES (10006, 2008)
INSERT [dbo].[Team] ([Id], [Year]) VALUES (10007, 2007)
SET IDENTITY_INSERT [dbo].[Team] OFF
SET IDENTITY_INSERT [dbo].[Tournament] ON 

INSERT [dbo].[Tournament] ([Id], [Name], [Location], [Date], [TeamId], [Url]) VALUES (1, N'President''s Day Invite', N'San Diego, California', CAST(N'2013-02-17 00:00:00.000' AS DateTime), 2, N'http://scores.usaultimate.org/scores/#college-open/tournament/12375')
INSERT [dbo].[Tournament] ([Id], [Name], [Location], [Date], [TeamId], [Url]) VALUES (2, N'Stanford Invite', N'Stanford, California', CAST(N'2013-03-09 00:00:00.000' AS DateTime), 2, N'http://scores.usaultimate.org/scores/#college-open/tournament/12241')
INSERT [dbo].[Tournament] ([Id], [Name], [Location], [Date], [TeamId], [Url]) VALUES (3, N'Easterns', N'Wilmington, North Carolina', CAST(N'2013-03-22 00:00:00.000' AS DateTime), 2, N'http://scores.usaultimate.org/scores/#college-open/tournament/11970')
INSERT [dbo].[Tournament] ([Id], [Name], [Location], [Date], [TeamId], [Url]) VALUES (4, N'Rocky Mountain Conference Championships', N'Colorado Springs, Colorado', CAST(N'2013-04-13 00:00:00.000' AS DateTime), 2, N'http://scores.usaultimate.org/scores/#college-open/tournament/12625')
INSERT [dbo].[Tournament] ([Id], [Name], [Location], [Date], [TeamId], [Url]) VALUES (6, N'South Central Regionals', N'Kansas City, Missouri', CAST(N'2013-04-27 00:00:00.000' AS DateTime), 2, N'http://scores.usaultimate.org/scores/#college-open/tournament/12681')
INSERT [dbo].[Tournament] ([Id], [Name], [Location], [Date], [TeamId], [Url]) VALUES (7, N'College Championships', N'Madison, Wisconsin', CAST(N'2013-05-24 00:00:00.000' AS DateTime), 2, N'http://scores.usaultimate.org/scores/#college-open/tournament/12686')
INSERT [dbo].[Tournament] ([Id], [Name], [Location], [Date], [TeamId], [Url]) VALUES (8, N'Missouri Loves Company', N'Columbia, Missouri', CAST(N'2012-11-10 00:00:00.000' AS DateTime), 2, N'http://scores.usaultimate.org/scores2012/#college-open/tournament/11657')
INSERT [dbo].[Tournament] ([Id], [Name], [Location], [Date], [TeamId], [Url]) VALUES (9, N'Missouri Loves Company', N'Columbia, Missouri', CAST(N'2013-11-09 00:00:00.000' AS DateTime), 1, N'http://scores.usaultimate.org/scores/#college-open/tournament/14017')
INSERT [dbo].[Tournament] ([Id], [Name], [Location], [Date], [TeamId], [Url]) VALUES (10, N'President''s Day Invite', N'San Diego, California', CAST(N'2014-02-15 00:00:00.000' AS DateTime), 1, N'http://scorereport.net/2014/college-open/event14350')
INSERT [dbo].[Tournament] ([Id], [Name], [Location], [Date], [TeamId], [Url]) VALUES (11, N'Stanford Invite', N'Stevinson, California', CAST(N'2014-03-01 00:00:00.000' AS DateTime), 1, N'http://scorereport.net/2014/college-open/event14098')
INSERT [dbo].[Tournament] ([Id], [Name], [Location], [Date], [TeamId], [Url]) VALUES (13, N'Centex Invite', N'Austin, Texas', CAST(N'2014-03-15 00:00:00.000' AS DateTime), 1, N'http://scorereport.net/2014/college-open/event14528')
INSERT [dbo].[Tournament] ([Id], [Name], [Location], [Date], [TeamId], [Url]) VALUES (14, N'President''s Day Classic', N'San Diego, California', CAST(N'2012-02-18 00:00:00.000' AS DateTime), 3, N'http://scores.usaultimate.org/scores2012/#college-open/tournament/10627')
INSERT [dbo].[Tournament] ([Id], [Name], [Location], [Date], [TeamId], [Url]) VALUES (15, N'Stanford Invite', N'Stanford, California', CAST(N'2012-03-03 00:00:00.000' AS DateTime), 3, N'http://scores.usaultimate.org/scores2012/#college-open/tournament/10270')
INSERT [dbo].[Tournament] ([Id], [Name], [Location], [Date], [TeamId], [Url]) VALUES (16, N'Centex', N'Austin, Texas', CAST(N'2012-03-17 00:00:00.000' AS DateTime), 3, N'http://scores.usaultimate.org/scores2012/#college-open/tournament/10821')
INSERT [dbo].[Tournament] ([Id], [Name], [Location], [Date], [TeamId], [Url]) VALUES (17, N'Rocky Mountain Conference Championships', N'Greeley, Colorado', CAST(N'2012-04-14 00:00:00.000' AS DateTime), 3, N'http://scores.usaultimate.org/scores2012/#college-open/tournament/10688')
INSERT [dbo].[Tournament] ([Id], [Name], [Location], [Date], [TeamId], [Url]) VALUES (19, N'South Central Regionals', N'Austin, Texas', CAST(N'2012-05-05 00:00:00.000' AS DateTime), 3, N'http://scores.usaultimate.org/scores2012/#college-open/tournament/10714')
INSERT [dbo].[Tournament] ([Id], [Name], [Location], [Date], [TeamId], [Url]) VALUES (20, N'College Championships', N'Boulder, Colorado', CAST(N'2012-05-25 00:00:00.000' AS DateTime), 3, N'http://scores.usaultimate.org/scores2012/#college-open/tournament/10717')
INSERT [dbo].[Tournament] ([Id], [Name], [Location], [Date], [TeamId], [Url]) VALUES (21, N'Missouri Loves Company', N'Columbia, Missouri', CAST(N'2011-09-12 00:00:00.000' AS DateTime), 3, N'http://scores.usaultimate.org/scores2011/#college-open/team/1202')
INSERT [dbo].[Tournament] ([Id], [Name], [Location], [Date], [TeamId], [Url]) VALUES (22, N'Missouri Loves Company', N'Columbia, Missouri', CAST(N'2010-09-13 00:00:00.000' AS DateTime), 4, N'http://scores.usaultimate.org/scores2010/#college-open/tournament/7859')
INSERT [dbo].[Tournament] ([Id], [Name], [Location], [Date], [TeamId], [Url]) VALUES (23, N'Warm Up: A Florida Affair', N'Tampa, Florida', CAST(N'2011-02-11 00:00:00.000' AS DateTime), 4, N'http://scores.usaultimate.org/scores2011/#college-open/tournament/8522')
INSERT [dbo].[Tournament] ([Id], [Name], [Location], [Date], [TeamId], [Url]) VALUES (24, N'Stanford Invite', N'Stanford, California', CAST(N'2011-03-05 00:00:00.000' AS DateTime), 4, N'http://scores.usaultimate.org/scores2011/#college-open/tournament/8338')
INSERT [dbo].[Tournament] ([Id], [Name], [Location], [Date], [TeamId], [Url]) VALUES (26, N'Easterns', N'Wilmington, North Carolina', CAST(N'2011-03-18 00:00:00.000' AS DateTime), 4, N'http://scores.usaultimate.org/scores2011/#college-open/tournament/8265')
INSERT [dbo].[Tournament] ([Id], [Name], [Location], [Date], [TeamId], [Url]) VALUES (28, N'Rocky Mountain Conference Championships', N'Fort Collins, Colorado', CAST(N'2011-04-23 00:00:00.000' AS DateTime), 4, N'http://scores.usaultimate.org/scores2011/#college-open/tournament/8617')
INSERT [dbo].[Tournament] ([Id], [Name], [Location], [Date], [TeamId], [Url]) VALUES (29, N'South Central Regionals', N'Denver, Colorado', CAST(N'2011-05-07 00:00:00.000' AS DateTime), 4, N'http://scores.usaultimate.org/scores2011/#college-open/tournament/8670')
INSERT [dbo].[Tournament] ([Id], [Name], [Location], [Date], [TeamId], [Url]) VALUES (31, N'College Championships', N'Boulder, Colorado', CAST(N'2011-05-27 00:00:00.000' AS DateTime), 4, N'http://scores.usaultimate.org/scores2011/#college-open/tournament/8928')
INSERT [dbo].[Tournament] ([Id], [Name], [Location], [Date], [TeamId], [Url]) VALUES (32, N'No Wisconsequences', N'Milwaukee, Wisconsin', CAST(N'2009-10-17 00:00:00.000' AS DateTime), 5, N'http://ultimate.scorereport.net/2009/tourn.cgi?div=18&id=6937')
INSERT [dbo].[Tournament] ([Id], [Name], [Location], [Date], [TeamId], [Url]) VALUES (33, N'Border Brawl', N'Kansas City, Missouri', CAST(N'2009-11-07 00:00:00.000' AS DateTime), 5, N'http://ultimate.scorereport.net/2009/tourn.cgi?div=18&id=6869')
INSERT [dbo].[Tournament] ([Id], [Name], [Location], [Date], [TeamId], [Url]) VALUES (35, N'Santa Barbara Invite', N'Santa Barbara, California', CAST(N'2010-01-23 00:00:00.000' AS DateTime), 5, N'http://scores.usaultimate.org/scores2010/#college-open/tournament/6666')
INSERT [dbo].[Tournament] ([Id], [Name], [Location], [Date], [TeamId], [Url]) VALUES (36, N'Trouble in Vegas', N'Las Vegas, Nevada', CAST(N'2010-02-05 00:00:00.000' AS DateTime), 5, N'http://scores.usaultimate.org/scores2010/#college-open/tournament/6670')
INSERT [dbo].[Tournament] ([Id], [Name], [Location], [Date], [TeamId], [Url]) VALUES (37, N'Stanford Invite', N'Stevinson, California', CAST(N'2010-03-06 00:00:00.000' AS DateTime), 5, N'http://scores.usaultimate.org/scores2010/#college-open/tournament/6687')
INSERT [dbo].[Tournament] ([Id], [Name], [Location], [Date], [TeamId], [Url]) VALUES (38, N'Centex', N'Austin, Texas', CAST(N'2010-03-20 00:00:00.000' AS DateTime), 5, N'http://scores.usaultimate.org/scores2010/#college-open/tournament/7064')
INSERT [dbo].[Tournament] ([Id], [Name], [Location], [Date], [TeamId], [Url]) VALUES (39, N'Colorado Sectionals', N'Boulder, Colorado', CAST(N'2010-04-17 00:00:00.000' AS DateTime), 5, N'http://scores.usaultimate.org/scores2010/#college-open/tournament/6570')
INSERT [dbo].[Tournament] ([Id], [Name], [Location], [Date], [TeamId], [Url]) VALUES (40, N'Southwest Regionals', N'Fort Collins, Colorado', CAST(N'2010-05-08 00:00:00.000' AS DateTime), 5, N'http://scores.usaultimate.org/scores2010/#college-open/tournament/6599')
INSERT [dbo].[Tournament] ([Id], [Name], [Location], [Date], [TeamId], [Url]) VALUES (41, N'College Championships', N'Madison, Wisconsin', CAST(N'2010-05-28 00:00:00.000' AS DateTime), 5, N'http://scores.usaultimate.org/scores2010/#college-open/tournament/6600')
SET IDENTITY_INSERT [dbo].[Tournament] OFF
/****** Object:  StoredProcedure [dbo].[Get_Coach]    Script Date: 4/26/2014 11:15:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_Coach]
	@Id [bigint]
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT
		PE.Id AS Id,
		(PE.FirstName + ' ' + PE.LastName) AS Name,
		PE.Major,
		PE.Height,
		PE.Weight,
		PE.HighSchool,
		PE.Hometown,
		T.Year AS Team
	FROM 
	Person AS PE
	JOIN Coach AS C ON C.PersonId = PE.Id
	JOIN Team AS T ON T.Id = C.TeamId
	WHERE PE.Id = @Id
	ORDER BY T.Year DESC
END

GO
/****** Object:  StoredProcedure [dbo].[Get_Coaches]    Script Date: 4/26/2014 11:15:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_Coaches]
	@Year [nvarchar](8)
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT
		PE.Id AS Id,
		(PE.FirstName + ' ' + PE.LastName) AS Name,
		PE.Major,
		PE.Height,
		PE.Weight,
		PE.HighSchool,
		PE.Hometown  
	FROM 
	Team AS T 
	JOIN Coach AS C ON T.Id = C.TeamId
	JOIN Person AS PE ON PE.Id = C.PersonId
	WHERE T.Year = @Year
END

GO
/****** Object:  StoredProcedure [dbo].[Get_Person]    Script Date: 4/26/2014 11:15:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_Person]
	@Id [bigint]
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT
		PE.Id AS Id,
		P.Number, 
		(PE.FirstName + ' ' + PE.LastName) AS Name,
		P.Year,
		P.Experience,
		p.Captain,
		PE.Major,
		PE.Height,
		PE.Weight,
		PE.HighSchool,
		PE.Hometown,
		T.Year AS Team
	FROM 
	Person AS PE
	JOIN Player AS P ON P.PersonId = PE.Id
	JOIN Team AS T ON T.Id = P.TeamId
	WHERE PE.Id = @Id
	ORDER BY T.Year DESC
END

GO
/****** Object:  StoredProcedure [dbo].[Get_Players]    Script Date: 4/26/2014 11:15:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_Players]
	@Year [nvarchar](8)
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT
		PE.Id AS Id,
		P.Number, 
		(PE.FirstName + ' ' + PE.LastName) AS Name,
		P.Year,
		P.Experience,
		p.Captain,
		PE.Major,
		PE.Height,
		PE.Weight,
		PE.HighSchool,
		PE.Hometown  
	FROM 
	Team AS T 
	JOIN Player AS P ON P.TeamId = T.Id
	JOIN Person AS PE ON PE.Id = P.PersonId 
	WHERE T.Year = @Year
	ORDER BY P.Number
END

GO
/****** Object:  StoredProcedure [dbo].[Get_Teams]    Script Date: 4/26/2014 11:15:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_Teams]
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT Id, Year FROM Team
END

GO
/****** Object:  StoredProcedure [dbo].[Get_Tournaments]    Script Date: 4/26/2014 11:15:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_Tournaments]
	@Year [nvarchar](8)
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT
		TE.Year,
		T.Id AS 'TournamentId',
		T.Name AS 'TournamentName',
		T.Location,
		T.Date,
		T.Url,
		G.Team1,
		G.Team2,
		G.Score1,
		G.Score2
	FROM TEAM AS TE
		JOIN Tournament AS T ON TE.Id = T.TeamId
		JOIN Game AS G ON T.Id = G.TournamentId
	WHERE TE.Year = @Year
	ORDER BY Date
END

GO
