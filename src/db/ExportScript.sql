USE [db_hailey]
GO
/****** Object:  Table [dbo].[BLOODGROUP]    Script Date: 07/10/2021 17:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BLOODGROUP](
	[ID] [numeric](18, 0) NOT NULL,
	[DESCRIPTION] [varchar](150) NULL,
	[Alias] [varchar](6) NULL,
	[isDefault] [bit] NOT NULL,
	[isActive] [bit] NOT NULL,
	[Created] [datetime] NULL,
	[Updated] [datetime] NULL,
 CONSTRAINT [PK_BLOODGROUP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CITY]    Script Date: 07/10/2021 17:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CITY](
	[CITYID] [numeric](18, 0) NOT NULL,
	[COUNTRYID] [numeric](18, 0) NULL,
	[DESCRIPTION] [varchar](250) NULL,
	[Alias] [varchar](50) NULL,
	[PROVINCE] [varchar](150) NULL,
	[DailCode] [varchar](50) NULL,
	[isDefault] [bit] NOT NULL,
	[Created] [datetime] NULL,
	[Updated] [datetime] NULL,
 CONSTRAINT [PK_CITY] PRIMARY KEY CLUSTERED 
(
	[CITYID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COUNTRY]    Script Date: 07/10/2021 17:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COUNTRY](
	[COUNTRYID] [numeric](18, 0) NOT NULL,
	[CURRENCYID] [numeric](18, 0) NULL,
	[DESCRIPTION] [varchar](150) NULL,
	[Alias] [varchar](6) NULL,
	[CAPITAL] [varchar](150) NULL,
	[DailCode] [varchar](6) NULL,
	[isDefault] [bit] NOT NULL,
	[Created] [datetime] NULL,
	[Updated] [datetime] NULL,
 CONSTRAINT [PK_COUNTRY] PRIMARY KEY CLUSTERED 
(
	[COUNTRYID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CURRENCY]    Script Date: 07/10/2021 17:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CURRENCY](
	[CURRENCYID] [numeric](18, 0) NOT NULL,
	[DESCRIPTION] [varchar](150) NULL,
	[Alias] [varchar](6) NULL,
	[Symbol] [varchar](6) NULL,
	[isDefault] [bit] NOT NULL,
	[Created] [datetime] NULL,
	[Updated] [datetime] NULL,
 CONSTRAINT [PK_CURRENCY] PRIMARY KEY CLUSTERED 
(
	[CURRENCYID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEGREE]    Script Date: 07/10/2021 17:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEGREE](
	[ID] [numeric](18, 0) NOT NULL,
	[QUALIFICATIONID] [numeric](18, 0) NOT NULL,
	[DESCRIPTION] [varchar](150) NULL,
	[Alias] [varchar](20) NULL,
	[isDefault] [bit] NOT NULL,
	[isActive] [bit] NOT NULL,
	[Created] [datetime] NULL,
	[Updated] [datetime] NULL,
 CONSTRAINT [PK_DEGREE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUALevels]    Script Date: 07/10/2021 17:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUALevels](
	[ID] [numeric](18, 0) NOT NULL,
	[DESCRIPTION] [varchar](150) NULL,
	[DESCR] [varchar](500) NULL,
	[DESCRDegree] [varchar](1000) NULL,
	[Alias] [varchar](20) NULL,
	[Level] [numeric](5, 0) NULL,
	[isDefault] [bit] NOT NULL,
	[isActive] [bit] NOT NULL,
	[Created] [datetime] NULL,
	[Updated] [datetime] NULL,
 CONSTRAINT [PK_QUALevels] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUALIFICATION]    Script Date: 07/10/2021 17:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUALIFICATION](
	[ID] [numeric](18, 0) NOT NULL,
	[DESCRIPTION] [varchar](150) NULL,
	[Alias] [varchar](20) NULL,
	[isDefault] [bit] NOT NULL,
	[isActive] [bit] NOT NULL,
	[Created] [datetime] NULL,
	[Updated] [datetime] NULL,
	[QUALevelsID] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_QUALIFICATION] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RELATIONTYPE]    Script Date: 07/10/2021 17:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RELATIONTYPE](
	[ID] [numeric](18, 0) NOT NULL,
	[DESCRIPTION] [varchar](150) NULL,
	[Alias] [varchar](6) NULL,
	[isDefault] [bit] NOT NULL,
	[isActive] [bit] NOT NULL,
	[Created] [datetime] NULL,
	[Updated] [datetime] NULL,
 CONSTRAINT [PK_RELATIONTYPE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RELIGION]    Script Date: 07/10/2021 17:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RELIGION](
	[ID] [numeric](18, 0) IDENTITY(100000,1) NOT NULL,
	[DESCRIPTION] [varchar](150) NULL,
	[isDefault] [bit] NULL,
	[isActive] [bit] NULL,
	[Created] [datetime] NULL,
	[Alias] [varchar](6) NULL,
	[Updated] [datetime] NULL,
 CONSTRAINT [PK_RELIGION] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BLOODGROUP] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000001 AS Numeric(18, 0)), N'A-ve', N'A -', 1, 1, CAST(N'2018-03-06T00:48:33.297' AS DateTime), CAST(N'2018-03-06T00:48:33.297' AS DateTime))
GO
INSERT [dbo].[BLOODGROUP] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000002 AS Numeric(18, 0)), N'A+ve', N'A +', 1, 1, CAST(N'2018-03-06T00:48:33.297' AS DateTime), CAST(N'2018-03-06T00:48:33.297' AS DateTime))
GO
INSERT [dbo].[BLOODGROUP] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000003 AS Numeric(18, 0)), N'AB-ve', N'AB -', 1, 1, CAST(N'2018-03-06T00:48:33.297' AS DateTime), CAST(N'2018-03-06T00:48:33.297' AS DateTime))
GO
INSERT [dbo].[BLOODGROUP] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000004 AS Numeric(18, 0)), N'AB+ve', N'AB +', 1, 1, CAST(N'2018-03-06T00:48:33.297' AS DateTime), CAST(N'2018-03-06T00:48:33.297' AS DateTime))
GO
INSERT [dbo].[BLOODGROUP] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000005 AS Numeric(18, 0)), N'B-ve', N'B -', 1, 1, CAST(N'2018-03-06T00:48:33.297' AS DateTime), CAST(N'2018-03-06T00:48:33.297' AS DateTime))
GO
INSERT [dbo].[BLOODGROUP] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000006 AS Numeric(18, 0)), N'B+ve', N'B +', 1, 1, CAST(N'2018-03-06T00:48:33.297' AS DateTime), CAST(N'2018-03-06T00:48:33.297' AS DateTime))
GO
INSERT [dbo].[BLOODGROUP] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000007 AS Numeric(18, 0)), N'O-ve', N'O -', 1, 1, CAST(N'2018-03-06T00:48:33.297' AS DateTime), CAST(N'2018-03-06T00:48:33.297' AS DateTime))
GO
INSERT [dbo].[BLOODGROUP] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000008 AS Numeric(18, 0)), N'O+ve', N'O +', 1, 1, CAST(N'2018-03-06T00:48:33.297' AS DateTime), CAST(N'2018-03-06T00:48:33.297' AS DateTime))
GO
INSERT [dbo].[BLOODGROUP] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000009 AS Numeric(18, 0)), N'NA', N'NA', 1, 1, CAST(N'2020-10-07T15:25:00.000' AS DateTime), CAST(N'2020-10-07T15:25:00.000' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000001 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Abbottabad', N'KPK', N'Khyber Pakhtunkhwa', N'992', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000002 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Adezai', N'KPK', N'Khyber Pakhtunkhwa', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000003 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Ahmad Nagar', N'PU', N'Punjab', N'4340', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000004 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Ahmed Pur East', N'PU', N'Punjab', N'698', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000005 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Ali Bandar', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000006 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Ali Pur', N'PU', N'Punjab', N'6511', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000007 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Amir Chah', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000008 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Arifwala', N'PU', N'Punjab', N'446', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000009 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Astor', N'GB', N'Gilgit Baltistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000010 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Attock', N'PU', N'Punjab', N'57', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000011 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Ayubia', N'KPK', N'Khyber Pakhtunkhwa', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000012 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Badin', N'Sindh', N'Sindh', N'297', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000013 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Bagh', N'AJK', N'Azad Kashmir', N'599', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000014 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Bagh', N'Balochistan', N'Balochistan', N'599', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000015 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Bahawalnagar', N'PU', N'Punjab', N'63', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000016 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Bahawalpur', N'PU', N'Punjab', N'62', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000017 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Bajaur', N'FATA', N'Federally Administered Tribal Areas', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000018 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Banda Daud Shah', N'KPK', N'Khyber Pakhtunkhwa', N'0522-922', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000019 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Bannu', N'KPK', N'Khyber Pakhtunkhwa', N'928', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000020 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Baramula', N'GB', N'Gilgit Baltistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000021 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Basti Malook', N'PU', N'Punjab', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000022 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Batgram', N'KPK', N'Khyber Pakhtunkhwa', N'0598-0986', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000023 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Bazdar', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000024 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Bela', N'Balochistan', N'Balochistan', N'8288', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000025 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Bellpat', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000026 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Bhagalchur', N'PU', N'Punjab', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000027 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Bhai Pheru', N'PU', N'Punjab', N'4943', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000028 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Bhakkar', N'PU', N'Punjab', N'453', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000029 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Bhalwal', N'PU', N'Punjab', N'455', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000030 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Bhimber', N'AJK', N'Azad Kashmir', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000031 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Birote', N'KPK', N'Khyber Pakhtunkhwa', N'593', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000032 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Buner', N'KPK', N'Khyber Pakhtunkhwa', N'939', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000033 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Burewala', N'PU', N'Punjab', N'447', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000034 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Burj', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000035 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Chachro', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000036 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Chagai', N'Balochistan', N'Balochistan', N'825', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000037 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Chah Sandan', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000038 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Chailianwala', N'PU', N'Punjab', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000039 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Chakdara', N'KPK', N'Khyber Pakhtunkhwa', N'0536-0936', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000040 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Chakku', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000041 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Chakwal', N'PU', N'Punjab', N'543', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000042 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Chaman', N'Balochistan', N'Balochistan', N'826', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000043 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Charsadda', N'KPK', N'Khyber Pakhtunkhwa', N'0525-0921', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000044 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Chhatr', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000045 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Chichawatni', N'PU', N'Punjab', N'445', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000046 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Chiniot', N'PU', N'Punjab', N'466', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000047 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Chitral', N'KPK', N'Khyber Pakhtunkhwa', N'943', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000048 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Chowk Azam', N'PU', N'Punjab', N'6519', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000049 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Chowk Sarwar Shaheed', N'PU', N'Punjab', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000050 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Dadu', N'Sindh', N'Sindh', N'25', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000051 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Dalbandin', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000052 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Dargai', N'KPK', N'Khyber Pakhtunkhwa', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000053 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Darya Khan', N'KPK', N'Khyber Pakhtunkhwa', N'4654', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000054 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Darya Khan', N'PU', N'Punjab', N'4654', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000055 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Daska', N'PU', N'Punjab', N'4341', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000056 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Dera Bugti', N'Balochistan', N'Balochistan', N'835', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000057 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Dera Ghazi Khan', N'PU', N'Punjab', N'64', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000058 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Dera Ismail Khan', N'KPK', N'Khyber Pakhtunkhwa', N'966', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000059 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Derawar Fort', N'PU', N'Punjab', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000060 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Dhana Sar', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000061 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Dhaular', N'PU', N'Punjab', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000062 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Digri', N'Sindh', N'Sindh', N'23221', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000063 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Dina City', N'PU', N'Punjab', N'541', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000064 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Dinga', N'PU', N'Punjab', N'43317', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000065 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Dipalpur', N'PU', N'Punjab', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000066 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Diplo', N'Sindh', N'Sindh', N'2341', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000067 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Diwana', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000068 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Dokri', N'Sindh', N'Sindh', N'7443', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000069 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Drasan', N'KPK', N'Khyber Pakhtunkhwa', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000070 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Drosh', N'KPK', N'Khyber Pakhtunkhwa', N'05333-09333', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000071 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Duki', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000072 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Dushi', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000073 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Duzab', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000074 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Faisalabad', N'PU', N'Punjab', N'41', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000075 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Fateh Jang', N'PU', N'Punjab', N'5775', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000076 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Gadar', N'PU', N'Punjab', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000077 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Gadra', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000078 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Gajar', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000079 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Gandava', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000080 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Garhi Khairo', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000081 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Garruck', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000082 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Ghakhar Mandi', N'PU', N'Punjab', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000083 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Ghanian', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000084 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Ghauspur', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000085 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Ghazluna', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000086 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Ghotki', N'Sindh', N'Sindh', N'723', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000087 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Gilgit', N'GB', N'Gilgit Baltistan', N'572', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000088 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Girdan', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000089 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Gujar Khan', N'PU', N'Punjab', N'571', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000090 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Gujranwala', N'PU', N'Punjab', N'55', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000091 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Gujrat', N'PU', N'Punjab', N'53', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000092 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Gulistan', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000093 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Gawadar', N'Balochistan', N'Balochistan', N'86', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000094 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Gwash', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000095 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Hab Chauki', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000096 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Hafizabad', N'PU', N'Punjab', N'547', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000097 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Hala', N'Sindh', N'Sindh', N'228', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000098 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Hameedabad', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000099 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Hangu', N'FATA', N'Federally Administered Tribal Areas', N'925', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000100 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Hangu', N'KPK', N'Khyber Pakhtunkhwa', N'925', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000101 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Haripur', N'KPK', N'Khyber Pakhtunkhwa', N'995', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000102 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Harnai', N'Balochistan', N'Balochistan', N'834', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000103 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Haroon Abad', N'PU', N'Punjab', N'691', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000104 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Hasil Pur', N'PU', N'Punjab', N'696', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000105 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Haveli Lakha', N'PU', N'Punjab', N'4442', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000106 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Hinglaj', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000107 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Hoshab', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000108 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Hunza', N'GB', N'Gilgit Baltistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000109 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Hyderabad', N'Sindh', N'Sindh', N'22', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000110 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Islamkot', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000111 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Ispikan', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000112 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Jacobabad', N'Sindh', N'Sindh', N'772', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000113 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Jahania', N'PU', N'Punjab', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000114 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Jalla Araain', N'PU', N'Punjab', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000115 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Jamesabad', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000116 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Jampur', N'PU', N'Punjab', N'6419', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000117 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Jamshoro', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000118 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Janghar', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000119 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Jati (Mughalbhin)', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000120 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Jauharabad', N'PU', N'Punjab', N'451', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000121 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Jhal', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000122 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Jhal Jhao', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000123 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Jhang', N'PU', N'Punjab', N'47', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000124 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Jhatpat', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000125 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Jhelum', N'PU', N'Punjab', N'544', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000126 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Jhudo', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000127 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Jiwani', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000128 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Jungshahi', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000129 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Kalabagh', N'PU', N'Punjab', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000130 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Kalam', N'KPK', N'Khyber Pakhtunkhwa', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000131 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Kalandi', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000132 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Kalat', N'Balochistan', N'Balochistan', N'844', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000133 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Kamalia', N'PU', N'Punjab', N'463', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000134 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Kamararod', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000135 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Kamokey', N'PU', N'Punjab', N'435', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000136 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Kanak', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000137 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Kandi', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000138 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Kandiaro', N'Sindh', N'Sindh', N'7093', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000139 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Kanpur', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000140 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Kapip', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000141 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Kappar', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000142 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Karachi', N'Sindh', N'Sindh', N'21', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000143 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Karak', N'KPK', N'Khyber Pakhtunkhwa', N'927', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000144 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Karodi', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000145 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Karor Lal Esan', N'PU', N'Punjab', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000146 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Kashmor', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000147 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Kasur', N'PU', N'Punjab', N'49', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000148 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Katuri', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000149 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Keti Bandar', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000150 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Khairpur', N'Sindh', N'Sindh', N'243', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000151 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Khanaspur', N'KPK', N'Khyber Pakhtunkhwa', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000152 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Khanewal', N'PU', N'Punjab', N'65', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000153 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Khanpur', N'PU', N'Punjab', N'707', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000154 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Kharan', N'Balochistan', N'Balochistan', N'847', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000155 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Kharian', N'PU', N'Punjab', N'5771', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000156 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Khokhropur', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000157 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Khora', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000158 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Khuiratta', N'AJK', N'Azad Kashmir', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000159 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Khushab', N'PU', N'Punjab', N'454', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000160 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Khuzdar', N'Balochistan', N'Balochistan', N'848', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000161 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Khyber', N'FATA', N'Federally Administered Tribal Areas', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000162 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Kikki', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000163 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Klupro', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000164 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Kohan', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000165 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Kohat', N'KPK', N'Khyber Pakhtunkhwa', N'922', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000166 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Kohistan', N'KPK', N'Khyber Pakhtunkhwa', N'998', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000167 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Kohlu', N'Balochistan', N'Balochistan', N'829', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000168 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Korak', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000169 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Korangi', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000170 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Kot Addu', N'PU', N'Punjab', N'697', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000171 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Kot Sarae', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000172 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Kotli', N'AJK', N'Azad Kashmir', N'574', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000173 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Kotri', N'Sindh', N'Sindh', N'221', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000174 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Kurram', N'FATA', N'Federally Administered Tribal Areas', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000175 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Laar', N'PU', N'Punjab', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000176 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Lahore', N'PU', N'Punjab', N'42', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000177 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Lahri', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000178 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Lakki Marwat', N'KPK', N'Khyber Pakhtunkhwa', N'969', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000179 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Lalamusa', N'PU', N'Punjab', N'4348', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000180 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Larkana', N'Sindh', N'Sindh', N'74', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000181 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Lasbela', N'Balochistan', N'Balochistan', N'853', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000182 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Latamber', N'KPK', N'Khyber Pakhtunkhwa', N'0528-0928', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000183 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Layyah', N'PU', N'Punjab', N'606', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000184 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Liari', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000185 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Lodhran', N'PU', N'Punjab', N'608', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000186 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Loralai', N'Balochistan', N'Balochistan', N'824', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000187 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Lower Dir', N'KPK', N'Khyber Pakhtunkhwa', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000188 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Lund', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000189 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Mach', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000190 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Madyan', N'KPK', N'Khyber Pakhtunkhwa', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000191 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Mailsi', N'PU', N'Punjab', N'6515', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000192 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Makhdoom Aali', N'PU', N'Punjab', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000193 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Malakand', N'FATA', N'Federally Administered Tribal Areas', N'932', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000194 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Malakand', N'KPK', N'Khyber Pakhtunkhwa', N'932', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000195 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Mamoori', N'PU', N'Punjab', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000196 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Mand', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000197 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Mandi Bahauddin', N'PU', N'Punjab', N'546', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000198 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Mandi Warburton', N'PU', N'Punjab', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000199 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Mangla', N'AJK', N'Azad Kashmir', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000200 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Manguchar', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000201 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Mansehra', N'KPK', N'Khyber Pakhtunkhwa', N'997', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000202 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Mardan', N'KPK', N'Khyber Pakhtunkhwa', N'937', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000203 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Mashki Chah', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000204 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Maslti', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000205 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Mastuj', N'KPK', N'Khyber Pakhtunkhwa', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000206 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Mastung', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000207 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Mathi', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000208 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Matiari', N'Sindh', N'Sindh', N'2203', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000209 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Mehar', N'Sindh', N'Sindh', N'745', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000210 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Mekhtar', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000211 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Merui', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000212 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Mian Channu', N'PU', N'Punjab', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000213 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Mianez', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000214 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Mianwali', N'PU', N'Punjab', N'459', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000215 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Minawala', N'PU', N'Punjab', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000216 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Miram Shah', N'FATA', N'Federally Administered Tribal Areas', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000217 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Mirpur', N'AJK', N'Azad Kashmir', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000218 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Mirpur Batoro', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000219 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Mirpur Khas', N'Sindh', N'Sindh', N'233', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000220 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Mirpur Sakro', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000221 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Mithani', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000222 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Mithi', N'Sindh', N'Sindh', N'2342', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000223 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Mohmand', N'FATA', N'Federally Administered Tribal Areas', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000224 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Mongora', N'KPK', N'Khyber Pakhtunkhwa', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000225 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Moro', N'Sindh', N'Sindh', N'752', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000226 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Multan', N'PU', N'Punjab', N'61', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000227 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Murgha Kibzai', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000228 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Muridke', N'PU', N'Punjab', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000229 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Murree', N'PU', N'Punjab', N'593', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000230 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Musa Khel Bazar', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000231 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Muzaffarabad', N'AJK', N'Azad Kashmir', N'58', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000232 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Muzaffargarh', N'PU', N'Punjab', N'66', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000233 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Nagar', N'GB', N'Gilgit Baltistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000234 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Nagar Parkar', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000235 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Nagha Kalat', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000236 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Nal', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000237 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Naokot', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000238 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Narowal', N'PU', N'Punjab', N'542', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000239 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Naseerabad', N'Balochistan', N'Balochistan', N'838', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000240 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Naudero', N'Sindh', N'Sindh', N'74147', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000241 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Nauroz Kalat', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000242 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Naushara', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000243 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Nawabshah', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000244 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Nazimabad', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000245 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'North Waziristan', N'FATA', N'Federally Administered Tribal Areas', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000246 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Noushero Feroz', N'Sindh', N'Sindh', N'242', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000247 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Nowshera', N'KPK', N'Khyber Pakhtunkhwa', N'923', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000248 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Nur Gamma', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000249 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Nushki', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000250 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Nuttal', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000251 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Okara', N'PU', N'Punjab', N'44', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000252 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Ormarah', N'Balochistan', N'Balochistan', N'2045', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000253 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Paharpur', N'KPK', N'Khyber Pakhtunkhwa', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000254 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Pak Pattan', N'PU', N'Punjab', N'457', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000255 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Palantuk', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000256 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Panjgur', N'Balochistan', N'Balochistan', N'855', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000257 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Panjgur', N'PU', N'Punjab', N'855', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000258 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Pasni', N'Balochistan', N'Balochistan', N'2049', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000259 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Pattoki', N'PU', N'Punjab', N'4942', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000260 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Pendoo', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000261 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Peshawar', N'KPK', N'Khyber Pakhtunkhwa', N'91', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000262 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Piharak', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000263 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'pirMahal', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000264 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Pir Mahal', N'PU', N'Punjab', N'4656', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000265 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Pishin', N'Balochistan', N'Balochistan', N'826', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000266 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Plandri', N'AJK', N'Azad Kashmir', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000267 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Pokran', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000268 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Punch', N'AJK', N'Azad Kashmir', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000269 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Qambar', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000270 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Qamruddin Karez', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000271 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Qazi Ahmad', N'Sindh', N'Sindh', N'24171', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000272 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Qila Abdullah', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000273 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Qila Didar Singh', N'PU', N'Punjab', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000274 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Qila Ladgasht', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000275 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Qila Safed', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000276 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Qila Saifullah', N'Balochistan', N'Balochistan', N'82926', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000277 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Quetta', N'Balochistan', N'Balochistan', N'81', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000278 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Rabwah', N'PU', N'Punjab', N'4524', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000279 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Rahim Yar Khan', N'PU', N'Punjab', N'68', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000280 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Raiwind', N'PU', N'Punjab', N'4951', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000281 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Rajan Pur', N'PU', N'Punjab', N'604', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000282 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Rajan Pur', N'PU', N'Punjab', N'604', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000283 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Rakhni', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000284 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Rani Pur', N'Sindh', N'Sindh', N'7051', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000285 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Ratodero', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000286 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Rawalakot', N'AJK', N'Azad Kashmir', N'576', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000287 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Rawalpindi', N'PU', N'Punjab', N'51', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000288 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Renala Khurd', N'PU', N'Punjab', N'4443', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000289 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Robat Thana', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000290 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Rodkhan', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000291 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Rohri', N'PU', N'Punjab', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000292 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Rohri', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000293 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Sadiqabad', N'PU', N'Punjab', N'702', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000294 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Safdar Abad – (Dhaban Singh)', N'PU', N'Punjab', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000295 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Sahiwal', N'PU', N'Punjab', N'40', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000296 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Saidu Sharif', N'KPK', N'Khyber Pakhtunkhwa', N'0536-0936', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000297 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Saidu Sharif', N'Sindh', N'Sindh', N'0536-0936', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000298 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Saindak', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000299 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Sakesar', N'KPK', N'Khyber Pakhtunkhwa', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000300 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Sakrand', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000301 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Sambarial', N'PU', N'Punjab', N'432', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000302 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Sanghar', N'Sindh', N'Sindh', N'235', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000303 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Sangla Hill', N'PU', N'Punjab', N'996', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000304 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Sanjawi', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000305 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Sarai Alamgir', N'PU', N'Punjab', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000306 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Sargodha', N'PU', N'Punjab', N'48', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000307 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Saruna', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000308 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Shabaz Kalat', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000309 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Shadadkhot', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000310 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Shafqat Shaheed Chowk', N'PU', N'Punjab', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000311 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Shahbandar', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000312 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Shahdadpur', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000313 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Shahpur', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000314 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Shahpur Chakar', N'Sindh', N'Sindh', N'245', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000315 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Shakargarh', N'PU', N'Punjab', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000316 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Shandur', N'GB', N'Gilgit Baltistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000317 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Shangla', N'KPK', N'Khyber Pakhtunkhwa', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000318 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Shangrila', N'GB', N'Gilgit Baltistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000319 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Sharam Jogizai', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000320 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Sheikhupura', N'PU', N'Punjab', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000321 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Shikar Pur', N'Sindh', N'Sindh', N'726', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000322 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Shingar', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000323 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Shorap', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000324 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Sialkot', N'PU', N'Punjab', N'52', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000325 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Sibbi', N'Balochistan', N'Balochistan', N'833', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000326 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Skardu', N'GB', N'Gilgit Baltistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000327 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Sohawa', N'PU', N'Punjab', N'5719', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000328 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Sonmiani', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000329 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Sooianwala', N'PU', N'Punjab', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000330 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'South Waziristan', N'FATA', N'Federally Administered Tribal Areas', N'965', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000331 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Spezand', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000332 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Spintangi', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000333 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Sui', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000334 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Sujawal', N'Sindh', N'Sindh', N'2031', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000335 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Sukkur', N'Sindh', N'Sindh', N'71', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000336 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Sundar (city)', N'PU', N'Punjab', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000337 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Suntsar', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000338 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Surab', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000339 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Swabi', N'KPK', N'Khyber Pakhtunkhwa', N'938', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000340 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Swat', N'KPK', N'Khyber Pakhtunkhwa', N'946', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000341 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Takhtbai', N'PU', N'Punjab', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000342 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Talagang', N'PU', N'Punjab', N'5776', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000343 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Tando Adam', N'Sindh', N'Sindh', N'2221', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000344 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Tando Allah Yar', N'Sindh', N'Sindh', N'2231', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000345 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Tando Bago', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000346 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Tangi', N'KPK', N'Khyber Pakhtunkhwa', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000347 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Tank', N'KPK', N'Khyber Pakhtunkhwa', N'963', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000348 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Tar Ahamd Rind', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000349 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Tarbela', N'PU', N'Punjab', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000350 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Taxila', N'PU', N'Punjab', N'596', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000351 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Thall', N'KPK', N'Khyber Pakhtunkhwa', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000352 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Thalo', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000353 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Thatta', N'Sindh', N'Sindh', N'298', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000354 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Toba Tek Singh', N'PU', N'Punjab', N'46', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000355 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Tordher', N'KPK', N'Khyber Pakhtunkhwa', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000356 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Tujal', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000357 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Tump', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000358 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Turbat', N'Balochistan', N'Balochistan', N'861', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000359 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Umarao', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000360 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Umarkot', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000361 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Upper Dir', N'KPK', N'Khyber Pakhtunkhwa', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000362 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Uthal', N'Balochistan', N'Balochistan', N'27', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000363 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Vehari', N'PU', N'Punjab', N'67', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000364 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Veirwaro', N'Sindh', N'Sindh', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000365 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Vitakri', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000366 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Wadh', N'Balochistan', N'Balochistan', N'878', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000367 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Wah Cantonment', N'PU', N'Punjab', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000368 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Wana', N'FATA', N'Federally Administered Tribal Areas', N'05263-0965', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000369 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Warah', N'Sindh', N'Sindh', N'7445', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000370 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Washap', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000371 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Wasjuk', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000372 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Wazirabad', N'PU', N'Punjab', N'437', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000373 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Yakmach', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[CITY] ([CITYID], [COUNTRYID], [DESCRIPTION], [Alias], [PROVINCE], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000374 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Zhob', N'Balochistan', N'Balochistan', N'', 1, CAST(N'2018-03-06T00:48:33.197' AS DateTime), CAST(N'2018-03-06T00:48:33.197' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000001 AS Numeric(18, 0)), CAST(1000001 AS Numeric(18, 0)), N'Afghanistan', N'AF', N'Kabul', N'93', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000002 AS Numeric(18, 0)), CAST(1000002 AS Numeric(18, 0)), N'Albania', N'AL', N'Tirana', N'355', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000003 AS Numeric(18, 0)), CAST(1000003 AS Numeric(18, 0)), N'Algeria', N'DZ', N'Algiers', N'213', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000004 AS Numeric(18, 0)), CAST(1000004 AS Numeric(18, 0)), N'American Samoa', N'AS', N'Pago Pago', N'684', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000005 AS Numeric(18, 0)), CAST(1000005 AS Numeric(18, 0)), N'Andorra', N'AD', N'Andorra', N'376', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000006 AS Numeric(18, 0)), CAST(1000006 AS Numeric(18, 0)), N'Angola', N'AO', N'Luanda', N'244', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000007 AS Numeric(18, 0)), CAST(1000007 AS Numeric(18, 0)), N'Anguilla', N'AI', N'The Valley', N'1-264', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000008 AS Numeric(18, 0)), CAST(1000007 AS Numeric(18, 0)), N'Antarctica', N'AQ', N'None', N'672', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000009 AS Numeric(18, 0)), CAST(1000007 AS Numeric(18, 0)), N'Antigua and Barbuda', N'AG', N'St. Johns', N'1-268', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000010 AS Numeric(18, 0)), CAST(1000010 AS Numeric(18, 0)), N'Argentina', N'AR', N'Buenos Aires', N'54', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000011 AS Numeric(18, 0)), CAST(1000011 AS Numeric(18, 0)), N'Armenia', N'AM', N'Yerevan', N'374', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000012 AS Numeric(18, 0)), CAST(1000012 AS Numeric(18, 0)), N'Aruba', N'AW', N'Oranjestad', N'297', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000013 AS Numeric(18, 0)), CAST(1000013 AS Numeric(18, 0)), N'Australia', N'AU', N'Canberra', N'61', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000014 AS Numeric(18, 0)), CAST(1000005 AS Numeric(18, 0)), N'Austria', N'AT', N'Vienna', N'43', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000015 AS Numeric(18, 0)), CAST(1000015 AS Numeric(18, 0)), N'Azerbaijan', N'AZ', N'Baku', N'994', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000016 AS Numeric(18, 0)), CAST(1000016 AS Numeric(18, 0)), N'Bahamas', N'BS', N'Nassau', N'1-242', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000017 AS Numeric(18, 0)), CAST(1000017 AS Numeric(18, 0)), N'Bahrain', N'BH', N'Al-Manamah', N'973', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000018 AS Numeric(18, 0)), CAST(1000018 AS Numeric(18, 0)), N'Bangladesh', N'BD', N'Dhaka', N'880', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000019 AS Numeric(18, 0)), CAST(1000019 AS Numeric(18, 0)), N'Barbados', N'BB', N'Bridgetown', N'1-246', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000020 AS Numeric(18, 0)), CAST(1000020 AS Numeric(18, 0)), N'Belarus', N'BY', N'Minsk', N'375', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000021 AS Numeric(18, 0)), CAST(1000005 AS Numeric(18, 0)), N'Belgium', N'BE', N'Brussels', N'32', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000022 AS Numeric(18, 0)), CAST(1000022 AS Numeric(18, 0)), N'Belize', N'BZ', N'Belmopan', N'501', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000023 AS Numeric(18, 0)), CAST(1000023 AS Numeric(18, 0)), N'Benin', N'BJ', N'Porto-Novo', N'229', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000024 AS Numeric(18, 0)), CAST(1000024 AS Numeric(18, 0)), N'Bermuda', N'BM', N'Hamilton', N'1-441', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000025 AS Numeric(18, 0)), CAST(1000025 AS Numeric(18, 0)), N'Bhutan', N'BT', N'Thimphu', N'975', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000026 AS Numeric(18, 0)), CAST(1000026 AS Numeric(18, 0)), N'Bolivia', N'BO', N'La Paz', N'591', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000027 AS Numeric(18, 0)), CAST(1000027 AS Numeric(18, 0)), N'Bosnia-Herzegovina', N'BA', N'Sarajevo', N'387', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000028 AS Numeric(18, 0)), CAST(1000028 AS Numeric(18, 0)), N'Botswana', N'BW', N'Gaborone', N'267', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000029 AS Numeric(18, 0)), CAST(1000029 AS Numeric(18, 0)), N'Bouvet Island', N'BV', N'None', N'', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000030 AS Numeric(18, 0)), CAST(1000030 AS Numeric(18, 0)), N'Brazil', N'BR', N'Brasilia', N'55', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000031 AS Numeric(18, 0)), CAST(1000004 AS Numeric(18, 0)), N'British Indian Ocean Territory', N'IO', N'None', N'', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000032 AS Numeric(18, 0)), CAST(1000032 AS Numeric(18, 0)), N'Brunei Darussalam', N'BN', N'Bandar Seri Begawan', N'673', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000033 AS Numeric(18, 0)), CAST(1000033 AS Numeric(18, 0)), N'Bulgaria', N'BG', N'Sofia', N'359', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000034 AS Numeric(18, 0)), CAST(1000023 AS Numeric(18, 0)), N'Burkina Faso', N'BF', N'Ouagadougou', N'226', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000035 AS Numeric(18, 0)), CAST(1000035 AS Numeric(18, 0)), N'Burundi', N'BI', N'Bujumbura', N'257', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000036 AS Numeric(18, 0)), CAST(1000036 AS Numeric(18, 0)), N'Cambodia', N'KH', N'Phnom Penh', N'855', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000037 AS Numeric(18, 0)), CAST(1000037 AS Numeric(18, 0)), N'Cameroon', N'CM', N'Yaounde', N'237', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000038 AS Numeric(18, 0)), CAST(1000038 AS Numeric(18, 0)), N'Canada', N'CA', N'Ottawa', N'1', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000039 AS Numeric(18, 0)), CAST(1000039 AS Numeric(18, 0)), N'Cape Verde', N'CV', N'Praia', N'238', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000040 AS Numeric(18, 0)), CAST(1000040 AS Numeric(18, 0)), N'Cayman Islands', N'KY', N'Georgetown', N'1-345', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000041 AS Numeric(18, 0)), CAST(1000037 AS Numeric(18, 0)), N'Central African Republic', N'CF', N'Bangui', N'236', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000042 AS Numeric(18, 0)), CAST(1000037 AS Numeric(18, 0)), N'Chad', N'TD', N'N''Djamena', N'235', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000043 AS Numeric(18, 0)), CAST(1000043 AS Numeric(18, 0)), N'Chile', N'CL', N'Santiago', N'56', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000044 AS Numeric(18, 0)), CAST(1000044 AS Numeric(18, 0)), N'China', N'CN', N'Beijing', N'86', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000045 AS Numeric(18, 0)), CAST(1000013 AS Numeric(18, 0)), N'Christmas Island', N'CX', N'The Settlement', N'61', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000046 AS Numeric(18, 0)), CAST(1000013 AS Numeric(18, 0)), N'Cocos (Keeling) Islands', N'CC', N'West Island', N'61', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000047 AS Numeric(18, 0)), CAST(1000047 AS Numeric(18, 0)), N'Colombia', N'CO', N'Bogota', N'57', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000048 AS Numeric(18, 0)), CAST(1000048 AS Numeric(18, 0)), N'Comoros', N'KM', N'Moroni', N'269', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000049 AS Numeric(18, 0)), CAST(1000037 AS Numeric(18, 0)), N'Congo', N'CG', N'Brazzaville', N'242', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000050 AS Numeric(18, 0)), CAST(1000050 AS Numeric(18, 0)), N'Congo, Dem. Republic', N'CD', N'Kinshasa', N'243', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000051 AS Numeric(18, 0)), CAST(1000051 AS Numeric(18, 0)), N'Cook Islands', N'CK', N'Avarua', N'682', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000052 AS Numeric(18, 0)), CAST(1000052 AS Numeric(18, 0)), N'Costa Rica', N'CR', N'San Jose', N'506', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000053 AS Numeric(18, 0)), CAST(1000053 AS Numeric(18, 0)), N'Croatia', N'HR', N'Zagreb', N'385', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000054 AS Numeric(18, 0)), CAST(1000054 AS Numeric(18, 0)), N'Cuba', N'CU', N'Havana', N'53', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000055 AS Numeric(18, 0)), CAST(1000005 AS Numeric(18, 0)), N'Cyprus', N'CY', N'Nicosia', N'357', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000056 AS Numeric(18, 0)), CAST(1000056 AS Numeric(18, 0)), N'Czech Rep.', N'CZ', N'Prague', N'420', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000057 AS Numeric(18, 0)), CAST(1000057 AS Numeric(18, 0)), N'Denmark', N'DK', N'Copenhagen', N'45', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000058 AS Numeric(18, 0)), CAST(1000058 AS Numeric(18, 0)), N'Djibouti', N'DJ', N'Djibouti', N'253', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000059 AS Numeric(18, 0)), CAST(1000007 AS Numeric(18, 0)), N'Dominica', N'DM', N'Roseau', N'1-767', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000060 AS Numeric(18, 0)), CAST(1000060 AS Numeric(18, 0)), N'Dominican Republic', N'DO', N'Santo Domingo', N'809', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000061 AS Numeric(18, 0)), CAST(1000061 AS Numeric(18, 0)), N'Ecuador', N'EC', N'Quito', N'593', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000062 AS Numeric(18, 0)), CAST(1000062 AS Numeric(18, 0)), N'Egypt', N'EG', N'Cairo', N'20', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000063 AS Numeric(18, 0)), CAST(1000063 AS Numeric(18, 0)), N'El Salvador', N'SV', N'San Salvador', N'503', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000064 AS Numeric(18, 0)), CAST(1000037 AS Numeric(18, 0)), N'Equatorial Guinea', N'GQ', N'Malabo', N'240', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000065 AS Numeric(18, 0)), CAST(1000065 AS Numeric(18, 0)), N'Eritrea', N'ER', N'Asmara', N'291', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000066 AS Numeric(18, 0)), CAST(1000005 AS Numeric(18, 0)), N'Estonia', N'EE', N'Tallinn', N'372', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000067 AS Numeric(18, 0)), CAST(1000067 AS Numeric(18, 0)), N'Ethiopia', N'ET', N'Addis Ababa', N'251', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000068 AS Numeric(18, 0)), CAST(1000005 AS Numeric(18, 0)), N'European Union', N'EU.INT', N'Brussels', N'', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000069 AS Numeric(18, 0)), CAST(1000069 AS Numeric(18, 0)), N'Falkland Islands (Malvinas)', N'FK', N'Stanley', N'500', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000070 AS Numeric(18, 0)), CAST(1000057 AS Numeric(18, 0)), N'Faroe Islands', N'FO', N'Torshavn', N'298', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000071 AS Numeric(18, 0)), CAST(1000071 AS Numeric(18, 0)), N'Fiji', N'FJ', N'Suva', N'679', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000072 AS Numeric(18, 0)), CAST(1000005 AS Numeric(18, 0)), N'Finland', N'FI', N'Helsinki', N'358', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000073 AS Numeric(18, 0)), CAST(1000005 AS Numeric(18, 0)), N'France', N'FR', N'Paris', N'33', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000074 AS Numeric(18, 0)), CAST(1000005 AS Numeric(18, 0)), N'French Guiana', N'GF', N'Cayenne', N'594', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000075 AS Numeric(18, 0)), CAST(1000005 AS Numeric(18, 0)), N'French Southern Territories', N'TF', N'None', N'', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000076 AS Numeric(18, 0)), CAST(1000037 AS Numeric(18, 0)), N'Gabon', N'GA', N'Libreville', N'241', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000077 AS Numeric(18, 0)), CAST(1000077 AS Numeric(18, 0)), N'Gambia', N'GM', N'Banjul', N'220', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000078 AS Numeric(18, 0)), CAST(1000078 AS Numeric(18, 0)), N'Georgia', N'GE', N'Tbilisi', N'995', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000079 AS Numeric(18, 0)), CAST(1000005 AS Numeric(18, 0)), N'Germany', N'DE', N'Berlin', N'49', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000080 AS Numeric(18, 0)), CAST(1000080 AS Numeric(18, 0)), N'Ghana', N'GH', N'Accra', N'233', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000081 AS Numeric(18, 0)), CAST(1000081 AS Numeric(18, 0)), N'Gibraltar', N'GI', N'Gibraltar', N'350', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000082 AS Numeric(18, 0)), CAST(1000082 AS Numeric(18, 0)), N'Great Britain', N'GB', N'London', N'44', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000083 AS Numeric(18, 0)), CAST(1000005 AS Numeric(18, 0)), N'Greece', N'GR', N'Athens', N'30', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000084 AS Numeric(18, 0)), CAST(1000057 AS Numeric(18, 0)), N'Greenland', N'GL', N'Godthab', N'299', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000085 AS Numeric(18, 0)), CAST(1000007 AS Numeric(18, 0)), N'Grenada', N'GD', N'St. George''s', N'1-473', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000086 AS Numeric(18, 0)), CAST(1000005 AS Numeric(18, 0)), N'Guadeloupe (French)', N'GP', N'Basse-Terre', N'590', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000087 AS Numeric(18, 0)), CAST(1000004 AS Numeric(18, 0)), N'Guam (USA)', N'GU', N'Agana', N'1-671', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000088 AS Numeric(18, 0)), CAST(1000088 AS Numeric(18, 0)), N'Guatemala', N'GT', N'Guatemala City', N'502', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000089 AS Numeric(18, 0)), CAST(1000089 AS Numeric(18, 0)), N'Guernsey', N'GG', N'St. Peter Port', N'', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000090 AS Numeric(18, 0)), CAST(1000090 AS Numeric(18, 0)), N'Guinea', N'GN', N'Conakry', N'224', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000091 AS Numeric(18, 0)), CAST(1000091 AS Numeric(18, 0)), N'Guinea Bissau', N'GW', N'Bissau', N'245', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000092 AS Numeric(18, 0)), CAST(1000092 AS Numeric(18, 0)), N'Guyana', N'GY', N'Georgetown', N'592', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000093 AS Numeric(18, 0)), CAST(1000093 AS Numeric(18, 0)), N'Haiti', N'HT', N'Port-au-Prince', N'509', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000094 AS Numeric(18, 0)), CAST(1000013 AS Numeric(18, 0)), N'Heard Island and McDonald Islands', N'HM', N'None', N'', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000095 AS Numeric(18, 0)), CAST(1000095 AS Numeric(18, 0)), N'Honduras', N'HN', N'Tegucigalpa', N'504', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000096 AS Numeric(18, 0)), CAST(1000096 AS Numeric(18, 0)), N'Hong Kong', N'HK', N'Victoria', N'852', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000097 AS Numeric(18, 0)), CAST(1000097 AS Numeric(18, 0)), N'Hungary', N'HU', N'Budapest', N'36', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000098 AS Numeric(18, 0)), CAST(1000098 AS Numeric(18, 0)), N'Iceland', N'IS', N'Reykjavik', N'354', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000099 AS Numeric(18, 0)), CAST(1000099 AS Numeric(18, 0)), N'India', N'IN', N'New Delhi', N'91', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000100 AS Numeric(18, 0)), CAST(1000100 AS Numeric(18, 0)), N'Indonesia', N'ID', N'Jakarta', N'62', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000101 AS Numeric(18, 0)), CAST(1000004 AS Numeric(18, 0)), N'International', N'INT', N'', N'', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000102 AS Numeric(18, 0)), CAST(1000102 AS Numeric(18, 0)), N'Iran', N'IR', N'Tehran', N'98', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000103 AS Numeric(18, 0)), CAST(1000103 AS Numeric(18, 0)), N'Iraq', N'IQ', N'Baghdad', N'964', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000104 AS Numeric(18, 0)), CAST(1000005 AS Numeric(18, 0)), N'Ireland', N'IE', N'Dublin', N'353', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000105 AS Numeric(18, 0)), CAST(1000082 AS Numeric(18, 0)), N'Isle of Man', N'IM', N'Douglas', N'', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000106 AS Numeric(18, 0)), CAST(1000106 AS Numeric(18, 0)), N'Israel', N'IL', N'Jerusalem', N'972', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000107 AS Numeric(18, 0)), CAST(1000005 AS Numeric(18, 0)), N'Italy', N'IT', N'Rome', N'39', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000108 AS Numeric(18, 0)), CAST(1000023 AS Numeric(18, 0)), N'Ivory Coast', N'CI', N'Abidjan', N'225', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000109 AS Numeric(18, 0)), CAST(1000109 AS Numeric(18, 0)), N'Jamaica', N'JM', N'Kingston', N'1-876', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000110 AS Numeric(18, 0)), CAST(1000110 AS Numeric(18, 0)), N'Japan', N'JP', N'Tokyo', N'81', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000111 AS Numeric(18, 0)), CAST(1000082 AS Numeric(18, 0)), N'Jersey', N'JE', N'Saint Helier', N'', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000112 AS Numeric(18, 0)), CAST(1000112 AS Numeric(18, 0)), N'Jordan', N'JO', N'Amman', N'962', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000113 AS Numeric(18, 0)), CAST(1000113 AS Numeric(18, 0)), N'Kazakhstan', N'KZ', N'Astana', N'7', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000114 AS Numeric(18, 0)), CAST(1000114 AS Numeric(18, 0)), N'Kenya', N'KE', N'Nairobi', N'254', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000115 AS Numeric(18, 0)), CAST(1000013 AS Numeric(18, 0)), N'Kiribati', N'KI', N'Tarawa', N'686', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000116 AS Numeric(18, 0)), CAST(1000116 AS Numeric(18, 0)), N'Korea-North', N'KP', N'Pyongyang', N'850', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000117 AS Numeric(18, 0)), CAST(1000117 AS Numeric(18, 0)), N'Korea-South', N'KR', N'Seoul', N'82', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000118 AS Numeric(18, 0)), CAST(1000118 AS Numeric(18, 0)), N'Kuwait', N'KW', N'Kuwait City', N'965', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000119 AS Numeric(18, 0)), CAST(1000119 AS Numeric(18, 0)), N'Kyrgyzstan', N'KG', N'Bishkek', N'996', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000120 AS Numeric(18, 0)), CAST(1000120 AS Numeric(18, 0)), N'Laos', N'LA', N'Vientiane', N'856', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000121 AS Numeric(18, 0)), CAST(1000121 AS Numeric(18, 0)), N'Latvia', N'LV', N'Riga', N'371', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000122 AS Numeric(18, 0)), CAST(1000122 AS Numeric(18, 0)), N'Lebanon', N'LB', N'Beirut', N'961', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000123 AS Numeric(18, 0)), CAST(1000123 AS Numeric(18, 0)), N'Lesotho', N'LS', N'Maseru', N'266', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000124 AS Numeric(18, 0)), CAST(1000124 AS Numeric(18, 0)), N'Liberia', N'LR', N'Monrovia', N'231', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000125 AS Numeric(18, 0)), CAST(1000125 AS Numeric(18, 0)), N'Libya', N'LY', N'Tripoli', N'218', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000126 AS Numeric(18, 0)), CAST(1000126 AS Numeric(18, 0)), N'Liechtenstein', N'LI', N'Vaduz', N'423', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000127 AS Numeric(18, 0)), CAST(1000127 AS Numeric(18, 0)), N'Lithuania', N'LT', N'Vilnius', N'370', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000128 AS Numeric(18, 0)), CAST(1000005 AS Numeric(18, 0)), N'Luxembourg', N'LU', N'Luxembourg', N'352', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000129 AS Numeric(18, 0)), CAST(1000129 AS Numeric(18, 0)), N'Macau', N'MO', N'Macau', N'853', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000130 AS Numeric(18, 0)), CAST(1000130 AS Numeric(18, 0)), N'Macedonia', N'MK', N'Skopje', N'389', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000131 AS Numeric(18, 0)), CAST(1000131 AS Numeric(18, 0)), N'Madagascar', N'MG', N'Antananarivo', N'261', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000132 AS Numeric(18, 0)), CAST(1000132 AS Numeric(18, 0)), N'Malawi', N'MW', N'Lilongwe', N'265', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000133 AS Numeric(18, 0)), CAST(1000133 AS Numeric(18, 0)), N'Malaysia', N'MY', N'Kuala Lumpur', N'60', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000134 AS Numeric(18, 0)), CAST(1000134 AS Numeric(18, 0)), N'Maldives', N'MV', N'Male', N'960', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000135 AS Numeric(18, 0)), CAST(1000023 AS Numeric(18, 0)), N'Mali', N'ML', N'Bamako', N'223', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000136 AS Numeric(18, 0)), CAST(1000005 AS Numeric(18, 0)), N'Malta', N'MT', N'Valletta', N'356', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000137 AS Numeric(18, 0)), CAST(1000004 AS Numeric(18, 0)), N'Marshall Islands', N'MH', N'Majuro', N'692', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000138 AS Numeric(18, 0)), CAST(1000005 AS Numeric(18, 0)), N'Martinique (French)', N'MQ', N'Fort-de-France', N'596', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000139 AS Numeric(18, 0)), CAST(1000139 AS Numeric(18, 0)), N'Mauritania', N'MR', N'Nouakchott', N'222', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000140 AS Numeric(18, 0)), CAST(1000140 AS Numeric(18, 0)), N'Mauritius', N'MU', N'Port Louis', N'230', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000141 AS Numeric(18, 0)), CAST(1000005 AS Numeric(18, 0)), N'Mayotte', N'YT', N'Dzaoudzi', N'269', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000142 AS Numeric(18, 0)), CAST(1000142 AS Numeric(18, 0)), N'Mexico', N'MX', N'Mexico City', N'52', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000143 AS Numeric(18, 0)), CAST(1000004 AS Numeric(18, 0)), N'Micronesia', N'FM', N'Palikir', N'691', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000144 AS Numeric(18, 0)), CAST(1000144 AS Numeric(18, 0)), N'Moldova', N'MD', N'Kishinev', N'373', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000145 AS Numeric(18, 0)), CAST(1000005 AS Numeric(18, 0)), N'Monaco', N'MC', N'Monaco', N'377', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000146 AS Numeric(18, 0)), CAST(1000146 AS Numeric(18, 0)), N'Mongolia', N'MN', N'Ulan Bator', N'976', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000147 AS Numeric(18, 0)), CAST(1000005 AS Numeric(18, 0)), N'Montenegro', N'ME', N'Podgorica', N'382', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000148 AS Numeric(18, 0)), CAST(1000007 AS Numeric(18, 0)), N'Montserrat', N'MS', N'Plymouth', N'1-664', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000149 AS Numeric(18, 0)), CAST(1000149 AS Numeric(18, 0)), N'Morocco', N'MA', N'Rabat', N'212', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000150 AS Numeric(18, 0)), CAST(1000150 AS Numeric(18, 0)), N'Mozambique', N'MZ', N'Maputo', N'258', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000151 AS Numeric(18, 0)), CAST(1000151 AS Numeric(18, 0)), N'Myanmar', N'MM', N'Naypyidaw', N'95', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000152 AS Numeric(18, 0)), CAST(1000152 AS Numeric(18, 0)), N'Namibia', N'NA', N'Windhoek', N'264', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000153 AS Numeric(18, 0)), CAST(1000013 AS Numeric(18, 0)), N'Nauru', N'NR', N'Yaren', N'674', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000154 AS Numeric(18, 0)), CAST(1000154 AS Numeric(18, 0)), N'Nepal', N'NP', N'Kathmandu', N'977', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000155 AS Numeric(18, 0)), CAST(1000005 AS Numeric(18, 0)), N'Netherlands', N'NL', N'Amsterdam', N'31', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000156 AS Numeric(18, 0)), CAST(1000156 AS Numeric(18, 0)), N'Netherlands Antilles', N'AN', N'Willemstad', N'599', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000157 AS Numeric(18, 0)), CAST(1000157 AS Numeric(18, 0)), N'New Caledonia (French)', N'NC', N'Noumea', N'687', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000158 AS Numeric(18, 0)), CAST(1000051 AS Numeric(18, 0)), N'New Zealand', N'NZ', N'Wellington', N'64', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000159 AS Numeric(18, 0)), CAST(1000159 AS Numeric(18, 0)), N'Nicaragua', N'NI', N'Managua', N'505', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000160 AS Numeric(18, 0)), CAST(1000023 AS Numeric(18, 0)), N'Niger', N'NE', N'Niamey', N'227', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000161 AS Numeric(18, 0)), CAST(1000161 AS Numeric(18, 0)), N'Nigeria', N'NG', N'Lagos', N'234', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000162 AS Numeric(18, 0)), CAST(1000051 AS Numeric(18, 0)), N'Niue', N'NU', N'Alofi', N'683', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000163 AS Numeric(18, 0)), CAST(1000013 AS Numeric(18, 0)), N'Norfolk Island', N'NF', N'Kingston', N'672', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000164 AS Numeric(18, 0)), CAST(1000004 AS Numeric(18, 0)), N'Northern Mariana Islands', N'MP', N'Saipan', N'670', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000165 AS Numeric(18, 0)), CAST(1000029 AS Numeric(18, 0)), N'Norway', N'NO', N'Oslo', N'47', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000166 AS Numeric(18, 0)), CAST(1000166 AS Numeric(18, 0)), N'Oman', N'OM', N'Muscat', N'968', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000167 AS Numeric(18, 0)), CAST(1000167 AS Numeric(18, 0)), N'Pakistan', N'PK', N'Islamabad', N'92', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000168 AS Numeric(18, 0)), CAST(1000004 AS Numeric(18, 0)), N'Palau', N'PW', N'Koror', N'680', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000169 AS Numeric(18, 0)), CAST(1000169 AS Numeric(18, 0)), N'Panama', N'PA', N'Panama City', N'507', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000170 AS Numeric(18, 0)), CAST(1000170 AS Numeric(18, 0)), N'Papua New Guinea', N'PG', N'Port Moresby', N'675', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000171 AS Numeric(18, 0)), CAST(1000171 AS Numeric(18, 0)), N'Paraguay', N'PY', N'Asuncion', N'595', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000172 AS Numeric(18, 0)), CAST(1000172 AS Numeric(18, 0)), N'Peru', N'PE', N'Lima', N'51', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000173 AS Numeric(18, 0)), CAST(1000173 AS Numeric(18, 0)), N'Philippines', N'PH', N'Manila', N'63', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000174 AS Numeric(18, 0)), CAST(1000051 AS Numeric(18, 0)), N'Pitcairn Island', N'PN', N'Adamstown', N'', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000175 AS Numeric(18, 0)), CAST(1000175 AS Numeric(18, 0)), N'Poland', N'PL', N'Warsaw', N'48', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000176 AS Numeric(18, 0)), CAST(1000157 AS Numeric(18, 0)), N'Polynesia (French)', N'PF', N'Papeete', N'689', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000177 AS Numeric(18, 0)), CAST(1000005 AS Numeric(18, 0)), N'Portugal', N'PT', N'Lisbon', N'351', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000178 AS Numeric(18, 0)), CAST(1000004 AS Numeric(18, 0)), N'Puerto Rico', N'PR', N'San Juan', N'1-787', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000179 AS Numeric(18, 0)), CAST(1000179 AS Numeric(18, 0)), N'Qatar', N'QA', N'Doha', N'974', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000180 AS Numeric(18, 0)), CAST(1000005 AS Numeric(18, 0)), N'Reunion (French)', N'RE', N'Saint-Denis', N'262', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000181 AS Numeric(18, 0)), CAST(1000181 AS Numeric(18, 0)), N'Romania', N'RO', N'Bucharest', N'40', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000182 AS Numeric(18, 0)), CAST(1000182 AS Numeric(18, 0)), N'Russia', N'RU', N'Moscow', N'7', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000183 AS Numeric(18, 0)), CAST(1000183 AS Numeric(18, 0)), N'Rwanda', N'RW', N'Kigali', N'250', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000184 AS Numeric(18, 0)), CAST(1000184 AS Numeric(18, 0)), N'Saint Helena', N'SH', N'Jamestown', N'290', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000185 AS Numeric(18, 0)), CAST(1000007 AS Numeric(18, 0)), N'Saint Kitts & Nevis Anguilla', N'KN', N'Basseterre', N'1-869', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000186 AS Numeric(18, 0)), CAST(1000007 AS Numeric(18, 0)), N'Saint Lucia', N'LC', N'Castries', N'1-758', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000187 AS Numeric(18, 0)), CAST(1000005 AS Numeric(18, 0)), N'Saint Pierre and Miquelon', N'PM', N'St. Pierre', N'508', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000188 AS Numeric(18, 0)), CAST(1000007 AS Numeric(18, 0)), N'Saint Vincent & Grenadines', N'VC', N'Kingstown', N'1-784', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000189 AS Numeric(18, 0)), CAST(1000189 AS Numeric(18, 0)), N'Samoa', N'WS', N'Apia', N'684', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000190 AS Numeric(18, 0)), CAST(1000005 AS Numeric(18, 0)), N'San Marino', N'SM', N'San Marino', N'378', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000191 AS Numeric(18, 0)), CAST(1000191 AS Numeric(18, 0)), N'Sao Tome and Principe', N'ST', N'Sao Tome', N'239', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000192 AS Numeric(18, 0)), CAST(1000192 AS Numeric(18, 0)), N'Saudi Arabia', N'SA', N'Riyadh', N'966', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000193 AS Numeric(18, 0)), CAST(1000023 AS Numeric(18, 0)), N'Senegal', N'SN', N'Dakar', N'221', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000194 AS Numeric(18, 0)), CAST(1000194 AS Numeric(18, 0)), N'Serbia', N'RS', N'Belgrade', N'381', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000195 AS Numeric(18, 0)), CAST(1000195 AS Numeric(18, 0)), N'Seychelles', N'SC', N'Victoria', N'248', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000196 AS Numeric(18, 0)), CAST(1000196 AS Numeric(18, 0)), N'Sierra Leone', N'SL', N'Freetown', N'232', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000197 AS Numeric(18, 0)), CAST(1000197 AS Numeric(18, 0)), N'Singapore', N'SG', N'Singapore', N'65', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000198 AS Numeric(18, 0)), CAST(1000005 AS Numeric(18, 0)), N'Slovakia', N'SK', N'Bratislava', N'421', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000199 AS Numeric(18, 0)), CAST(1000005 AS Numeric(18, 0)), N'Slovenia', N'SI', N'Ljubljana', N'386', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000200 AS Numeric(18, 0)), CAST(1000200 AS Numeric(18, 0)), N'Solomon Islands', N'SB', N'Honiara', N'677', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000201 AS Numeric(18, 0)), CAST(1000201 AS Numeric(18, 0)), N'Somalia', N'SO', N'Mogadishu', N'252', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000202 AS Numeric(18, 0)), CAST(1000202 AS Numeric(18, 0)), N'South Africa', N'ZA', N'Pretoria', N'27', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000203 AS Numeric(18, 0)), CAST(1000082 AS Numeric(18, 0)), N'South Georgia & South Sandwich Islands', N'GS', N'None', N'', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000204 AS Numeric(18, 0)), CAST(1000204 AS Numeric(18, 0)), N'South Sudan', N'SS', N'Ramciel', N'', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000205 AS Numeric(18, 0)), CAST(1000005 AS Numeric(18, 0)), N'Spain', N'ES', N'Madrid', N'34', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000206 AS Numeric(18, 0)), CAST(1000206 AS Numeric(18, 0)), N'Sri Lanka', N'LK', N'Colombo', N'94', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000207 AS Numeric(18, 0)), CAST(1000207 AS Numeric(18, 0)), N'Sudan', N'SD', N'Khartoum', N'249', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000208 AS Numeric(18, 0)), CAST(1000208 AS Numeric(18, 0)), N'Suriname', N'SR', N'Paramaribo', N'597', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000209 AS Numeric(18, 0)), CAST(1000029 AS Numeric(18, 0)), N'Svalbard and Jan Mayen Islands', N'SJ', N'Longyearbyen', N'', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000210 AS Numeric(18, 0)), CAST(1000210 AS Numeric(18, 0)), N'Swaziland', N'SZ', N'Mbabane', N'268', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000211 AS Numeric(18, 0)), CAST(1000211 AS Numeric(18, 0)), N'Sweden', N'SE', N'Stockholm', N'46', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000212 AS Numeric(18, 0)), CAST(1000126 AS Numeric(18, 0)), N'Switzerland', N'CH', N'Bern', N'41', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000213 AS Numeric(18, 0)), CAST(1000213 AS Numeric(18, 0)), N'Syria', N'SY', N'Damascus', N'963', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000214 AS Numeric(18, 0)), CAST(1000214 AS Numeric(18, 0)), N'Taiwan', N'TW', N'Taipei', N'886', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000215 AS Numeric(18, 0)), CAST(1000215 AS Numeric(18, 0)), N'Tajikistan', N'TJ', N'Dushanbe', N'992', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000216 AS Numeric(18, 0)), CAST(1000216 AS Numeric(18, 0)), N'Tanzania', N'TZ', N'Dodoma', N'255', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000217 AS Numeric(18, 0)), CAST(1000217 AS Numeric(18, 0)), N'Thailand', N'TH', N'Bangkok', N'66', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000218 AS Numeric(18, 0)), CAST(1000023 AS Numeric(18, 0)), N'Togo', N'TG', N'Lome', N'228', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000219 AS Numeric(18, 0)), CAST(1000051 AS Numeric(18, 0)), N'Tokelau', N'TK', N'None', N'690', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000220 AS Numeric(18, 0)), CAST(1000220 AS Numeric(18, 0)), N'Tonga', N'TO', N'Nuku''alofa', N'676', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000221 AS Numeric(18, 0)), CAST(1000221 AS Numeric(18, 0)), N'Trinidad and Tobago', N'TT', N'Port of Spain', N'1-868', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000222 AS Numeric(18, 0)), CAST(1000222 AS Numeric(18, 0)), N'Tunisia', N'TN', N'Tunis', N'216', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000223 AS Numeric(18, 0)), CAST(1000223 AS Numeric(18, 0)), N'Turkey', N'TR', N'Ankara', N'90', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000224 AS Numeric(18, 0)), CAST(1000224 AS Numeric(18, 0)), N'Turkmenistan', N'TM', N'Ashgabat', N'993', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000225 AS Numeric(18, 0)), CAST(1000004 AS Numeric(18, 0)), N'Turks and Caicos Islands', N'TC', N'Grand Turk', N'1-649', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000226 AS Numeric(18, 0)), CAST(1000013 AS Numeric(18, 0)), N'Tuvalu', N'TV', N'Funafuti', N'688', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000227 AS Numeric(18, 0)), CAST(1000082 AS Numeric(18, 0)), N'U.K.', N'UK', N'London', N'44', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000228 AS Numeric(18, 0)), CAST(1000004 AS Numeric(18, 0)), N'USA', N'US', N'Washington', N'1', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000229 AS Numeric(18, 0)), CAST(1000004 AS Numeric(18, 0)), N'USA Minor Outlying Islands', N'UM', N'None', N'', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000230 AS Numeric(18, 0)), CAST(1000230 AS Numeric(18, 0)), N'Uganda', N'UG', N'Kampala', N'256', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000231 AS Numeric(18, 0)), CAST(1000231 AS Numeric(18, 0)), N'Ukraine', N'UA', N'Kiev', N'380', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000232 AS Numeric(18, 0)), CAST(1000232 AS Numeric(18, 0)), N'United Arab Emirates', N'AE', N'Abu Dhabi', N'971', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000233 AS Numeric(18, 0)), CAST(1000233 AS Numeric(18, 0)), N'Uruguay', N'UY', N'Montevideo', N'598', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000234 AS Numeric(18, 0)), CAST(1000234 AS Numeric(18, 0)), N'Uzbekistan', N'UZ', N'Tashkent', N'998', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000235 AS Numeric(18, 0)), CAST(1000235 AS Numeric(18, 0)), N'Vanuatu', N'VU', N'Port Vila', N'678', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000236 AS Numeric(18, 0)), CAST(1000005 AS Numeric(18, 0)), N'Vatican', N'VA', N'Vatican City', N'39', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000237 AS Numeric(18, 0)), CAST(1000237 AS Numeric(18, 0)), N'Venezuela', N'VE', N'Caracas', N'58', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000238 AS Numeric(18, 0)), CAST(1000238 AS Numeric(18, 0)), N'Vietnam', N'VN', N'Hanoi', N'84', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000239 AS Numeric(18, 0)), CAST(1000004 AS Numeric(18, 0)), N'Virgin Islands (British)', N'VG', N'Road Town', N'1-284', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000240 AS Numeric(18, 0)), CAST(1000004 AS Numeric(18, 0)), N'Virgin Islands (USA)', N'VI', N'Charlotte Amalie', N'1-340', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000241 AS Numeric(18, 0)), CAST(1000157 AS Numeric(18, 0)), N'Wallis and Futuna Islands', N'WF', N'Mata-Utu', N'681', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000242 AS Numeric(18, 0)), CAST(1000149 AS Numeric(18, 0)), N'Western Sahara', N'EH', N'El Aaiun', N'', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000243 AS Numeric(18, 0)), CAST(1000243 AS Numeric(18, 0)), N'Yemen', N'YE', N'San''a', N'967', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000244 AS Numeric(18, 0)), CAST(1000244 AS Numeric(18, 0)), N'Zambia', N'ZM', N'Lusaka', N'260', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[COUNTRY] ([COUNTRYID], [CURRENCYID], [DESCRIPTION], [Alias], [CAPITAL], [DailCode], [isDefault], [Created], [Updated]) VALUES (CAST(1000245 AS Numeric(18, 0)), CAST(1000245 AS Numeric(18, 0)), N'Zimbabwe', N'ZW', N'Harare', N'263', 1, CAST(N'2018-03-06T00:48:33.053' AS DateTime), CAST(N'2018-03-06T00:48:33.053' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000001 AS Numeric(18, 0)), N'Afghanistan Afghani', N'AFN', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000002 AS Numeric(18, 0)), N'Albanian Lek', N'ALL', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000003 AS Numeric(18, 0)), N'Algerian Dinar', N'DZD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000004 AS Numeric(18, 0)), N'US Dollar', N'USD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000005 AS Numeric(18, 0)), N'Euro', N'EUR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000006 AS Numeric(18, 0)), N'Angolan Kwanza', N'AOA', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000007 AS Numeric(18, 0)), N'East Caribbean Dollar', N'XCD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000008 AS Numeric(18, 0)), N'East Caribbean Dollar', N'XCD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000009 AS Numeric(18, 0)), N'East Caribbean Dollar', N'XCD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000010 AS Numeric(18, 0)), N'Argentine Peso', N'ARS', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000011 AS Numeric(18, 0)), N'Armenian Dram', N'AMD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000012 AS Numeric(18, 0)), N'Aruban Guilder', N'AWG', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000013 AS Numeric(18, 0)), N'Australian Dollar', N'AUD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000014 AS Numeric(18, 0)), N'Euro', N'EUR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000015 AS Numeric(18, 0)), N'Azerbaijan New Manat', N'AZN', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000016 AS Numeric(18, 0)), N'Bahamian Dollar', N'BSD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000017 AS Numeric(18, 0)), N'Bahraini Dinar', N'BHD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000018 AS Numeric(18, 0)), N'Bangladeshi Taka', N'BDT', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000019 AS Numeric(18, 0)), N'Barbados Dollar', N'BBD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000020 AS Numeric(18, 0)), N'Belarussian Ruble', N'BYR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000021 AS Numeric(18, 0)), N'Euro', N'EUR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000022 AS Numeric(18, 0)), N'Belize Dollar', N'BZD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000023 AS Numeric(18, 0)), N'CFA Franc BCEAO', N'XOF', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000024 AS Numeric(18, 0)), N'Bermudian Dollar', N'BMD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000025 AS Numeric(18, 0)), N'Bhutan Ngultrum', N'BTN', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000026 AS Numeric(18, 0)), N'Boliviano', N'BOB', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000027 AS Numeric(18, 0)), N'Marka', N'BAM', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000028 AS Numeric(18, 0)), N'Botswana Pula', N'BWP', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000029 AS Numeric(18, 0)), N'Norwegian Krone', N'NOK', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000030 AS Numeric(18, 0)), N'Brazilian Real', N'BRL', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000031 AS Numeric(18, 0)), N'US Dollar', N'USD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000032 AS Numeric(18, 0)), N'Brunei Dollar', N'BND', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000033 AS Numeric(18, 0)), N'Bulgarian Lev', N'BGN', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000034 AS Numeric(18, 0)), N'CFA Franc BCEAO', N'XOF', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000035 AS Numeric(18, 0)), N'Burundi Franc', N'BIF', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000036 AS Numeric(18, 0)), N'Kampuchean Riel', N'KHR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000037 AS Numeric(18, 0)), N'CFA Franc BEAC', N'XAF', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000038 AS Numeric(18, 0)), N'Canadian Dollar', N'CAD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000039 AS Numeric(18, 0)), N'Cape Verde Escudo', N'CVE', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000040 AS Numeric(18, 0)), N'Cayman Islands Dollar', N'KYD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000041 AS Numeric(18, 0)), N'CFA Franc BEAC', N'XAF', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000042 AS Numeric(18, 0)), N'CFA Franc BEAC', N'XAF', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000043 AS Numeric(18, 0)), N'Chilean Peso', N'CLP', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000044 AS Numeric(18, 0)), N'Yuan Renminbi', N'CNY', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000045 AS Numeric(18, 0)), N'Australian Dollar', N'AUD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000046 AS Numeric(18, 0)), N'Australian Dollar', N'AUD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000047 AS Numeric(18, 0)), N'Colombian Peso', N'COP', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000048 AS Numeric(18, 0)), N'Comoros Franc', N'KMF', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000049 AS Numeric(18, 0)), N'CFA Franc BEAC', N'XAF', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000050 AS Numeric(18, 0)), N'Francs', N'CDF', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000051 AS Numeric(18, 0)), N'New Zealand Dollar', N'NZD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000052 AS Numeric(18, 0)), N'Costa Rican Colon', N'CRC', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000053 AS Numeric(18, 0)), N'Croatian Kuna', N'HRK', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000054 AS Numeric(18, 0)), N'Cuban Peso', N'CUP', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000055 AS Numeric(18, 0)), N'Euro', N'EUR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000056 AS Numeric(18, 0)), N'Czech Koruna', N'CZK', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000057 AS Numeric(18, 0)), N'Danish Krone', N'DKK', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000058 AS Numeric(18, 0)), N'Djibouti Franc', N'DJF', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000059 AS Numeric(18, 0)), N'East Caribbean Dollar', N'XCD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000060 AS Numeric(18, 0)), N'Dominican Peso', N'DOP', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000061 AS Numeric(18, 0)), N'Ecuador Sucre', N'ECS', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000062 AS Numeric(18, 0)), N'Egyptian Pound', N'EGP', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000063 AS Numeric(18, 0)), N'El Salvador Colon', N'SVC', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000064 AS Numeric(18, 0)), N'CFA Franc BEAC', N'XAF', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000065 AS Numeric(18, 0)), N'Eritrean Nakfa', N'ERN', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000066 AS Numeric(18, 0)), N'Euro', N'EUR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000067 AS Numeric(18, 0)), N'Ethiopian Birr', N'ETB', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000068 AS Numeric(18, 0)), N'Euro', N'EUR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000069 AS Numeric(18, 0)), N'Falkland Islands Pound', N'FKP', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000070 AS Numeric(18, 0)), N'Danish Krone', N'DKK', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000071 AS Numeric(18, 0)), N'Fiji Dollar', N'FJD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000072 AS Numeric(18, 0)), N'Euro', N'EUR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000073 AS Numeric(18, 0)), N'Euro', N'EUR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000074 AS Numeric(18, 0)), N'Euro', N'EUR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000075 AS Numeric(18, 0)), N'Euro', N'EUR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000076 AS Numeric(18, 0)), N'CFA Franc BEAC', N'XAF', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000077 AS Numeric(18, 0)), N'Gambian Dalasi', N'GMD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000078 AS Numeric(18, 0)), N'Georgian Lari', N'GEL', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000079 AS Numeric(18, 0)), N'Euro', N'EUR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000080 AS Numeric(18, 0)), N'Ghanaian Cedi', N'GHS', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000081 AS Numeric(18, 0)), N'Gibraltar Pound', N'GIP', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000082 AS Numeric(18, 0)), N'Pound Sterling', N'GBP', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000083 AS Numeric(18, 0)), N'Euro', N'EUR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000084 AS Numeric(18, 0)), N'Danish Krone', N'DKK', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000085 AS Numeric(18, 0)), N'East Carribean Dollar', N'XCD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000086 AS Numeric(18, 0)), N'Euro', N'EUR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000087 AS Numeric(18, 0)), N'US Dollar', N'USD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000088 AS Numeric(18, 0)), N'Guatemalan Quetzal', N'QTQ', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000089 AS Numeric(18, 0)), N'Pound Sterling', N'GGP', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000090 AS Numeric(18, 0)), N'Guinea Franc', N'GNF', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000091 AS Numeric(18, 0)), N'Guinea-Bissau Peso', N'GWP', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000092 AS Numeric(18, 0)), N'Guyana Dollar', N'GYD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000093 AS Numeric(18, 0)), N'Haitian Gourde', N'HTG', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000094 AS Numeric(18, 0)), N'Australian Dollar', N'AUD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000095 AS Numeric(18, 0)), N'Honduran Lempira', N'HNL', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000096 AS Numeric(18, 0)), N'Hong Kong Dollar', N'HKD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000097 AS Numeric(18, 0)), N'Hungarian Forint', N'HUF', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000098 AS Numeric(18, 0)), N'Iceland Krona', N'ISK', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000099 AS Numeric(18, 0)), N'Indian Rupee', N'INR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000100 AS Numeric(18, 0)), N'Indonesian Rupiah', N'IDR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000101 AS Numeric(18, 0)), N'', N'', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000102 AS Numeric(18, 0)), N'Iranian Rial', N'IRR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000103 AS Numeric(18, 0)), N'Iraqi Dinar', N'IQD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000104 AS Numeric(18, 0)), N'Euro', N'EUR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000105 AS Numeric(18, 0)), N'Pound Sterling', N'GBP', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000106 AS Numeric(18, 0)), N'Israeli New Shekel', N'ILS', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000107 AS Numeric(18, 0)), N'Euro', N'EUR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000108 AS Numeric(18, 0)), N'CFA Franc BCEAO', N'XOF', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000109 AS Numeric(18, 0)), N'Jamaican Dollar', N'JMD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000110 AS Numeric(18, 0)), N'Japanese Yen', N'JPY', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000111 AS Numeric(18, 0)), N'Pound Sterling', N'GBP', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000112 AS Numeric(18, 0)), N'Jordanian Dinar', N'JOD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000113 AS Numeric(18, 0)), N'Kazakhstan Tenge', N'KZT', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000114 AS Numeric(18, 0)), N'Kenyan Shilling', N'KES', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000115 AS Numeric(18, 0)), N'Australian Dollar', N'AUD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000116 AS Numeric(18, 0)), N'North Korean Won', N'KPW', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000117 AS Numeric(18, 0)), N'Korean Won', N'KRW', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000118 AS Numeric(18, 0)), N'Kuwaiti Dinar', N'KWD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000119 AS Numeric(18, 0)), N'Som', N'KGS', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000120 AS Numeric(18, 0)), N'Lao Kip', N'LAK', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000121 AS Numeric(18, 0)), N'Latvian Lats', N'LVL', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000122 AS Numeric(18, 0)), N'Lebanese Pound', N'LBP', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000123 AS Numeric(18, 0)), N'Lesotho Loti', N'LSL', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000124 AS Numeric(18, 0)), N'Liberian Dollar', N'LRD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000125 AS Numeric(18, 0)), N'Libyan Dinar', N'LYD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000126 AS Numeric(18, 0)), N'Swiss Franc', N'CHF', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000127 AS Numeric(18, 0)), N'Lithuanian Litas', N'LTL', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000128 AS Numeric(18, 0)), N'Euro', N'EUR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000129 AS Numeric(18, 0)), N'Macau Pataca', N'MOP', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000130 AS Numeric(18, 0)), N'Denar', N'MKD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000131 AS Numeric(18, 0)), N'Malagasy Franc', N'MGF', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000132 AS Numeric(18, 0)), N'Malawi Kwacha', N'MWK', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000133 AS Numeric(18, 0)), N'Malaysian Ringgit', N'MYR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000134 AS Numeric(18, 0)), N'Maldive Rufiyaa', N'MVR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000135 AS Numeric(18, 0)), N'CFA Franc BCEAO', N'XOF', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000136 AS Numeric(18, 0)), N'Euro', N'EUR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000137 AS Numeric(18, 0)), N'US Dollar', N'USD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000138 AS Numeric(18, 0)), N'Euro', N'EUR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000139 AS Numeric(18, 0)), N'Mauritanian Ouguiya', N'MRO', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000140 AS Numeric(18, 0)), N'Mauritius Rupee', N'MUR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000141 AS Numeric(18, 0)), N'Euro', N'EUR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000142 AS Numeric(18, 0)), N'Mexican Nuevo Peso', N'MXN', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000143 AS Numeric(18, 0)), N'US Dollar', N'USD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000144 AS Numeric(18, 0)), N'Moldovan Leu', N'MDL', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000145 AS Numeric(18, 0)), N'Euro', N'EUR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000146 AS Numeric(18, 0)), N'Mongolian Tugrik', N'MNT', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000147 AS Numeric(18, 0)), N'Euro', N'EUR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000148 AS Numeric(18, 0)), N'East Caribbean Dollar', N'XCD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000149 AS Numeric(18, 0)), N'Moroccan Dirham', N'MAD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000150 AS Numeric(18, 0)), N'Mozambique Metical', N'MZN', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000151 AS Numeric(18, 0)), N'Myanmar Kyat', N'MMK', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000152 AS Numeric(18, 0)), N'Namibian Dollar', N'NAD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000153 AS Numeric(18, 0)), N'Australian Dollar', N'AUD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000154 AS Numeric(18, 0)), N'Nepalese Rupee', N'NPR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000155 AS Numeric(18, 0)), N'Euro', N'EUR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000156 AS Numeric(18, 0)), N'Netherlands Antillean Guilder', N'ANG', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000157 AS Numeric(18, 0)), N'CFP Franc', N'XPF', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000158 AS Numeric(18, 0)), N'New Zealand Dollar', N'NZD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000159 AS Numeric(18, 0)), N'Nicaraguan Cordoba Oro', N'NIO', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000160 AS Numeric(18, 0)), N'CFA Franc BCEAO', N'XOF', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000161 AS Numeric(18, 0)), N'Nigerian Naira', N'NGN', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000162 AS Numeric(18, 0)), N'New Zealand Dollar', N'NZD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000163 AS Numeric(18, 0)), N'Australian Dollar', N'AUD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000164 AS Numeric(18, 0)), N'US Dollar', N'USD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000165 AS Numeric(18, 0)), N'Norwegian Krone', N'NOK', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000166 AS Numeric(18, 0)), N'Omani Rial', N'OMR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000167 AS Numeric(18, 0)), N'Pakistan Rupee', N'PKR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000168 AS Numeric(18, 0)), N'US Dollar', N'USD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000169 AS Numeric(18, 0)), N'Panamanian Balboa', N'PAB', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000170 AS Numeric(18, 0)), N'Papua New Guinea Kina', N'PGK', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000171 AS Numeric(18, 0)), N'Paraguay Guarani', N'PYG', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000172 AS Numeric(18, 0)), N'Peruvian Nuevo Sol', N'PEN', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000173 AS Numeric(18, 0)), N'Philippine Peso', N'PHP', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000174 AS Numeric(18, 0)), N'New Zealand Dollar', N'NZD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000175 AS Numeric(18, 0)), N'Polish Zloty', N'PLN', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000176 AS Numeric(18, 0)), N'CFP Franc', N'XPF', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000177 AS Numeric(18, 0)), N'Euro', N'EUR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000178 AS Numeric(18, 0)), N'US Dollar', N'USD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000179 AS Numeric(18, 0)), N'Qatari Rial', N'QAR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000180 AS Numeric(18, 0)), N'Euro', N'EUR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000181 AS Numeric(18, 0)), N'Romanian New Leu', N'RON', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000182 AS Numeric(18, 0)), N'Russian Ruble', N'RUB', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000183 AS Numeric(18, 0)), N'Rwanda Franc', N'RWF', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000184 AS Numeric(18, 0)), N'St. Helena Pound', N'SHP', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000185 AS Numeric(18, 0)), N'East Caribbean Dollar', N'XCD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000186 AS Numeric(18, 0)), N'East Caribbean Dollar', N'XCD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000187 AS Numeric(18, 0)), N'Euro', N'EUR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000188 AS Numeric(18, 0)), N'East Caribbean Dollar', N'XCD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000189 AS Numeric(18, 0)), N'Samoan Tala', N'WST', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000190 AS Numeric(18, 0)), N'Euro', N'EUR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000191 AS Numeric(18, 0)), N'Dobra', N'STD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000192 AS Numeric(18, 0)), N'Saudi Riyal', N'SAR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000193 AS Numeric(18, 0)), N'CFA Franc BCEAO', N'XOF', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000194 AS Numeric(18, 0)), N'Dinar', N'RSD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000195 AS Numeric(18, 0)), N'Seychelles Rupee', N'SCR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000196 AS Numeric(18, 0)), N'Sierra Leone Leone', N'SLL', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000197 AS Numeric(18, 0)), N'Singapore Dollar', N'SGD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000198 AS Numeric(18, 0)), N'Euro', N'EUR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000199 AS Numeric(18, 0)), N'Euro', N'EUR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000200 AS Numeric(18, 0)), N'Solomon Islands Dollar', N'SBD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000201 AS Numeric(18, 0)), N'Somali Shilling', N'SOS', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000202 AS Numeric(18, 0)), N'South African Rand', N'ZAR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000203 AS Numeric(18, 0)), N'Pound Sterling', N'GBP', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000204 AS Numeric(18, 0)), N'South Sudan Pound', N'SSP', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000205 AS Numeric(18, 0)), N'Euro', N'EUR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000206 AS Numeric(18, 0)), N'Sri Lanka Rupee', N'LKR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000207 AS Numeric(18, 0)), N'Sudanese Pound', N'SDG', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000208 AS Numeric(18, 0)), N'Surinam Dollar', N'SRD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000209 AS Numeric(18, 0)), N'Norwegian Krone', N'NOK', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000210 AS Numeric(18, 0)), N'Swaziland Lilangeni', N'SZL', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000211 AS Numeric(18, 0)), N'Swedish Krona', N'SEK', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000212 AS Numeric(18, 0)), N'Swiss Franc', N'CHF', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000213 AS Numeric(18, 0)), N'Syrian Pound', N'SYP', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000214 AS Numeric(18, 0)), N'Taiwan Dollar', N'TWD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000215 AS Numeric(18, 0)), N'Tajik Somoni', N'TJS', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000216 AS Numeric(18, 0)), N'Tanzanian Shilling', N'TZS', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000217 AS Numeric(18, 0)), N'Thai Baht', N'THB', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000218 AS Numeric(18, 0)), N'CFA Franc BCEAO', N'XOF', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000219 AS Numeric(18, 0)), N'New Zealand Dollar', N'NZD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000220 AS Numeric(18, 0)), N'Tongan Pa''anga', N'TOP', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000221 AS Numeric(18, 0)), N'Trinidad and Tobago Dollar', N'TTD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000222 AS Numeric(18, 0)), N'Tunisian Dollar', N'TND', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000223 AS Numeric(18, 0)), N'Turkish Lira', N'TRY', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000224 AS Numeric(18, 0)), N'Manat', N'TMT', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000225 AS Numeric(18, 0)), N'US Dollar', N'USD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000226 AS Numeric(18, 0)), N'Australian Dollar', N'AUD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000227 AS Numeric(18, 0)), N'Pound Sterling', N'GBP', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000228 AS Numeric(18, 0)), N'US Dollar', N'USD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000229 AS Numeric(18, 0)), N'US Dollar', N'USD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000230 AS Numeric(18, 0)), N'Uganda Shilling', N'UGX', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000231 AS Numeric(18, 0)), N'Ukraine Hryvnia', N'UAH', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000232 AS Numeric(18, 0)), N'Arab Emirates Dirham', N'AED', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000233 AS Numeric(18, 0)), N'Uruguayan Peso', N'UYU', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000234 AS Numeric(18, 0)), N'Uzbekistan Sum', N'UZS', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000235 AS Numeric(18, 0)), N'Vanuatu Vatu', N'VUV', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000236 AS Numeric(18, 0)), N'Euro', N'EUR', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000237 AS Numeric(18, 0)), N'Venezuelan Bolivar', N'VEF', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000238 AS Numeric(18, 0)), N'Vietnamese Dong', N'VND', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000239 AS Numeric(18, 0)), N'US Dollar', N'USD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000240 AS Numeric(18, 0)), N'US Dollar', N'USD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000241 AS Numeric(18, 0)), N'CFP Franc', N'XPF', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000242 AS Numeric(18, 0)), N'Moroccan Dirham', N'MAD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000243 AS Numeric(18, 0)), N'Yemeni Rial', N'YER', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000244 AS Numeric(18, 0)), N'Zambian Kwacha', N'ZMW', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[CURRENCY] ([CURRENCYID], [DESCRIPTION], [Alias], [Symbol], [isDefault], [Created], [Updated]) VALUES (CAST(1000245 AS Numeric(18, 0)), N'Zimbabwe Dollar', N'ZWD', N'', 1, CAST(N'2018-03-06T00:48:32.967' AS DateTime), CAST(N'2018-03-06T00:48:32.967' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000001 AS Numeric(18, 0)), CAST(1000001 AS Numeric(18, 0)), N'Literate', N'LT', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000002 AS Numeric(18, 0)), CAST(1000002 AS Numeric(18, 0)), N'Pre-Primary', N'PRE-PRI', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000003 AS Numeric(18, 0)), CAST(1000003 AS Numeric(18, 0)), N'Primary', N'PRI', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000004 AS Numeric(18, 0)), CAST(1000003 AS Numeric(18, 0)), N'Hafiz-e-Quran', N'HQ', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000005 AS Numeric(18, 0)), CAST(1000004 AS Numeric(18, 0)), N'Middle', N'MID', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000006 AS Numeric(18, 0)), CAST(1000005 AS Numeric(18, 0)), N'Matric (Arts)', N'MAT', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000007 AS Numeric(18, 0)), CAST(1000005 AS Numeric(18, 0)), N'Matric (Science)', N'MAT', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000008 AS Numeric(18, 0)), CAST(1000005 AS Numeric(18, 0)), N'O Level', N'OL', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000009 AS Numeric(18, 0)), CAST(1000007 AS Numeric(18, 0)), N'Associate Degree (in technical, vocational, Professional ?elds)', N'AD', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000010 AS Numeric(18, 0)), CAST(1000007 AS Numeric(18, 0)), N'Faculty of Arts', N'FA', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000011 AS Numeric(18, 0)), CAST(1000007 AS Numeric(18, 0)), N'Faculty of Science', N'FSc', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000012 AS Numeric(18, 0)), CAST(1000007 AS Numeric(18, 0)), N'A Level', N'AL', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000013 AS Numeric(18, 0)), CAST(1000006 AS Numeric(18, 0)), N'Diploma of Computer Sciences', N'DCS', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000014 AS Numeric(18, 0)), CAST(1000006 AS Numeric(18, 0)), N'Diploma of Information Technology', N'DIT', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000015 AS Numeric(18, 0)), CAST(1000006 AS Numeric(18, 0)), N'Diploma of Associate Engineering', N'DAE', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000016 AS Numeric(18, 0)), CAST(1000008 AS Numeric(18, 0)), N'Bachelor of Arts', N'BA', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000017 AS Numeric(18, 0)), CAST(1000008 AS Numeric(18, 0)), N'Bachelor of Business Administration', N'BBA', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000018 AS Numeric(18, 0)), CAST(1000008 AS Numeric(18, 0)), N'Bachelor of Commerce (Honours) ', N'B.Com (Hons)', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000019 AS Numeric(18, 0)), CAST(1000008 AS Numeric(18, 0)), N'Bachelor of Engineering', N'BE', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000020 AS Numeric(18, 0)), CAST(1000008 AS Numeric(18, 0)), N'Bachelor of Technology', N'B.Tech', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000021 AS Numeric(18, 0)), CAST(1000008 AS Numeric(18, 0)), N'Bachelor of Science (Engineering)', N'BSc (Engg.)', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000022 AS Numeric(18, 0)), CAST(1000008 AS Numeric(18, 0)), N'Bachelor of Computer Sciences', N'BCS', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000023 AS Numeric(18, 0)), CAST(1000008 AS Numeric(18, 0)), N'Bachelor of Science (Honors)', N'BSc (Hons)', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000024 AS Numeric(18, 0)), CAST(1000008 AS Numeric(18, 0)), N'Bachelor of Education (Honors)', N'B.Ed. (Hons)', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000025 AS Numeric(18, 0)), CAST(1000008 AS Numeric(18, 0)), N'Bachelor of Fine Arts', N'BFA ', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000026 AS Numeric(18, 0)), CAST(1000008 AS Numeric(18, 0)), N'Bachelor of Pharmacy ', N'B. Pharm', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000027 AS Numeric(18, 0)), CAST(1000008 AS Numeric(18, 0)), N'Bachelor of Science', N'BS', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000028 AS Numeric(18, 0)), CAST(1000008 AS Numeric(18, 0)), N'Bachelor of Science (Textile)', N'BSc/BE/BS', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000029 AS Numeric(18, 0)), CAST(1000008 AS Numeric(18, 0)), N'Bachelor of Science (Industrial Engg.)', N'BSc/BE/BS', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000030 AS Numeric(18, 0)), CAST(1000008 AS Numeric(18, 0)), N'Bachelor of Science (Chemicla)', N'BSc/BE/BS', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000031 AS Numeric(18, 0)), CAST(1000008 AS Numeric(18, 0)), N'Bachelor of Science (Mechanical)', N'BSc/BE/BS', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000032 AS Numeric(18, 0)), CAST(1000008 AS Numeric(18, 0)), N'Bachelor of Science (Electrical)', N'BSc/BE/BS', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000033 AS Numeric(18, 0)), CAST(1000008 AS Numeric(18, 0)), N'Bachelor of Science (Civil)', N'BSc/BE/BS', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000034 AS Numeric(18, 0)), CAST(1000008 AS Numeric(18, 0)), N'Bachelor of Science (Electronics)', N'BSc/BE/BS', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000035 AS Numeric(18, 0)), CAST(1000008 AS Numeric(18, 0)), N'Bachelor of Science (Mechatronics)', N'BSc/BE/BS', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000036 AS Numeric(18, 0)), CAST(1000008 AS Numeric(18, 0)), N'Doctor of Pharmacy', N'Pharm D.', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000037 AS Numeric(18, 0)), CAST(1000008 AS Numeric(18, 0)), N'Bachelor of Dental Surgery', N'BDS', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000038 AS Numeric(18, 0)), CAST(1000008 AS Numeric(18, 0)), N'Doctor of Veterinary Medicine', N'DVM', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000039 AS Numeric(18, 0)), CAST(1000008 AS Numeric(18, 0)), N'Bachelor of Law', N'LL.B', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000040 AS Numeric(18, 0)), CAST(1000009 AS Numeric(18, 0)), N'Master of Law', N'LL.M', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000041 AS Numeric(18, 0)), CAST(1000009 AS Numeric(18, 0)), N'Master of Arts', N'MA', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000042 AS Numeric(18, 0)), CAST(1000009 AS Numeric(18, 0)), N'Master of Business Administration ', N'MBA', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000043 AS Numeric(18, 0)), CAST(1000009 AS Numeric(18, 0)), N'Master of Business Administration (Marketing)', N'MBA/MKT', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000044 AS Numeric(18, 0)), CAST(1000009 AS Numeric(18, 0)), N'Master of Business Administration (Finance)', N'MBA/FIN', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000045 AS Numeric(18, 0)), CAST(1000009 AS Numeric(18, 0)), N'Master of Business Administration (Management)', N'MBA/MGT', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000046 AS Numeric(18, 0)), CAST(1000009 AS Numeric(18, 0)), N'Master of Business Administration (HR)', N'MBA/HR', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000047 AS Numeric(18, 0)), CAST(1000009 AS Numeric(18, 0)), N'Master of Business Administration (IT)', N'MBA/IT', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000048 AS Numeric(18, 0)), CAST(1000009 AS Numeric(18, 0)), N'Bachelor of Medicine & Bachelor of Surgery ', N'MBBS', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000049 AS Numeric(18, 0)), CAST(1000009 AS Numeric(18, 0)), N'Doctor of Medicine', N'MD', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000050 AS Numeric(18, 0)), CAST(1000009 AS Numeric(18, 0)), N'Master of Engineering', N'M.E', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000051 AS Numeric(18, 0)), CAST(1000009 AS Numeric(18, 0)), N'Master of Technology', N'M.Tech', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000052 AS Numeric(18, 0)), CAST(1000009 AS Numeric(18, 0)), N'Master of Information Technology', N'MIT', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000053 AS Numeric(18, 0)), CAST(1000009 AS Numeric(18, 0)), N'Master of Education ', N'M.Ed.', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000054 AS Numeric(18, 0)), CAST(1000009 AS Numeric(18, 0)), N'Master of Fine Arts ', N'MFA', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000055 AS Numeric(18, 0)), CAST(1000009 AS Numeric(18, 0)), N'Master of Library Sciences ', N'MLS', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000056 AS Numeric(18, 0)), CAST(1000009 AS Numeric(18, 0)), N'Master of Public Administration', N'MPA', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000057 AS Numeric(18, 0)), CAST(1000009 AS Numeric(18, 0)), N'Master of Pharmacy ', N'M. Pharm', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000058 AS Numeric(18, 0)), CAST(1000009 AS Numeric(18, 0)), N'Master of Philosophy ', N'Mphil', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000059 AS Numeric(18, 0)), CAST(1000009 AS Numeric(18, 0)), N'Master of Public Health ', N'MPH', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000060 AS Numeric(18, 0)), CAST(1000009 AS Numeric(18, 0)), N'Master of Computer Sciences', N'MCS', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000061 AS Numeric(18, 0)), CAST(1000009 AS Numeric(18, 0)), N'Master of Commerce', N'M.Com', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000062 AS Numeric(18, 0)), CAST(1000009 AS Numeric(18, 0)), N'Master of Science', N'MS/MSc', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000063 AS Numeric(18, 0)), CAST(1000009 AS Numeric(18, 0)), N'Master of Science (Honours)', N'MSc (Hons)', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[DEGREE] ([ID], [QUALIFICATIONID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(1000064 AS Numeric(18, 0)), CAST(1000010 AS Numeric(18, 0)), N'Doctor of Philosophy ', N'PhD', 1, 1, CAST(N'2018-03-06T00:48:33.373' AS DateTime), CAST(N'2018-03-06T00:48:33.373' AS DateTime))
GO
INSERT [dbo].[QUALevels] ([ID], [DESCRIPTION], [DESCR], [DESCRDegree], [Alias], [Level], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(100001 AS Numeric(18, 0)), N'Literate', N'', N'', N'', CAST(0 AS Numeric(5, 0)), 1, 1, CAST(N'2018-03-06T00:48:33.317' AS DateTime), CAST(N'2018-03-06T00:48:33.317' AS DateTime))
GO
INSERT [dbo].[QUALevels] ([ID], [DESCRIPTION], [DESCR], [DESCRDegree], [Alias], [Level], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(100002 AS Numeric(18, 0)), N'Pre-Primary', N'', N'1 - 2 Years', N'PRE-PRI', CAST(1 AS Numeric(5, 0)), 1, 1, CAST(N'2018-03-06T00:48:33.317' AS DateTime), CAST(N'2018-03-06T00:48:33.317' AS DateTime))
GO
INSERT [dbo].[QUALevels] ([ID], [DESCRIPTION], [DESCR], [DESCRDegree], [Alias], [Level], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(100003 AS Numeric(18, 0)), N'Primary', N'', N'1 - 5 Years', N'PRI', CAST(1 AS Numeric(5, 0)), 1, 1, CAST(N'2018-03-06T00:48:33.317' AS DateTime), CAST(N'2018-03-06T00:48:33.317' AS DateTime))
GO
INSERT [dbo].[QUALevels] ([ID], [DESCRIPTION], [DESCR], [DESCRDegree], [Alias], [Level], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(100004 AS Numeric(18, 0)), N'Middle', N'', N'3 Years', N'MID', CAST(2 AS Numeric(5, 0)), 1, 1, CAST(N'2018-03-06T00:48:33.317' AS DateTime), CAST(N'2018-03-06T00:48:33.317' AS DateTime))
GO
INSERT [dbo].[QUALevels] ([ID], [DESCRIPTION], [DESCR], [DESCRDegree], [Alias], [Level], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(100005 AS Numeric(18, 0)), N'Secondary School Certificate', N'Matric', N'9 - 10 Years', N'SSC', CAST(3 AS Numeric(5, 0)), 1, 1, CAST(N'2018-03-06T00:48:33.317' AS DateTime), CAST(N'2018-03-06T00:48:33.317' AS DateTime))
GO
INSERT [dbo].[QUALevels] ([ID], [DESCRIPTION], [DESCR], [DESCRDegree], [Alias], [Level], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(100006 AS Numeric(18, 0)), N'Higher Secondary School Certificate', N'F.A, F.Sc, ICS, I.Com, DBA, D.Com etc', N'11 - 12 Years', N'HSSC', CAST(4 AS Numeric(5, 0)), 1, 1, CAST(N'2018-03-06T00:48:33.317' AS DateTime), CAST(N'2018-03-06T00:48:33.317' AS DateTime))
GO
INSERT [dbo].[QUALevels] ([ID], [DESCRIPTION], [DESCR], [DESCRDegree], [Alias], [Level], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(100007 AS Numeric(18, 0)), N'Associate Ordinary Bachelor', N'BA/ BSc(Pass), ADE, Associate Degrees etc', N'13 - 14 Years', N'AOB', CAST(5 AS Numeric(5, 0)), 1, 1, CAST(N'2018-03-06T00:48:33.317' AS DateTime), CAST(N'2018-03-06T00:48:33.317' AS DateTime))
GO
INSERT [dbo].[QUALevels] ([ID], [DESCRIPTION], [DESCR], [DESCRDegree], [Alias], [Level], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(100008 AS Numeric(18, 0)), N'Bachelor', N'BS, B.E, B. Arch, BSc (Eng.), BSc (Agri), MA / MSc (16 Years), LLB, B.Com (Hons), MBBA, DVM, PharmD etc', N'15 - 16 Years', N'B', CAST(6 AS Numeric(5, 0)), 1, 1, CAST(N'2018-03-06T00:48:33.317' AS DateTime), CAST(N'2018-03-06T00:48:33.317' AS DateTime))
GO
INSERT [dbo].[QUALevels] ([ID], [DESCRIPTION], [DESCR], [DESCRDegree], [Alias], [Level], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(100009 AS Numeric(18, 0)), N'Masters', N'M.Phil/ MS / MBA, M.Sc (Eng), M.E, March etc', N'17 - 18 Years', N'M', CAST(7 AS Numeric(5, 0)), 1, 1, CAST(N'2018-03-06T00:48:33.317' AS DateTime), CAST(N'2018-03-06T00:48:33.317' AS DateTime))
GO
INSERT [dbo].[QUALevels] ([ID], [DESCRIPTION], [DESCR], [DESCRDegree], [Alias], [Level], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(100010 AS Numeric(18, 0)), N'Doctoral', N'PhD', N'19 - 21 Years', N'D', CAST(8 AS Numeric(5, 0)), 1, 1, CAST(N'2018-03-06T00:48:33.317' AS DateTime), CAST(N'2018-03-06T00:48:33.317' AS DateTime))
GO
INSERT [dbo].[QUALIFICATION] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated], [QUALevelsID]) VALUES (CAST(1000001 AS Numeric(18, 0)), N'Litrate', N'LT', 1, 1, CAST(N'2018-03-06T00:48:33.337' AS DateTime), CAST(N'2018-03-06T00:48:33.337' AS DateTime), CAST(100001 AS Numeric(18, 0)))
GO
INSERT [dbo].[QUALIFICATION] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated], [QUALevelsID]) VALUES (CAST(1000002 AS Numeric(18, 0)), N'Pre-Primary', N'PRE-PRI', 1, 1, CAST(N'2018-03-06T00:48:33.337' AS DateTime), CAST(N'2018-03-06T00:48:33.337' AS DateTime), CAST(100002 AS Numeric(18, 0)))
GO
INSERT [dbo].[QUALIFICATION] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated], [QUALevelsID]) VALUES (CAST(1000003 AS Numeric(18, 0)), N'Primary', N'PRI', 1, 1, CAST(N'2018-03-06T00:48:33.337' AS DateTime), CAST(N'2018-03-06T00:48:33.337' AS DateTime), CAST(100003 AS Numeric(18, 0)))
GO
INSERT [dbo].[QUALIFICATION] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated], [QUALevelsID]) VALUES (CAST(1000004 AS Numeric(18, 0)), N'Middle', N'MID', 1, 1, CAST(N'2018-03-06T00:48:33.337' AS DateTime), CAST(N'2018-03-06T00:48:33.337' AS DateTime), CAST(100004 AS Numeric(18, 0)))
GO
INSERT [dbo].[QUALIFICATION] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated], [QUALevelsID]) VALUES (CAST(1000005 AS Numeric(18, 0)), N'Matric', N'MAT', 1, 1, CAST(N'2018-03-06T00:48:33.337' AS DateTime), CAST(N'2018-03-06T00:48:33.337' AS DateTime), CAST(100005 AS Numeric(18, 0)))
GO
INSERT [dbo].[QUALIFICATION] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated], [QUALevelsID]) VALUES (CAST(1000006 AS Numeric(18, 0)), N'Diploma', N'DIP', 1, 1, CAST(N'2018-03-06T00:48:33.337' AS DateTime), CAST(N'2018-03-06T00:48:33.337' AS DateTime), CAST(100005 AS Numeric(18, 0)))
GO
INSERT [dbo].[QUALIFICATION] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated], [QUALevelsID]) VALUES (CAST(1000007 AS Numeric(18, 0)), N'Intermediate', N'INT', 1, 1, CAST(N'2018-03-06T00:48:33.337' AS DateTime), CAST(N'2018-03-06T00:48:33.337' AS DateTime), CAST(100006 AS Numeric(18, 0)))
GO
INSERT [dbo].[QUALIFICATION] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated], [QUALevelsID]) VALUES (CAST(1000008 AS Numeric(18, 0)), N'Bachelors Degree', N'BA', 1, 1, CAST(N'2018-03-06T00:48:33.337' AS DateTime), CAST(N'2018-03-06T00:48:33.337' AS DateTime), CAST(100008 AS Numeric(18, 0)))
GO
INSERT [dbo].[QUALIFICATION] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated], [QUALevelsID]) VALUES (CAST(1000009 AS Numeric(18, 0)), N'Masters Degree', N'MA', 1, 1, CAST(N'2018-03-06T00:48:33.337' AS DateTime), CAST(N'2018-03-06T00:48:33.337' AS DateTime), CAST(100009 AS Numeric(18, 0)))
GO
INSERT [dbo].[QUALIFICATION] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated], [QUALevelsID]) VALUES (CAST(1000010 AS Numeric(18, 0)), N'PhD', N'PhD', 1, 1, CAST(N'2018-03-06T00:48:33.337' AS DateTime), CAST(N'2018-03-06T00:48:33.337' AS DateTime), CAST(100010 AS Numeric(18, 0)))
GO
INSERT [dbo].[RELATIONTYPE] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(100001 AS Numeric(18, 0)), N'Father', N'', 1, 1, CAST(N'2018-03-06T00:48:33.270' AS DateTime), CAST(N'2018-03-06T00:48:33.270' AS DateTime))
GO
INSERT [dbo].[RELATIONTYPE] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(100002 AS Numeric(18, 0)), N'Mother', N'', 1, 1, CAST(N'2018-03-06T00:48:33.270' AS DateTime), CAST(N'2018-03-06T00:48:33.270' AS DateTime))
GO
INSERT [dbo].[RELATIONTYPE] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(100003 AS Numeric(18, 0)), N'Spouse', N'', 1, 1, CAST(N'2018-03-06T00:48:33.270' AS DateTime), CAST(N'2018-03-06T00:48:33.270' AS DateTime))
GO
INSERT [dbo].[RELATIONTYPE] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(100004 AS Numeric(18, 0)), N'Husband', N'', 1, 1, CAST(N'2018-03-06T00:48:33.270' AS DateTime), CAST(N'2018-03-06T00:48:33.270' AS DateTime))
GO
INSERT [dbo].[RELATIONTYPE] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(100005 AS Numeric(18, 0)), N'Wife', N'', 1, 1, CAST(N'2018-03-06T00:48:33.270' AS DateTime), CAST(N'2018-03-06T00:48:33.270' AS DateTime))
GO
INSERT [dbo].[RELATIONTYPE] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(100006 AS Numeric(18, 0)), N'Son', N'', 1, 1, CAST(N'2018-03-06T00:48:33.270' AS DateTime), CAST(N'2018-03-06T00:48:33.270' AS DateTime))
GO
INSERT [dbo].[RELATIONTYPE] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(100007 AS Numeric(18, 0)), N'Daughter', N'', 1, 1, CAST(N'2018-03-06T00:48:33.270' AS DateTime), CAST(N'2018-03-06T00:48:33.270' AS DateTime))
GO
INSERT [dbo].[RELATIONTYPE] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(100008 AS Numeric(18, 0)), N'Brother', N'', 1, 1, CAST(N'2018-03-06T00:48:33.270' AS DateTime), CAST(N'2018-03-06T00:48:33.270' AS DateTime))
GO
INSERT [dbo].[RELATIONTYPE] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(100009 AS Numeric(18, 0)), N'Sister', N'', 1, 1, CAST(N'2018-03-06T00:48:33.270' AS DateTime), CAST(N'2018-03-06T00:48:33.270' AS DateTime))
GO
INSERT [dbo].[RELATIONTYPE] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(100010 AS Numeric(18, 0)), N'Grand Parent', N'', 1, 1, CAST(N'2018-03-06T00:48:33.270' AS DateTime), CAST(N'2018-03-06T00:48:33.270' AS DateTime))
GO
INSERT [dbo].[RELATIONTYPE] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(100011 AS Numeric(18, 0)), N'Guardian', N'', 1, 1, CAST(N'2018-03-06T00:48:33.270' AS DateTime), CAST(N'2018-03-06T00:48:33.270' AS DateTime))
GO
INSERT [dbo].[RELATIONTYPE] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(100012 AS Numeric(18, 0)), N'Grand Mother', N'', 1, 1, CAST(N'2018-03-06T00:48:33.270' AS DateTime), CAST(N'2018-03-06T00:48:33.270' AS DateTime))
GO
INSERT [dbo].[RELATIONTYPE] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(100013 AS Numeric(18, 0)), N'Grand Father', N'', 1, 1, CAST(N'2018-03-06T00:48:33.270' AS DateTime), CAST(N'2018-03-06T00:48:33.270' AS DateTime))
GO
INSERT [dbo].[RELATIONTYPE] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(100014 AS Numeric(18, 0)), N'Grand Son', N'', 1, 1, CAST(N'2018-03-06T00:48:33.270' AS DateTime), CAST(N'2018-03-06T00:48:33.270' AS DateTime))
GO
INSERT [dbo].[RELATIONTYPE] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(100015 AS Numeric(18, 0)), N'Grand Daughter', N'', 1, 1, CAST(N'2018-03-06T00:48:33.270' AS DateTime), CAST(N'2018-03-06T00:48:33.270' AS DateTime))
GO
INSERT [dbo].[RELATIONTYPE] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(100016 AS Numeric(18, 0)), N'Uncle', N'', 1, 1, CAST(N'2018-03-06T00:48:33.270' AS DateTime), CAST(N'2018-03-06T00:48:33.270' AS DateTime))
GO
INSERT [dbo].[RELATIONTYPE] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(100017 AS Numeric(18, 0)), N'Aunt', N'', 1, 1, CAST(N'2018-03-06T00:48:33.270' AS DateTime), CAST(N'2018-03-06T00:48:33.270' AS DateTime))
GO
INSERT [dbo].[RELATIONTYPE] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(100018 AS Numeric(18, 0)), N'Cousin', N'', 1, 1, CAST(N'2018-03-06T00:48:33.270' AS DateTime), CAST(N'2018-03-06T00:48:33.270' AS DateTime))
GO
INSERT [dbo].[RELATIONTYPE] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(100019 AS Numeric(18, 0)), N'Nephew', N'', 1, 1, CAST(N'2018-03-06T00:48:33.270' AS DateTime), CAST(N'2018-03-06T00:48:33.270' AS DateTime))
GO
INSERT [dbo].[RELATIONTYPE] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(100020 AS Numeric(18, 0)), N'Niece', N'', 1, 1, CAST(N'2018-03-06T00:48:33.270' AS DateTime), CAST(N'2018-03-06T00:48:33.270' AS DateTime))
GO
INSERT [dbo].[RELATIONTYPE] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(100021 AS Numeric(18, 0)), N'Father-in-Law', N'', 1, 1, CAST(N'2018-03-06T00:48:33.270' AS DateTime), CAST(N'2018-03-06T00:48:33.270' AS DateTime))
GO
INSERT [dbo].[RELATIONTYPE] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(100022 AS Numeric(18, 0)), N'Mother-in-Law', N'', 1, 1, CAST(N'2018-03-06T00:48:33.270' AS DateTime), CAST(N'2018-03-06T00:48:33.270' AS DateTime))
GO
INSERT [dbo].[RELATIONTYPE] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(100023 AS Numeric(18, 0)), N'Brother-in-Law', N'', 1, 1, CAST(N'2018-03-06T00:48:33.270' AS DateTime), CAST(N'2018-03-06T00:48:33.270' AS DateTime))
GO
INSERT [dbo].[RELATIONTYPE] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(100024 AS Numeric(18, 0)), N'Sister-in-Law', N'', 1, 1, CAST(N'2018-03-06T00:48:33.270' AS DateTime), CAST(N'2018-03-06T00:48:33.270' AS DateTime))
GO
INSERT [dbo].[RELATIONTYPE] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(100025 AS Numeric(18, 0)), N'Step Father', N'', 1, 1, CAST(N'2018-03-06T00:48:33.270' AS DateTime), CAST(N'2018-03-06T00:48:33.270' AS DateTime))
GO
INSERT [dbo].[RELATIONTYPE] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(100026 AS Numeric(18, 0)), N'Step Mother', N'', 1, 1, CAST(N'2018-03-06T00:48:33.270' AS DateTime), CAST(N'2018-03-06T00:48:33.270' AS DateTime))
GO
INSERT [dbo].[RELATIONTYPE] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(100027 AS Numeric(18, 0)), N'Step Brother', N'', 1, 1, CAST(N'2018-03-06T00:48:33.270' AS DateTime), CAST(N'2018-03-06T00:48:33.270' AS DateTime))
GO
INSERT [dbo].[RELATIONTYPE] ([ID], [DESCRIPTION], [Alias], [isDefault], [isActive], [Created], [Updated]) VALUES (CAST(100028 AS Numeric(18, 0)), N'Step Sister', N'', 1, 1, CAST(N'2018-03-06T00:48:33.270' AS DateTime), CAST(N'2018-03-06T00:48:33.270' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[RELIGION] ON 
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100000 AS Numeric(18, 0)), N'Islam', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100001 AS Numeric(18, 0)), N'Agnosticism', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100002 AS Numeric(18, 0)), N'Amish', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100003 AS Numeric(18, 0)), N'Ancestor Worship', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100004 AS Numeric(18, 0)), N'Animism', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100005 AS Numeric(18, 0)), N'Asatrú', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100006 AS Numeric(18, 0)), N'Atheism', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100007 AS Numeric(18, 0)), N'Aum Shinrikyo', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100008 AS Numeric(18, 0)), N'Bahá''Í Faith', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100009 AS Numeric(18, 0)), N'Brahma Kumari', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100010 AS Numeric(18, 0)), N'Branch Davidians', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100011 AS Numeric(18, 0)), N'Buddhism', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100012 AS Numeric(18, 0)), N'Celtic Paganism', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100013 AS Numeric(18, 0)), N'Chen Tao', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100014 AS Numeric(18, 0)), N'Chinese Religion', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100015 AS Numeric(18, 0)), N'Christadelphians', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100016 AS Numeric(18, 0)), N'Christian Apostolic Church In Zion', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100017 AS Numeric(18, 0)), N'Christianity', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100018 AS Numeric(18, 0)), N'Concerned Christians', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100019 AS Numeric(18, 0)), N'Confucianism', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100020 AS Numeric(18, 0)), N'Dami Xuanjiao', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100021 AS Numeric(18, 0)), N'Deism', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100022 AS Numeric(18, 0)), N'Divine Lightmission', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100023 AS Numeric(18, 0)), N'Druidism ', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100024 AS Numeric(18, 0)), N'Druze', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100025 AS Numeric(18, 0)), N'Dualism', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100026 AS Numeric(18, 0)), N'Ebionites', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100027 AS Numeric(18, 0)), N'Eckankar', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100028 AS Numeric(18, 0)), N'Gnosticism', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100029 AS Numeric(18, 0)), N'Hare Krishna', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100030 AS Numeric(18, 0)), N'Heathenism', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100031 AS Numeric(18, 0)), N'Heaven''S Gate', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100032 AS Numeric(18, 0)), N'Hinduism', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100033 AS Numeric(18, 0)), N'Hookers For Jesus / The Family Of God', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100034 AS Numeric(18, 0)), N'Humanism', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100035 AS Numeric(18, 0)), N'Jainism', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100036 AS Numeric(18, 0)), N'Jedi Knights', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100037 AS Numeric(18, 0)), N'Jehovah''S Witnesses', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100038 AS Numeric(18, 0)), N'Judaism', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100039 AS Numeric(18, 0)), N'Mennonite', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100040 AS Numeric(18, 0)), N'Mithraism ', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100041 AS Numeric(18, 0)), N'Monotheism', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100042 AS Numeric(18, 0)), N'Mysticism', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100043 AS Numeric(18, 0)), N'Native American Church', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100044 AS Numeric(18, 0)), N'New Age', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100045 AS Numeric(18, 0)), N'No Religion', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100046 AS Numeric(18, 0)), N'Occultism', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100047 AS Numeric(18, 0)), N'Order Of The Solar Temple', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100048 AS Numeric(18, 0)), N'Paganism', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100049 AS Numeric(18, 0)), N'Pantheism', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100050 AS Numeric(18, 0)), N'Pastafarianism', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100051 AS Numeric(18, 0)), N'People''S Temple', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100052 AS Numeric(18, 0)), N'Polytheism', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100053 AS Numeric(18, 0)), N'Raja Yoga', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100054 AS Numeric(18, 0)), N'Rastafarian', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100055 AS Numeric(18, 0)), N'Ravidassia', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100056 AS Numeric(18, 0)), N'Salvation Army', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100057 AS Numeric(18, 0)), N'Santería', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100058 AS Numeric(18, 0)), N'Satanism', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100059 AS Numeric(18, 0)), N'Scientology', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100060 AS Numeric(18, 0)), N'Shamanism', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100061 AS Numeric(18, 0)), N'Shinto', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100062 AS Numeric(18, 0)), N'Sikhism', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100063 AS Numeric(18, 0)), N'Spiritualism', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100064 AS Numeric(18, 0)), N'Taoism ', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100065 AS Numeric(18, 0)), N'Theism', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100066 AS Numeric(18, 0)), N'Thelema', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100067 AS Numeric(18, 0)), N'Theosophy', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100068 AS Numeric(18, 0)), N'Traditional African Church', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100069 AS Numeric(18, 0)), N'Unification Church', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100070 AS Numeric(18, 0)), N'Unitarianism', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100071 AS Numeric(18, 0)), N'Unitarian-Universalism', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100072 AS Numeric(18, 0)), N'Unitas Fratrum', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100073 AS Numeric(18, 0)), N'Universalism', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100074 AS Numeric(18, 0)), N'Voodoo', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100075 AS Numeric(18, 0)), N'Wicca', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100076 AS Numeric(18, 0)), N'Witchcraft', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100077 AS Numeric(18, 0)), N'Yezidism', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100078 AS Numeric(18, 0)), N'Zhu Shen Jiao', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RELIGION] ([ID], [DESCRIPTION], [isDefault], [isActive], [Created], [Alias], [Updated]) VALUES (CAST(100079 AS Numeric(18, 0)), N'Zoroastrianism', 0, 1, CAST(N'2018-05-25T22:25:41.037' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[RELIGION] OFF
GO
ALTER TABLE [dbo].[BLOODGROUP] ADD  CONSTRAINT [DFBLOODGROUP_isDefault]  DEFAULT ((1)) FOR [isDefault]
GO
ALTER TABLE [dbo].[BLOODGROUP] ADD  CONSTRAINT [DFBLOODGROUP_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[BLOODGROUP] ADD  CONSTRAINT [DFBLOODGROUP_Created]  DEFAULT (sysdatetime()) FOR [Created]
GO
ALTER TABLE [dbo].[BLOODGROUP] ADD  CONSTRAINT [DFBLOODGROUP_Updated]  DEFAULT (sysdatetime()) FOR [Updated]
GO
ALTER TABLE [dbo].[CITY] ADD  CONSTRAINT [DFCITIES_isDefault]  DEFAULT ((0)) FOR [isDefault]
GO
ALTER TABLE [dbo].[CITY] ADD  CONSTRAINT [DFCITIES_Created]  DEFAULT (sysdatetime()) FOR [Created]
GO
ALTER TABLE [dbo].[CITY] ADD  CONSTRAINT [DFCITIES_Updated]  DEFAULT (sysdatetime()) FOR [Updated]
GO
ALTER TABLE [dbo].[COUNTRY] ADD  CONSTRAINT [DFCOUNTRY_isDefault]  DEFAULT ((0)) FOR [isDefault]
GO
ALTER TABLE [dbo].[COUNTRY] ADD  CONSTRAINT [DFCOUNTRY_Created]  DEFAULT (sysdatetime()) FOR [Created]
GO
ALTER TABLE [dbo].[COUNTRY] ADD  CONSTRAINT [DFCOUNTRY_Updated]  DEFAULT (sysdatetime()) FOR [Updated]
GO
ALTER TABLE [dbo].[CURRENCY] ADD  CONSTRAINT [DFCURRENCY_isDefault]  DEFAULT ((0)) FOR [isDefault]
GO
ALTER TABLE [dbo].[CURRENCY] ADD  CONSTRAINT [DFCURRENCY_Created]  DEFAULT (sysdatetime()) FOR [Created]
GO
ALTER TABLE [dbo].[CURRENCY] ADD  CONSTRAINT [DFCURRENCY_Updated]  DEFAULT (sysdatetime()) FOR [Updated]
GO
ALTER TABLE [dbo].[DEGREE] ADD  CONSTRAINT [DFDEGREE_isDefault]  DEFAULT ((0)) FOR [isDefault]
GO
ALTER TABLE [dbo].[DEGREE] ADD  CONSTRAINT [DFDEGREE_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[DEGREE] ADD  CONSTRAINT [DFDEGREE_Created]  DEFAULT (sysdatetime()) FOR [Created]
GO
ALTER TABLE [dbo].[QUALevels] ADD  CONSTRAINT [DFQUALevels_Level]  DEFAULT ((0)) FOR [Level]
GO
ALTER TABLE [dbo].[QUALevels] ADD  CONSTRAINT [DFQUALevels_isDefault]  DEFAULT ((0)) FOR [isDefault]
GO
ALTER TABLE [dbo].[QUALevels] ADD  CONSTRAINT [DFQUALevels_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[QUALevels] ADD  CONSTRAINT [DFQUALevels_Created]  DEFAULT (sysdatetime()) FOR [Created]
GO
ALTER TABLE [dbo].[QUALevels] ADD  CONSTRAINT [DFQUALevels_Updated]  DEFAULT (sysdatetime()) FOR [Updated]
GO
ALTER TABLE [dbo].[QUALIFICATION] ADD  CONSTRAINT [DFQUALIFICATION_isDefault]  DEFAULT ((0)) FOR [isDefault]
GO
ALTER TABLE [dbo].[QUALIFICATION] ADD  CONSTRAINT [DFQUALIFICATION_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[QUALIFICATION] ADD  CONSTRAINT [DFQUALIFICATION_Created]  DEFAULT (sysdatetime()) FOR [Created]
GO
ALTER TABLE [dbo].[QUALIFICATION] ADD  CONSTRAINT [DFQUALIFICATION_Updated]  DEFAULT (sysdatetime()) FOR [Updated]
GO
ALTER TABLE [dbo].[RELATIONTYPE] ADD  CONSTRAINT [DFRELATIONTYPE_isDefault]  DEFAULT ((0)) FOR [isDefault]
GO
ALTER TABLE [dbo].[RELATIONTYPE] ADD  CONSTRAINT [DFRELATIONTYPE_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[RELATIONTYPE] ADD  CONSTRAINT [DFRELATIONTYPE_Created]  DEFAULT (sysdatetime()) FOR [Created]
GO
ALTER TABLE [dbo].[RELATIONTYPE] ADD  CONSTRAINT [DFRELATIONTYPE_Updated]  DEFAULT (sysdatetime()) FOR [Updated]
GO
ALTER TABLE [dbo].[RELIGION] ADD  CONSTRAINT [DFRELIGION_isDefault]  DEFAULT ((0)) FOR [isDefault]
GO
ALTER TABLE [dbo].[RELIGION] ADD  CONSTRAINT [DFRELIGION_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[RELIGION] ADD  CONSTRAINT [DFRELIGION_Created]  DEFAULT (sysdatetime()) FOR [Created]
GO
ALTER TABLE [dbo].[RELIGION] ADD  DEFAULT ('') FOR [Alias]
GO
ALTER TABLE [dbo].[RELIGION] ADD  DEFAULT (sysdatetime()) FOR [Updated]
GO
ALTER TABLE [dbo].[CITY]  WITH CHECK ADD  CONSTRAINT [FK_CITIES_COUNTRY] FOREIGN KEY([COUNTRYID])
REFERENCES [dbo].[COUNTRY] ([COUNTRYID])
GO
ALTER TABLE [dbo].[CITY] CHECK CONSTRAINT [FK_CITIES_COUNTRY]
GO
ALTER TABLE [dbo].[COUNTRY]  WITH CHECK ADD  CONSTRAINT [FK_COUNTRY_CURRENCY] FOREIGN KEY([CURRENCYID])
REFERENCES [dbo].[CURRENCY] ([CURRENCYID])
GO
ALTER TABLE [dbo].[COUNTRY] CHECK CONSTRAINT [FK_COUNTRY_CURRENCY]
GO
ALTER TABLE [dbo].[DEGREE]  WITH CHECK ADD  CONSTRAINT [FK_DEGREE_QUALIFICATION] FOREIGN KEY([QUALIFICATIONID])
REFERENCES [dbo].[QUALIFICATION] ([ID])
GO
ALTER TABLE [dbo].[DEGREE] CHECK CONSTRAINT [FK_DEGREE_QUALIFICATION]
GO
ALTER TABLE [dbo].[QUALIFICATION]  WITH CHECK ADD  CONSTRAINT [FK_QUALIFICATION_QUALevels] FOREIGN KEY([QUALevelsID])
REFERENCES [dbo].[QUALevels] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QUALIFICATION] CHECK CONSTRAINT [FK_QUALIFICATION_QUALevels]
GO
