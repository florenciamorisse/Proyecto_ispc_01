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
  `Fecha_nac` date NOT NULL,
  `Sexo` varchar(45) DEFAULT NULL,
  `DNI_dueno` int NOT NULL,
  PRIMARY KEY (`ID_Perro`),
  KEY `DNI_dueno_idx` (`DNI_dueno`),
  CONSTRAINT `DNI_dueno` FOREIGN KEY (`DNI_dueno`) REFERENCES `dueno` (`DNI`)
);
CREATE TABLE `historial` (
  `ID_Historial` int NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `Perro` int NOT NULL,
  `Descripción` varchar(45) DEFAULT NULL,
  `Monto` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`ID_Historial`),
  KEY `Perro_idx` (`Perro`),
  CONSTRAINT `Perro` FOREIGN KEY (`Perro`) REFERENCES `perro` (`ID_Perro`) 
);


insert into `Dueno` values (30782197, 'Emilio', 'Polizarto','3515326192', 'Matacos 252');
insert into `Dueno` values (30782188, 'Laureano', 'Gigli','1564782023', 'Diaguitas 359');
insert into `Dueno` values (30798125, 'Cesar', 'Romero','356498764', 'Las Heras 569');
insert into `Dueno` values (13039703, 'Maria', 'Pairetti', '3537430269', 'Maipu 1005');
insert into `Dueno` values (12038701, 'Amalia', 'Gomez','3513548592', 'Ing. Urrutia 22');
insert into `Dueno` values (24568458, 'Marcos', 'Francisca','3516453815', 'Rivadavia 986');
insert into `Dueno` values (27854694, 'Marcia', 'Ruiz','3513648521', 'Rondeau 450');
insert into `Dueno` values (17258642, 'Juan', 'Vidal', '3516485326', '9 de Julio 1754');
insert into `Dueno` values (31141554, 'Andres', 'Lopez', '3513214784', 'Mza 76 - Lote 5');
insert into `Dueno` values (24584922, 'Melina', 'Bianchi', '3513458815', 'Caseros 1069');

INSERT INTO `perro`  VALUES ('1', 'Romulo', '2012-04-15', 'MACHO', '30782197');
INSERT INTO `perro`  VALUES ('2', 'Remo', '2017-04-25', 'MACHO', '30782188');
INSERT INTO `perro`  VALUES ('3', 'Anita', '2020-04-25', 'HEMBRA', '30798125');
INSERT INTO `perro`  VALUES ('4', 'Lucho', '2015-06-11', 'MACHO', '13039703');
INSERT INTO `perro`  VALUES ('5', 'Coquito', '2009-01-15', 'MACHO', '13039703');
INSERT INTO `perro`  VALUES ('6', 'Lola', '2019-09-21', 'HEMBRA', '12038701');
INSERT INTO `perro`  VALUES ('7', 'Blaky', '2018-12-01', 'HEMBRA', '24568458');
INSERT INTO `perro`  VALUES ('8', 'Bongo', '2021-10-09', 'MACHO', '27854694');
INSERT INTO `perro`  VALUES ('9', 'Cleta', '2018-07-15', 'HEMBRA', '17258642');
INSERT INTO `perro`  VALUES ('10', 'Manchita', '2020-02-09', 'MACHO', '31141554');
INSERT INTO `perro`  VALUES ('11', 'Colita', '2022-03-09', 'MACHO', '24584922');

INSERT INTO `historial` VALUES ('1', '2020-04-05', '1', 'Corte flequillo', '1200');
INSERT INTO `historial` VALUES ('2', '2020-03-08', '2', 'Corte patitas', '1200');
INSERT INTO `historial` VALUES ('3', '2020-04-15', '10', 'Peinado', '2200');
INSERT INTO `historial` VALUES ('4', '2020-05-25', '3', 'Corte flequillo', '1200');
INSERT INTO `historial` VALUES ('5', '2020-07-05', '6', 'Corte patitas', '1200');
INSERT INTO `historial` VALUES ('6', '2020-08-10', '7', 'Peinado', '2200');
INSERT INTO `historial` VALUES ('7', '2020-09-10', '4', 'Peinado', '2200');
INSERT INTO `historial` VALUES ('8', '2020-09-10', '5', 'Peinado', '2200');
INSERT INTO `historial` VALUES ('9', '2021-11-05', '9', 'Corte patitas', '1200');
INSERT INTO `historial` VALUES ('10', '2021-12-17', '8', 'Corte flequillo', '1200');
INSERT INTO `historial` VALUES ('11', '2021-08-22', '3', 'Corte patitas', '1200');
INSERT INTO `historial` VALUES ('12', '2022-04-05', '2', 'Corte patitas', '1200');
INSERT INTO `historial` VALUES ('13', '2022-04-05', '3', 'Peinado', '2200');
INSERT INTO `historial` VALUES ('14', '2022-05-05', '11', 'Corte patitas', '1200');
INSERT INTO `historial` VALUES ('15', '2022-07-05', '11', 'Peinado', '2200');

-- Actualice la fecha de nacimiento de algún animal (perro) que usted considere.
update Perro set Fecha_nac = '2012-04-05' where ID_perro = 3;

-- Obtener todos los perros que asistieron a la peluquería en 2022
select p.Nombre, h.Fecha
from Perro p, Historial h
where p.ID_Perro = h.Perro
and h.Fecha between '2022-01-01' and '2022-12-31';

-- Obtener todos los dueños que tengan perros de menos de 5 años de edad que no hayan visitado la peluquería en el año 2022.

select d.DNI, d.Nombre, p.Nombre, h.Fecha
from Dueno d
join Perro p
on p.DNI_dueno = d.DNI
join Historial h
on h.Perro = p.ID_Perro
where p.Fecha_nac >= '2017-01-01'
and h.Fecha <= '2021-12-31' or h.Fecha >= '2023-01-01';








