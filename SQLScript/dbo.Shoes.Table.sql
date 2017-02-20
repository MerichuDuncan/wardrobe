USE [Wardrobe]
GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 2/20/2017 9:04:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoesID] [int] IDENTITY(1,1) NOT NULL,
	[ShoeStyle] [varchar](50) NOT NULL,
	[Photo] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Shoes] ON 

INSERT [dbo].[Shoes] ([ShoesID], [ShoeStyle], [Photo]) VALUES (1, N'Athletic', N'athletic')
INSERT [dbo].[Shoes] ([ShoesID], [ShoeStyle], [Photo]) VALUES (2, N'Flats', N'flats')
INSERT [dbo].[Shoes] ([ShoesID], [ShoeStyle], [Photo]) VALUES (3, N'Boots', N'boots')
SET IDENTITY_INSERT [dbo].[Shoes] OFF
