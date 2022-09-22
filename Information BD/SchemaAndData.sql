USE [dbWebForm]
GO
/****** Object:  Table [dbo].[departments]    Script Date: 21/09/2022 10:16:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[departments](
	[dept_no] [char](10) NOT NULL,
	[dept_name] [varchar](40) NOT NULL,
 CONSTRAINT [PK_departments] PRIMARY KEY CLUSTERED 
(
	[dept_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dept_emp]    Script Date: 21/09/2022 10:16:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dept_emp](
	[emp_no] [int] NOT NULL,
	[dept_no] [char](10) NOT NULL,
	[from_date] [date] NOT NULL,
	[to_date] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dept_manager]    Script Date: 21/09/2022 10:16:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dept_manager](
	[emp_no] [int] NOT NULL,
	[dept_no] [char](10) NOT NULL,
	[from_date] [date] NOT NULL,
	[to_date] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employees]    Script Date: 21/09/2022 10:16:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employees](
	[emp_no] [int] IDENTITY(1,1) NOT NULL,
	[birth_date] [date] NOT NULL,
	[first_name] [varchar](14) NOT NULL,
	[last_name] [varchar](14) NOT NULL,
	[gender] [tinyint] NOT NULL,
	[hire_date] [date] NOT NULL,
 CONSTRAINT [PK_employees] PRIMARY KEY CLUSTERED 
(
	[emp_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[salaries]    Script Date: 21/09/2022 10:16:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[salaries](
	[emp_no] [int] NOT NULL,
	[salary] [int] NOT NULL,
	[from_date] [date] NOT NULL,
	[to_date] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[titles]    Script Date: 21/09/2022 10:16:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[titles](
	[emp_no] [int] NOT NULL,
	[title] [varchar](50) NOT NULL,
	[from_date] [date] NOT NULL,
	[to_date] [date] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[departments] ([dept_no], [dept_name]) VALUES (N'1         ', N'SISTEMAS')
INSERT [dbo].[departments] ([dept_no], [dept_name]) VALUES (N'2         ', N'OPERACIONES')
INSERT [dbo].[departments] ([dept_no], [dept_name]) VALUES (N'3         ', N'AGILE')
INSERT [dbo].[departments] ([dept_no], [dept_name]) VALUES (N'4         ', N'QA')
GO
INSERT [dbo].[dept_emp] ([emp_no], [dept_no], [from_date], [to_date]) VALUES (1, N'1         ', CAST(N'2000-01-01' AS Date), CAST(N'2030-12-31' AS Date))
INSERT [dbo].[dept_emp] ([emp_no], [dept_no], [from_date], [to_date]) VALUES (2, N'1         ', CAST(N'2000-01-01' AS Date), CAST(N'2030-12-31' AS Date))
INSERT [dbo].[dept_emp] ([emp_no], [dept_no], [from_date], [to_date]) VALUES (3, N'1         ', CAST(N'2000-01-01' AS Date), CAST(N'2030-12-31' AS Date))
INSERT [dbo].[dept_emp] ([emp_no], [dept_no], [from_date], [to_date]) VALUES (4, N'2         ', CAST(N'2000-01-01' AS Date), CAST(N'2030-12-31' AS Date))
INSERT [dbo].[dept_emp] ([emp_no], [dept_no], [from_date], [to_date]) VALUES (5, N'3         ', CAST(N'2000-01-01' AS Date), CAST(N'2030-12-31' AS Date))
INSERT [dbo].[dept_emp] ([emp_no], [dept_no], [from_date], [to_date]) VALUES (6, N'3         ', CAST(N'2000-01-01' AS Date), CAST(N'2030-12-31' AS Date))
INSERT [dbo].[dept_emp] ([emp_no], [dept_no], [from_date], [to_date]) VALUES (7, N'2         ', CAST(N'2000-01-01' AS Date), CAST(N'2030-12-31' AS Date))
INSERT [dbo].[dept_emp] ([emp_no], [dept_no], [from_date], [to_date]) VALUES (8, N'4         ', CAST(N'2000-01-01' AS Date), CAST(N'2030-12-31' AS Date))
GO
SET IDENTITY_INSERT [dbo].[employees] ON 

INSERT [dbo].[employees] ([emp_no], [birth_date], [first_name], [last_name], [gender], [hire_date]) VALUES (1, CAST(N'2000-01-23' AS Date), N'Sebastian', N'Castano', 1, CAST(N'2018-12-10' AS Date))
INSERT [dbo].[employees] ([emp_no], [birth_date], [first_name], [last_name], [gender], [hire_date]) VALUES (2, CAST(N'2000-01-23' AS Date), N'Ximena', N'Perez', 0, CAST(N'2018-12-10' AS Date))
INSERT [dbo].[employees] ([emp_no], [birth_date], [first_name], [last_name], [gender], [hire_date]) VALUES (3, CAST(N'2000-01-22' AS Date), N'Luciana', N'Arango', 0, CAST(N'2018-12-10' AS Date))
INSERT [dbo].[employees] ([emp_no], [birth_date], [first_name], [last_name], [gender], [hire_date]) VALUES (4, CAST(N'2000-01-23' AS Date), N'Rafael', N'Castano', 1, CAST(N'2022-04-23' AS Date))
INSERT [dbo].[employees] ([emp_no], [birth_date], [first_name], [last_name], [gender], [hire_date]) VALUES (5, CAST(N'2000-01-24' AS Date), N'Carlos', N'Cardenas', 1, CAST(N'2015-02-12' AS Date))
INSERT [dbo].[employees] ([emp_no], [birth_date], [first_name], [last_name], [gender], [hire_date]) VALUES (6, CAST(N'2000-01-24' AS Date), N'Andrea', N'Grajales', 0, CAST(N'2015-02-12' AS Date))
INSERT [dbo].[employees] ([emp_no], [birth_date], [first_name], [last_name], [gender], [hire_date]) VALUES (7, CAST(N'2000-01-22' AS Date), N'Graciela', N'Patino', 0, CAST(N'2019-05-06' AS Date))
INSERT [dbo].[employees] ([emp_no], [birth_date], [first_name], [last_name], [gender], [hire_date]) VALUES (8, CAST(N'1988-02-23' AS Date), N'Carlos', N'Fuente', 1, CAST(N'2022-05-05' AS Date))
SET IDENTITY_INSERT [dbo].[employees] OFF
GO
INSERT [dbo].[salaries] ([emp_no], [salary], [from_date], [to_date]) VALUES (1, 10000000, CAST(N'2000-01-01' AS Date), CAST(N'2030-12-31' AS Date))
INSERT [dbo].[salaries] ([emp_no], [salary], [from_date], [to_date]) VALUES (2, 5340000, CAST(N'2000-01-01' AS Date), CAST(N'2030-12-31' AS Date))
INSERT [dbo].[salaries] ([emp_no], [salary], [from_date], [to_date]) VALUES (3, 7500000, CAST(N'2000-01-01' AS Date), CAST(N'2030-12-31' AS Date))
INSERT [dbo].[salaries] ([emp_no], [salary], [from_date], [to_date]) VALUES (4, 3000000, CAST(N'2000-01-01' AS Date), CAST(N'2030-12-31' AS Date))
INSERT [dbo].[salaries] ([emp_no], [salary], [from_date], [to_date]) VALUES (5, 1200000, CAST(N'2000-01-01' AS Date), CAST(N'2030-12-31' AS Date))
INSERT [dbo].[salaries] ([emp_no], [salary], [from_date], [to_date]) VALUES (6, 15000000, CAST(N'2000-01-01' AS Date), CAST(N'2030-12-31' AS Date))
INSERT [dbo].[salaries] ([emp_no], [salary], [from_date], [to_date]) VALUES (7, 4300000, CAST(N'2000-01-01' AS Date), CAST(N'2030-12-31' AS Date))
INSERT [dbo].[salaries] ([emp_no], [salary], [from_date], [to_date]) VALUES (8, 2000000, CAST(N'2000-01-01' AS Date), CAST(N'2030-12-31' AS Date))
GO
ALTER TABLE [dbo].[dept_emp]  WITH CHECK ADD  CONSTRAINT [FK_dept_emp_departments] FOREIGN KEY([dept_no])
REFERENCES [dbo].[departments] ([dept_no])
GO
ALTER TABLE [dbo].[dept_emp] CHECK CONSTRAINT [FK_dept_emp_departments]
GO
ALTER TABLE [dbo].[dept_emp]  WITH CHECK ADD  CONSTRAINT [FK_dept_emp_employees] FOREIGN KEY([emp_no])
REFERENCES [dbo].[employees] ([emp_no])
GO
ALTER TABLE [dbo].[dept_emp] CHECK CONSTRAINT [FK_dept_emp_employees]
GO
ALTER TABLE [dbo].[dept_manager]  WITH CHECK ADD  CONSTRAINT [FK_dept_manager_departments] FOREIGN KEY([dept_no])
REFERENCES [dbo].[departments] ([dept_no])
GO
ALTER TABLE [dbo].[dept_manager] CHECK CONSTRAINT [FK_dept_manager_departments]
GO
ALTER TABLE [dbo].[dept_manager]  WITH CHECK ADD  CONSTRAINT [FK_dept_manager_employees] FOREIGN KEY([emp_no])
REFERENCES [dbo].[employees] ([emp_no])
GO
ALTER TABLE [dbo].[dept_manager] CHECK CONSTRAINT [FK_dept_manager_employees]
GO
ALTER TABLE [dbo].[salaries]  WITH CHECK ADD  CONSTRAINT [FK_salaries_employees] FOREIGN KEY([emp_no])
REFERENCES [dbo].[employees] ([emp_no])
GO
ALTER TABLE [dbo].[salaries] CHECK CONSTRAINT [FK_salaries_employees]
GO
ALTER TABLE [dbo].[titles]  WITH CHECK ADD  CONSTRAINT [FK_titles_employees] FOREIGN KEY([emp_no])
REFERENCES [dbo].[employees] ([emp_no])
GO
ALTER TABLE [dbo].[titles] CHECK CONSTRAINT [FK_titles_employees]
GO
