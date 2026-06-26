INSERT INTO clientes(nombre,correo)
VALUES
('Juan Pérez','juan@mail.com'),
('Ana Gómez','ana@mail.com'),
('Carlos López','carlos@mail.com');

INSERT INTO empleados(nombre,cargo)
VALUES
('Laura Díaz','Vendedor'),
('Andrés Ruiz','Supervisor');

INSERT INTO productos(nombre,precio,stock)
VALUES
('Laptop',2500,10),
('Mouse',80,50),
('Teclado',120,30),
('Monitor',900,15);

INSERT INTO ventas(fecha,id_cliente,id_empleado)
VALUES
('2026-06-20',1,1),
('2026-06-21',2,2);

INSERT INTO detalle_venta(
    id_venta,
    id_producto,
    cantidad,
    subtotal
)
VALUES
(1,1,1,2500),
(1,2,2,160),
(2,4,1,900);