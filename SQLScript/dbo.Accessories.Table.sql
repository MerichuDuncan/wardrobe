USE [Wardrobe]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 2/20/2017 9:04:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessoriesID] [int] IDENTITY(1,1) NOT NULL,
	[NameofAccessories] [varchar](50) NOT NULL,
	[Photo] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessoriesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Accessories] ON 

INSERT [dbo].[Accessories] ([AccessoriesID], [NameofAccessories], [Photo]) VALUES (1, N'Watch', N'watch')
INSERT [dbo].[Accessories] ([AccessoriesID], [NameofAccessories], [Photo]) VALUES (2, N'Eyeglass', N'eyeglass')
INSERT [dbo].[Accessories] ([AccessoriesID], [NameofAccessories], [Photo]) VALUES (3, N'Purse', N'purse')
SET IDENTITY_INSERT [dbo].[Accessories] OFF
