CREATE DATABASE SmartIs
GO

USE [SmartIs]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 5/3/2016 6:00:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Department](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[ParentId] [int] NULL,
	[HeadOfDept] [int] NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DepartmentSlots]    Script Date: 5/3/2016 6:00:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DepartmentSlots](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[StartDate] [date] NULL,
	[EmployeeId] [int] NULL,
	[DepartmentId] [int] NOT NULL,
 CONSTRAINT [PK_DepartmentSlots] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmployeeGoals]    Script Date: 5/3/2016 6:00:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmployeeGoals](
	[Id] [int] NOT NULL,
	[PaId] [int] NOT NULL,
	[GoalName] [nvarchar](300) NULL,
	[Description] [nvarchar](max) NULL,
	[status] [varchar](50) NULL,
	[rating] [int] NULL,
 CONSTRAINT [PK_EmployeeGoals] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmployeeOOO]    Script Date: 5/3/2016 6:00:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmployeeOOO](
	[EmpId] [int] NOT NULL,
	[startDate] [date] NULL,
	[EndDate] [date] NULL,
	[leave] [nchar](10) NULL,
	[RequestedDate] [date] NULL,
	[RequestedBy] [varchar](50) NULL,
	[Status] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FiscalYear]    Script Date: 5/3/2016 6:00:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FiscalYear](
	[Id] [int] NOT NULL,
	[YearName] [varbinary](50) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
 CONSTRAINT [PK_FiscalYear] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Holidays]    Script Date: 5/3/2016 6:00:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Holidays](
	[Id] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[LocationId] [int] NOT NULL,
 CONSTRAINT [PK_Holidays] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 5/3/2016 6:00:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee](
	[EmpID] [int] NOT NULL,
	[FullName] [varchar](100) NOT NULL,
	[DeptId] [int] NOT NULL,
	[LocationId] [int] NULL,
	[ManagerId] [int] NOT NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LeaveDestribution]    Script Date: 5/3/2016 6:00:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeaveDestribution](
	[TypeId] [int] NOT NULL,
	[Balance] [int] NOT NULL,
	[LeaveStructId] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LeaveStructure]    Script Date: 5/3/2016 6:00:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LeaveStructure](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[CreatedBy] [varchar](50) NULL,
 CONSTRAINT [PK_LeaveStructure] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LeaveTypes]    Script Date: 5/3/2016 6:00:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LeaveTypes](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[createBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_LeaveTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Location]    Script Date: 5/3/2016 6:00:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Location](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[LeaveStructureId] [int] NOT NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PerformanceApraisal]    Script Date: 5/3/2016 6:00:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PerformanceApraisal](
	[Id] [int] NOT NULL,
	[EmpId] [int] NOT NULL,
	[Rating] [int] NOT NULL,
	[RatingType] [varchar](50) NOT NULL,
	[ManagerComment] [nvarchar](max) NULL,
	[EmployeeComment] [nvarchar](max) NULL,
	[FiscalYearId] [int] NULL,
 CONSTRAINT [PK_PerformanceApraisal] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SlotHistory]    Script Date: 5/3/2016 6:00:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SlotHistory](
	[SlotId] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[EmpId] [int] NOT NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[DepartmentSlots]  WITH CHECK ADD  CONSTRAINT [FK_DepartmentSlots_Department] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([Id])
GO
ALTER TABLE [dbo].[DepartmentSlots] CHECK CONSTRAINT [FK_DepartmentSlots_Department]
GO
ALTER TABLE [dbo].[EmployeeGoals]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeGoals_PerformanceApraisal] FOREIGN KEY([PaId])
REFERENCES [dbo].[PerformanceApraisal] ([Id])
GO
ALTER TABLE [dbo].[EmployeeGoals] CHECK CONSTRAINT [FK_EmployeeGoals_PerformanceApraisal]
GO
ALTER TABLE [dbo].[EmployeeOOO]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeOOO_Employee] FOREIGN KEY([EmpId])
REFERENCES [dbo].[Employee] ([EmpID])
GO
ALTER TABLE [dbo].[EmployeeOOO] CHECK CONSTRAINT [FK_EmployeeOOO_Employee]
GO
ALTER TABLE [dbo].[Holidays]  WITH CHECK ADD  CONSTRAINT [FK_Holidays_Location] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Location] ([Id])
GO
ALTER TABLE [dbo].[Holidays] CHECK CONSTRAINT [FK_Holidays_Location]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Department] FOREIGN KEY([DeptId])
REFERENCES [dbo].[Department] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Department]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Location] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Location] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Location]
GO
ALTER TABLE [dbo].[LeaveDestribution]  WITH CHECK ADD  CONSTRAINT [FK_LeaveDestribution_LeaveStructure] FOREIGN KEY([LeaveStructId])
REFERENCES [dbo].[LeaveStructure] ([Id])
GO
ALTER TABLE [dbo].[LeaveDestribution] CHECK CONSTRAINT [FK_LeaveDestribution_LeaveStructure]
GO
ALTER TABLE [dbo].[LeaveDestribution]  WITH CHECK ADD  CONSTRAINT [FK_LeaveDestribution_LeaveTypes] FOREIGN KEY([TypeId])
REFERENCES [dbo].[LeaveTypes] ([Id])
GO
ALTER TABLE [dbo].[LeaveDestribution] CHECK CONSTRAINT [FK_LeaveDestribution_LeaveTypes]
GO
ALTER TABLE [dbo].[Location]  WITH CHECK ADD  CONSTRAINT [FK_Location_LeaveStructure] FOREIGN KEY([LeaveStructureId])
REFERENCES [dbo].[LeaveStructure] ([Id])
GO
ALTER TABLE [dbo].[Location] CHECK CONSTRAINT [FK_Location_LeaveStructure]
GO
ALTER TABLE [dbo].[PerformanceApraisal]  WITH CHECK ADD  CONSTRAINT [FK_PerformanceApraisal_FiscalYear] FOREIGN KEY([FiscalYearId])
REFERENCES [dbo].[FiscalYear] ([Id])
GO
ALTER TABLE [dbo].[PerformanceApraisal] CHECK CONSTRAINT [FK_PerformanceApraisal_FiscalYear]
GO
ALTER TABLE [dbo].[PerformanceApraisal]  WITH CHECK ADD  CONSTRAINT [FK_PerformanceApraisal_Employee] FOREIGN KEY([EmpId])
REFERENCES [dbo].[Employee] ([EmpID])
GO
ALTER TABLE [dbo].[PerformanceApraisal] CHECK CONSTRAINT [FK_PerformanceApraisal_Employee]
GO
ALTER TABLE [dbo].[SlotHistory]  WITH CHECK ADD  CONSTRAINT [FK_SlotHistory_DepartmentSlots] FOREIGN KEY([SlotId])
REFERENCES [dbo].[DepartmentSlots] ([Id])
GO
ALTER TABLE [dbo].[SlotHistory] CHECK CONSTRAINT [FK_SlotHistory_DepartmentSlots]
GO
