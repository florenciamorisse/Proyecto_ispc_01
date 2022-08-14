create database PeluqueriaCanina;
use PeluqueriaCanina;

CREATE TABLE Dueno (
DNI int not null, 
Nombre varchar (30) not null,
Apellido varchar (30) not null,
Telefono varchar (45) not null,
Direccion varchar (100) not null,
PRIMARY KEY (DNI)
);

-- Punto numero 1 'Creacion de la tabla Perro'

create table Perro (
ID_Perro int not null auto_increment,
Nombre varchar (30) not null,
Fecha_nac date,
Sexo char not null,
DNI_dueno int not null,
PRIMARY KEY (ID_Perro),
FOREIGN KEY (DNI_dueno)
references Dueno (DNI)
);

create table Historial (
ID_Historial int not null auto_increment,
Fecha date not null,
Perro int not null,
Descripcion varchar (200) not null,
Monto float not null,
PRIMARY KEY (ID_Historial),
FOREIGN KEY (Perro) references Perro (ID_Perro)
);

-- Punto numero 2 'Asociar el perro con el dueño'
insert into Dueno values (42783325, 'Rodrigo', 'Altamira', '351459376', 'Donato Alvarez 1556');
insert into Dueno values (42778344, 'Azul', 'Chaves', '35145679', 'Colon 3564');
insert into Dueno values (40586891, 'Lucia', 'Machado', '354125464', 'Luchesse 2200');

insert into Perro values (01, 'Roco', '2020-08-18', 'M', 42778344);
insert into Perro values (02, 'Thor', '2018-05-22', 'M', 42783325);
insert into Perro values (03, 'Diana', '2021-01-25', 'F', 40586891);

Insert into Historial values (01, '2022-06-06', 03, 'Baño Antipulgas', 2500);
insert into Historial values (02, '2021-07-28', 01, 'Pedicura', 1000);
insert into Historial values (03, '2022-02-28', 02, 'Baño Comun', 2000);

-- Punto numero 6 'Perros que asistieron a la peluqueria en 2022'

SELECT * from Historial where Fecha >= '2022-01-01';

-- Punto numero 8 'Nuevo registro en Historial cuyo Perro con ID 10'

Insert into Perro values (10, 'Negro', '2017-07-04', 'M', 42783325);
Insert into Historial values (04, '2021-12-24', 10, 'Corte y baño comun', 3200);















