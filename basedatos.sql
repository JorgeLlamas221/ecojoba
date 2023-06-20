CREATE DATABASE Ecojoba;

USE Ecojoba;

CREATE TABLE Usuario(
id_Usuario int primary key auto_increment,
nombreUsuario varchar (25) not  null,
nombreCompleto varchar (50) not null,
direccion varchar (500),
codigoPostal int (5),
MunicipioAlcaldia varchar (25),
EstadoCiudad varchar (25),
telefono int (10),
correoElectronico varchar (30) not null,
contrasenia varchar (20) not null
);

CREATE TABLE Recolector(
id_Recolector int primary key auto_increment,
nombreRecolector varchar (25) not null,
nombreCompleto varchar (50) not null,
direccion varchar (500),
codigoPostal int (5),
MunicipioAlcaldia varchar (25),
EstadoCiudad varchar (25),
telefono int (10),
correoElectr varchar (30) not null,
contra varchar (20) not null
);

CREATE TABLE material(
id_Material int primary key auto_increment,
material varchar (20) not null,
categoria varchar (20) not null,
costoKilo float (20) not null
);

CREATE TABLE ComprasRegistradas(
id_Compras int primary key auto_increment,
id_recolector int,
id_usuario int,
id_material int, 
foreign key (id_usuario) references Usuario(id_Usuario),
foreign key (id_material) references material(id_Material),
kilosVender float (20) not null,
costoTotal float (20) not null,
foreign key (id_recolector) references Recolector(id_Recolector),
fechaRegistro date not null,
fechaLlegada date not null
);

/* Consultas Sencillas*/
SELECT * FROM Usuario;