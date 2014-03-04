/****** Object:  Table [dbo].[Person]    Script Date: 3/3/2014 9:25:50 AM ******/
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
/****** Object:  Table [dbo].[Player]    Script Date: 3/3/2014 9:25:50 AM ******/
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
/****** Object:  Table [dbo].[Team]    Script Date: 3/3/2014 9:25:50 AM ******/
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
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (21, N'Tim', N'Morrissy', N'5''11"', N'170', N'South Orange, New Jersey', N'Columbia High School', N'Dance')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (22, N'Phil', N'Sun', N'5''10"', N'180', N'Palo Alto, California', N'Gunn High School', N'International Affairs/ Asian Studies')
INSERT [dbo].[Person] ([Id], [FirstName], [LastName], [Height], [Weight], [Hometown], [HighSchool], [Major]) VALUES (23, N'Hidde', N'Snieder', N'6''1"', N'180', N'Golden, Colorado', N'Lakewood High School', N'Biology')
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
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (23, 17, 1, N'Sophomore', 1, NULL, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (24, 18, 1, N'Junior', 3, 27, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (25, 19, 1, N'Junior', 3, 29, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (26, 20, 1, N'5th Year', 5, 23, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (27, 21, 1, N'5th Year', 5, 12, NULL)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (28, 22, 1, N'5th Year', 4, 18, 1)
INSERT [dbo].[Player] ([Id], [PersonId], [TeamId], [Year], [Experience], [Number], [Captain]) VALUES (29, 23, 1, N'5th Year', 5, 7, NULL)
SET IDENTITY_INSERT [dbo].[Player] OFF
SET IDENTITY_INSERT [dbo].[Team] ON 

INSERT [dbo].[Team] ([Id], [Year]) VALUES (1, 2014)
INSERT [dbo].[Team] ([Id], [Year]) VALUES (2, 2013)
INSERT [dbo].[Team] ([Id], [Year]) VALUES (3, 2012)
INSERT [dbo].[Team] ([Id], [Year]) VALUES (4, 2011)
SET IDENTITY_INSERT [dbo].[Team] OFF
/****** Object:  StoredProcedure [dbo].[Get_Players]    Script Date: 3/3/2014 9:25:50 AM ******/
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
/****** Object:  StoredProcedure [dbo].[Get_Teams]    Script Date: 3/3/2014 9:25:50 AM ******/
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

    SELECT Year FROM Team
END

GO
