create database PeluqueriaCanina
use PeluqueriaCanina 

create table Dueno(
DNI int not null,
Nombre varchar(100) not null ,
Telefono int,
Direccion varchar(150),
constraint Pk_ct  primary key(DNI)
 )
insert into dueno value(34245673,'jose',4245598,'Juan Bautista34')
insert into dueno value(30845073,'Ezequiel',4545793,'Agustin Cuzzani 1329')
insert into dueno value(27245573,'Florencia',4345997,' Av. estudios 34')
insert into dueno value(31236678,'Ana',4247590,'Democles 134')
insert into dueno value(32245633,'Edgar',4255550,'Alvear 34')


 Escriba una consulta que permita actualizar la dirección de un dueño. 
 Su nueva dirección es Libertad 123
update dueno
set Direccion = 'Libertad 123'
where  DNI =30845073



 create table Perro(
 ID_Perro int not null,
 nombre_p Varchar(150)
 Fecha_nac datetime,
 sexo varchar(100) not null,
 DNI_dueno int not null ,
 constraint Pk_cp primary key(ID_Perro),
 constraint Fk_fd foreign key (DNI_dueno) references dueno(DNI)
 )

 insert into Perro value(12,'fluffy',2020/04/21,'macho',32245633)
 insert into Perro value(10,'pinino',2021/03/10,'macho',31236678)
 insert into Perro value(06,'pintitas',2022/04/01,'hembra',27245573)
 insert into Perro value(01,'leon',2020/08/06,'macho',30845073)
 insert into Perro value(30,'negra',2021/06/21,'hembra',34245673)
 
Actualice la fecha de nacimiento de algún animal (perro) que usted considere
update Perro
set Fecha_nac = '2020/06/20'
where  ID_Perro=30

 Obtener todos los perros de sexo “Macho” 
 
 select nombre_p
 from Perro
 where sexo= 'macho'
 
 
 
 create table  Historial(
 ID_Historial int not null,
 fecha date,
 perro int not null,
 descripcion varchar(200) not null,
 monto int,
 constraint Pk_ch primary key(ID_Historial),
 constraint Fk_fh foreign key (perro) references perro(ID_perro)
 
 )
 
 insert into Historial value(10,2020/03/12,12,'corte de pelo',2000)
 insert into Historial value(13,2022/03/12,10,'corte de pelo y uñas',2500)
insert into Historial value(30,2021/12/12,30,'baño, corte y uñas',3000)
insert into Historial value(01,2021/08/12,01,'corte de pelo',2000)
insert into Historial value(06,2022/07/02,06,'corte de pelo y baño',3000)

 Actualise la fecha del historial de un id especifico 
update historial
set fecha = '2022/07/02'
where ID_Historial=06

