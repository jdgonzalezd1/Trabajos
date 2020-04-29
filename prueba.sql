/*drop database panaderia_db;*/
create database panaderia_db;
use panaderia_db;
create table productos(
id int not null,
nombre varchar(255) not null,
marca varchar(255),
fechaVencimiento varchar(255) not null,
costo int not null,
cantidad int not null,
tipo varchar(255) not null,
primary key (id)
);
create table ventasDia(
idVenta int not null,
idProducto int not null,
fechaVenta date,
primary key (idVenta),
constraint FK_ProductoVendido foreign key(idProducto) references productos(id)
);
insert into panaderia_db.productos values (1, "Hojaldrado",null,"2020-08-30",300,20,"Postre");
select * from panaderia_db.productos;
update panaderia_db.productos set marca = "louisiana" where id = "1";