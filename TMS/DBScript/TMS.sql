USE [TMS]
GO
/****** Object:  Table [dbo].[District]    Script Date: 11/23/2014 11:34:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[District](
	[DisrictId] [int] IDENTITY(1,1) NOT NULL,
	[StateId] [int] NOT NULL,
	[DistrictName] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_dbo.District] PRIMARY KEY CLUSTERED 
(
	[DisrictId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[States]    Script Date: 11/23/2014 11:34:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[States](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_dbo.States] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 11/23/2014 11:34:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfile](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](56) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/23/2014 11:34:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[PhoneNo] [nvarchar](20) NULL,
	[DistrictId] [int] NOT NULL,
	[StateId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.UserModels] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_Membership]    Script Date: 11/23/2014 11:34:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Membership](
	[UserId] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[ConfirmationToken] [nvarchar](128) NULL,
	[IsConfirmed] [bit] NULL,
	[LastPasswordFailureDate] [datetime] NULL,
	[PasswordFailuresSinceLastSuccess] [int] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordChangedDate] [datetime] NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[PasswordVerificationToken] [nvarchar](128) NULL,
	[PasswordVerificationTokenExpirationDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_OAuthMembership]    Script Date: 11/23/2014 11:34:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_OAuthMembership](
	[Provider] [nvarchar](30) NOT NULL,
	[ProviderUserId] [nvarchar](100) NOT NULL,
	[UserId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Provider] ASC,
	[ProviderUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_Roles]    Script Date: 11/23/2014 11:34:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_UsersInRoles]    Script Date: 11/23/2014 11:34:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_UsersInRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[District] ON 

INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (1, 34, N'Allahabad')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (2, 34, N'Moradabad')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (3, 34, N'Azamgarh')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (4, 34, N'Lucknow')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (5, 34, N'Kanpur Nagar')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (6, 34, N'Jaunpur')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (7, 34, N'Sitapur')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (8, 34, N'Bareilly')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (9, 34, N'Gorakhpur')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (10, 34, N'Agra')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (11, 34, N'Muzaffarnagar')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (12, 34, N'Hardoi')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (13, 34, N'Kheri')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (14, 34, N'Sultanpur')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (15, 34, N'Bijnor')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (16, 34, N'Budaun')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (17, 34, N'Varanasi')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (18, 34, N'Aligarh')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (19, 34, N'Ghazipur')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (20, 34, N'Kushinagar')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (21, 34, N'Bulandshahar')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (22, 34, N'Bahraich')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (23, 34, N'Saharanpur')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (24, 34, N'Meerut')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (25, 34, N'Gonda')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (26, 34, N'Bahraich')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (27, 34, N'Rae Bareli')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (28, 34, N'Barabanki')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (29, 34, N'Ballia')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (30, 34, N'Pratapgarh')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (31, 34, N'Unnao')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (32, 34, N'Deoria')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (33, 34, N'Shahjahanpur')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (34, 34, N'Maharajganj')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (35, 34, N'Fatehpur')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (36, 34, N'Siddharth Nagar')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (37, 34, N'Mathura')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (38, 34, N'Firozabad')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (39, 34, N'Mirzapur')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (40, 34, N'Faizabad')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (41, 34, N'Basti')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (42, 34, N'Ambedkar Nagar')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (43, 34, N'Rampur')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (44, 34, N'Mau')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (45, 34, N'Balrampur')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (46, 34, N'Pilibhit')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (47, 34, N'Jhansi')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (48, 34, N'Chandauli')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (49, 34, N'Farrukhabad')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (50, 34, N'Mainpuri')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (51, 34, N'Sonbhadra')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (52, 34, N'Jyotiba Phule Nagar')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (53, 34, N'Banda')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (54, 34, N'Ramabai Nagar')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (55, 34, N'Etah')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (56, 34, N'Sant Kabir Nagar')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (57, 34, N'Jalaun')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (58, 34, N'Kannauj')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (59, 34, N'Gautam Buddha Nagar')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (60, 34, N'Kaushambi')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (61, 34, N'Etawah')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (62, 34, N'Sant Ravidas Nagar')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (63, 34, N'Mahamaya Nagar')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (64, 34, N'Kanshiram Nagar')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (65, 34, N'Auraiya')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (66, 34, N'Baghpat')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (67, 34, N'Lalitpur')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (68, 34, N'Shrawasti')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (69, 34, N'Hamirpur')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (70, 34, N'Chitrakoot')
INSERT [dbo].[District] ([DisrictId], [StateId], [DistrictName]) VALUES (71, 34, N'Mahoba')
SET IDENTITY_INSERT [dbo].[District] OFF
SET IDENTITY_INSERT [dbo].[States] ON 

INSERT [dbo].[States] ([StateId], [StateName]) VALUES (1, N'ANDAMAN AND NICOBAR ISLANDS')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (2, N'ANDHRA PRADESH')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (3, N'ARUNACHAL PRADESH')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (4, N'ASSAM')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (5, N'BIHAR')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (6, N'CHATTISGARH')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (7, N'CHANDIGARH')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (8, N'DAMAN AND DIU')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (9, N'DELHI')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (10, N'DADRA AND NAGAR HAVELI')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (11, N'GOA')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (12, N'GUJARAT')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (13, N'HIMACHAL PRADESH')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (14, N'HARYANA')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (15, N'JAMMU AND KASHMIR')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (16, N'JHARKHAND')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (17, N'KERALA')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (18, N'KARNATAKA')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (19, N'LAKSHADWEEP')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (20, N'MEGHALAYA')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (21, N'MAHARASHTRA')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (22, N'MANIPUR')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (23, N'MADHYA PRADESH')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (24, N'MIZORAM')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (25, N'NAGALAND')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (26, N'ORISSA')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (27, N'PUNJAB')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (28, N'PONDICHERRY')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (29, N'RAJASTHAN')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (30, N'SIKKIM')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (31, N'TAMIL NADU')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (32, N'TRIPURA')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (33, N'UTTARAKHAND')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (34, N'UTTAR PRADESH')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (35, N'WEST BENGAL')
SET IDENTITY_INSERT [dbo].[States] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__UserProf__C9F2845620667C68]    Script Date: 11/23/2014 11:34:13 AM ******/
ALTER TABLE [dbo].[UserProfile] ADD UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__webpages__8A2B616053BC27FF]    Script Date: 11/23/2014 11:34:13 AM ******/
ALTER TABLE [dbo].[webpages_Roles] ADD UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [DistrictId]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [StateId]
GO
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [IsConfirmed]
GO
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [PasswordFailuresSinceLastSuccess]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Users_dbo.District_DistrictId] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[District] ([DisrictId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_dbo.Users_dbo.District_DistrictId]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Users_dbo.States_StateId] FOREIGN KEY([StateId])
REFERENCES [dbo].[States] ([StateId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_dbo.Users_dbo.States_StateId]
GO
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[webpages_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_RoleId]
GO
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_UserId]
GO
