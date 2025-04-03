CREATE DATABASE BaseCasoParcial;

USE BaseCasoParcial;


--creacion de la tabla de Pacientes
CREATE TABLE Paciente (
	Paciente_ID INT IDENTITY NOT NULL,
	Nombre VARCHAR(100) NOT NULL,
	Direccion_ID INT NOT NULL,
	Telefono_ID INT NOT NULL,
	Email VARCHAR(250) NOT NULL,
	Fecha_Nacimiento_ID INT NOT NULL,
	Contacto_Emergencia_ID INT NOT NULL,
)
GO

--asignar la llave primaria de la tabla pacientes
ALTER TABLE Paciente
ADD CONSTRAINT PK_Paciente PRIMARY KEY(Paciente_ID)
GO

--creacion de la tabla de direccion
CREATE TABLE Direccion (
	Direccion_ID INT IDENTITY NOT NULL,
	Pais_ID INT NOT NULL,
	Departamento_ID INT NOT NULL,
	Ciudad_ID INT NOT NULL,
)
GO

--asignar la llave primaria de la tabla Direccion
ALTER TABLE Direccion
ADD CONSTRAINT PK_Direccion PRIMARY KEY(Direccion_ID)
GO

--asignar la llave Foranea de la tabla direccion a la tabla pacientes
ALTER TABLE Paciente
ADD CONSTRAINT FK_Paciente_Direccion FOREIGN KEY (Direccion_ID) REFERENCES Direccion(Direccion_ID)
GO

--creacion de la tabla de Pais
CREATE TABLE Pais (
	Pais_ID INT IDENTITY NOT NULL,
	Nombre VARCHAR(100) NOT NULL,
	Latitud VARCHAR(50) NOT NULL,
	Longitud VARCHAR(50) NOT NULL,
)
GO

--asignar la llave primaria de la tabla pais
ALTER TABLE Pais
ADD CONSTRAINT PK_Pais PRIMARY KEY(Pais_ID)
GO

--creacion de la tabla de Departamento
CREATE TABLE Departamento (
	Departamento_ID INT IDENTITY NOT NULL,
	Nombre VARCHAR(100) NOT NULL,
	Latitud VARCHAR(50) NOT NULL,
	Longitud VARCHAR(50) NOT NULL,
	Pais_ID INT NOT NULL,
)
GO

--asignar la llave primaria de la tabla Departamento
ALTER TABLE Departamento
ADD CONSTRAINT PK_Departamento PRIMARY KEY(Departamento_ID)
GO

--asignar la llave Foranea de la tabla pais a la tabla departamento
ALTER TABLE Departamento
ADD CONSTRAINT FK_Departamento_Pais FOREIGN KEY (Pais_ID) REFERENCES Pais(Pais_ID)
GO

--creacion de la tabla de Ciudad
CREATE TABLE Ciudad (
	Ciudad_ID INT IDENTITY NOT NULL,
	Nombre VARCHAR(100) NOT NULL,
	Latitud VARCHAR(50) NOT NULL,
	Longitud VARCHAR(50) NOT NULL,
	Departamento_ID INT NOT NULL,
)
GO

--asignar la llave primaria de la tabla Ciudad
ALTER TABLE Ciudad
ADD CONSTRAINT PK_Ciudad PRIMARY KEY(Ciudad_ID)
GO

--asignar la llave Foranea de la tabla Departamento a la tabla ciudad
ALTER TABLE Ciudad
ADD CONSTRAINT FK_Ciudad_Departamento FOREIGN KEY (Departamento_ID) REFERENCES Departamento(Departamento_ID)
GO

--asignar la llave Foranea de la tabla pais a la tabla direccion
ALTER TABLE Direccion
ADD CONSTRAINT FK_Direccion_Pais FOREIGN KEY (Pais_ID) REFERENCES Pais(Pais_ID)
GO

--asignar la llave Foranea de la tabla departamento a la tabla direccion
ALTER TABLE Direccion
ADD CONSTRAINT FK_Direccion_Departamento FOREIGN KEY (Departamento_ID) REFERENCES Departamento(Departamento_ID)
GO

--asignar la llave Foranea de la tabla ciudad a la tabla direccion
ALTER TABLE Direccion
ADD CONSTRAINT FK_Direccion_Ciudad FOREIGN KEY (Ciudad_ID) REFERENCES Ciudad(Ciudad_ID)
GO

--creacion de la tabla de Telefono
CREATE TABLE Telefono (
	Telefono_ID INT IDENTITY NOT NULL,
	Codigo_Area VARCHAR(100) NOT NULL,
	Numero VARCHAR(50) NOT NULL,
)
GO

--asignar la llave primaria de la tabla Telefono
ALTER TABLE Telefono
ADD CONSTRAINT PK_Telefono PRIMARY KEY(Telefono_ID)
GO

--asignar la llave Foranea de la tabla Telefono a la tabla Paciente
ALTER TABLE Paciente
ADD CONSTRAINT FK_Paciente_Telefono FOREIGN KEY (Telefono_ID) REFERENCES Telefono(Telefono_ID)
GO

--creacion de la tabla de Fecha Nacimiento
CREATE TABLE FechaNacimiento(
	Fecha_Nacimiento_ID INT IDENTITY NOT NULL,
	Fecha DATE NOT NULL,
)
GO

--asignar la llave primaria de la tabla Fecha Nacimiento
ALTER TABLE FechaNacimiento
ADD CONSTRAINT PK_FechaNacimiento PRIMARY KEY(Fecha_Nacimiento_ID)
GO

--asignar la llave Foranea de la tabla Fecha Nacimiento a la tabla Paciente
ALTER TABLE Paciente
ADD CONSTRAINT FK_Paciente_FechaNacimiento FOREIGN KEY (Fecha_Nacimiento_ID) REFERENCES FechaNacimiento(Fecha_Nacimiento_ID)
GO

--creacion de la tabla de Contacto emergencia
CREATE TABLE ContactoEmergencia(
	Contacto_Emergencia_ID INT IDENTITY NOT NULL,
	Nombre VARCHAR(100) NOT NULL,
	Tefono_Emergencia VARCHAR(50) NOT NULL,
)
GO

--asignar la llave primaria de la tabla Contacto Emergencia
ALTER TABLE ContactoEmergencia
ADD CONSTRAINT PK_ContactoEmergencia PRIMARY KEY(Contacto_Emergencia_ID)
GO

--asignar la llave Foranea de la tabla FContacto Emergencia a la tabla Paciente
ALTER TABLE Paciente
ADD CONSTRAINT FK_Paciente_ContactoEmergencia FOREIGN KEY (Contacto_Emergencia_ID) REFERENCES ContactoEmergencia(Contacto_Emergencia_ID)
GO

--creacion de la tabla de Historias Clinicas
CREATE TABLE HistoriasClinicas(
	Historia_ID INT IDENTITY NOT NULL,
	Paciente_ID INT NOT NULL,
	Diagnostico VARCHAR(500),
	Tratamiento VARCHAR(500),
	Procedimiento VARCHAR(500),
)
GO

--asignar la llave primaria de la tabla Historias Clinicas
ALTER TABLE HistoriasClinicas
ADD CONSTRAINT PK_HistoriasClinicas PRIMARY KEY(Historia_ID)
GO

--asignar la llave Foranea de la tabla Paciente a la tabla Historias CLinicas
ALTER TABLE HistoriasClinicas
ADD CONSTRAINT FK_HistoriasClinicas_Paciente FOREIGN KEY (Paciente_ID) REFERENCES Paciente(Paciente_ID)
GO


--creacion de la tabla de Citas
CREATE TABLE Citas(
	Cita_ID INT IDENTITY NOT NULL,
	Paciente_ID INT NOT NULL,
	Fecha_Hora DATETIME,
	Servicio_ID INT,
	Estado_Cita_ID INT NOT NULL,
	Pago_ID INT NOT NULL,
)
GO

--asignar la llave primaria de la tabla Citas
ALTER TABLE Citas
ADD CONSTRAINT PK_Citas PRIMARY KEY(Cita_ID)
GO

--creacion de la tabla de Servicio
CREATE TABLE Servicios(
	Servicio_ID INT IDENTITY NOT NULL,
	Nombre VARCHAR(50) NOT NULL,
	Descripcion VARCHAR(250),
	Precio VARCHAR(50),

)
GO

--asignar la llave primaria de la tabla Servicios
ALTER TABLE Servicios
ADD CONSTRAINT PK_Servicios PRIMARY KEY(Servicio_ID)
GO

--asignar la llave Foranea de la tabla Servicios a la tabla Citas
ALTER TABLE Citas
ADD CONSTRAINT FK_Citas_Servicio FOREIGN KEY (Servicio_ID) REFERENCES Servicios(Servicio_ID)
GO

--creacion de la tabla de Estado Cita
CREATE TABLE EstadoCita(
	Estado_Cita_ID INT IDENTITY NOT NULL,
	Programado_ID INT,
	Cancelado_ID INT,
	Completado_ID INT,
)
GO

--asignar la llave primaria de la tabla Estado Cita
ALTER TABLE EstadoCita
ADD CONSTRAINT PK_EstadoCita PRIMARY KEY(Estado_Cita_ID)
GO

--asignar la llave Foranea de la tabla Estado Cita a la tabla Citas
ALTER TABLE Citas
ADD CONSTRAINT FK_Citas_EstadoCita FOREIGN KEY (Estado_Cita_ID) REFERENCES EstadoCita(Estado_Cita_ID)
GO

--creacion de la tabla de Programado
CREATE TABLE Programado(
	Programado_ID INT IDENTITY NOT NULL,
	Aprovado VARCHAR(50),
	Denegado VARCHAR(50),
)
GO

--asignar la llave primaria de la tabla Programado
ALTER TABLE Programado
ADD CONSTRAINT PK_Programado PRIMARY KEY(Programado_ID)
GO

--creacion de la tabla de Cancelado
CREATE TABLE Cancelado(
	Cancelado_ID INT IDENTITY NOT NULL,
	Aprovado VARCHAR(50),
	Denegado VARCHAR(50),
)
GO

--asignar la llave primaria de la tabla Cancelado
ALTER TABLE Cancelado
ADD CONSTRAINT PK_Cancelado PRIMARY KEY(Cancelado_ID)
GO

--creacion de la tabla de Completado
CREATE TABLE Completado(
	Completado_ID INT IDENTITY NOT NULL,
	Aprovado VARCHAR(50),
	Denegado VARCHAR(50),
)
GO

--asignar la llave primaria de la tabla Completado
ALTER TABLE Completado
ADD CONSTRAINT PK_Completado PRIMARY KEY(Completado_ID)
GO

--asignar la llave Foranea de la tablaProgramado a la tabla Citas
ALTER TABLE EstadoCita
ADD CONSTRAINT FK_EstadoCita_Programado FOREIGN KEY (Programado_ID) REFERENCES Programado(Programado_ID)
GO

--asignar la llave Foranea de la tabla Cancelado a la tabla Citas
ALTER TABLE EstadoCita
ADD CONSTRAINT FK_EstadoCita_Cancelado FOREIGN KEY (Cancelado_ID) REFERENCES Cancelado(Cancelado_ID)
GO

--asignar la llave Foranea de la tabla Completado a la tabla Citas
ALTER TABLE EstadoCita
ADD CONSTRAINT FK_EstadoCita_Completado FOREIGN KEY (Completado_ID) REFERENCES Completado(Completado_ID)
GO


--Creacion de la tabla pagos
CREATE TABLE Pagos(
	Pago_ID INT IDENTITY NOT NULL,
	Servicio_ID INT NOT NULL,
	Paciente_ID INT NOT NULL,
	Cantidad_Pagada VARCHAR(50),
	MetodosPago_ID INT NOT NULL,
)
GO

--asignar la llave primaria de la tabla Pagos
ALTER TABLE Pagos
ADD CONSTRAINT PK_Pagos PRIMARY KEY(Pago_ID)
GO

--asignar la llave Foranea de la tabla Pagos a la tabla Citas
ALTER TABLE Citas
ADD CONSTRAINT FK_Citas_Pagos FOREIGN KEY (Pago_ID) REFERENCES Pagos(Pago_ID)
GO

--asignar la llave Foranea de la tabla servicios a la tabla pagos
ALTER TABLE Pagos
ADD CONSTRAINT FK_Pagos_Servicios FOREIGN KEY (Servicio_ID) REFERENCES Servicios(Servicio_ID)
GO

--asignar la llave Foranea de la tabla paciente a la tabla pagos
ALTER TABLE Pagos
ADD CONSTRAINT FK_Pagos_Paciente FOREIGN KEY (Paciente_ID) REFERENCES Paciente(Paciente_ID)
GO

--Creacion de la tabla Metodos Pagos
CREATE TABLE MetodosPagos(
	MetodosPago_ID INT IDENTITY NOT NULL,
	Efectivo_ID INT,
	Tarjeta_ID INT,
)
GO
--asignar la llave primaria de la tabla MetodosPagos
ALTER TABLE MetodosPagos
ADD CONSTRAINT PK_MetodosPagos PRIMARY KEY(MetodosPago_ID)
GO

--asignar la llave Foranea de la tabla MetodosPagos a la tabla Pagos
ALTER TABLE Pagos
ADD CONSTRAINT FK_Pagos_MetodosPagos FOREIGN KEY (MetodosPago_ID) REFERENCES MetodosPagos(MetodosPago_ID)
GO

--Creacion de la tabla Efectivo
CREATE TABLE Efectivo(
	Efectivo_ID INT IDENTITY NOT NULL,
	Cantidad_Pagada VARCHAR(50),
)
GO
--asignar la llave primaria de la tabla MetodosPagos
ALTER TABLE Efectivo
ADD CONSTRAINT PK_Efectivo PRIMARY KEY(Efectivo_ID)
GO

--asignar la llave Foranea de la tabla MetodosPagos a la tabla Pagos
ALTER TABLE MetodosPagos
ADD CONSTRAINT FK_MetodosPagos_Efectivo FOREIGN KEY (Efectivo_ID) REFERENCES Efectivo(Efectivo_ID)
GO

--Creacion de la tabla Tarjeta
CREATE TABLE Tarjeta(
	Tarjeta_ID INT IDENTITY NOT NULL,
	DatosTarjeta_ID INT NOT NULL,
	Cantidad_Pagada VARCHAR(50),
)
GO

--asignar la llave primaria de la tabla Tarjeta
ALTER TABLE Tarjeta
ADD CONSTRAINT PK_Tarjeta PRIMARY KEY(Tarjeta_ID)
GO

--asignar la llave Foranea de la tabla Tarjeta a la tabla MetodosPagos
ALTER TABLE MetodosPagos
ADD CONSTRAINT FK_MetodosPagos_Tarjeta FOREIGN KEY (Tarjeta_ID) REFERENCES Tarjeta(Tarjeta_ID)
GO

--Creacion de la tabla DatosTarjeta
CREATE TABLE DatosTarjeta(
	DatosTarjeta_ID INT IDENTITY NOT NULL,
	NumeroTarjeta VARCHAR(50) NOT NULL,
	FechaVencimiento DATE NOT NULL,
	NombreTitular VARCHAR(50) NOT NULL,
	CVV VARCHAR(50) NOT NULL,
	EmisorTarjeta VARCHAR(50) NOT NULL,
)
GO

--asignar la llave primaria de la tabla DatosTarjeta
ALTER TABLE DatosTarjeta
ADD CONSTRAINT PK_DatosTarjeta PRIMARY KEY(DatosTarjeta_ID)
GO

--asignar la llave Foranea de la tabla DatosTarjeta a la tablaTarjeta
ALTER TABLE Tarjeta
ADD CONSTRAINT FK_Tarjeta_DatosTarjeta FOREIGN KEY (DatosTarjeta_ID) REFERENCES DatosTarjeta(DatosTarjeta_ID)
GO