-- Listar los nombres de los usuarios
select nombre from usuarios;

-- Calcular el saldo máximo de los usuarios de sexo "Mujer"
select MAX(saldo) from usuarios where sexo= 'M';

-- Listar nombre y teléfono de los usuarios con teléfono NOKIA, BLACKBERRY o SONY
select nombre,telefono from usuarios where marca ='NOKIA' or marca ='BLACKBERRY' or marca ='SONY';
SELECT nombre, telefono FROM Usuarios WHERE marca IN('NOKIA', 'BLACKBERRY', 'SONY');

-- Contar los usuarios sin saldo o inactivos
select count(id) from usuarios where saldo=0 or activo=false;
SELECT COUNT(*) FROM Usuarios WHERE NOT activo OR saldo <= 0;

-- Listar el login de los usuarios con nivel 1, 2 o 3
select usuario from usuarios where nivel in(1,2,3);
SELECT usuario FROM Usuarios WHERE nivel IN(1, 2, 3);

-- Listar los números de teléfono con saldo menor o igual a 300
select telefono from usuarios where saldo <= 300;
SELECT telefono FROM Usuarios WHERE saldo <= 300;

-- Calcular la suma de los saldos de los usuarios de la compañía telefónica NEXTEL
select SUM(saldo) from usuarios where compania = 'NEXTEL';
SELECT SUM(saldo) FROM Usuarios WHERE compania = 'NEXTEL';

-- Contar el número de usuarios por compañía telefónica
SELECT compania, COUNT(*) FROM Usuarios GROUP BY compania;

-- Contar el número de usuarios por nivel
SELECT  usuario, COUNT(*) FROM Usuarios GROUP BY nivel;
SELECT nivel, COUNT(*) FROM Usuarios GROUP BY nivel;

-- Listar el login de los usuarios con nivel 2
select usuario from usuarios where nivel=2;
SELECT usuario FROM Usuarios WHERE nivel = 2;

-- Mostrar el email de los usuarios que usan gmail: SE USA EL LIKE
SELECT email FROM Usuarios WHERE email LIKE '%gmail.com';

-- Listar nombre y teléfono de los usuarios con teléfono LG, SAMSUNG o MOTOROLA:
select nombre, telefono from usuarios where marca IN('LG', 'SAMSUNG', 'MOTOROLA');

-- Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG o SAMSUNG
SELECT nombre, telefono, marca FROM Usuarios WHERE marca NOT IN ('LG', 'SAMSUNG');

-- Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL
select usuario, telefono from usuarios where compania = 'IUSACELL';

-- Listar el login y teléfono de los usuarios con compañía telefónica que no sea TELCEL
SELECT usuario, telefono FROM Usuarios WHERE compania NOT IN ('TELCEL');
SELECT usuario, telefono FROM Usuarios WHERE compania <> "TELCEL";

-- Calcular el saldo promedio de los usuarios que tienen teléfono marca NOKIA
select AVG(saldo) from usuarios where marca='NOKIA';
SELECT AVG(saldo) FROM Usuarios WHERE marca = 'NOKIA';

-- Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL o AXEL
select usuario, telefono from usuarios where compania IN('IUSACELL' or 'AXEL');
SELECT usuario, telefono FROM Usuarios WHERE compania IN('IUSACELL', 'AXEL');

-- Mostrar el email de los usuarios que no usan yahoo
select email from usuarios where email NOT IN ('%@yahoo');
SELECT email FROM Usuarios WHERE email NOT LIKE '%yahoo.com';

-- Listar el login y teléfono de los usuarios con compañía telefónica que no sea TELCEL o IUSACELL
SELECT usuario, telefono FROM Usuarios WHERE compania NOT IN('TELCEL', 'IUSACELL');

-- Listar el login y teléfono de los usuarios con compañía telefónica UNEFON
select usuario, telefono from usuarios where compania IN('UNEFON');
SELECT usuario, telefono FROM Usuarios WHERE compania = 'UNEFON';

-- Listar las diferentes marcas de celular en orden alfabético descendentemente
select marca from usuarios order by marca desc;
SELECT DISTINCT marca FROM Usuarios ORDER BY marca DESC;

-- Listar las diferentes marcas de celular en orden alfabético ascendentemente
--  ESTE MUESTR TODAS- LAS REPITE
select marca from usuarios order by marca asc;
-- LA CORRECTA ES USAR DISTINT - MUESTRA CADA MARCA SIN REPETIR
SELECT DISTINCT marca FROM Usuarios ORDER BY marca DESC;

-- Listar las diferentes compañías en orden alfabético aleatorio
SELECT DISTINCT compania FROM Usuarios ORDER BY RAND();

-- Listar el login de los usuarios con nivel 0 o 2
select usuario from usuarios where nivel in (0 , 2);

-- Calcular el saldo promedio de los usuarios que tienen teléfono marca LG
select avg(saldo) from usuarios where marca ='LG';
SELECT AVG(saldo) FROM Usuarios WHERE marca = 'LG';

-- Listar el login de los usuarios con nivel 1 o 3
select usuario from usuarios where nivel in (1 , 3);
SELECT usuario FROM Usuarios WHERE nivel IN(1, 3);


-- Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca BLACKBERRY
select nombre, telefono from usuarios where marca not in ('BLACKBERRY');
SELECT nombre, telefono FROM Usuarios WHERE marca <> "BLACKBERRY";

-- Listar el login de los usuarios con nivel 3
select usuario  from usuarios where nivel = 3;

-- Listar el login de los usuarios con nivel 0
SELECT usuario FROM Usuarios WHERE nivel = 0;


-- Listar el login de los usuarios con nivel 1
SELECT usuario FROM Usuarios WHERE nivel = 1;

-- Contar el número de usuarios por sexo
SELECT sexo, COUNT(*) FROM Usuarios GROUP BY sexo;

-- Listar el login y teléfono de los usuarios con compañía telefónica AT&T
select usuario, telefono from usuarios where compania = 'AT&T';

-- Listar las diferentes compañías en orden alfabético descendentemente
select distinct compania from usuarios order by compania desc;


Listar el login de los usuarios inactivos
Listar los números de teléfono sin saldo
Calcular el saldo mínimo de los usuarios de sexo “Hombre”
Listar los números de teléfono con saldo mayor a 300
Contar el número de usuarios por marca de teléfono
Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG
Listar las diferentes compañías en orden alfabético ascendentemente
Calcular la suma de los saldos de los usuarios de la compañía telefónica UNEFON
Mostrar el email de los usuarios que usan hotmail
Listar los nombres de los usuarios sin saldo o inactivos
Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL o TELCEL
Listar las diferentes marcas de celular en orden alfabético ascendentemente
Listar las diferentes marcas de celular en orden alfabético aleatorio
Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL o UNEFON
Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca MOTOROLA o NOKIA
Calcular la suma de los saldos de los usuarios de la compañía telefónica TELCEL




-- OTRO EJERCICIO: CREAR UNA BASE DE DATOS CON LA INFORMACIÓ:

create table clientes (
  codigo int unsigned auto_increment,
  nombre varchar(30) not null,
  domicilio varchar(30),
  ciudad varchar(20),
  codigoProvincia tinyint unsigned,
  telefono varchar(11),
  primary key(codigo)
 );
 
 create table provincias(
  codigo tinyint unsigned auto_increment,
  nombre varchar(20),
  primary key (codigo)
 );
 
 insert into provincias (nombre) values('Cordoba');
 insert into provincias (nombre) values('Santa Fe');
 insert into provincias (nombre) values('Corrientes');
 insert into provincias (nombre) values('Misiones');
 insert into provincias (nombre) values('Salta');
 insert into provincias (nombre) values('Buenos Aires');
 insert into provincias (nombre) values('Neuquen');

 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Lopez Marcos', 'Colon 111', 'Córdoba',1,'null');
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Perez Ana', 'San Martin 222', 'Cruz del Eje',1,'4578585');
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Garcia Juan', 'Rivadavia 333', 'Villa Maria',1,'4578445');
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Perez Luis', 'Sarmiento 444', 'Rosario',2,null);
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Pereyra Lucas', 'San Martin 555', 'Cruz del Eje',1,'4253685');
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Gomez Ines', 'San Martin 666', 'Santa Fe',2,'0345252525');
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Torres Fabiola', 'Alem 777', 'Villa del Rosario',1,'4554455');
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Lopez Carlos', 'Irigoyen 888', 'Cruz del Eje',1,null);
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Ramos Betina', 'San Martin 999', 'Cordoba',1,'4223366');
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Lopez Lucas', 'San Martin 1010', 'Posadas',4,'0457858745');
Problemas de JOIN en Bases de Datos
Vamos a realizar algunos ejercicios de JOIN. Recuerda que los datos y las soluciones están en los links de sqlfiddle. Si lo queres aplicar en tu propia base de datos solo tenes que copiarte las sentencias de creación e inserción.

1) Una empresa tiene registrados a sus clientes en una tabla llamada clientes. También tiene una tabla "provincias" donde registra los nombres de las provincias. En base a los datos cargados aquí, Queremos saber de qué provincias tenemos clientes, sin repetir el nombre de la provincia: las consultas que permitan responder las siguientes preguntas:

¿Qué provincias no tenemos clientes?
¿Qué provincias tienen clientes? Pero sin repetir el nombre de la provincia. Un tip, vas a necesitar la sentencia distinct