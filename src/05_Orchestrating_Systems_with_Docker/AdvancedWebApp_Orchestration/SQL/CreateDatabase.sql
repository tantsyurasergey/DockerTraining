USE [master]
GO
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'AdvancedWebAppDb')
BEGIN
CREATE DATABASE [AdvancedWebAppDb]
END
GO
USE [AdvancedWebAppDb]
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Items]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Items](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[ParentId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED ([Id] ASC)
)
END
GO
INSERT [dbo].[Items] ([Id], [Name], [ParentId]) VALUES (N'11111111-1111-1111-1111-111111111111', N'sitecore', NULL)
GO
INSERT [dbo].[Items] ([Id], [Name], [ParentId]) VALUES (N'0de95ae4-41ab-4d01-9eb0-67441b7c2450', N'Content', N'11111111-1111-1111-1111-111111111111')
GO
INSERT [dbo].[Items] ([Id], [Name], [ParentId]) VALUES (N'110d559f-dea5-42ea-9c1c-8a5df7e70ef9', N'Home', N'0de95ae4-41ab-4d01-9eb0-67441b7c2450')
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Items_Items]') AND parent_object_id = OBJECT_ID(N'[dbo].[Items]'))
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_Items] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Items] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Items_Items]') AND parent_object_id = OBJECT_ID(N'[dbo].[Items]'))
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_Items]
GO