Create DATABASE if not exists Perro_peluqueria;

use Perro_peluqueria;
CREATE TABLE IF NOT EXISTS Dueno (
    DNI_Dueno INT NOT NULL UNIQUE,
    Nombre VARCHAR(45) NOT NULL,
    Apellido VARCHAR(45) NOT NULL,
    Telefono VARCHAR(45) NOT NULL,
    Direccion VARCHAR(100),
    PRIMARY KEY (DNI_Dueno)
);

#Punto 1
CREATE TABLE IF NOT EXISTS Perro (
    ID_Perro INT NOT NULL UNIQUE,
    Nombre VARCHAR(45) NOT NULL,
    Fecha_nac VARCHAR(45) NOT NULL,
    Sexo VARCHAR(45) NOT NULL,
    DNI_Dueno INT NOT NULL,
    PRIMARY KEY (ID_Perro),
    CONSTRAINT DNI_del_dueno FOREIGN KEY (DNI_Dueno)
        REFERENCES Dueno (DNI_Dueno)
        ON DELETE NO ACTION ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS Historial (
    ID_Historial INT NOT NULL UNIQUE,
    Fecha VARCHAR(45) NOT NULL,
    Perro INT NOT NULL,
    Descripción VARCHAR(45) NOT NULL,
    Monto INT NOT NULL,
    PRIMARY KEY (ID_Historial),
    CONSTRAINT fk_Perro FOREIGN KEY (Perro)
        REFERENCES Perro (ID_Perro)
        ON DELETE NO ACTION ON UPDATE CASCADE

);
insert into Dueno values
(20202202,'Florencia', 'Morisse', 1132222222, "Rojas 2053"), 
(30303303,'Pedro', 'Garcia', 1133333333, 'Rioja 2053'),
(40404404,'Juan', 'Torres', 1134444444, 'Morón 2053'),
(50505505,'Marcelo', 'Rios', 1135555555, 'San Juan 2053');

insert into Perro values
(01,'Donna', '2020-12-26', 'f', 20202202), 
(02,'Bonita', '2018-10-28', 'f', 30303303),
(03,'Owen' '2001-02-23', 'm', 20202202),
(04,'Ulises', '2018-10-09', 'm', 50505505),
(10, 'Choco', '2019-05-01', 'm', 40404404);

insert into Historial values
(101,01,'2021-12-03', 'Baño', 5050), 
(102,02,'2022-10-02', 'Corte', 2500),
(103,10,'2021-02-02', 'uñas', 11344),
(104,01,'2020-10-09', 'Corte', 11525),
(105,03,'2020-01-22', 'baño', 12542), 
(106,01,'2021-05-06', 'Corte', 11363.52),
(107,04,'2022-08-09', 'corte', 11897),
(108,10,'2021-05-18', 'Corte', 11355);

insert into Historial values
(109,01,'2022-07-06', 'Corte', 11363.52),
(110,04,'2022-07-09', 'corte', 11897),
(111,10,'2022-07-18', 'Corte', 11355);

#Punto 3
#Punto 5

SELECT ID_Perro FROM Perro 
WHERE Dueno.Nombre = "Pedro";

