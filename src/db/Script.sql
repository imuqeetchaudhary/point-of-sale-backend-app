
/****** Object:  Table [dbo].[iCustomer]    Script Date: 15/10/2021 14:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iCustomer](
	[ID] [numeric](18, 0) NOT NULL,
	[CDESCRIPTION] [varchar](150) NULL,
	[CAlias] [varchar](10) NULL,
	[CAddress] [varchar](1000) NULL,
	[COUNTRYID] [numeric](18, 0) NOT NULL,
	[CITYID] [numeric](18, 0) NOT NULL,
	[SRegSTNo] [varchar](50) NULL,
	[SITNo] [varchar](50) NULL,
	[CFONE] [varchar](50) NULL,
	[CFAX] [varchar](50) NULL,
	[CCELL] [varchar](50) NULL,
	[CEmail] [varchar](250) NULL,
	[isWHT] [bit] NOT NULL,
	[WHTTax] [float] NOT NULL,
	[iWHTTax] [float] NOT NULL,
	[isCrLimit] [bit] NOT NULL,
	[CrAmount] [float] NOT NULL,
	[isDefault] [bit] NOT NULL,
	[isActive] [bit] NOT NULL,
	[Created] [datetime] NULL,
	[Updated] [datetime] NULL,
	[CPPerson] [varchar](500) NULL,
	[CreatedBy] [numeric](18, 0) NULL,
	[UpdatedBy] [numeric](18, 0) NULL,
	[iAccountID] [numeric](18, 0) NULL,
 CONSTRAINT [PK_iCustomer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[iDeliveryTerms]    Script Date: 15/10/2021 14:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iDeliveryTerms](
	[ID] [numeric](18, 0) NOT NULL,
	[DESCRIPTION] [varchar](150) NULL,
	[Alias] [varchar](30) NULL,
	[iDays] [float] NULL,
	[isDefault] [bit] NOT NULL,
	[isActive] [bit] NOT NULL,
	[Created] [datetime] NULL,
	[Updated] [datetime] NULL,
	[CreatedBy] [numeric](18, 0) NOT NULL,
	[UpdatedBy] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_iDeliveryTerms] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[iMeasuringUnit]    Script Date: 15/10/2021 14:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iMeasuringUnit](
	[ID] [numeric](18, 0) NOT NULL,
	[DESCRIPTION] [varchar](150) NULL,
	[Alias] [varchar](6) NULL,
	[isActive] [bit] NOT NULL,
	[Created] [datetime] NULL,
	[Updated] [datetime] NULL,
 CONSTRAINT [PK_iMeasuringUnit] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[iPaymentTerms]    Script Date: 15/10/2021 14:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iPaymentTerms](
	[ID] [numeric](18, 0) NOT NULL,
	[DESCRIPTION] [varchar](150) NULL,
	[Alias] [varchar](30) NULL,
	[iDays] [float] NULL,
	[isDefault] [bit] NOT NULL,
	[isActive] [bit] NOT NULL,
	[Created] [datetime] NULL,
	[Updated] [datetime] NULL,
	[CreatedBy] [numeric](18, 0) NOT NULL,
	[UpdatedBy] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_iPaymentTerms] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[iVendor]    Script Date: 15/10/2021 14:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iVendor](
	[ID] [numeric](18, 0) NOT NULL,
	[VDESCRIPTION] [varchar](150) NULL,
	[VAlias] [varchar](10) NULL,
	[VAddress] [varchar](1000) NULL,
	[COUNTRYIDV] [numeric](18, 0) NOT NULL,
	[CITYIDV] [numeric](18, 0) NOT NULL,
	[SRegSTNoV] [varchar](50) NULL,
	[SITNoV] [varchar](50) NULL,
	[FONEV] [varchar](50) NULL,
	[FAXV] [varchar](50) NULL,
	[CELLV] [varchar](50) NULL,
	[EmailV] [varchar](250) NULL,
	[isWHTV] [bit] NOT NULL,
	[WHTTaxV] [float] NOT NULL,
	[iWHTTaxV] [float] NOT NULL,
	[isCrLimitV] [bit] NOT NULL,
	[CrAmountV] [float] NOT NULL,
	[isDefaultV] [bit] NOT NULL,
	[isActiveV] [bit] NOT NULL,
	[Created] [datetime] NULL,
	[Updated] [datetime] NULL,
	[iAccountID] [numeric](18, 0) NULL,
 CONSTRAINT [PK_iVendor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[iDeliveryTerms] ([ID], [DESCRIPTION], [Alias], [iDays], [isDefault], [isActive], [Created], [Updated], [CreatedBy], [UpdatedBy]) VALUES (CAST(1 AS Numeric(18, 0)), N'N/A', N'N/A', 0, 0, 1, CAST(N'2021-02-05T20:56:01.403' AS DateTime), CAST(N'2021-02-05T20:56:01.403' AS DateTime), CAST(100001 AS Numeric(18, 0)), CAST(100001 AS Numeric(18, 0)))
GO
INSERT [dbo].[iDeliveryTerms] ([ID], [DESCRIPTION], [Alias], [iDays], [isDefault], [isActive], [Created], [Updated], [CreatedBy], [UpdatedBy]) VALUES (CAST(2 AS Numeric(18, 0)), N'FOB / C&F', N'FOB / C&F', 0, 0, 1, CAST(N'2021-02-06T14:00:03.697' AS DateTime), CAST(N'2021-02-06T14:00:03.697' AS DateTime), CAST(100001 AS Numeric(18, 0)), CAST(100001 AS Numeric(18, 0)))
GO
INSERT [dbo].[iDeliveryTerms] ([ID], [DESCRIPTION], [Alias], [iDays], [isDefault], [isActive], [Created], [Updated], [CreatedBy], [UpdatedBy]) VALUES (CAST(3 AS Numeric(18, 0)), N'At Site', N'At Site', 0, 0, 1, CAST(N'2021-02-06T14:00:19.923' AS DateTime), CAST(N'2021-02-06T14:00:19.923' AS DateTime), CAST(100001 AS Numeric(18, 0)), CAST(100001 AS Numeric(18, 0)))
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(2 AS Numeric(18, 0)), N'KILO GRAM', N'KG', 1, CAST(N'2018-09-21T15:09:09.943' AS DateTime), CAST(N'2020-12-23T19:45:38.800' AS DateTime))
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(3 AS Numeric(18, 0)), N'GRAM', N'GM', 1, CAST(N'2018-09-21T15:09:09.943' AS DateTime), CAST(N'2018-09-21T15:09:09.943' AS DateTime))
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(4 AS Numeric(18, 0)), N'METER', N'MTR', 1, CAST(N'2018-09-21T15:09:09.943' AS DateTime), CAST(N'2018-09-21T15:09:09.943' AS DateTime))
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(5 AS Numeric(18, 0)), N'CENTI METER', N'CM', 1, CAST(N'2018-09-21T15:09:09.943' AS DateTime), CAST(N'2018-09-21T15:09:09.943' AS DateTime))
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(6 AS Numeric(18, 0)), N'MILLI METER', N'MM', 1, CAST(N'2018-09-21T15:09:09.943' AS DateTime), CAST(N'2018-09-21T15:09:09.943' AS DateTime))
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(7 AS Numeric(18, 0)), N'FEET', N'FT', 1, CAST(N'2018-09-21T15:09:09.943' AS DateTime), CAST(N'2018-09-21T15:09:09.943' AS DateTime))
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(8 AS Numeric(18, 0)), N'SQFT', N'SQFT', 1, CAST(N'2018-09-21T15:09:09.943' AS DateTime), CAST(N'2018-09-21T15:09:09.943' AS DateTime))
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(9 AS Numeric(18, 0)), N'YARD', N'YRD', 1, CAST(N'2018-09-21T15:09:09.943' AS DateTime), CAST(N'2018-09-21T15:09:09.943' AS DateTime))
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(10 AS Numeric(18, 0)), N'LITRES', N'LTR', 1, CAST(N'2018-09-21T15:09:09.943' AS DateTime), CAST(N'2018-09-21T15:09:09.943' AS DateTime))
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(11 AS Numeric(18, 0)), N'MILLI LITRE', N'ML', 1, CAST(N'2018-09-21T15:09:09.943' AS DateTime), CAST(N'2018-09-21T15:09:09.943' AS DateTime))
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(12 AS Numeric(18, 0)), N'ROLL', N'ROLL', 1, CAST(N'2018-09-21T15:09:09.943' AS DateTime), CAST(N'2018-09-21T15:09:09.943' AS DateTime))
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(13 AS Numeric(18, 0)), N'NUMBER', N'NOS', 1, CAST(N'2018-09-21T15:09:09.943' AS DateTime), CAST(N'2018-09-21T15:09:09.943' AS DateTime))
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(14 AS Numeric(18, 0)), N'PACKET', N'PKT', 1, CAST(N'2018-09-21T15:09:09.943' AS DateTime), CAST(N'2018-09-21T15:09:09.943' AS DateTime))
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(15 AS Numeric(18, 0)), N'PIECES', N'PCS', 1, CAST(N'2018-09-21T15:09:09.943' AS DateTime), CAST(N'2018-09-21T15:09:09.943' AS DateTime))
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(16 AS Numeric(18, 0)), N'SET', N'SET', 1, CAST(N'2018-09-21T15:09:09.943' AS DateTime), CAST(N'2018-09-21T15:09:09.943' AS DateTime))
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(17 AS Numeric(18, 0)), N'BOX', N'BOX', 1, CAST(N'2018-09-21T15:09:09.943' AS DateTime), CAST(N'2018-09-21T15:09:09.943' AS DateTime))
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(18 AS Numeric(18, 0)), N'RIM', N'RIM', 1, CAST(N'2018-09-21T15:09:09.943' AS DateTime), CAST(N'2018-09-21T15:09:09.943' AS DateTime))
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(19 AS Numeric(18, 0)), N'SHEET', N'SHT', 1, CAST(N'2018-09-21T15:09:09.943' AS DateTime), CAST(N'2018-09-21T15:09:09.943' AS DateTime))
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(20 AS Numeric(18, 0)), N'CANE', N'CAN', 1, CAST(N'2018-09-21T15:09:09.943' AS DateTime), CAST(N'2018-09-21T15:09:09.943' AS DateTime))
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(21 AS Numeric(18, 0)), N'BOTTLE', N'BOT', 1, CAST(N'2018-09-21T15:09:09.943' AS DateTime), CAST(N'2018-09-21T15:09:09.943' AS DateTime))
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(22 AS Numeric(18, 0)), N'PAIR', N'PAIR', 1, CAST(N'2018-09-21T15:09:09.943' AS DateTime), CAST(N'2018-09-21T15:09:09.943' AS DateTime))
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(23 AS Numeric(18, 0)), N'A4 Size', N'A 4', 1, CAST(N'2018-09-21T15:09:09.943' AS DateTime), CAST(N'2018-09-21T15:09:09.943' AS DateTime))
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(24 AS Numeric(18, 0)), N'CONE', N'CONE', 1, CAST(N'2018-09-21T15:09:09.943' AS DateTime), CAST(N'2018-09-21T15:09:09.943' AS DateTime))
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(25 AS Numeric(18, 0)), N'COIL', N'COIL', 1, CAST(N'2018-09-21T15:09:09.943' AS DateTime), CAST(N'2018-09-21T15:09:09.943' AS DateTime))
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(26 AS Numeric(18, 0)), N'BAG', N'BAG', 1, CAST(N'2018-09-21T15:09:09.943' AS DateTime), CAST(N'2018-09-21T15:09:09.943' AS DateTime))
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(27 AS Numeric(18, 0)), N'SIDE', N'SIDE', 1, CAST(N'2018-09-21T15:09:09.943' AS DateTime), CAST(N'2018-09-21T15:09:09.943' AS DateTime))
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(28 AS Numeric(18, 0)), N'HIDE', N'HD', 1, CAST(N'2018-09-21T15:09:09.943' AS DateTime), CAST(N'2018-09-21T15:09:09.943' AS DateTime))
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(29 AS Numeric(18, 0)), N'TROLY', N'TROL', 1, CAST(N'2018-09-21T15:09:09.943' AS DateTime), CAST(N'2018-09-21T15:09:09.943' AS DateTime))
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(30 AS Numeric(18, 0)), N'DRUM', N'DRM', 1, CAST(N'2018-09-21T15:09:09.943' AS DateTime), CAST(N'2018-09-21T15:09:09.943' AS DateTime))
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(31 AS Numeric(18, 0)), N'QUARTER', N'QTR', 1, CAST(N'2018-09-21T15:09:09.943' AS DateTime), CAST(N'2018-09-21T15:09:09.943' AS DateTime))
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(32 AS Numeric(18, 0)), N'GALLON', N'GLN', 1, CAST(N'2020-09-28T19:14:51.123' AS DateTime), NULL)
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(33 AS Numeric(18, 0)), N'SQUARE FOOT', N'SFT', 1, CAST(N'2020-09-28T19:16:15.087' AS DateTime), NULL)
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(34 AS Numeric(18, 0)), N'RUNNING FOOT', N'RFT', 1, CAST(N'2020-09-28T19:16:38.723' AS DateTime), NULL)
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(35 AS Numeric(18, 0)), N'JOB', N'JOB', 1, CAST(N'2020-09-28T19:17:19.553' AS DateTime), NULL)
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(36 AS Numeric(18, 0)), N'CUBIC METER', N'CMT', 1, CAST(N'2020-09-28T19:17:50.203' AS DateTime), NULL)
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(37 AS Numeric(18, 0)), N'LOT', N'LOT', 1, CAST(N'2020-09-28T19:18:22.423' AS DateTime), NULL)
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(38 AS Numeric(18, 0)), N'CUBIC FOOT', N'CFT', 1, CAST(N'2020-09-28T19:18:42.097' AS DateTime), NULL)
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(39 AS Numeric(18, 0)), N'TAN', N'TAN', 1, CAST(N'2020-09-28T19:19:12.223' AS DateTime), NULL)
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(40 AS Numeric(18, 0)), N'TIN', N'TIN', 1, CAST(N'2020-09-28T19:19:19.240' AS DateTime), NULL)
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(41 AS Numeric(18, 0)), N'SQUARE METER', N'SQM', 1, CAST(N'2020-09-28T19:20:54.937' AS DateTime), NULL)
GO
INSERT [dbo].[iMeasuringUnit] ([ID], [DESCRIPTION], [Alias], [isActive], [Created], [Updated]) VALUES (CAST(42 AS Numeric(18, 0)), N'TON', N'TON', 1, CAST(N'2020-09-28T21:59:17.693' AS DateTime), NULL)
GO
INSERT [dbo].[iPaymentTerms] ([ID], [DESCRIPTION], [Alias], [iDays], [isDefault], [isActive], [Created], [Updated], [CreatedBy], [UpdatedBy]) VALUES (CAST(1 AS Numeric(18, 0)), N'N/A', N'N/A', 0, 0, 1, CAST(N'2021-02-05T20:52:29.413' AS DateTime), CAST(N'2021-02-05T20:52:29.413' AS DateTime), CAST(100001 AS Numeric(18, 0)), CAST(100001 AS Numeric(18, 0)))
GO

ALTER TABLE [dbo].[iCustomer] ADD  DEFAULT ((1000167)) FOR [COUNTRYID]
GO
ALTER TABLE [dbo].[iCustomer] ADD  DEFAULT ((1000176)) FOR [CITYID]
GO
ALTER TABLE [dbo].[iCustomer] ADD  DEFAULT ((0)) FOR [isWHT]
GO
ALTER TABLE [dbo].[iCustomer] ADD  DEFAULT ((0)) FOR [WHTTax]
GO
ALTER TABLE [dbo].[iCustomer] ADD  DEFAULT ((0)) FOR [iWHTTax]
GO
ALTER TABLE [dbo].[iCustomer] ADD  DEFAULT ((0)) FOR [isCrLimit]
GO
ALTER TABLE [dbo].[iCustomer] ADD  DEFAULT ((0)) FOR [CrAmount]
GO
ALTER TABLE [dbo].[iCustomer] ADD  CONSTRAINT [DFiCustomer_isDefault]  DEFAULT ((1)) FOR [isDefault]
GO
ALTER TABLE [dbo].[iCustomer] ADD  CONSTRAINT [DFiCustomer_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[iCustomer] ADD  CONSTRAINT [DFiCustomer_Created]  DEFAULT (sysdatetime()) FOR [Created]
GO
ALTER TABLE [dbo].[iCustomer] ADD  CONSTRAINT [DFiCustomer_Updated]  DEFAULT (sysdatetime()) FOR [Updated]
GO
ALTER TABLE [dbo].[iCustomer] ADD  DEFAULT ((0)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[iCustomer] ADD  DEFAULT ((0)) FOR [UpdatedBy]
GO
ALTER TABLE [dbo].[iDeliveryTerms] ADD  DEFAULT ((0)) FOR [iDays]
GO
ALTER TABLE [dbo].[iDeliveryTerms] ADD  CONSTRAINT [DFiDeliveryTerms_isDefault]  DEFAULT ((1)) FOR [isDefault]
GO
ALTER TABLE [dbo].[iDeliveryTerms] ADD  CONSTRAINT [DFiDeliveryTerms_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[iDeliveryTerms] ADD  CONSTRAINT [DFiDeliveryTerms_Created]  DEFAULT (sysdatetime()) FOR [Created]
GO
ALTER TABLE [dbo].[iDeliveryTerms] ADD  CONSTRAINT [DFiDeliveryTerms_Updated]  DEFAULT (sysdatetime()) FOR [Updated]
GO
ALTER TABLE [dbo].[iMeasuringUnit] ADD  CONSTRAINT [DFiMeasuringUnit_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[iMeasuringUnit] ADD  CONSTRAINT [DFiMeasuringUnit_Created]  DEFAULT (sysdatetime()) FOR [Created]
GO
ALTER TABLE [dbo].[iMeasuringUnit] ADD  CONSTRAINT [DFiMeasuringUnit_Updated]  DEFAULT (sysdatetime()) FOR [Updated]
GO
ALTER TABLE [dbo].[iPaymentTerms] ADD  DEFAULT ((0)) FOR [iDays]
GO
ALTER TABLE [dbo].[iPaymentTerms] ADD  CONSTRAINT [DFiPaymentTerms_isDefault]  DEFAULT ((1)) FOR [isDefault]
GO
ALTER TABLE [dbo].[iPaymentTerms] ADD  CONSTRAINT [DFiPaymentTerms_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[iPaymentTerms] ADD  CONSTRAINT [DFiPaymentTerms_Created]  DEFAULT (sysdatetime()) FOR [Created]
GO
ALTER TABLE [dbo].[iPaymentTerms] ADD  CONSTRAINT [DFiPaymentTerms_Updated]  DEFAULT (sysdatetime()) FOR [Updated]
GO
ALTER TABLE [dbo].[iVendor] ADD  DEFAULT ((1000167)) FOR [COUNTRYIDV]
GO
ALTER TABLE [dbo].[iVendor] ADD  DEFAULT ((1000176)) FOR [CITYIDV]
GO
ALTER TABLE [dbo].[iVendor] ADD  DEFAULT ((0)) FOR [isWHTV]
GO
ALTER TABLE [dbo].[iVendor] ADD  DEFAULT ((0)) FOR [WHTTaxV]
GO
ALTER TABLE [dbo].[iVendor] ADD  DEFAULT ((0)) FOR [iWHTTaxV]
GO
ALTER TABLE [dbo].[iVendor] ADD  DEFAULT ((0)) FOR [isCrLimitV]
GO
ALTER TABLE [dbo].[iVendor] ADD  DEFAULT ((0)) FOR [CrAmountV]
GO
ALTER TABLE [dbo].[iVendor] ADD  CONSTRAINT [DFiVendor_isDefault]  DEFAULT ((1)) FOR [isDefaultV]
GO
ALTER TABLE [dbo].[iVendor] ADD  CONSTRAINT [DFiVendor_isActive]  DEFAULT ((1)) FOR [isActiveV]
GO
ALTER TABLE [dbo].[iVendor] ADD  CONSTRAINT [DFiVendor_Created]  DEFAULT (sysdatetime()) FOR [Created]
GO
ALTER TABLE [dbo].[iVendor] ADD  CONSTRAINT [DFiVendor_Updated]  DEFAULT (sysdatetime()) FOR [Updated]
GO
ALTER TABLE [dbo].[iCustomer]  WITH CHECK ADD  CONSTRAINT [FK_iCustomer_CITY] FOREIGN KEY([CITYID])
REFERENCES [dbo].[CITY] ([CITYID])
GO
ALTER TABLE [dbo].[iCustomer] CHECK CONSTRAINT [FK_iCustomer_CITY]
GO

ALTER TABLE [dbo].[iCustomer]  WITH CHECK ADD  CONSTRAINT [FK_iCustomer_COUNTRY] FOREIGN KEY([COUNTRYID])
REFERENCES [dbo].[COUNTRY] ([COUNTRYID])
GO
ALTER TABLE [dbo].[iCustomer] CHECK CONSTRAINT [FK_iCustomer_COUNTRY]
GO
ALTER TABLE [dbo].[iVendor]  WITH CHECK ADD  CONSTRAINT [FK_iVendor_CITY] FOREIGN KEY([CITYIDV])
REFERENCES [dbo].[CITY] ([CITYID])
GO
ALTER TABLE [dbo].[iVendor] CHECK CONSTRAINT [FK_iVendor_CITY]
GO

ALTER TABLE [dbo].[iVendor]  WITH CHECK ADD  CONSTRAINT [FK_iVendor_COUNTRY] FOREIGN KEY([COUNTRYIDV])
REFERENCES [dbo].[COUNTRY] ([COUNTRYID])
GO
ALTER TABLE [dbo].[iVendor] CHECK CONSTRAINT [FK_iVendor_COUNTRY]
GO
