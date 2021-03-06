/****** Object:  Table [dbo].[Fields]    Script Date: 26/09/2014 17:51:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fields](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ThingTypeID] [int] NOT NULL,
	[SortOrder] [int] NOT NULL,
	[FieldTypeID] [int] NOT NULL,
	[MinValues] [int] NOT NULL,
	[MaxValues] [int] NULL,
 CONSTRAINT [PK_Fields] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Fields_Name] UNIQUE NONCLUSTERED 
(
	[ThingTypeID] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FieldTypes]    Script Date: 26/09/2014 17:51:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FieldTypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](25) NOT NULL,
	[ValueTable] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_FieldTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FieldValues_Date]    Script Date: 26/09/2014 17:51:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FieldValues_Date](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ThingID] [bigint] NOT NULL,
	[FieldID] [int] NOT NULL,
	[Number] [int] NOT NULL,
	[Value] [datetime] NOT NULL,
 CONSTRAINT [PK_FieldValues_Date] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_FieldValues_Date] UNIQUE NONCLUSTERED 
(
	[ThingID] ASC,
	[FieldID] ASC,
	[Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FieldValues_FK]    Script Date: 26/09/2014 17:51:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FieldValues_FK](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ThingID] [bigint] NOT NULL,
	[FieldID] [int] NOT NULL,
	[Number] [int] NOT NULL,
	[Value] [bigint] NOT NULL,
 CONSTRAINT [PK_FieldValues_FK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_FieldValues_FK] UNIQUE NONCLUSTERED 
(
	[ThingID] ASC,
	[FieldID] ASC,
	[Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FieldValues_Int]    Script Date: 26/09/2014 17:51:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FieldValues_Int](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ThingID] [bigint] NOT NULL,
	[FieldID] [int] NOT NULL,
	[Number] [int] NOT NULL,
	[Value] [int] NOT NULL,
 CONSTRAINT [PK_FieldValues_Int] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_FieldValues_Int] UNIQUE NONCLUSTERED 
(
	[ThingID] ASC,
	[FieldID] ASC,
	[Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FieldValues_Money]    Script Date: 26/09/2014 17:51:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FieldValues_Money](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ThingID] [bigint] NOT NULL,
	[FieldID] [int] NOT NULL,
	[Number] [int] NOT NULL,
	[Value] [money] NOT NULL,
 CONSTRAINT [PK_FieldValues_Money] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_FieldValues_Money] UNIQUE NONCLUSTERED 
(
	[ThingID] ASC,
	[FieldID] ASC,
	[Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FieldValues_StringLong]    Script Date: 26/09/2014 17:51:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FieldValues_StringLong](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ThingID] [bigint] NOT NULL,
	[FieldID] [int] NOT NULL,
	[Number] [int] NOT NULL,
	[Value] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_FieldValues_StringLong] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_FieldValues_StringLong] UNIQUE NONCLUSTERED 
(
	[ThingID] ASC,
	[FieldID] ASC,
	[Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FieldValues_StringShort]    Script Date: 26/09/2014 17:51:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FieldValues_StringShort](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ThingID] [bigint] NOT NULL,
	[FieldID] [int] NOT NULL,
	[Number] [int] NOT NULL,
	[Value] [nvarchar](80) NOT NULL,
 CONSTRAINT [PK_FieldValues_StringShort] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_FieldValues_StringShort] UNIQUE NONCLUSTERED 
(
	[ThingID] ASC,
	[FieldID] ASC,
	[Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Things]    Script Date: 26/09/2014 17:51:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Things](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[TypeID] [int] NOT NULL,
 CONSTRAINT [PK_Things] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThingTypes]    Script Date: 26/09/2014 17:51:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThingTypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Module] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_ThingTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Fields] ADD  CONSTRAINT [DF_Fields_MinValues]  DEFAULT ((1)) FOR [MinValues]
GO
ALTER TABLE [dbo].[Fields] ADD  CONSTRAINT [DF_Fields_MaxValues]  DEFAULT ((1)) FOR [MaxValues]
GO
ALTER TABLE [dbo].[FieldValues_Date] ADD  CONSTRAINT [DF_FieldValues_Date_Number]  DEFAULT ((1)) FOR [Number]
GO
ALTER TABLE [dbo].[FieldValues_FK] ADD  CONSTRAINT [DF_FieldValues_FK_Number]  DEFAULT ((1)) FOR [Number]
GO
ALTER TABLE [dbo].[FieldValues_Int] ADD  CONSTRAINT [DF_FieldValues_Int_Number]  DEFAULT ((1)) FOR [Number]
GO
ALTER TABLE [dbo].[FieldValues_Money] ADD  CONSTRAINT [DF_FieldValues_Money_Number]  DEFAULT ((1)) FOR [Number]
GO
ALTER TABLE [dbo].[FieldValues_StringLong] ADD  CONSTRAINT [DF_FieldValues_StringLong_Number]  DEFAULT ((1)) FOR [Number]
GO
ALTER TABLE [dbo].[FieldValues_StringShort] ADD  CONSTRAINT [DF_FieldValues_StringShort_Number]  DEFAULT ((1)) FOR [Number]
GO
ALTER TABLE [dbo].[Fields]  WITH CHECK ADD  CONSTRAINT [FK_Fields_FieldTypes] FOREIGN KEY([FieldTypeID])
REFERENCES [dbo].[FieldTypes] ([ID])
GO
ALTER TABLE [dbo].[Fields] CHECK CONSTRAINT [FK_Fields_FieldTypes]
GO
ALTER TABLE [dbo].[Fields]  WITH CHECK ADD  CONSTRAINT [FK_Fields_ThingTypes] FOREIGN KEY([ThingTypeID])
REFERENCES [dbo].[ThingTypes] ([ID])
GO
ALTER TABLE [dbo].[Fields] CHECK CONSTRAINT [FK_Fields_ThingTypes]
GO
ALTER TABLE [dbo].[FieldValues_Date]  WITH CHECK ADD  CONSTRAINT [FK_FieldValues_Date_Fields] FOREIGN KEY([FieldID])
REFERENCES [dbo].[Fields] ([ID])
GO
ALTER TABLE [dbo].[FieldValues_Date] CHECK CONSTRAINT [FK_FieldValues_Date_Fields]
GO
ALTER TABLE [dbo].[FieldValues_Date]  WITH CHECK ADD  CONSTRAINT [FK_FieldValues_Date_Things] FOREIGN KEY([ThingID])
REFERENCES [dbo].[Things] ([ID])
GO
ALTER TABLE [dbo].[FieldValues_Date] CHECK CONSTRAINT [FK_FieldValues_Date_Things]
GO
ALTER TABLE [dbo].[FieldValues_FK]  WITH CHECK ADD  CONSTRAINT [FK_FieldValues_FK_Fields] FOREIGN KEY([FieldID])
REFERENCES [dbo].[Fields] ([ID])
GO
ALTER TABLE [dbo].[FieldValues_FK] CHECK CONSTRAINT [FK_FieldValues_FK_Fields]
GO
ALTER TABLE [dbo].[FieldValues_FK]  WITH CHECK ADD  CONSTRAINT [FK_FieldValues_FK_Things] FOREIGN KEY([ThingID])
REFERENCES [dbo].[Things] ([ID])
GO
ALTER TABLE [dbo].[FieldValues_FK] CHECK CONSTRAINT [FK_FieldValues_FK_Things]
GO
ALTER TABLE [dbo].[FieldValues_FK]  WITH CHECK ADD  CONSTRAINT [FK_FieldValues_FK_Things1] FOREIGN KEY([Value])
REFERENCES [dbo].[Things] ([ID])
GO
ALTER TABLE [dbo].[FieldValues_FK] CHECK CONSTRAINT [FK_FieldValues_FK_Things1]
GO
ALTER TABLE [dbo].[FieldValues_Int]  WITH CHECK ADD  CONSTRAINT [FK_FieldValues_Int_Fields] FOREIGN KEY([FieldID])
REFERENCES [dbo].[Fields] ([ID])
GO
ALTER TABLE [dbo].[FieldValues_Int] CHECK CONSTRAINT [FK_FieldValues_Int_Fields]
GO
ALTER TABLE [dbo].[FieldValues_Int]  WITH CHECK ADD  CONSTRAINT [FK_FieldValues_Int_Things] FOREIGN KEY([ThingID])
REFERENCES [dbo].[Things] ([ID])
GO
ALTER TABLE [dbo].[FieldValues_Int] CHECK CONSTRAINT [FK_FieldValues_Int_Things]
GO
ALTER TABLE [dbo].[FieldValues_Money]  WITH CHECK ADD  CONSTRAINT [FK_FieldValues_Money_Fields] FOREIGN KEY([FieldID])
REFERENCES [dbo].[Fields] ([ID])
GO
ALTER TABLE [dbo].[FieldValues_Money] CHECK CONSTRAINT [FK_FieldValues_Money_Fields]
GO
ALTER TABLE [dbo].[FieldValues_Money]  WITH CHECK ADD  CONSTRAINT [FK_FieldValues_Money_Things] FOREIGN KEY([ThingID])
REFERENCES [dbo].[Things] ([ID])
GO
ALTER TABLE [dbo].[FieldValues_Money] CHECK CONSTRAINT [FK_FieldValues_Money_Things]
GO
ALTER TABLE [dbo].[FieldValues_StringLong]  WITH CHECK ADD  CONSTRAINT [FK_FieldValues_StringLong_Fields] FOREIGN KEY([FieldID])
REFERENCES [dbo].[Fields] ([ID])
GO
ALTER TABLE [dbo].[FieldValues_StringLong] CHECK CONSTRAINT [FK_FieldValues_StringLong_Fields]
GO
ALTER TABLE [dbo].[FieldValues_StringLong]  WITH CHECK ADD  CONSTRAINT [FK_FieldValues_StringLong_Things] FOREIGN KEY([ThingID])
REFERENCES [dbo].[Things] ([ID])
GO
ALTER TABLE [dbo].[FieldValues_StringLong] CHECK CONSTRAINT [FK_FieldValues_StringLong_Things]
GO
ALTER TABLE [dbo].[FieldValues_StringShort]  WITH CHECK ADD  CONSTRAINT [FK_FieldValues_StringShort_Fields] FOREIGN KEY([FieldID])
REFERENCES [dbo].[Fields] ([ID])
GO
ALTER TABLE [dbo].[FieldValues_StringShort] CHECK CONSTRAINT [FK_FieldValues_StringShort_Fields]
GO
ALTER TABLE [dbo].[FieldValues_StringShort]  WITH CHECK ADD  CONSTRAINT [FK_FieldValues_StringShort_Things] FOREIGN KEY([ThingID])
REFERENCES [dbo].[Things] ([ID])
GO
ALTER TABLE [dbo].[FieldValues_StringShort] CHECK CONSTRAINT [FK_FieldValues_StringShort_Things]
GO
ALTER TABLE [dbo].[Things]  WITH CHECK ADD  CONSTRAINT [FK_Things_ThingTypes] FOREIGN KEY([TypeID])
REFERENCES [dbo].[ThingTypes] ([ID])
GO
ALTER TABLE [dbo].[Things] CHECK CONSTRAINT [FK_Things_ThingTypes]
GO




insert into fieldtypes
select 'Foreign Key', 'FieldValues_FK' union all
select 'Integer', 'FieldValues_Int' union all
select 'Date', 'FieldValues_Date' union all
select 'Money', 'FieldValues_Money' union all
select 'Short String', 'FieldValues_StringShort' union all
select 'Long String', 'FieldValues_StringLong'


insert into ThingTypes
select 'TestType1', 'TestModule' union all
select 'Test type 2', 'TestModule' union all
select 'TestType3', 'AnotherModule'

insert into Fields
select 'First Name', 1, 1, 5, 1, 1 union all
select 'Last Name', 1, 2, 5, 1, 1 union all
select 'Email', 1 ,3 ,5, 0, NULL union all
select 'Telephone', 1, 4, 5, 0, 3 union all
select 'Date of Birth', 1, 4 , 3, 0, 1

