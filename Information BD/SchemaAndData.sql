USE [dbWebForm]
GO
/****** Object:  Table [dbo].[departments]    Script Date: 22/09/2022 10:50:57 p. m. ******/
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
/****** Object:  Table [dbo].[dept_emp]    Script Date: 22/09/2022 10:50:57 p. m. ******/
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
/****** Object:  Table [dbo].[dept_manager]    Script Date: 22/09/2022 10:50:57 p. m. ******/
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
/****** Object:  Table [dbo].[employees]    Script Date: 22/09/2022 10:50:57 p. m. ******/
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
	[code_emp] [varchar](50) NOT NULL,
	[user_emp] [varchar](50) NOT NULL,
	[cellphone] [varchar](30) NOT NULL,
	[telephone] [varchar](30) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[authorized_store] [bit] NOT NULL,
	[authorized_orders] [bit] NOT NULL,
	[mail_user_access] [bit] NOT NULL,
	[type_contact_id] [int] NOT NULL,
	[position_id] [int] NOT NULL,
	[password] [varchar](100) NOT NULL,
 CONSTRAINT [PK_employees] PRIMARY KEY CLUSTERED 
(
	[emp_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[positions]    Script Date: 22/09/2022 10:50:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[positions](
	[position_Id] [int] IDENTITY(1,1) NOT NULL,
	[position_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_positions] PRIMARY KEY CLUSTERED 
(
	[position_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[salaries]    Script Date: 22/09/2022 10:50:57 p. m. ******/
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
/****** Object:  Table [dbo].[titles]    Script Date: 22/09/2022 10:50:57 p. m. ******/
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
/****** Object:  Table [dbo].[typeContact]    Script Date: 22/09/2022 10:50:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[typeContact](
	[type_contact_id] [int] IDENTITY(1,1) NOT NULL,
	[type_contact_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_typeContact] PRIMARY KEY CLUSTERED 
(
	[type_contact_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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

INSERT [dbo].[employees] ([emp_no], [birth_date], [first_name], [last_name], [gender], [hire_date], [code_emp], [user_emp], [cellphone], [telephone], [email], [authorized_store], [authorized_orders], [mail_user_access], [type_contact_id], [position_id], [password]) VALUES (1, CAST(N'2000-01-23' AS Date), N'Sebastian', N'Castano', 1, CAST(N'2018-12-10' AS Date), N'xmxwebdemo2', N'XMXSEB', N'+573423654', N'2345235', N'sebas@gmail.com', 1, 1, 0, 1, 1, N'SEBA1234')
INSERT [dbo].[employees] ([emp_no], [birth_date], [first_name], [last_name], [gender], [hire_date], [code_emp], [user_emp], [cellphone], [telephone], [email], [authorized_store], [authorized_orders], [mail_user_access], [type_contact_id], [position_id], [password]) VALUES (2, CAST(N'2000-01-23' AS Date), N'Ximena', N'Perez', 0, CAST(N'2018-12-10' AS Date), N'xmxwebdemo2', N'XMXXIM', N'+573423543', N'5446443', N'xime@gmail.com', 1, 1, 0, 2, 1, N'XIME1234')
INSERT [dbo].[employees] ([emp_no], [birth_date], [first_name], [last_name], [gender], [hire_date], [code_emp], [user_emp], [cellphone], [telephone], [email], [authorized_store], [authorized_orders], [mail_user_access], [type_contact_id], [position_id], [password]) VALUES (3, CAST(N'2000-01-22' AS Date), N'Luciana', N'Arango', 0, CAST(N'2018-12-10' AS Date), N'xmxwebdemo2', N'XMXLUC', N'+576573654', N'3463437', N'luci@hotmail.com', 1, 1, 1, 2, 1, N'LUCI1234')
INSERT [dbo].[employees] ([emp_no], [birth_date], [first_name], [last_name], [gender], [hire_date], [code_emp], [user_emp], [cellphone], [telephone], [email], [authorized_store], [authorized_orders], [mail_user_access], [type_contact_id], [position_id], [password]) VALUES (4, CAST(N'2000-01-23' AS Date), N'Rafael', N'Castano', 1, CAST(N'2022-04-23' AS Date), N'xmxwebdemo2', N'XMXRAF', N'+573412654', N'8979790', N'rafa@gmail.com', 1, 1, 1, 1, 4, N'RAFA1234')
INSERT [dbo].[employees] ([emp_no], [birth_date], [first_name], [last_name], [gender], [hire_date], [code_emp], [user_emp], [cellphone], [telephone], [email], [authorized_store], [authorized_orders], [mail_user_access], [type_contact_id], [position_id], [password]) VALUES (5, CAST(N'2000-01-24' AS Date), N'Carlos', N'Cardenas', 1, CAST(N'2015-02-12' AS Date), N'xmxwebdemo2', N'XMXCAR', N'+573625614', N'2347789', N'carlos@hotmail.com', 1, 1, 1, 3, 2, N'CARL1234')
INSERT [dbo].[employees] ([emp_no], [birth_date], [first_name], [last_name], [gender], [hire_date], [code_emp], [user_emp], [cellphone], [telephone], [email], [authorized_store], [authorized_orders], [mail_user_access], [type_contact_id], [position_id], [password]) VALUES (6, CAST(N'2000-01-24' AS Date), N'Andrea', N'Grajales', 0, CAST(N'2015-02-12' AS Date), N'xmxwebdemo2', N'XMXAND', N'+571233654', N'7897824', N'andre@hotmail.com', 0, 0, 1, 4, 2, N'ANDR1234')
INSERT [dbo].[employees] ([emp_no], [birth_date], [first_name], [last_name], [gender], [hire_date], [code_emp], [user_emp], [cellphone], [telephone], [email], [authorized_store], [authorized_orders], [mail_user_access], [type_contact_id], [position_id], [password]) VALUES (7, CAST(N'2000-01-22' AS Date), N'Graciela', N'Patino', 0, CAST(N'2019-05-06' AS Date), N'xmxwebdemo2', N'XMXGRA', N'+570984531', N'4561237', N'graciela@gmail.com', 0, 0, 1, 4, 4, N'GRAC1234')
INSERT [dbo].[employees] ([emp_no], [birth_date], [first_name], [last_name], [gender], [hire_date], [code_emp], [user_emp], [cellphone], [telephone], [email], [authorized_store], [authorized_orders], [mail_user_access], [type_contact_id], [position_id], [password]) VALUES (8, CAST(N'1988-02-23' AS Date), N'Arturo', N'Fuente', 1, CAST(N'2022-05-05' AS Date), N'xmxwebdemo2', N'XMXART', N'+575698341', N'9012895', N'arturo@gmail.com', 1, 0, 0, 1, 3, N'ARTU1234')
SET IDENTITY_INSERT [dbo].[employees] OFF
GO
SET IDENTITY_INSERT [dbo].[positions] ON 

INSERT [dbo].[positions] ([position_Id], [position_name]) VALUES (1, N'Application Development Senior Analyst')
INSERT [dbo].[positions] ([position_Id], [position_name]) VALUES (2, N'Scrum Master')
INSERT [dbo].[positions] ([position_Id], [position_name]) VALUES (3, N'QA Senior')
INSERT [dbo].[positions] ([position_Id], [position_name]) VALUES (4, N'Operator ')
SET IDENTITY_INSERT [dbo].[positions] OFF
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
SET IDENTITY_INSERT [dbo].[typeContact] ON 

INSERT [dbo].[typeContact] ([type_contact_id], [type_contact_name]) VALUES (1, N'Contacto Comercial')
INSERT [dbo].[typeContact] ([type_contact_id], [type_contact_name]) VALUES (2, N'Pago de factura')
INSERT [dbo].[typeContact] ([type_contact_id], [type_contact_name]) VALUES (3, N'Representante legal')
INSERT [dbo].[typeContact] ([type_contact_id], [type_contact_name]) VALUES (4, N'Retiro de mercadería')
SET IDENTITY_INSERT [dbo].[typeContact] OFF
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
ALTER TABLE [dbo].[employees]  WITH CHECK ADD  CONSTRAINT [FK_employees_employees] FOREIGN KEY([emp_no])
REFERENCES [dbo].[employees] ([emp_no])
GO
ALTER TABLE [dbo].[employees] CHECK CONSTRAINT [FK_employees_employees]
GO
ALTER TABLE [dbo].[employees]  WITH CHECK ADD  CONSTRAINT [FK_employees_positions] FOREIGN KEY([position_id])
REFERENCES [dbo].[positions] ([position_Id])
GO
ALTER TABLE [dbo].[employees] CHECK CONSTRAINT [FK_employees_positions]
GO
ALTER TABLE [dbo].[employees]  WITH CHECK ADD  CONSTRAINT [FK_employees_typeContact] FOREIGN KEY([type_contact_id])
REFERENCES [dbo].[typeContact] ([type_contact_id])
GO
ALTER TABLE [dbo].[employees] CHECK CONSTRAINT [FK_employees_typeContact]
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
