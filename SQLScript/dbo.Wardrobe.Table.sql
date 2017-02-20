USE [Wardrobe]
GO
/****** Object:  Table [dbo].[Wardrobe]    Script Date: 2/20/2017 9:04:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Wardrobe](
	[WardrobeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Occasion] [varchar](50) NOT NULL,
	[Season] [varchar](50) NOT NULL,
	[TopsID] [int] NOT NULL,
	[BottomsID] [int] NOT NULL,
	[ShoesID] [int] NOT NULL,
	[AccessoriesID] [int] NOT NULL,
 CONSTRAINT [PK_Wardrobe] PRIMARY KEY CLUSTERED 
(
	[WardrobeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Wardrobe] ON 

INSERT [dbo].[Wardrobe] ([WardrobeID], [Name], [Occasion], [Season], [TopsID], [BottomsID], [ShoesID], [AccessoriesID]) VALUES (1, N'Summer Look', N'Casual', N'Summer', 1, 1, 1, 1)
INSERT [dbo].[Wardrobe] ([WardrobeID], [Name], [Occasion], [Season], [TopsID], [BottomsID], [ShoesID], [AccessoriesID]) VALUES (2, N'Work', N'Business', N'All Season', 4, 2, 2, 2)
INSERT [dbo].[Wardrobe] ([WardrobeID], [Name], [Occasion], [Season], [TopsID], [BottomsID], [ShoesID], [AccessoriesID]) VALUES (3, N'Everyday Look', N'Casual', N'Winter', 3, 3, 3, 3)
INSERT [dbo].[Wardrobe] ([WardrobeID], [Name], [Occasion], [Season], [TopsID], [BottomsID], [ShoesID], [AccessoriesID]) VALUES (4, N'Church Outfit', N'Semi Casual', N'All Season', 4, 3, 3, 2)
SET IDENTITY_INSERT [dbo].[Wardrobe] OFF
ALTER TABLE [dbo].[Wardrobe]  WITH CHECK ADD  CONSTRAINT [FK_Wardrobe_Accessories] FOREIGN KEY([AccessoriesID])
REFERENCES [dbo].[Accessories] ([AccessoriesID])
GO
ALTER TABLE [dbo].[Wardrobe] CHECK CONSTRAINT [FK_Wardrobe_Accessories]
GO
ALTER TABLE [dbo].[Wardrobe]  WITH CHECK ADD  CONSTRAINT [FK_Wardrobe_Bottoms] FOREIGN KEY([BottomsID])
REFERENCES [dbo].[Bottoms] ([BottomsID])
GO
ALTER TABLE [dbo].[Wardrobe] CHECK CONSTRAINT [FK_Wardrobe_Bottoms]
GO
ALTER TABLE [dbo].[Wardrobe]  WITH CHECK ADD  CONSTRAINT [FK_Wardrobe_Shoes] FOREIGN KEY([ShoesID])
REFERENCES [dbo].[Shoes] ([ShoesID])
GO
ALTER TABLE [dbo].[Wardrobe] CHECK CONSTRAINT [FK_Wardrobe_Shoes]
GO
ALTER TABLE [dbo].[Wardrobe]  WITH CHECK ADD  CONSTRAINT [FK_Wardrobe_Tops] FOREIGN KEY([TopsID])
REFERENCES [dbo].[Tops] ([TopsID])
GO
ALTER TABLE [dbo].[Wardrobe] CHECK CONSTRAINT [FK_Wardrobe_Tops]
GO
