USE [master]
GO
/****** Object:  Database [GrupoMok]    Script Date: 19/08/2023 10:11:26 a. m. ******/
CREATE DATABASE [GrupoMok]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GrupoMok', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\GrupoMok.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GrupoMok_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\GrupoMok_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [GrupoMok] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GrupoMok].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GrupoMok] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GrupoMok] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GrupoMok] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GrupoMok] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GrupoMok] SET ARITHABORT OFF 
GO
ALTER DATABASE [GrupoMok] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GrupoMok] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GrupoMok] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GrupoMok] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GrupoMok] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GrupoMok] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GrupoMok] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GrupoMok] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GrupoMok] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GrupoMok] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GrupoMok] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GrupoMok] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GrupoMok] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GrupoMok] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GrupoMok] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GrupoMok] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GrupoMok] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GrupoMok] SET RECOVERY FULL 
GO
ALTER DATABASE [GrupoMok] SET  MULTI_USER 
GO
ALTER DATABASE [GrupoMok] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GrupoMok] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GrupoMok] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GrupoMok] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GrupoMok] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GrupoMok] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'GrupoMok', N'ON'
GO
ALTER DATABASE [GrupoMok] SET QUERY_STORE = OFF
GO
USE [GrupoMok]
GO
/****** Object:  Table [dbo].[Autores]    Script Date: 19/08/2023 10:11:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autores](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[IdPaises] [int] NOT NULL,
	[IdUsuariosCreacion] [int] NOT NULL,
	[IdUsuariosModificacion] [int] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaActualizacion] [datetime] NOT NULL,
	[DireccionIPCreo] [varchar](50) NOT NULL,
	[DireccionIPModificacion] [varchar](50) NOT NULL,
	[Estado] [int] NOT NULL,
	[Observaciones] [varchar](250) NULL,
 CONSTRAINT [PK_Autores] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Editoriales]    Script Date: 19/08/2023 10:11:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Editoriales](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[IdPaises] [int] NOT NULL,
	[IdUsuariosCreacion] [int] NOT NULL,
	[IdUsuariosModificacion] [int] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaActualizacion] [datetime] NOT NULL,
	[DireccionIPCreo] [varchar](50) NOT NULL,
	[DireccionIPModificacion] [varchar](50) NOT NULL,
	[Estado] [int] NOT NULL,
	[Observaciones] [varchar](250) NULL,
 CONSTRAINT [PK_Editoriales] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Libros]    Script Date: 19/08/2023 10:11:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Libros](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[IdAutores] [int] NOT NULL,
	[IdEditoriales] [int] NOT NULL,
	[IdPaises] [int] NOT NULL,
	[IdUsuariosCreacion] [int] NOT NULL,
	[IdUsuariosModificacion] [int] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaActualizacion] [datetime] NOT NULL,
	[DireccionIPCreo] [varchar](50) NOT NULL,
	[DireccionIPModificacion] [varchar](50) NOT NULL,
	[Estado] [int] NOT NULL,
	[Observaciones] [varchar](250) NULL,
 CONSTRAINT [PK_Libros] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogTransacciones]    Script Date: 19/08/2023 10:11:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogTransacciones](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NULL,
	[Accion] [varchar](50) NULL,
	[RegistroActual] [varchar](max) NULL,
	[RegistroActualizado] [varchar](max) NULL,
	[FechaAccion] [datetime] NULL,
	[Observaciones] [varchar](500) NULL,
 CONSTRAINT [PK_LogTransacciones] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paises]    Script Date: 19/08/2023 10:11:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paises](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[IdUsuariosCreacion] [int] NOT NULL,
	[IdUsuariosModificacion] [int] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaActualizacion] [datetime] NOT NULL,
	[DireccionIPCreo] [varchar](50) NOT NULL,
	[DireccionIPModificacion] [varchar](50) NOT NULL,
	[Estado] [int] NOT NULL,
	[Observaciones] [varchar](250) NULL,
 CONSTRAINT [PK_Paises] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Autores] ON 

INSERT [dbo].[Autores] ([Id], [Codigo], [Nombre], [IdPaises], [IdUsuariosCreacion], [IdUsuariosModificacion], [FechaCreacion], [FechaActualizacion], [DireccionIPCreo], [DireccionIPModificacion], [Estado], [Observaciones]) VALUES (1, N'001', N'Gabriel Garcia Marquez', 1, 1, 1, CAST(N'2023-08-18T00:00:00.000' AS DateTime), CAST(N'2023-08-18T00:00:00.000' AS DateTime), N'172.0.0.1', N'172.0.0.1', 1, N'Primer Autor')
SET IDENTITY_INSERT [dbo].[Autores] OFF
GO
SET IDENTITY_INSERT [dbo].[Editoriales] ON 

INSERT [dbo].[Editoriales] ([Id], [Codigo], [Nombre], [IdPaises], [IdUsuariosCreacion], [IdUsuariosModificacion], [FechaCreacion], [FechaActualizacion], [DireccionIPCreo], [DireccionIPModificacion], [Estado], [Observaciones]) VALUES (1, N'001', N'Planeta', 1, 1, 1, CAST(N'2023-08-18T00:00:00.000' AS DateTime), CAST(N'2023-08-18T00:00:00.000' AS DateTime), N'172.0.0.1', N'172.0.0.1', 1, N'Primer Editorial')
SET IDENTITY_INSERT [dbo].[Editoriales] OFF
GO
SET IDENTITY_INSERT [dbo].[Libros] ON 

INSERT [dbo].[Libros] ([Id], [Codigo], [Nombre], [IdAutores], [IdEditoriales], [IdPaises], [IdUsuariosCreacion], [IdUsuariosModificacion], [FechaCreacion], [FechaActualizacion], [DireccionIPCreo], [DireccionIPModificacion], [Estado], [Observaciones]) VALUES (4, N'001', N'Cien Años de Soledad', 1, 1, 1, 1, 1, CAST(N'2023-08-18T00:00:00.000' AS DateTime), CAST(N'2023-08-18T00:00:00.000' AS DateTime), N'172.0.0.1', N'172.0.0.1', 1, N'primer Libro')
INSERT [dbo].[Libros] ([Id], [Codigo], [Nombre], [IdAutores], [IdEditoriales], [IdPaises], [IdUsuariosCreacion], [IdUsuariosModificacion], [FechaCreacion], [FechaActualizacion], [DireccionIPCreo], [DireccionIPModificacion], [Estado], [Observaciones]) VALUES (7, N'002', N'La Mala hora', 1, 1, 1, 1, 1, CAST(N'2023-08-19T00:00:00.000' AS DateTime), CAST(N'2023-08-19T00:00:00.000' AS DateTime), N'127.0.0.1', N'172.0.0.1', 1, N'segundo lbro')
INSERT [dbo].[Libros] ([Id], [Codigo], [Nombre], [IdAutores], [IdEditoriales], [IdPaises], [IdUsuariosCreacion], [IdUsuariosModificacion], [FechaCreacion], [FechaActualizacion], [DireccionIPCreo], [DireccionIPModificacion], [Estado], [Observaciones]) VALUES (8, N'008', N'La revelion de las Ratas', 1, 1, 1, 1, 2, CAST(N'2023-08-18T21:09:39.930' AS DateTime), CAST(N'2023-08-19T08:46:51.473' AS DateTime), N'localhost', N'172.0.0.1', 1, N'Con Update CON LOG INICIO')
INSERT [dbo].[Libros] ([Id], [Codigo], [Nombre], [IdAutores], [IdEditoriales], [IdPaises], [IdUsuariosCreacion], [IdUsuariosModificacion], [FechaCreacion], [FechaActualizacion], [DireccionIPCreo], [DireccionIPModificacion], [Estado], [Observaciones]) VALUES (9, N'004', N'El Coronel no tiene Quien le escriba', 1, 1, 1, 1, 1, CAST(N'2023-08-18T21:10:48.093' AS DateTime), CAST(N'2023-08-18T21:10:48.093' AS DateTime), N'localhost', N'localhost', 1, N'')
INSERT [dbo].[Libros] ([Id], [Codigo], [Nombre], [IdAutores], [IdEditoriales], [IdPaises], [IdUsuariosCreacion], [IdUsuariosModificacion], [FechaCreacion], [FechaActualizacion], [DireccionIPCreo], [DireccionIPModificacion], [Estado], [Observaciones]) VALUES (10, N'005', N'La horajasca', 1, 1, 1, 10, 10, CAST(N'2023-08-18T21:26:31.120' AS DateTime), CAST(N'2023-08-18T21:26:31.120' AS DateTime), N'localhost', N'localhost', 1, N'')
INSERT [dbo].[Libros] ([Id], [Codigo], [Nombre], [IdAutores], [IdEditoriales], [IdPaises], [IdUsuariosCreacion], [IdUsuariosModificacion], [FechaCreacion], [FechaActualizacion], [DireccionIPCreo], [DireccionIPModificacion], [Estado], [Observaciones]) VALUES (12, N'777', N'LA HOJARASCA VERSION 222', 1, 1, 1, 1, 4, CAST(N'2023-08-18T21:32:24.363' AS DateTime), CAST(N'2023-08-19T06:40:31.160' AS DateTime), N'localhost', N'7777', 1, N'SEGUNDO UPDATE POSTMAN 1')
INSERT [dbo].[Libros] ([Id], [Codigo], [Nombre], [IdAutores], [IdEditoriales], [IdPaises], [IdUsuariosCreacion], [IdUsuariosModificacion], [FechaCreacion], [FechaActualizacion], [DireccionIPCreo], [DireccionIPModificacion], [Estado], [Observaciones]) VALUES (13, N'006', N'El Coronel no tiene Quien le escriba CON LOG', 1, 1, 1, 1, 1, CAST(N'2023-08-19T08:55:25.113' AS DateTime), CAST(N'2023-08-19T08:55:25.113' AS DateTime), N'localhost', N'localhost', 1, N'')
INSERT [dbo].[Libros] ([Id], [Codigo], [Nombre], [IdAutores], [IdEditoriales], [IdPaises], [IdUsuariosCreacion], [IdUsuariosModificacion], [FechaCreacion], [FechaActualizacion], [DireccionIPCreo], [DireccionIPModificacion], [Estado], [Observaciones]) VALUES (14, N'006', N'El Coronel no tiene Quien le escriba CON LOG', 1, 1, 1, 1, 1, CAST(N'2023-08-19T08:56:07.347' AS DateTime), CAST(N'2023-08-19T08:56:07.347' AS DateTime), N'localhost', N'localhost', 1, N'')
SET IDENTITY_INSERT [dbo].[Libros] OFF
GO
SET IDENTITY_INSERT [dbo].[LogTransacciones] ON 

INSERT [dbo].[LogTransacciones] ([Id], [IdUsuario], [Accion], [RegistroActual], [RegistroActualizado], [FechaAccion], [Observaciones]) VALUES (1, 8, N'ACTUALIZAR', N'8', N'', CAST(N'2023-08-19T08:44:49.350' AS DateTime), N'ACTUALIZA REGISTRO ')
INSERT [dbo].[LogTransacciones] ([Id], [IdUsuario], [Accion], [RegistroActual], [RegistroActualizado], [FechaAccion], [Observaciones]) VALUES (2, 8, N'ACTUALIZAR', N'8', N'8', CAST(N'2023-08-19T08:45:45.970' AS DateTime), N'ACTUALIZA REGISTRO ')
INSERT [dbo].[LogTransacciones] ([Id], [IdUsuario], [Accion], [RegistroActual], [RegistroActualizado], [FechaAccion], [Observaciones]) VALUES (3, 8, N'INICIO ACTUALIZAR', N'8', N'8', CAST(N'2023-08-19T08:46:51.470' AS DateTime), N'ACTUALIZA REGISTRO ')
INSERT [dbo].[LogTransacciones] ([Id], [IdUsuario], [Accion], [RegistroActual], [RegistroActualizado], [FechaAccion], [Observaciones]) VALUES (4, 8, N'FIN ACTUALIZAR', N'8', N'8', CAST(N'2023-08-19T08:46:51.473' AS DateTime), N'ACTUALIZA REGISTRO ')
INSERT [dbo].[LogTransacciones] ([Id], [IdUsuario], [Accion], [RegistroActual], [RegistroActualizado], [FechaAccion], [Observaciones]) VALUES (5, 0, N'INICIO CONSULTAR ', N'0', N'0', CAST(N'2023-08-19T08:49:46.130' AS DateTime), N'CONSULTAR REGISTROS TODOS')
INSERT [dbo].[LogTransacciones] ([Id], [IdUsuario], [Accion], [RegistroActual], [RegistroActualizado], [FechaAccion], [Observaciones]) VALUES (6, 0, N'FIN CONSULTAR ', N'0', N'0', CAST(N'2023-08-19T08:49:46.130' AS DateTime), N'CONSULTAR REGISTROS TODOS')
INSERT [dbo].[LogTransacciones] ([Id], [IdUsuario], [Accion], [RegistroActual], [RegistroActualizado], [FechaAccion], [Observaciones]) VALUES (7, 0, N'INICIO CONSULTAR ', N'7', N'7', CAST(N'2023-08-19T08:50:06.983' AS DateTime), N'CONSULTAR REGISTROS POR ID')
INSERT [dbo].[LogTransacciones] ([Id], [IdUsuario], [Accion], [RegistroActual], [RegistroActualizado], [FechaAccion], [Observaciones]) VALUES (8, 0, N'INICIO CONSULTAR ', N'7', N'7', CAST(N'2023-08-19T08:50:06.983' AS DateTime), N'CONSULTAR REGISTROS POR ID')
INSERT [dbo].[LogTransacciones] ([Id], [IdUsuario], [Accion], [RegistroActual], [RegistroActualizado], [FechaAccion], [Observaciones]) VALUES (9, 0, N'INICIO CONSULTAR ', N'7', N'7', CAST(N'2023-08-19T08:50:33.560' AS DateTime), N'CONSULTAR REGISTROS POR ID')
INSERT [dbo].[LogTransacciones] ([Id], [IdUsuario], [Accion], [RegistroActual], [RegistroActualizado], [FechaAccion], [Observaciones]) VALUES (10, 0, N'FIN CONSULTAR ', N'7', N'7', CAST(N'2023-08-19T08:50:33.560' AS DateTime), N'CONSULTAR REGISTROS POR ID')
INSERT [dbo].[LogTransacciones] ([Id], [IdUsuario], [Accion], [RegistroActual], [RegistroActualizado], [FechaAccion], [Observaciones]) VALUES (11, 2, N'INICIO CONSULTAR ', N'2', N'2', CAST(N'2023-08-19T08:52:28.190' AS DateTime), N'CONSULTAR REGISTROS PAGINACION')
INSERT [dbo].[LogTransacciones] ([Id], [IdUsuario], [Accion], [RegistroActual], [RegistroActualizado], [FechaAccion], [Observaciones]) VALUES (12, 2, N'FIN CONSULTAR ', N'2', N'2', CAST(N'2023-08-19T08:52:28.193' AS DateTime), N'CONSULTAR REGISTROS PAGINACION')
INSERT [dbo].[LogTransacciones] ([Id], [IdUsuario], [Accion], [RegistroActual], [RegistroActualizado], [FechaAccion], [Observaciones]) VALUES (13, 1, N'INICIO INSERTAR ', NULL, NULL, CAST(N'2023-08-19T08:55:25.110' AS DateTime), N'INSERTA REGISTROS')
INSERT [dbo].[LogTransacciones] ([Id], [IdUsuario], [Accion], [RegistroActual], [RegistroActualizado], [FechaAccion], [Observaciones]) VALUES (14, 1, N'INICIO INSERTAR ', N'13', N'13', CAST(N'2023-08-19T08:55:25.117' AS DateTime), N'INSERTA REGISTROS')
INSERT [dbo].[LogTransacciones] ([Id], [IdUsuario], [Accion], [RegistroActual], [RegistroActualizado], [FechaAccion], [Observaciones]) VALUES (15, 1, N'INICIO INSERTAR ', NULL, NULL, CAST(N'2023-08-19T08:56:07.347' AS DateTime), N'INICIO INSERTA REGISTROS')
INSERT [dbo].[LogTransacciones] ([Id], [IdUsuario], [Accion], [RegistroActual], [RegistroActualizado], [FechaAccion], [Observaciones]) VALUES (16, 1, N'FIN INSERTAR ', N'14', N'14', CAST(N'2023-08-19T08:56:07.350' AS DateTime), N'FIN INSERTA REGISTROS')
INSERT [dbo].[LogTransacciones] ([Id], [IdUsuario], [Accion], [RegistroActual], [RegistroActualizado], [FechaAccion], [Observaciones]) VALUES (17, 0, N'INICIO CONSULTAR ', N'0', N'0', CAST(N'2023-08-19T09:03:14.470' AS DateTime), N'CONSULTAR REGISTROS TODOS')
INSERT [dbo].[LogTransacciones] ([Id], [IdUsuario], [Accion], [RegistroActual], [RegistroActualizado], [FechaAccion], [Observaciones]) VALUES (18, 0, N'FIN CONSULTAR ', N'0', N'0', CAST(N'2023-08-19T09:03:14.480' AS DateTime), N'CONSULTAR REGISTROS TODOS')
INSERT [dbo].[LogTransacciones] ([Id], [IdUsuario], [Accion], [RegistroActual], [RegistroActualizado], [FechaAccion], [Observaciones]) VALUES (19, 0, N'INICIO CONSULTAR ', N'7', N'7', CAST(N'2023-08-19T09:05:49.900' AS DateTime), N'CONSULTAR REGISTROS POR ID')
INSERT [dbo].[LogTransacciones] ([Id], [IdUsuario], [Accion], [RegistroActual], [RegistroActualizado], [FechaAccion], [Observaciones]) VALUES (20, 0, N'FIN CONSULTAR ', N'7', N'7', CAST(N'2023-08-19T09:05:49.900' AS DateTime), N'CONSULTAR REGISTROS POR ID')
INSERT [dbo].[LogTransacciones] ([Id], [IdUsuario], [Accion], [RegistroActual], [RegistroActualizado], [FechaAccion], [Observaciones]) VALUES (21, 0, N'INICIO CONSULTAR ', N'0', N'0', CAST(N'2023-08-19T09:41:18.690' AS DateTime), N'CONSULTAR REGISTROS TODOS')
INSERT [dbo].[LogTransacciones] ([Id], [IdUsuario], [Accion], [RegistroActual], [RegistroActualizado], [FechaAccion], [Observaciones]) VALUES (22, 0, N'FIN CONSULTAR ', N'0', N'0', CAST(N'2023-08-19T09:41:18.690' AS DateTime), N'CONSULTAR REGISTROS TODOS')
INSERT [dbo].[LogTransacciones] ([Id], [IdUsuario], [Accion], [RegistroActual], [RegistroActualizado], [FechaAccion], [Observaciones]) VALUES (23, 0, N'INICIO CONSULTAR ', N'0', N'0', CAST(N'2023-08-19T09:50:44.100' AS DateTime), N'CONSULTAR REGISTROS TODOS')
INSERT [dbo].[LogTransacciones] ([Id], [IdUsuario], [Accion], [RegistroActual], [RegistroActualizado], [FechaAccion], [Observaciones]) VALUES (24, 0, N'FIN CONSULTAR ', N'0', N'0', CAST(N'2023-08-19T09:50:44.100' AS DateTime), N'CONSULTAR REGISTROS TODOS')
INSERT [dbo].[LogTransacciones] ([Id], [IdUsuario], [Accion], [RegistroActual], [RegistroActualizado], [FechaAccion], [Observaciones]) VALUES (25, 0, N'INICIO CONSULTAR ', N'0', N'0', CAST(N'2023-08-19T09:51:00.580' AS DateTime), N'CONSULTAR REGISTROS TODOS')
INSERT [dbo].[LogTransacciones] ([Id], [IdUsuario], [Accion], [RegistroActual], [RegistroActualizado], [FechaAccion], [Observaciones]) VALUES (26, 0, N'FIN CONSULTAR ', N'0', N'0', CAST(N'2023-08-19T09:51:00.580' AS DateTime), N'CONSULTAR REGISTROS TODOS')
INSERT [dbo].[LogTransacciones] ([Id], [IdUsuario], [Accion], [RegistroActual], [RegistroActualizado], [FechaAccion], [Observaciones]) VALUES (27, 0, N'INICIO CONSULTAR ', N'0', N'0', CAST(N'2023-08-19T09:53:49.893' AS DateTime), N'CONSULTAR REGISTROS TODOS')
INSERT [dbo].[LogTransacciones] ([Id], [IdUsuario], [Accion], [RegistroActual], [RegistroActualizado], [FechaAccion], [Observaciones]) VALUES (28, 0, N'FIN CONSULTAR ', N'0', N'0', CAST(N'2023-08-19T09:53:49.900' AS DateTime), N'CONSULTAR REGISTROS TODOS')
SET IDENTITY_INSERT [dbo].[LogTransacciones] OFF
GO
SET IDENTITY_INSERT [dbo].[Paises] ON 

INSERT [dbo].[Paises] ([Id], [Codigo], [Nombre], [IdUsuariosCreacion], [IdUsuariosModificacion], [FechaCreacion], [FechaActualizacion], [DireccionIPCreo], [DireccionIPModificacion], [Estado], [Observaciones]) VALUES (1, N'001', N'Colombia', 1, 1, CAST(N'2023-08-18T00:00:00.000' AS DateTime), CAST(N'2023-08-18T00:00:00.000' AS DateTime), N'172.0.0.1', N'172.0.0.1', 1, N'Primer Pais')
SET IDENTITY_INSERT [dbo].[Paises] OFF
GO
ALTER TABLE [dbo].[Libros]  WITH CHECK ADD  CONSTRAINT [FK_Libros_Autores] FOREIGN KEY([IdAutores])
REFERENCES [dbo].[Autores] ([Id])
GO
ALTER TABLE [dbo].[Libros] CHECK CONSTRAINT [FK_Libros_Autores]
GO
ALTER TABLE [dbo].[Libros]  WITH CHECK ADD  CONSTRAINT [FK_Libros_Editoriales] FOREIGN KEY([IdEditoriales])
REFERENCES [dbo].[Editoriales] ([Id])
GO
ALTER TABLE [dbo].[Libros] CHECK CONSTRAINT [FK_Libros_Editoriales]
GO
ALTER TABLE [dbo].[Libros]  WITH CHECK ADD  CONSTRAINT [FK_Libros_Paises] FOREIGN KEY([IdPaises])
REFERENCES [dbo].[Paises] ([Id])
GO
ALTER TABLE [dbo].[Libros] CHECK CONSTRAINT [FK_Libros_Paises]
GO
/****** Object:  StoredProcedure [dbo].[USP_ActualizaLibros]    Script Date: 19/08/2023 10:11:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author     : Guillermo Jerez E.
-- Create date: 18-Ago-2023
-- Description:	Actualiza Libros
-- =============================================
/*
EXEC [dbo].[USP_ActualizaLibros]
	@Id                      = 8,
	@Codigo                  = '008',               
	@Nombre                  = 'La revelion de las Ratas',              
	@IdAutores               = 1,             
	@IdEditoriales           = 1,         
	@IdPaises                = 1,              
	@IdUsuariosModificacion  = 2,
	@DireccionIPModificacion = '172.0.0.1',
	@Estado                  = 1,
	@Observaciones           = 'Con Update CON LOG INICIO'
*/
CREATE PROCEDURE [dbo].[USP_ActualizaLibros]
	@Id                      INT,
	@Codigo                  VARCHAR(10) = '',
	@Nombre                  VARCHAR(50) = '',
	@IdAutores               INT         = 0,
	@IdEditoriales           INT         = 0,
	@IdPaises                INT         = 0,
	@IdUsuariosModificacion  INT         = 0,
	@DireccionIPModificacion VARCHAR(50) = '',
	@Estado                  INT         = 0,
	@Observaciones           VARCHAR(50) = ''
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @IdI INT

	/************************** LOG TRANSACCIONAL ***************************************************************/
		EXEC [dbo].[USP_LogTransaccional] @Id, 'INICIO ACTUALIZAR',@Id, @Id, 'ACTUALIZA REGISTRO '
	/************************************************************************************************************/

	UPDATE [dbo].[Libros]
	SET Codigo                  = @Codigo,
		Nombre                  = @Nombre,
		IdAutores               = @IdAutores,
		IdEditoriales           = @IdEditoriales,
		IdPaises                = @IdPaises,
		IdUsuariosCreacion      = 1,
		IdUsuariosModificacion  = @IdUsuariosModificacion,
		FechaActualizacion      = GETDATE(),
		DireccionIPModificacion = @DireccionIPModificacion,
		Estado                  = @Estado,
		Observaciones           = @Observaciones
	WHERE Id = @Id

	SELECT @Id

	/************************** LOG TRANSACCIONAL ***************************************************************/
		EXEC [dbo].[USP_LogTransaccional] @Id, 'FIN ACTUALIZAR',@Id, @Id, 'ACTUALIZA REGISTRO '
	/************************************************************************************************************/
END
GO
/****** Object:  StoredProcedure [dbo].[USP_ConsultaLibros]    Script Date: 19/08/2023 10:11:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author     : Guillermo Jerez E.
-- Create date: 18-Ago-2023
-- Description:	Consulta Libros
-- =============================================
-- EXEC [dbo].[USP_ConsultaLibros] @Id = 7
CREATE PROCEDURE [dbo].[USP_ConsultaLibros]
	@Id INT = 0
AS
BEGIN
	SET NOCOUNT ON;

	IF( @Id = 0)
		BEGIN
			/************************** LOG TRANSACCIONAL ***************************************************************/
			EXEC [dbo].[USP_LogTransaccional] 0, 'INICIO CONSULTAR ', @Id,@Id,'CONSULTAR REGISTROS TODOS'
			/************************************************************************************************************/
			SELECT 
				[Id],
				[Codigo],
				[Nombre],
				[IdAutores],
				[IdEditoriales],
				[IdPaises],
				[IdUsuariosCreacion],
				[IdUsuariosModificacion],
				[FechaCreacion],
				[FechaActualizacion],
				[DireccionIPCreo],
				[DireccionIPModificacion],
				[Estado],
				[Observaciones]
			FROM [dbo].[Libros]
			/************************** LOG TRANSACCIONAL ***************************************************************/
			EXEC [dbo].[USP_LogTransaccional] 0, 'FIN CONSULTAR ', @Id,@Id,'CONSULTAR REGISTROS TODOS'
			/************************************************************************************************************/

		END
	ELSE
		BEGIN
		/************************** LOG TRANSACCIONAL ***************************************************************/
			EXEC [dbo].[USP_LogTransaccional] 0, 'INICIO CONSULTAR ', @Id,@Id,'CONSULTAR REGISTROS POR ID'
		/************************************************************************************************************/

			SELECT 
				[Id],
				[Codigo],
				[Nombre],
				[IdAutores],
				[IdEditoriales],
				[IdPaises],
				[IdUsuariosCreacion],
				[IdUsuariosModificacion],
				[FechaCreacion],
				[FechaActualizacion],
				[DireccionIPCreo],
				[DireccionIPModificacion],
				[Estado],
				[Observaciones]
			FROM [dbo].[Libros]
			WHERE Id = @Id

			/************************** LOG TRANSACCIONAL ***************************************************************/
			EXEC [dbo].[USP_LogTransaccional] 0, 'FIN CONSULTAR ', @Id,@Id,'CONSULTAR REGISTROS POR ID'
			/************************************************************************************************************/

		END
END
GO
/****** Object:  StoredProcedure [dbo].[USP_ConsultaLibrosPaginacion]    Script Date: 19/08/2023 10:11:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author     : Guillermo Jerez E.
-- Create date: 18-Ago-2023
-- Description:	Consulta Libros
-- =============================================
-- EXEC [dbo].[USP_ConsultaLibrosPaginacion] @IdRegistro = 2, @NumeroRegistros = 2
CREATE PROCEDURE [dbo].[USP_ConsultaLibrosPaginacion]
	@IdRegistro      INT = 0,
	@NumeroRegistros INT = 0

AS
BEGIN
	SET NOCOUNT ON;
	/************************** LOG TRANSACCIONAL ***************************************************************/
			EXEC [dbo].[USP_LogTransaccional] @IdRegistro, 'INICIO CONSULTAR PAGINACION ', @IdRegistro,@NumeroRegistros,'CONSULTAR REGISTROS PAGINACION'
	/************************************************************************************************************/
	SELECT 
		[Id],
		[Codigo],
		[Nombre],
		[IdAutores],
		[IdEditoriales],
		[IdPaises],
		[IdUsuariosCreacion],
		[IdUsuariosModificacion],
		[FechaCreacion],
		[FechaActualizacion],
		[DireccionIPCreo],
		[DireccionIPModificacion],
		[Estado],
		[Observaciones]
	FROM [dbo].[Libros]
	WHERE Estado = 1
	ORDER BY Id
	OFFSET @IdRegistro ROWS
	FETCH NEXT @NumeroRegistros ROWS ONLY
	/************************** LOG TRANSACCIONAL ***************************************************************/
			EXEC [dbo].[USP_LogTransaccional] @IdRegistro, 'FIN CONSULTAR PAGINACION', @IdRegistro,@NumeroRegistros,'CONSULTAR REGISTROS PAGINACION'
	/************************************************************************************************************/

END
GO
/****** Object:  StoredProcedure [dbo].[USP_InsertaLibros]    Script Date: 19/08/2023 10:11:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author     : Guillermo Jerez E.
-- Create date: 18-Ago-2023
-- Description:	Inserta Libros
-- =============================================
/*
EXEC [dbo].[USP_InsertaLibros]
	@Codigo                 = '006',               
	@Nombre                 = 'El Coronel no tiene Quien le escriba CON LOG',              
	@IdAutores              = 1,             
	@IdEditoriales          = 1,         
	@IdPaises               = 1,              
	@IdUsuariosCreacion     = 1,    
	@IdUsuariosModificacion = 1
*/
CREATE PROCEDURE [dbo].[USP_InsertaLibros]
	@Codigo                 VARCHAR(10),
	@Nombre                 VARCHAR(50),
	@IdAutores              INT,
	@IdEditoriales          INT,
	@IdPaises               INT,
	@IdUsuariosCreacion     INT,
	@IdUsuariosModificacion INT

AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @IdInsertado INT

	/************************** LOG TRANSACCIONAL ***************************************************************/
			EXEC [dbo].[USP_LogTransaccional] @IdUsuariosCreacion, 'INICIO INSERTAR ', @IdInsertado,@IdInsertado,'INICIO INSERTA REGISTROS'
	/************************************************************************************************************/
	INSERT INTO [dbo].[Libros]
	(
		Codigo,
		Nombre,
		IdAutores,
		IdEditoriales,
		IdPaises,
		IdUsuariosCreacion,
		IdUsuariosModificacion,
		FechaCreacion,
		FechaActualizacion,
		DireccionIPCreo,
		DireccionIPModificacion,
		Estado,
		Observaciones
	)
	VALUES
	(
		@Codigo,
		@Nombre,
		@IdAutores,
		@IdEditoriales,
		@IdPaises,
		@IdUsuariosCreacion,
		@IdUsuariosModificacion,
		GETDATE(),
		GETDATE(),
		'localhost',
		'localhost',
		1,
		''
	)	
	SET @IdInsertado    = @@IDENTITY;
	SELECT @IdInsertado

	/************************** LOG TRANSACCIONAL ***************************************************************/
			EXEC [dbo].[USP_LogTransaccional] @IdUsuariosCreacion, 'FIN INSERTAR ', @IdInsertado,@IdInsertado,'FIN INSERTA REGISTROS'
	/************************************************************************************************************/

END
GO
/****** Object:  StoredProcedure [dbo].[USP_LogTransaccional]    Script Date: 19/08/2023 10:11:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==================================================================================================================
-- Author     : Guillermo Jerez E.
-- Create date: 19-Ago-2023
-- Description:	Procedimiento para registrar log Transaccional
-- ==================================================================================================================
-- EXEC [dbo].[USP_LogTransaccional] 1, 'INSERTAR','RWERWER','SEDFSDFSDF','PRIMER REGISTRO'

CREATE PROCEDURE [dbo].[USP_LogTransaccional]
	@IdUsuario           INT          = NULL,
	@Accion              VARCHAR(50)  = NULL,
	@RegistroActual      VARCHAR(MAX) = NULL,
	@RegistroActualizado VARCHAR(MAX) = NULL,
	@Observaciones       VARCHAR(500) = NULL
AS

BEGIN
	SET NOCOUNT ON;
	INSERT INTO [dbo].[LogTransacciones]
	VALUES(@IdUsuario, @Accion,@RegistroActual,@RegistroActualizado,GETDATE(),@Observaciones)
END

GO
USE [master]
GO
ALTER DATABASE [GrupoMok] SET  READ_WRITE 
GO
