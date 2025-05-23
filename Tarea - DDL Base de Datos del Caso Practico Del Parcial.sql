USE [BaseCasoParcial]
GO
/****** Object:  Table [dbo].[Cancelado]    Script Date: 1/03/2025 18:40:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cancelado](
	[Cancelado_ID] [int] IDENTITY(1,1) NOT NULL,
	[Aprovado] [varchar](50) NULL,
	[Denegado] [varchar](50) NULL,
 CONSTRAINT [PK_Cancelado] PRIMARY KEY CLUSTERED 
(
	[Cancelado_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Citas]    Script Date: 1/03/2025 18:40:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Citas](
	[Cita_ID] [int] IDENTITY(1,1) NOT NULL,
	[Paciente_ID] [int] NOT NULL,
	[Fecha_Hora] [datetime] NULL,
	[Servicio_ID] [int] NULL,
	[Estado_Cita_ID] [int] NOT NULL,
	[Pago_ID] [int] NOT NULL,
 CONSTRAINT [PK_Citas] PRIMARY KEY CLUSTERED 
(
	[Cita_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 1/03/2025 18:40:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudad](
	[Ciudad_ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Latitud] [varchar](50) NOT NULL,
	[Longitud] [varchar](50) NOT NULL,
	[Departamento_ID] [int] NOT NULL,
 CONSTRAINT [PK_Ciudad] PRIMARY KEY CLUSTERED 
(
	[Ciudad_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Completado]    Script Date: 1/03/2025 18:40:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Completado](
	[Completado_ID] [int] IDENTITY(1,1) NOT NULL,
	[Aprovado] [varchar](50) NULL,
	[Denegado] [varchar](50) NULL,
 CONSTRAINT [PK_Completado] PRIMARY KEY CLUSTERED 
(
	[Completado_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactoEmergencia]    Script Date: 1/03/2025 18:40:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactoEmergencia](
	[Contacto_Emergencia_ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Tefono_Emergencia] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ContactoEmergencia] PRIMARY KEY CLUSTERED 
(
	[Contacto_Emergencia_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatosTarjeta]    Script Date: 1/03/2025 18:40:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatosTarjeta](
	[DatosTarjeta_ID] [int] IDENTITY(1,1) NOT NULL,
	[NumeroTarjeta] [varchar](50) NOT NULL,
	[FechaVencimiento] [date] NOT NULL,
	[NombreTitular] [varchar](50) NOT NULL,
	[CVV] [varchar](50) NOT NULL,
	[EmisorTarjeta] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DatosTarjeta] PRIMARY KEY CLUSTERED 
(
	[DatosTarjeta_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 1/03/2025 18:40:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamento](
	[Departamento_ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Latitud] [varchar](50) NOT NULL,
	[Longitud] [varchar](50) NOT NULL,
	[Pais_ID] [int] NOT NULL,
 CONSTRAINT [PK_Departamento] PRIMARY KEY CLUSTERED 
(
	[Departamento_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 1/03/2025 18:40:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Direccion](
	[Direccion_ID] [int] IDENTITY(1,1) NOT NULL,
	[Pais_ID] [int] NOT NULL,
	[Departamento_ID] [int] NOT NULL,
	[Ciudad_ID] [int] NOT NULL,
 CONSTRAINT [PK_Direccion] PRIMARY KEY CLUSTERED 
(
	[Direccion_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Efectivo]    Script Date: 1/03/2025 18:40:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Efectivo](
	[Efectivo_ID] [int] IDENTITY(1,1) NOT NULL,
	[Cantidad_Pagada] [varchar](50) NULL,
 CONSTRAINT [PK_Efectivo] PRIMARY KEY CLUSTERED 
(
	[Efectivo_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoCita]    Script Date: 1/03/2025 18:40:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoCita](
	[Estado_Cita_ID] [int] IDENTITY(1,1) NOT NULL,
	[Programado_ID] [int] NULL,
	[Cancelado_ID] [int] NULL,
	[Completado_ID] [int] NULL,
 CONSTRAINT [PK_EstadoCita] PRIMARY KEY CLUSTERED 
(
	[Estado_Cita_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FechaNacimiento]    Script Date: 1/03/2025 18:40:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FechaNacimiento](
	[Fecha_Nacimiento_ID] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [date] NOT NULL,
 CONSTRAINT [PK_FechaNacimiento] PRIMARY KEY CLUSTERED 
(
	[Fecha_Nacimiento_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistoriasClinicas]    Script Date: 1/03/2025 18:40:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistoriasClinicas](
	[Historia_ID] [int] IDENTITY(1,1) NOT NULL,
	[Paciente_ID] [int] NOT NULL,
	[Diagnostico] [varchar](500) NULL,
	[Tratamiento] [varchar](500) NULL,
	[Procedimiento] [varchar](500) NULL,
 CONSTRAINT [PK_HistoriasClinicas] PRIMARY KEY CLUSTERED 
(
	[Historia_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MetodosPagos]    Script Date: 1/03/2025 18:40:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetodosPagos](
	[MetodosPago_ID] [int] IDENTITY(1,1) NOT NULL,
	[Efectivo_ID] [int] NULL,
	[Tarjeta_ID] [int] NULL,
 CONSTRAINT [PK_MetodosPagos] PRIMARY KEY CLUSTERED 
(
	[MetodosPago_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 1/03/2025 18:40:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paciente](
	[Paciente_ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Direccion_ID] [int] NOT NULL,
	[Telefono_ID] [int] NOT NULL,
	[Email] [varchar](250) NOT NULL,
	[Fecha_Nacimiento_ID] [int] NOT NULL,
	[Contacto_Emergencia_ID] [int] NOT NULL,
 CONSTRAINT [PK_Paciente] PRIMARY KEY CLUSTERED 
(
	[Paciente_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pagos]    Script Date: 1/03/2025 18:40:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pagos](
	[Pago_ID] [int] IDENTITY(1,1) NOT NULL,
	[Servicio_ID] [int] NOT NULL,
	[Paciente_ID] [int] NOT NULL,
	[Cantidad_Pagada] [varchar](50) NULL,
	[MetodosPago_ID] [int] NOT NULL,
 CONSTRAINT [PK_Pagos] PRIMARY KEY CLUSTERED 
(
	[Pago_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 1/03/2025 18:40:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[Pais_ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Latitud] [varchar](50) NOT NULL,
	[Longitud] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[Pais_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Programado]    Script Date: 1/03/2025 18:40:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Programado](
	[Programado_ID] [int] IDENTITY(1,1) NOT NULL,
	[Aprovado] [varchar](50) NULL,
	[Denegado] [varchar](50) NULL,
 CONSTRAINT [PK_Programado] PRIMARY KEY CLUSTERED 
(
	[Programado_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 1/03/2025 18:40:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicios](
	[Servicio_ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Descripcion] [varchar](250) NULL,
	[Precio] [varchar](50) NULL,
 CONSTRAINT [PK_Servicios] PRIMARY KEY CLUSTERED 
(
	[Servicio_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tarjeta]    Script Date: 1/03/2025 18:40:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarjeta](
	[Tarjeta_ID] [int] IDENTITY(1,1) NOT NULL,
	[DatosTarjeta_ID] [int] NOT NULL,
	[Cantidad_Pagada] [varchar](50) NULL,
 CONSTRAINT [PK_Tarjeta] PRIMARY KEY CLUSTERED 
(
	[Tarjeta_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Telefono]    Script Date: 1/03/2025 18:40:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Telefono](
	[Telefono_ID] [int] IDENTITY(1,1) NOT NULL,
	[Codigo_Area] [varchar](100) NOT NULL,
	[Numero] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Telefono] PRIMARY KEY CLUSTERED 
(
	[Telefono_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Citas]  WITH CHECK ADD  CONSTRAINT [FK_Citas_EstadoCita] FOREIGN KEY([Estado_Cita_ID])
REFERENCES [dbo].[EstadoCita] ([Estado_Cita_ID])
GO
ALTER TABLE [dbo].[Citas] CHECK CONSTRAINT [FK_Citas_EstadoCita]
GO
ALTER TABLE [dbo].[Citas]  WITH CHECK ADD  CONSTRAINT [FK_Citas_Pagos] FOREIGN KEY([Pago_ID])
REFERENCES [dbo].[Pagos] ([Pago_ID])
GO
ALTER TABLE [dbo].[Citas] CHECK CONSTRAINT [FK_Citas_Pagos]
GO
ALTER TABLE [dbo].[Citas]  WITH CHECK ADD  CONSTRAINT [FK_Citas_Servicio] FOREIGN KEY([Servicio_ID])
REFERENCES [dbo].[Servicios] ([Servicio_ID])
GO
ALTER TABLE [dbo].[Citas] CHECK CONSTRAINT [FK_Citas_Servicio]
GO
ALTER TABLE [dbo].[Ciudad]  WITH CHECK ADD  CONSTRAINT [FK_Ciudad_Departamento] FOREIGN KEY([Departamento_ID])
REFERENCES [dbo].[Departamento] ([Departamento_ID])
GO
ALTER TABLE [dbo].[Ciudad] CHECK CONSTRAINT [FK_Ciudad_Departamento]
GO
ALTER TABLE [dbo].[Departamento]  WITH CHECK ADD  CONSTRAINT [FK_Departamento_Pais] FOREIGN KEY([Pais_ID])
REFERENCES [dbo].[Pais] ([Pais_ID])
GO
ALTER TABLE [dbo].[Departamento] CHECK CONSTRAINT [FK_Departamento_Pais]
GO
ALTER TABLE [dbo].[Direccion]  WITH CHECK ADD  CONSTRAINT [FK_Direccion_Ciudad] FOREIGN KEY([Ciudad_ID])
REFERENCES [dbo].[Ciudad] ([Ciudad_ID])
GO
ALTER TABLE [dbo].[Direccion] CHECK CONSTRAINT [FK_Direccion_Ciudad]
GO
ALTER TABLE [dbo].[Direccion]  WITH CHECK ADD  CONSTRAINT [FK_Direccion_Departamento] FOREIGN KEY([Departamento_ID])
REFERENCES [dbo].[Departamento] ([Departamento_ID])
GO
ALTER TABLE [dbo].[Direccion] CHECK CONSTRAINT [FK_Direccion_Departamento]
GO
ALTER TABLE [dbo].[Direccion]  WITH CHECK ADD  CONSTRAINT [FK_Direccion_Pais] FOREIGN KEY([Pais_ID])
REFERENCES [dbo].[Pais] ([Pais_ID])
GO
ALTER TABLE [dbo].[Direccion] CHECK CONSTRAINT [FK_Direccion_Pais]
GO
ALTER TABLE [dbo].[EstadoCita]  WITH CHECK ADD  CONSTRAINT [FK_EstadoCita_Cancelado] FOREIGN KEY([Cancelado_ID])
REFERENCES [dbo].[Cancelado] ([Cancelado_ID])
GO
ALTER TABLE [dbo].[EstadoCita] CHECK CONSTRAINT [FK_EstadoCita_Cancelado]
GO
ALTER TABLE [dbo].[EstadoCita]  WITH CHECK ADD  CONSTRAINT [FK_EstadoCita_Completado] FOREIGN KEY([Completado_ID])
REFERENCES [dbo].[Completado] ([Completado_ID])
GO
ALTER TABLE [dbo].[EstadoCita] CHECK CONSTRAINT [FK_EstadoCita_Completado]
GO
ALTER TABLE [dbo].[EstadoCita]  WITH CHECK ADD  CONSTRAINT [FK_EstadoCita_Programado] FOREIGN KEY([Programado_ID])
REFERENCES [dbo].[Programado] ([Programado_ID])
GO
ALTER TABLE [dbo].[EstadoCita] CHECK CONSTRAINT [FK_EstadoCita_Programado]
GO
ALTER TABLE [dbo].[HistoriasClinicas]  WITH CHECK ADD  CONSTRAINT [FK_HistoriasClinicas_Paciente] FOREIGN KEY([Paciente_ID])
REFERENCES [dbo].[Paciente] ([Paciente_ID])
GO
ALTER TABLE [dbo].[HistoriasClinicas] CHECK CONSTRAINT [FK_HistoriasClinicas_Paciente]
GO
ALTER TABLE [dbo].[MetodosPagos]  WITH CHECK ADD  CONSTRAINT [FK_MetodosPagos_Efectivo] FOREIGN KEY([Efectivo_ID])
REFERENCES [dbo].[Efectivo] ([Efectivo_ID])
GO
ALTER TABLE [dbo].[MetodosPagos] CHECK CONSTRAINT [FK_MetodosPagos_Efectivo]
GO
ALTER TABLE [dbo].[MetodosPagos]  WITH CHECK ADD  CONSTRAINT [FK_MetodosPagos_Tarjeta] FOREIGN KEY([Tarjeta_ID])
REFERENCES [dbo].[Tarjeta] ([Tarjeta_ID])
GO
ALTER TABLE [dbo].[MetodosPagos] CHECK CONSTRAINT [FK_MetodosPagos_Tarjeta]
GO
ALTER TABLE [dbo].[Paciente]  WITH CHECK ADD  CONSTRAINT [FK_Paciente_ContactoEmergencia] FOREIGN KEY([Contacto_Emergencia_ID])
REFERENCES [dbo].[ContactoEmergencia] ([Contacto_Emergencia_ID])
GO
ALTER TABLE [dbo].[Paciente] CHECK CONSTRAINT [FK_Paciente_ContactoEmergencia]
GO
ALTER TABLE [dbo].[Paciente]  WITH CHECK ADD  CONSTRAINT [FK_Paciente_Direccion] FOREIGN KEY([Direccion_ID])
REFERENCES [dbo].[Direccion] ([Direccion_ID])
GO
ALTER TABLE [dbo].[Paciente] CHECK CONSTRAINT [FK_Paciente_Direccion]
GO
ALTER TABLE [dbo].[Paciente]  WITH CHECK ADD  CONSTRAINT [FK_Paciente_FechaNacimiento] FOREIGN KEY([Fecha_Nacimiento_ID])
REFERENCES [dbo].[FechaNacimiento] ([Fecha_Nacimiento_ID])
GO
ALTER TABLE [dbo].[Paciente] CHECK CONSTRAINT [FK_Paciente_FechaNacimiento]
GO
ALTER TABLE [dbo].[Paciente]  WITH CHECK ADD  CONSTRAINT [FK_Paciente_Telefono] FOREIGN KEY([Telefono_ID])
REFERENCES [dbo].[Telefono] ([Telefono_ID])
GO
ALTER TABLE [dbo].[Paciente] CHECK CONSTRAINT [FK_Paciente_Telefono]
GO
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD  CONSTRAINT [FK_Pagos_MetodosPagos] FOREIGN KEY([MetodosPago_ID])
REFERENCES [dbo].[MetodosPagos] ([MetodosPago_ID])
GO
ALTER TABLE [dbo].[Pagos] CHECK CONSTRAINT [FK_Pagos_MetodosPagos]
GO
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD  CONSTRAINT [FK_Pagos_Paciente] FOREIGN KEY([Paciente_ID])
REFERENCES [dbo].[Paciente] ([Paciente_ID])
GO
ALTER TABLE [dbo].[Pagos] CHECK CONSTRAINT [FK_Pagos_Paciente]
GO
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD  CONSTRAINT [FK_Pagos_Servicios] FOREIGN KEY([Servicio_ID])
REFERENCES [dbo].[Servicios] ([Servicio_ID])
GO
ALTER TABLE [dbo].[Pagos] CHECK CONSTRAINT [FK_Pagos_Servicios]
GO
ALTER TABLE [dbo].[Tarjeta]  WITH CHECK ADD  CONSTRAINT [FK_Tarjeta_DatosTarjeta] FOREIGN KEY([DatosTarjeta_ID])
REFERENCES [dbo].[DatosTarjeta] ([DatosTarjeta_ID])
GO
ALTER TABLE [dbo].[Tarjeta] CHECK CONSTRAINT [FK_Tarjeta_DatosTarjeta]
GO
