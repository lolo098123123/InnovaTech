
/* Nombre:José Ruero. Matricula: 20-EIIT-1-004. Sección:0541 */



USE [master]
GO
/****** Object:  Database [InnovaTech]    Script Date: 19/08/2023 19:10:23 ******/
CREATE DATABASE [InnovaTech]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'InnovaTech', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQL2023\MSSQL\DATA\InnovaTech.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'InnovaTech_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQL2023\MSSQL\DATA\InnovaTech_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [InnovaTech] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [InnovaTech].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [InnovaTech] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [InnovaTech] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [InnovaTech] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [InnovaTech] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [InnovaTech] SET ARITHABORT OFF 
GO
ALTER DATABASE [InnovaTech] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [InnovaTech] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [InnovaTech] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [InnovaTech] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [InnovaTech] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [InnovaTech] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [InnovaTech] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [InnovaTech] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [InnovaTech] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [InnovaTech] SET  DISABLE_BROKER 
GO
ALTER DATABASE [InnovaTech] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [InnovaTech] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [InnovaTech] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [InnovaTech] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [InnovaTech] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [InnovaTech] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [InnovaTech] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [InnovaTech] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [InnovaTech] SET  MULTI_USER 
GO
ALTER DATABASE [InnovaTech] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [InnovaTech] SET DB_CHAINING OFF 
GO
ALTER DATABASE [InnovaTech] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [InnovaTech] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [InnovaTech] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [InnovaTech] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [InnovaTech] SET QUERY_STORE = ON
GO
ALTER DATABASE [InnovaTech] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [InnovaTech]
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 19/08/2023 19:10:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clientes](
	[clientesId] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[correo] [varchar](50) NULL,
	[sexo] [varchar](1) NULL,
 CONSTRAINT [PK_clientes] PRIMARY KEY CLUSTERED 
(
	[clientesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[departamento]    Script Date: 19/08/2023 19:10:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[departamento](
	[departamentoId] [int] NOT NULL,
	[nombre departamento] [varchar](50) NULL,
	[ciudad] [varchar](50) NULL,
	[director] [varchar](50) NULL,
 CONSTRAINT [PK_departamento] PRIMARY KEY CLUSTERED 
(
	[departamentoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 19/08/2023 19:10:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[EmpleadosId] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[sexo] [varchar](1) NULL,
	[correo] [varchar](50) NULL,
	[cargo] [varchar](50) NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[EmpleadosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productos]    Script Date: 19/08/2023 19:10:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productos](
	[productosId] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[proveedorId] [int] NULL,
 CONSTRAINT [PK_productos] PRIMARY KEY CLUSTERED 
(
	[productosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proveedores]    Script Date: 19/08/2023 19:10:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedores](
	[proveedorId] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[correo] [varchar](50) NULL,
	[sexo] [varchar](1) NULL,
	[productoId] [int] NULL,
 CONSTRAINT [PK_proveedores] PRIMARY KEY CLUSTERED 
(
	[proveedorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[clientes] ([clientesId], [nombre], [correo], [sexo]) VALUES (1, N'pedro suero', N'pedrosuero@gmail.com', N'm')
INSERT [dbo].[clientes] ([clientesId], [nombre], [correo], [sexo]) VALUES (2, N'maria solano', N'mariasolano@gmail.com', N'f')
INSERT [dbo].[clientes] ([clientesId], [nombre], [correo], [sexo]) VALUES (3, N'jose felix', N'josefelix@gmail.com', N'm')
INSERT [dbo].[clientes] ([clientesId], [nombre], [correo], [sexo]) VALUES (4, N'juan martinez', N'juanmartinez@gmail.com', N'm')
INSERT [dbo].[clientes] ([clientesId], [nombre], [correo], [sexo]) VALUES (5, N'felipe matos', N'felipematos@gmail.com', N'm')
INSERT [dbo].[clientes] ([clientesId], [nombre], [correo], [sexo]) VALUES (6, N'manuel linarez', N'manuellinarez@gmail.com', N'm')
INSERT [dbo].[clientes] ([clientesId], [nombre], [correo], [sexo]) VALUES (7, N'starlin cueva', N'starlincueva@gmail.com', N'm')
INSERT [dbo].[clientes] ([clientesId], [nombre], [correo], [sexo]) VALUES (8, N'francisco suero', N'franciscosuero@gmail.com', N'm')
INSERT [dbo].[clientes] ([clientesId], [nombre], [correo], [sexo]) VALUES (9, N'angel linares', N'angellinares@gmail.com', N'm')
INSERT [dbo].[clientes] ([clientesId], [nombre], [correo], [sexo]) VALUES (10, N'josefa perez', N'josefaperez@gmail.com', N'm')
INSERT [dbo].[clientes] ([clientesId], [nombre], [correo], [sexo]) VALUES (11, N'rafael montas', N'rafaelmontas@gmail.com', N'm')
GO
INSERT [dbo].[departamento] ([departamentoId], [nombre departamento], [ciudad], [director]) VALUES (1, N'puesto de venta', N'san cristobal', N'pedro alfonso')
INSERT [dbo].[departamento] ([departamentoId], [nombre departamento], [ciudad], [director]) VALUES (2, N'departamento de getion', N'san cristobal', N'nanci garcia')
INSERT [dbo].[departamento] ([departamentoId], [nombre departamento], [ciudad], [director]) VALUES (3, N'departamento de adminitricion', N'san cristobal', N'leydi lrenzo')
INSERT [dbo].[departamento] ([departamentoId], [nombre departamento], [ciudad], [director]) VALUES (4, N'puesto de venta', N'bonao', N'manuel cabrera')
INSERT [dbo].[departamento] ([departamentoId], [nombre departamento], [ciudad], [director]) VALUES (5, N'puesto de venta', N'snto domingo', N'nelson decena')
INSERT [dbo].[departamento] ([departamentoId], [nombre departamento], [ciudad], [director]) VALUES (6, N'puesto de venta', N'la romana', N'juliana puello')
INSERT [dbo].[departamento] ([departamentoId], [nombre departamento], [ciudad], [director]) VALUES (7, N'puesto de venta', N'santiago', N'antero heredia')
INSERT [dbo].[departamento] ([departamentoId], [nombre departamento], [ciudad], [director]) VALUES (8, N'puesto de venta', N'baraona', N'grabiela gusman')
INSERT [dbo].[departamento] ([departamentoId], [nombre departamento], [ciudad], [director]) VALUES (9, N'puesto de venta', N'punta cana', N'aleyda martinez')
INSERT [dbo].[departamento] ([departamentoId], [nombre departamento], [ciudad], [director]) VALUES (10, N'puesto de venta', N'bani', N'gidel garcia')
GO
INSERT [dbo].[Empleados] ([EmpleadosId], [nombre], [sexo], [correo], [cargo]) VALUES (1, N'juan perez', N'm', N'juanperez@gmail.com', N'gerente')
INSERT [dbo].[Empleados] ([EmpleadosId], [nombre], [sexo], [correo], [cargo]) VALUES (2, N'juana sales', N'f', N'juanasales@gmail.com', N'contable')
INSERT [dbo].[Empleados] ([EmpleadosId], [nombre], [sexo], [correo], [cargo]) VALUES (3, N'pedro peres', N'm', N'pedroperes@gmil.com', N'desarrollador ')
INSERT [dbo].[Empleados] ([EmpleadosId], [nombre], [sexo], [correo], [cargo]) VALUES (4, N'juan zosa', N'm', N'juanzosa@gmail.com', N'vendedor')
INSERT [dbo].[Empleados] ([EmpleadosId], [nombre], [sexo], [correo], [cargo]) VALUES (5, N'martina sol', N'f', N'martina@gmail.com', N'vendedor')
INSERT [dbo].[Empleados] ([EmpleadosId], [nombre], [sexo], [correo], [cargo]) VALUES (6, N'petronila tais', N'f', N'petronila@gmail.com', N'vendedor')
INSERT [dbo].[Empleados] ([EmpleadosId], [nombre], [sexo], [correo], [cargo]) VALUES (7, N'manuel san', N'm', N'manuelsan@gmail.com', N'vendedor')
INSERT [dbo].[Empleados] ([EmpleadosId], [nombre], [sexo], [correo], [cargo]) VALUES (8, N'jose suero', N'm', N'josesuero@gmail.com', N'vendedor')
INSERT [dbo].[Empleados] ([EmpleadosId], [nombre], [sexo], [correo], [cargo]) VALUES (9, N'manuel solano', N'm', N'manulsolano@gmail.com', N'vendedor')
INSERT [dbo].[Empleados] ([EmpleadosId], [nombre], [sexo], [correo], [cargo]) VALUES (10, N'geraldo suero', N'm', N'geraldosuero@gmail.com', N'vendedor')
GO
INSERT [dbo].[productos] ([productosId], [nombre], [proveedorId]) VALUES (1, N'intalaciones de redes', 4)
INSERT [dbo].[productos] ([productosId], [nombre], [proveedorId]) VALUES (2, N'mantenimiento y soporte tecnologico', 5)
INSERT [dbo].[productos] ([productosId], [nombre], [proveedorId]) VALUES (3, N'gestion de aplicacion', 5)
INSERT [dbo].[productos] ([productosId], [nombre], [proveedorId]) VALUES (4, N'vendo celulares', 2)
INSERT [dbo].[productos] ([productosId], [nombre], [proveedorId]) VALUES (5, N'vendo intrnet', 1)
INSERT [dbo].[productos] ([productosId], [nombre], [proveedorId]) VALUES (6, N'vendo computadora', 7)
INSERT [dbo].[productos] ([productosId], [nombre], [proveedorId]) VALUES (7, N'diseño grafico', 3)
INSERT [dbo].[productos] ([productosId], [nombre], [proveedorId]) VALUES (8, N'programacion', 1)
INSERT [dbo].[productos] ([productosId], [nombre], [proveedorId]) VALUES (9, N'vendo televicion', 9)
INSERT [dbo].[productos] ([productosId], [nombre], [proveedorId]) VALUES (10, N'servisio de programcion power gest', 10)
GO
INSERT [dbo].[proveedores] ([proveedorId], [nombre], [correo], [sexo], [productoId]) VALUES (1, N'alberto matos ', N'albertomatos@gmail.com', N'm', 1)
INSERT [dbo].[proveedores] ([proveedorId], [nombre], [correo], [sexo], [productoId]) VALUES (2, N'josé reyes', N'reyes@gmail.com', N'm', 2)
INSERT [dbo].[proveedores] ([proveedorId], [nombre], [correo], [sexo], [productoId]) VALUES (3, N'mario felix', N'mario@gmail.com', N'm', 4)
INSERT [dbo].[proveedores] ([proveedorId], [nombre], [correo], [sexo], [productoId]) VALUES (4, N'frank reyes', N'frank@gmail.com', N'm', 5)
INSERT [dbo].[proveedores] ([proveedorId], [nombre], [correo], [sexo], [productoId]) VALUES (5, N'raulin rodriguez', N'rodriguez@gmail.com', N'm', 3)
INSERT [dbo].[proveedores] ([proveedorId], [nombre], [correo], [sexo], [productoId]) VALUES (6, N'maria montana', N'maria5@gmail..com', N'f', 2)
INSERT [dbo].[proveedores] ([proveedorId], [nombre], [correo], [sexo], [productoId]) VALUES (7, N'ramon pineda', N'pineda@gmail.com', N'm', 8)
INSERT [dbo].[proveedores] ([proveedorId], [nombre], [correo], [sexo], [productoId]) VALUES (8, N'mario dom ', N'dom@gmail.com', N'm', 10)
INSERT [dbo].[proveedores] ([proveedorId], [nombre], [correo], [sexo], [productoId]) VALUES (9, N'roman vizcaino', N'maria23@gmail.com', N'm', 6)
INSERT [dbo].[proveedores] ([proveedorId], [nombre], [correo], [sexo], [productoId]) VALUES (10, N'zeneida rodriguez', N'zen3@gemail.com', N'f', 9)
GO
ALTER TABLE [dbo].[departamento]  WITH CHECK ADD  CONSTRAINT [FK_departamento_Empleados] FOREIGN KEY([departamentoId])
REFERENCES [dbo].[Empleados] ([EmpleadosId])
GO
ALTER TABLE [dbo].[departamento] CHECK CONSTRAINT [FK_departamento_Empleados]
GO
ALTER TABLE [dbo].[productos]  WITH CHECK ADD  CONSTRAINT [FK_productos_Empleados] FOREIGN KEY([productosId])
REFERENCES [dbo].[Empleados] ([EmpleadosId])
GO
ALTER TABLE [dbo].[productos] CHECK CONSTRAINT [FK_productos_Empleados]
GO
ALTER TABLE [dbo].[productos]  WITH CHECK ADD  CONSTRAINT [FK_productos_proveedores] FOREIGN KEY([proveedorId])
REFERENCES [dbo].[proveedores] ([proveedorId])
GO
ALTER TABLE [dbo].[productos] CHECK CONSTRAINT [FK_productos_proveedores]
GO
ALTER TABLE [dbo].[proveedores]  WITH CHECK ADD  CONSTRAINT [FK_proveedores_productos] FOREIGN KEY([productoId])
REFERENCES [dbo].[productos] ([productosId])
GO
ALTER TABLE [dbo].[proveedores] CHECK CONSTRAINT [FK_proveedores_productos]
GO
USE [master]
GO
ALTER DATABASE [InnovaTech] SET  READ_WRITE 
GO
