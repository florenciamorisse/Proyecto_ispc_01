create  DATABASE if not exists Perro_peluqueria;
use Perro_peluqueria; 
create table if not exists Dueno(
DNI int not null,
Nombre varchar(35) not null,
Apellido varchar(35) not null,
Teléfono varchar(35) not null,
Dirección varchar (100),
Primary key(DNI)

);

#Ejercicio 1


create table if not exists Perro(
ID_Perro int not null auto_increment,
DNI_dueno int not null,
NombrePerro varchar(35) not null,
Fecha_nac date,
Sexo char not null,
Primary key(ID_Perro),
foreign key(DNI_dueno) references Dueno(DNI)
);

create table if not exists Historial(
ID_Historial int not null auto_increment,
Perro int not null,
Fecha date not null,
Descripción text(100),
Monto decimal(9,2),
Primary key (ID_Historial),
foreign key (Perro) references Perro (ID_Perro)
);

insert into Dueno values
(20202202,'Pedro', 'Morisse', 1132222222, 'Rojas 2053'), 
(30303303,'Laura', 'Garcia', 1133333333, 'Rioja 2053'),
(40404404,'Juan', 'Torres', 1134444444, 'Morón 2053'),
(50505505,'Pedro', 'Rios', 1135555555, 'San Juan 2053');

insert into Perro values
(01, 20202202 ,'Donna', '2020-12-26', 'f'), 
(02, 30303303,'Bonita', '2018-10-28', 'f'),
(03, 20202202,'Owen', '2001-02-23', 'm'),
(04, 50505505,'Ulises', '2018-10-09', 'm'),
(10, 40404404,'Choco', '2019-05-01', 'm');

insert into historial values
(101,01,'2021-12-03', 'Baño', 5050), 
(102,02,'2022-10-02', 'Corte', 2500),
(103,10,'2021-02-02', 'uñas', 11344),
(104,01,'2020-10-09', 'Corte', 11525),
(105,03,'2020-01-22', 'baño', 12542), 
(106,01,'2021-05-06', 'Corte', 11363.52),
(107,04,'2022-08-09', 'corte', 11897),
(108,10,'2021-05-18', 'Corte', 11355);

insert into historial values
(109,01,'2022-07-06', 'Corte', 11363.52),
(110,04,'2022-07-09', 'corte', 11897),
(111,10,'2022-07-18', 'Corte', 11355);

#Ejercicio 3

DELETE Perro FROM Perro
        INNER JOIN
    Historial ON Historial.Perro = Perro.ID_Perro 
WHERE
    Fecha < '2021-01-01';


#Ejercicio 5
SELECT 
    NombrePerro, Nombre
FROM
    Perro
        INNER JOIN
    Dueno ON perro.DNI_dueno = Dueno.DNI
WHERE
    Nombre = 'Pedro';
