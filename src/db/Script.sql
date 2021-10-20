USE [db_epd]
GO

/****** Object:  Table [dbo].[iProduct]    Script Date: 20/10/2021 14:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[iPType](
	[ID] [numeric](18, 0) NOT NULL,
	[DESCRIPTION] [varchar](150) NULL,
	[Alias] [varchar](30) NULL,
	[isDefault] [bit] NOT NULL,
	[isActive] [bit] NOT NULL,
	[Created] [datetime] NULL,
	[Updated] [datetime] NULL,
 CONSTRAINT [PK_iPType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[iPType] ADD  CONSTRAINT [DFiPType_isDefault]  DEFAULT ((1)) FOR [isDefault]
GO

ALTER TABLE [dbo].[iPType] ADD  CONSTRAINT [DFiPType_isActive]  DEFAULT ((1)) FOR [isActive]
GO

ALTER TABLE [dbo].[iPType] ADD  CONSTRAINT [DFiPType_Created]  DEFAULT (sysdatetime()) FOR [Created]
GO

ALTER TABLE [dbo].[iPType] ADD  CONSTRAINT [DFiPType_Updated]  DEFAULT (sysdatetime()) FOR [Updated]
GO

CREATE TABLE [dbo].[iProduct](
	[ID] [numeric](18, 0) NOT NULL,
	[DESCRIPTION] [varchar](255) NULL,
	[Alias] [varchar](50) NULL,
	[iCategoryID] [numeric](18, 0) NOT NULL,
	[UnitInID] [numeric](18, 0) NOT NULL,
	[UnitOutID] [numeric](18, 0) NOT NULL,
	[BarCode] [varchar](50) NULL,
	[isDefault] [bit] NOT NULL,
	[isActive] [bit] NOT NULL,
	[Picture] [image] NULL,
	[ItHeadUrdu] [nvarchar](1000) NOT NULL,
	[itMinLevel] [float] NULL,
	[itMaxLevel] [float] NULL,
	[itRolevel] [float] NULL,
	[itRoQty] [float] NULL,
	[itdrate] [float] NULL,
	[IsSerialized] [numeric](1, 0) NULL,
	[STaxRate] [float] NULL,
	[Created] [datetime] NULL,
	[Updated] [datetime] NULL,
	[CreatedBy] [numeric](18, 0) NULL,
	[UpdatedBy] [numeric](18, 0) NULL,
	[InUnit] [float] NULL,
	[OutUnit] [float] NULL,
	[PType] [varchar](40) NOT NULL,
	[PType1] [varchar](40) NOT NULL,
	[bargen] [bit] NOT NULL,
	[iModelsID] [numeric](18, 0) NOT NULL,
	[iVehicleModelsID] [numeric](18, 0) NOT NULL,
	[isStocked] [bit] NOT NULL,
	[isFinish] [bit] NOT NULL,
	[iPTypeID] [numeric](18, 0) NOT NULL,
	[intCode] [varchar](50) NULL,
	[UnitAltID] [numeric](18, 0) NULL,
	[AltUnit] [float] NULL,
	[OpenBal] [float] NULL,
	[HSCode] [varchar](50) NULL,
	[partnumber] [varchar](500) NULL,
	[oldpartnumber] [varchar](500) NULL,
	[coo] [varchar](500) NULL,
 CONSTRAINT [PK_iProduct] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[iProduct] ADD  CONSTRAINT [DF__iProduct__BarCod__5AB9788F]  DEFAULT ('') FOR [BarCode]
GO

ALTER TABLE [dbo].[iProduct] ADD  CONSTRAINT [DFiProduct_isDefault]  DEFAULT ((1)) FOR [isDefault]
GO

ALTER TABLE [dbo].[iProduct] ADD  CONSTRAINT [DFiProduct_isActive]  DEFAULT ((1)) FOR [isActive]
GO

ALTER TABLE [dbo].[iProduct] ADD  CONSTRAINT [DFiProduct_ItHeadUr]  DEFAULT (('') collate SQL_Latin1_General_CP1256_CI_AS) FOR [ItHeadUrdu]
GO

ALTER TABLE [dbo].[iProduct] ADD  CONSTRAINT [DFiProduct_Created]  DEFAULT (sysdatetime()) FOR [Created]
GO

ALTER TABLE [dbo].[iProduct] ADD  CONSTRAINT [DFiProduct_Updated]  DEFAULT (sysdatetime()) FOR [Updated]
GO

ALTER TABLE [dbo].[iProduct] ADD  CONSTRAINT [DF__iProduct__InUnit__607251E5]  DEFAULT ((0)) FOR [InUnit]
GO

ALTER TABLE [dbo].[iProduct] ADD  CONSTRAINT [DF__iProduct__OutUni__6166761E]  DEFAULT ((0)) FOR [OutUnit]
GO

ALTER TABLE [dbo].[iProduct] ADD  CONSTRAINT [DF__iProduct__PType__625A9A57]  DEFAULT ('Own') FOR [PType]
GO

ALTER TABLE [dbo].[iProduct] ADD  CONSTRAINT [DF__iProduct__PType1__634EBE90]  DEFAULT ('Parts') FOR [PType1]
GO

ALTER TABLE [dbo].[iProduct] ADD  CONSTRAINT [DF__iProduct__bargen__6442E2C9]  DEFAULT ((0)) FOR [bargen]
GO

ALTER TABLE [dbo].[iProduct] ADD  CONSTRAINT [DF__iProduct__isStoc__65370702]  DEFAULT ((1)) FOR [isStocked]
GO

ALTER TABLE [dbo].[iProduct] ADD  CONSTRAINT [iProduct_fingood]  DEFAULT ((0)) FOR [isFinish]
GO

ALTER TABLE [dbo].[iProduct]  WITH CHECK ADD  CONSTRAINT [FK_iProduct_CITY] FOREIGN KEY([iCategoryID])
REFERENCES [dbo].[iCategory] ([ID])
GO

ALTER TABLE [dbo].[iProduct] CHECK CONSTRAINT [FK_iProduct_CITY]
GO

ALTER TABLE [dbo].[iProduct]  WITH CHECK ADD  CONSTRAINT [FK_iProduct_iMeasuringUnit] FOREIGN KEY([UnitInID])
REFERENCES [dbo].[iMeasuringUnit] ([ID])
GO

ALTER TABLE [dbo].[iProduct] CHECK CONSTRAINT [FK_iProduct_iMeasuringUnit]
GO

ALTER TABLE [dbo].[iProduct]  WITH CHECK ADD  CONSTRAINT [FK_iProduct_iMeasuringUnitAlt] FOREIGN KEY([UnitAltID])
REFERENCES [dbo].[iMeasuringUnit] ([ID])
GO

ALTER TABLE [dbo].[iProduct] CHECK CONSTRAINT [FK_iProduct_iMeasuringUnitAlt]
GO

ALTER TABLE [dbo].[iProduct]  WITH CHECK ADD  CONSTRAINT [FK_iProduct_iMeasuringUnitOut] FOREIGN KEY([UnitOutID])
REFERENCES [dbo].[iMeasuringUnit] ([ID])
GO

ALTER TABLE [dbo].[iProduct] CHECK CONSTRAINT [FK_iProduct_iMeasuringUnitOut]
GO

ALTER TABLE [dbo].[iProduct]  WITH CHECK ADD  CONSTRAINT [FK_iProduct_iPType] FOREIGN KEY([iPTypeID])
REFERENCES [dbo].[iPType] ([ID])
GO

ALTER TABLE [dbo].[iProduct] CHECK CONSTRAINT [FK_iProduct_iPType]
GO
