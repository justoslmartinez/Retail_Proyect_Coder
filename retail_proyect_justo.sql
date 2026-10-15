create schema proyecto;

alter schema proyecto
rename to retail_proyect;

create table retail_proyect.clientes (
id_cliente serial primary key,
nombre varchar(50) not null,
email varchar(50) unique not null
);

create table retail_proyect.productos (
id_producto serial primary key,
nombre_producto varchar (100) not null,
precio numeric(10,2) check (precio > 0),
stock INT CHECK (stock >= 0)
);

create table retail_proyect.ventas (
id_venta serial primary key,
id_cliente int not null,
id_producto int not null,
cantidad_ventas int not null check (cantidad_ventas > 0),

foreign key (id_cliente)
references retail_proyect.clientes(id_cliente),

foreign key (id_producto)
references retail_proyect.productos(id_producto)
);

begin;

insert into retail_proyect.clientes (nombre, email)
values
('Justo Martinez' , 'justoslmartinez@gmail.com'),
('Maria Concepcion' , 'maria@gmail.com'),
('Martin Perez' , 'martin@gmail.com'),
('Raul Levinton' , 'raul@gmail.com'),
('Anastasia Ruiz' , 'anastasia@gmail.com');

insert into retail_proyect.productos (nombre_producto, precio, stock)
values
('Pelota', 65000, 20),
('Camiseta', 139000.50, 25),
('Botines', 100000, 10),
('Vendas', 10000, 15),
('Buzo', 150000, 6);

insert into retail_proyect.ventas (id_cliente, id_producto, cantidad_ventas)
values
(1, 3, 5),
(2, 2, 12),
(4, 4, 2),
(3, 1, 10),
(5, 5, 1);

COMMIT;

SELECT *
FROM retail_proyect.productos
WHERE precio < 100000;

UPDATE retail_proyect.productos
SET precio = precio * 1.10
WHERE precio < 100000;

insert into retail_proyect.clientes (nombre, email)
values
('Prueba' , 'prueba@gmail.com');

select *
from retail_proyect.clientes 
where email = 'prueba@gmail.com';

delete from retail_proyect.clientes
where email = 'prueba@gmail.com';






