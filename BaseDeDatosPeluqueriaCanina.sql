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
insert into Historial values


















