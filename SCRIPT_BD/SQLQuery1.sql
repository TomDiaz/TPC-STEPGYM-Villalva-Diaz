CREATE DATABASE STEPGYM_DB

use STEPGYM_DB

CREATE TABLE Usuarios(
  IdUsuario int IDENTITY(1,1),
  NombreUsuario varchar(255)NOT NULL,
  Contrasenia varchar(255)NOT NULL,
  Nombre varchar(255)NOT NULL,
  Apellido varchar(255)NOT NULL,
  DNI int NOT NULL,
  Mail varchar(255) NOT NULL,
  Telefono int,
  Direccion varchar(255),
  FechaInicio date,
  Foto varchar(255),
  
  CONSTRAINT PK_USUARIOS PRIMARY KEY (IdUsuario)
);

CREATE TABLE Clientes(
  IdCliente int IDENTITY(1,1),
  IdUsuario int NOT NULL,
  
  CONSTRAINT PK_CLIENTES PRIMARY KEY (IdCliente),
  CONSTRAINT FK_CLIENTES_USUARIO FOREIGN KEY (IdUsuario)REFERENCES Usuarios(IdUsuario)
);

CREATE TABLE Coachs(
  IdCoach int IDENTITY(1,1),
  IdUsuario int NOT NULL,
  
  CONSTRAINT PK_COACHS PRIMARY KEY (IdCoach),
  CONSTRAINT FK_COACHS_USUARIO FOREIGN KEY (IdUsuario)REFERENCES Usuarios(IdUsuario)
);


CREATE TABLE Clases(
  IdClase int IDENTITY(1,1),
  Nombre varchar(255) NOT NULL,
  IdCoach int NOT NULL,
  Descripcion varchar(700),
  Precio float NOT NULL,
  
  CONSTRAINT PK_CLASES PRIMARY KEY (IdClase),
  CONSTRAINT FK_CLASES_COACHS FOREIGN KEY (IdCoach)REFERENCES Coachs(IdCoach)
);


CREATE TABLE Clientes_x_Clases(
    IdCliente int NOT NULL,
    IdClase int NOT NULL,
    
    CONSTRAINT PK_CLIENTES_X_CLASE PRIMARY KEY CLUSTERED(IdCliente,IdClase),
    CONSTRAINT FK_CLIENTES_X_CLASE_CLIENTES FOREIGN KEY (IdCliente)REFERENCES Clientes(IdCliente),
    CONSTRAINT FK_CLIENTES_X_CLASE_CLASES FOREIGN KEY (IdClase)REFERENCES Clases(IdClase)
 
);


CREATE TABLE Salarios(
   
  IdSalario int IDENTITY(1,1),
  IdCoach int NOT NULL,
  Sueldo money,
  
  CONSTRAINT PK_SALARIOS PRIMARY KEY (IdSalario),
  CONSTRAINT FK_SALARIOS_COACHS FOREIGN KEY (IdCoach)REFERENCES Coachs(IdCoach)
);


CREATE TABLE Horarios(
	IdHorario int IDENTITY(1,1),
	HoraInicio time NOT NULL,
	HoraFin time NOT NULL,
	Dia varchar(10) NOT NULL,
    
    CONSTRAINT PK_HORARIOS PRIMARY KEY (IdHorario)
);

CREATE TABLE Horario_x_Clase(
   IdHorario int NOT NULL,
   IdClase int NOT NULL,
  
  CONSTRAINT PK_HORARIO_X_CLASE PRIMARY KEY CLUSTERED(IdHorario,IdClase),
  CONSTRAINT FK_HORARIO_X_CLASE_HORARIOS FOREIGN KEY (IdHorario)REFERENCES Horarios(IdHorario),
  CONSTRAINT FK_HORARIO_X_CLASE_CLASES FOREIGN KEY (IdClase)REFERENCES Clases(IdClase)
);


CREATE TABLE Beneficios(
   IdBeneficio int IDENTITY(1,1),
   Beneficio varchar(700) NOT NULL,
   
   CONSTRAINT PK_BENEFICIOS PRIMARY KEY(IdBeneficio)
);

CREATE TABLE Ejercicios(
 IdEjercicio int IDENTITY(1,1),
 EjercicioNombre varchar(255) NOT NULL,
 Explicacion varchar(700) NOT NULL,
 Series int NOT NULL,
 Repeticiones int NOT NULL,
 
 CONSTRAINT PK_EJERCICIOS PRIMARY KEY(IdEjercicio)

);

CREATE TABLE Ejercicios_x_Beneficios(
   IdEjercicio int NOT NULL,
   IdBeneficio int NOT NULL,
  
  CONSTRAINT PK_EJERCICIOS_X_BENEFICIOS PRIMARY KEY CLUSTERED(IdEjercicio,IdBeneficio),
  CONSTRAINT FK_EJERCICIOS_X_BENEFICIOS_EJERCICIOS FOREIGN KEY (IdEjercicio)REFERENCES Ejercicios(IdEjercicio),
  CONSTRAINT FK_EJERCICIOS_X_BENEFICIOS_BENEFICIOS FOREIGN KEY (IdBeneficio)REFERENCES Beneficios(IdBeneficio)
);


CREATE TABLE Contenidos(
  IdContenido int IDENTITY(1,1),
  IdClase int NOT NULL,
  IdEjercicio int NOT NULL,
  Video varchar(600),
  Dia date,
  
  CONSTRAINT PK_CONTENIDO PRIMARY KEY (IdContenido),
  CONSTRAINT FK_CONTENIDO_CLASES FOREIGN KEY (IdClase)REFERENCES Clases(IdClase),
  CONSTRAINT FK_CONTENIDO_EJERCICIO FOREIGN KEY (IdEjercicio)REFERENCES Ejercicios(IdEjercicio)

);
