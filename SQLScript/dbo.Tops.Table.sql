USE [Wardrobe]
GO
/****** Object:  Table [dbo].[Tops]    Script Date: 2/20/2017 9:04:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tops](
	[TopsID] [int] IDENTITY(1,1) NOT NULL,
	[TopStyle] [varchar](50) NOT NULL,
	[Photo] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tops] ON 

INSERT [dbo].[Tops] ([TopsID], [TopStyle], [Photo]) VALUES (1, N'Cute Tank', N'Summer')
INSERT [dbo].[Tops] ([TopsID], [TopStyle], [Photo]) VALUES (3, N'Sweater', N'yellow')
INSERT [dbo].[Tops] ([TopsID], [TopStyle], [Photo]) VALUES (4, N'Work', N'gray')
SET IDENTITY_INSERT [dbo].[Tops] OFF
