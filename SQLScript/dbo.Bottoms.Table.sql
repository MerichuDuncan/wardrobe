USE [Wardrobe]
GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 2/20/2017 9:04:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomsID] [int] IDENTITY(1,1) NOT NULL,
	[BottomStyle] [nchar](10) NOT NULL,
	[Photo] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Bottoms] ON 

INSERT [dbo].[Bottoms] ([BottomsID], [BottomStyle], [Photo]) VALUES (1, N'Shorts    ', N'shorts')
INSERT [dbo].[Bottoms] ([BottomsID], [BottomStyle], [Photo]) VALUES (2, N'Skirt     ', N'skirt')
INSERT [dbo].[Bottoms] ([BottomsID], [BottomStyle], [Photo]) VALUES (3, N'Jean      ', N'jeans')
SET IDENTITY_INSERT [dbo].[Bottoms] OFF
