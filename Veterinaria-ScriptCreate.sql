create database Veterinaria;
use Veterinaria;

CREATE TABLE `dueno` (
  `DNI` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `Teléfono` varchar(45) NOT NULL,
  `Dirección` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DNI`)
);
CREATE TABLE `perro` (
  `ID_Perro` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Fecha_nac` varchar(45) DEFAULT NULL,
  `Sexo` varchar(45) DEFAULT NULL,
  `DNI_dueno` int NOT NULL,
  PRIMARY KEY (`ID_Perro`),
  KEY `DNI_dueno_idx` (`DNI_dueno`),
  CONSTRAINT `DNI_dueno` FOREIGN KEY (`DNI_dueno`) REFERENCES `dueno` (`DNI`)
);
CREATE TABLE `historial` (
  `ID_Historial` int NOT NULL AUTO_INCREMENT,
  `Fecha` timestamp DEFAULT NULL,
  `Perro` int NOT NULL,
  `Descripción` varchar(45) DEFAULT NULL,
  `Monto` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`ID_Historial`),
  KEY `Perro_idx` (`Perro`),
  CONSTRAINT `Perro` FOREIGN KEY (`Perro`) REFERENCES `perro` (`ID_Perro`) 
);


insert into `Dueno` values (30782197, 'Emilio', 'Polizarto','3515326192', 'Matacos 252');
insert into `Dueno` values (30782188, 'Laureano', 'Bataglia','1564782023', 'Diaguitas 359');
insert into `Dueno` values (30782125, 'Chiquito', 'Romero','356498764', 'Las heras 569');

INSERT INTO `perro`  VALUES ('1', 'Romulo', '2012-04-15 22:05', 'M', '30782197');
INSERT INTO `perro`  VALUES ('2', 'Remo', '2017-04-25 12:05', 'M', '30782188');
INSERT INTO `perro`  VALUES ('3', 'Anita', '2020-04-25 08:05', 'M', '30782125');

INSERT INTO `historial` VALUES ('1', '2020-04-05 20:00', '1', 'Corte flequillo', '1200');
INSERT INTO `historial` VALUES ('2', '2018-04-05 20:00', '2', 'Corte patitas', '1200');
INSERT INTO `historial` VALUES ('3', '2012-04-05 20:00', '3', 'Peinado', '2200');

update Perro set Fecha_nac = '2012-04-05 20:00' where Nombre = 'Anita' 