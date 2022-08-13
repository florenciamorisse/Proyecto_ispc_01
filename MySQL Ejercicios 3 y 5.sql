CREATE DATABASE if not exists Perro_peluqueria;

use Perro_peluqueria;

CREATE TABLE IF NOT EXISTS Dueno (
    DNI_Dueno INT NOT NULL UNIQUE,
    Nombre VARCHAR(45) NOT NULL,
    Apellido VARCHAR(45) NOT NULL,
    Telefono VARCHAR(45) NOT NULL,
    Dirección INT NOT NULL,
    PRIMARY KEY (DNI_Dueno)
);

#Punto 1

CREATE TABLE IF NOT EXISTS Perro (
    ID_Perro INT NOT NULL UNIQUE,
    Nombre VARCHAR(45) NOT NULL,
    Fecha_nac VARCHAR(45) NOT NULL,
    Sexo VARCHAR(45) NOT NULL,
    DNI_Dueno INT NOT NULL UNIQUE,
    PRIMARY KEY (ID_Perro),
    CONSTRAINT DNI_del_dueno FOREIGN KEY (DNI_Dueno)
        REFERENCES Dueno (DNI_Dueno)
        ON DELETE NO ACTION ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Historial (
    ID_Historial INT NOT NULL UNIQUE,
    Fecha VARCHAR(45) NOT NULL,
    Perro VARCHAR(45) NOT NULL,
    Descripción VARCHAR(45) NOT NULL,
    Monto INT NOT NULL,
    PRIMARY KEY (ID_Historial),
    CONSTRAINT Perro FOREIGN KEY (Perro)
        REFERENCES Perro (ID_Perro)
        ON DELETE NO ACTION ON UPDATE CASCADE

);

#Punto 3

DELETE FROM Perro 
WHERE Historial.Fecha < "01/01/2015";

#Punto 5

SELECT ID_Perro FROM Perro 
WHERE Dueno.Nombre = "Pedro";